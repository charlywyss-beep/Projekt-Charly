# GitHub Upload Script für Arbeitszeitrechner
# Version: 1.2 (Auto-Sync to docs)
# Repository: https://github.com/charlywyss-beep/Projekt-Charly

param(
    [string]$File = "",
    [string]$CommitMessage = ""
)

# Automatische Erkennung der neuesten Version, falls keine Datei angegeben wurde
if ([string]::IsNullOrEmpty($File)) {
    $latestFile = Get-ChildItem -Path $RepoPath -Filter "index_*.html" | 
    Sort-Object Name -Descending | 
    Select-Object -First 1
    
    if ($latestFile) {
        $File = $latestFile.Name
        Write-Host "Automatisch neueste Version erkannt: $File" -ForegroundColor Cyan
    }
    else {
        Write-Host "Fehler: Keine index_*.html Datei gefunden!" -ForegroundColor Red
        exit 1
    }
}

# Automatische Commit-Message generieren, falls leer
if ([string]::IsNullOrEmpty($CommitMessage)) {
    # Extrahiere Version aus Dateiname (z.B. index_1.3.03.html -> 1.3.03)
    if ($File -match "index_(.+)\.html") {
        $version = $matches[1]
        $CommitMessage = "Update version $version"
    }
    else {
        $CommitMessage = "Update web application"
    }
}

# Konfiguration
$RepoPath = "C:\Users\01\Arbeitszeitrechner"
$GitHubRepo = "charlywyss-beep/Projekt-Charly"
$Branch = "main"

Write-Host "==================================" -ForegroundColor Cyan
Write-Host "GitHub Upload Automation" -ForegroundColor Cyan
Write-Host "Projekt-Charly Arbeitszeitrechner" -ForegroundColor Cyan
Write-Host "==================================" -ForegroundColor Cyan
Write-Host ""

# Wechsel zum Repo
Set-Location $RepoPath

# Prüfen ob Datei existiert
if (-not (Test-Path $File)) {
    Write-Host "Fehler: Datei '$File' nicht gefunden!" -ForegroundColor Red
    exit 1
}

# 1. Meilenstein nach docs/index.html kopieren (für GitHub Pages)
Write-Host "Sync: Kopiere $File nach docs/index.html..." -ForegroundColor Yellow
if (-not (Test-Path "docs")) {
    New-Item -ItemType Directory -Force -Path "docs" | Out-Null
}
Copy-Item -Path $File -Destination "docs/index.html" -Force
Write-Host "OK: Live-Version aktualisiert." -ForegroundColor Green
Write-Host ""

# 2. Git Operationen
Write-Host "Git Status..." -ForegroundColor Yellow

# Stage die Original-Datei (Meilenstein)
git add $File

# Stage die Live-Version
git add docs/index.html

# Stage andere wichtige Dateien
if (Test-Path "README_Phase2.md") { git add README_Phase2.md }
if (Test-Path "Logo.png") { git add Logo.png }
if (Test-Path ".nojekyll") { git add .nojekyll }
git add feiertage_schweiz_*.json 2>$null

# Commit
Write-Host "Commit: $CommitMessage" -ForegroundColor Green
git commit -m $CommitMessage

Write-Host ""

# Push
Write-Host "Push zu GitHub..." -ForegroundColor Green
$pushOutput = git push origin $Branch 2>&1

if ($LASTEXITCODE -eq 0) {
    Write-Host ""
    Write-Host "==================================" -ForegroundColor Cyan
    Write-Host "Upload erfolgreich!" -ForegroundColor Green
    Write-Host "==================================" -ForegroundColor Cyan
    Write-Host ""
    Write-Host "Meilenstein: $File (Gesichert)" -ForegroundColor Gray
    Write-Host "Live-Seite : docs/index.html (Aktualisiert)" -ForegroundColor Gray
    Write-Host ""
    Write-Host "Webseite: https://charlywyss-beep.github.io/Projekt-Charly/" -ForegroundColor Cyan
    Write-Host ""
}
else {
    Write-Host ""
    Write-Host "Fehler beim Push!" -ForegroundColor Red
    Write-Host "Bitte prÃ¼fen Sie Ihre Internetverbindung oder GitHub-Zugriffsrechte." -ForegroundColor Yellow
}

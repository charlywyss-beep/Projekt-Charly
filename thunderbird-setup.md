# Thunderbird Setup

## Kontoinformationen

- **E-Mail-Adresse**: charlywyss@gmail.com  
- **Kontotyp**: IMAP  
- **Posteingangsserver**: imap.gmail.com  
- **Port**: 993  
- **Sicherheit**: SSL/TLS  
- **Authentifizierung**: OAuth2  
- **Postausgangsserver**: smtp.gmail.com  
- **Port**: 465  
- **Sicherheit**: SSL/TLS  
- **Authentifizierung**: OAuth2

## IMAP-Ordnerstruktur

- `INBOX` → Hauptordner  
- `Archiv` → Automatisches Gmail-Archiv  
- `Gesendet` → Thunderbird-spezifisch, kann angepasst werden  
- `Vorlagen` → Speicherort für eigene HTML-Vorlagen  
- `Papierkorb` → Gmail-Standard, kann lokal gespiegelt werden

## Fonts & Darstellung

- **Standard-Font**: Segoe UI, 10pt  
- **HTML-Vorlagen**:  
  - `template-charly.html` → persönliche Signatur  
  - `template-troubleshooting.html` → für Doku-Mails  
- **Zeilenabstand**: 1.2  
- **Farbschema**: Hellmodus mit kontrastreichem Text

## Speicherorte für Konfiguration

| Datei | Zweck | Pfad |
|-------|-------|------|
| `prefs.js` | Allgemeine Einstellungen | `AppData\Roaming\Thunderbird\Profiles\xyz.default\` |
| `msgFilterRules.dat` | Filterregeln | `...\Profiles\xyz.default\` |
| `userChrome.css` | UI-Anpassungen | `...\Profiles\xyz.default\chrome\` |

## Add-ons (optional)

- **QuickFolders** → Ordnerverwaltung  
- **CardBook** → Kontakte mit VCF  
- **Send Later** → Zeitgesteuertes Senden

## Backup-Empfehlung

```bash
robocopy "%APPDATA%\Thunderbird\Profiles\xyz.default" "D:\Backup\Thunderbird" /MIR /XD Cache

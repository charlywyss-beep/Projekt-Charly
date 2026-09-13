# Projektspezifische Regeln für Antigravity

## Versionsverwaltung
**KRITISCH:** Bei JEDER Code-Änderung `/versioning` Workflow befolgen!

**Reihenfolge (NICHT ändern):**
1. **ZUERST:** Neue Datei erstellen (`Copy-Item "index_1.2.X.html" -Destination "index_1.2.Y.html"`)
2. **DANN:** Änderungen in der NEUEN Datei machen
3. **DANN:** Version im Code aktualisieren (`const version = '1.2.Y'`)
4. **PRÜFEN:** Dateiname und `const version` stimmen überein

**NIEMALS:**
- ❌ Die alte Datei direkt ändern
- ❌ Version im Code ändern und vergessen die Datei zu kopieren
- ❌ Änderungen machen bevor die neue Datei erstellt wurde

## Layout & Testing
- **WICHTIG:** Bei DOM-Änderungen (z.B. neue Elemente einfügen) IMMER prüfen:
  - 1. Desktop-Ansicht (Grid-Layout intakt?)
  - 2. Mobile-Ansicht (Portrait & Landscape sichtbar?)
- Keine Elemente zwischen Grid-Items einfügen, die das Layout zerstören könnten


## Token-Management
- **WICHTIG:** Prüfe das verbleibende Token-Budget regelmäßig
- Bei **weniger als 20.000 Token**: Warne mich BEVOR du eine große Aufgabe startest
- Bei **weniger als 10.000 Token**: Nur kleine Aufgaben durchführen
- **NIEMALS** eine Aufgabe beginnen, die nicht mehr vollständig abgeschlossen werden kann

## Kommunikation
- Alle Antworten und Erklärungen auf **Deutsch** 🇩🇪
- Klare Zusammenfassungen nach jeder Änderung
- Bei größeren Änderungen: Vorher Plan vorstellen

## Dateiverwaltung
- HTML-Dateien: Immer alte Version behalten
- Keine wichtigen Dateien ohne Rückfrage löschen
- Bei Copy/Rename-Operationen: Bestätigung der erfolgreichen Ausführung

---
description: Versionsverwaltung für HTML-Dateien
---

# Workflow: Versionsnummerierung für HTML-Dateien

**KRITISCHE REGEL:** Bei JEDER Code-Änderung an einer HTML-Datei MUSS dieser Workflow VOLLSTÄNDIG befolgt werden!

## Schritt 1: ZUERST neue Datei erstellen
// turbo
```powershell
# Beispiel: Von 1.2.122 auf 1.2.123
Copy-Item "index_1.2.122.html" -Destination "index_1.2.123.html"
```

**WICHTIG:** Dies ist der ERSTE Schritt - BEVOR irgendwelche Änderungen gemacht werden!

## Schritt 2: Änderungen in der NEUEN Datei vornehmen
- Alle Code-Änderungen nur in der neuen Datei (z.B. `index_1.2.123.html`)
- Die alte Datei (`index_1.2.122.html`) bleibt unverändert als Backup

## Schritt 3: Version im Code aktualisieren
In der NEUEN Datei die JavaScript-Konstante aktualisieren:

```javascript
// Version 1.2.123 - Manuell erhöhen bei jeder Änderung
const version = '1.2.123';
```

**WICHTIG:** Die Version im Code MUSS mit dem Dateinamen übereinstimmen!

## Checkliste (IMMER befolgen):
- [ ] Neue Datei erstellt (Copy-Item)
- [ ] Änderungen in neuer Datei gemacht
- [ ] Version im Code erhöht (const version)
- [ ] Dateiname und Version im Code stimmen überein

## Regeln:
1. **NIE** die alte Datei direkt ändern
2. **IMMER** zuerst kopieren, dann ändern
3. **IMMER** Version im Code mit Dateinamen synchron halten
4. Bei kleineren Änderungen: Letzte Ziffer erhöhen (z.B. 1.2.122 → 1.2.123)
5. Bei größeren Features: Mittlere Ziffer erhöhen (z.B. 1.2.122 → 1.3.0)

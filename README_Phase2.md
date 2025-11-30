# Arbeitszeitrechner - Phase 2: Feiertage-System

## ✨ Neue Features

### 🎉 Feiertage-Verwaltung
- **Kantonal-spezifische Feiertage** für die Schweiz
- **JSON-Import** für automatische Feiertags-Verwaltung
- **Visuelle Markierung** (blau) im Kalender
- **Intelligente Berechnung**: Feiertage zählen nicht als Fehlzeit

### ⚙️ Einstellungen-Panel
- **Standard-Sollzeit** konfigurierbar
- **Urlaubstage pro Jahr** einstellbar
- **Kanton-Auswahl** für relevante Feiertage
- **Feiertags-Übersicht** mit allen geladenen Feiertagen

## 📋 Anleitung

### 1. Kanton auswählen
1. Öffne den **⚙️ Einstellungen**-Tab
2. Wähle deinen Kanton aus der Dropdown-Liste
3. Einstellungen werden automatisch gespeichert

### 2. Feiertage importieren
1. Lade die Datei `feiertage_schweiz_2025.json` herunter
2. Im Einstellungen-Tab auf **"📂 Feiertags-JSON importieren"** klicken
3. JSON-Datei auswählen
4. Feiertage werden automatisch für den gewählten Kanton gefiltert

### 3. Feiertags-Handling

#### Automatisches Verhalten:
- ✅ **Feiertage zählen NICHT als Fehlzeit**
- ✅ **Arbeit an Feiertagen = volle Überzeit**
- ✅ **Blaue Markierung** im Kalender
- ✅ **Sollzeit** wird automatisch angepasst

#### Beispiel:
```
Normale Arbeit Mo-Fr:    40:00 Std (Sollzeit: 42:00 = -2:00 Fehlzeit)
Mit Feiertag am Montag:  32:00 Std (Sollzeit: 33:36 = -1:36 Fehlzeit)
                         ↑ Feiertag wird nicht gezählt!

Arbeit am Feiertag:      +8:24 Std volle Überzeit
```

## 📁 JSON-Format

### Feiertags-JSON Struktur:
```json
{
  "jahr": 2025,
  "land": "Schweiz",
  "feiertage": [
    {
      "name": "Neujahr",
      "datum": "2025-01-01",
      "kantone": ["alle"]
    },
    {
      "name": "Berchtoldstag",
      "datum": "2025-01-02",
      "kantone": ["ZH", "BE", "LU", ...]
    }
  ]
}
```

### Spezielle Kantone-Werte:
- `["alle"]` - Gilt für alle Kantone
- `["alle_ausser", "VS", "TI"]` - Gilt für alle AUSSER die aufgelisteten
- `["ZH", "BE", ...]` - Gilt nur für die aufgelisteten Kantone

## 🗺️ Schweizer Kantone

| Kürzel | Name |
|--------|------|
| ZH | Zürich |
| BE | Bern |
| LU | Luzern |
| UR | Uri |
| SZ | Schwyz |
| OW | Obwalden |
| NW | Nidwalden |
| GL | Glarus |
| ZG | Zug |
| FR | Freiburg |
| SO | Solothurn |
| BS | Basel-Stadt |
| BL | Basel-Landschaft |
| SH | Schaffhausen |
| AR | Appenzell Ausserrhoden |
| AI | Appenzell Innerrhoden |
| SG | St. Gallen |
| GR | Graubünden |
| AG | Aargau |
| TG | Thurgau |
| TI | Tessin |
| VD | Waadt |
| VS | Wallis |
| NE | Neuenburg |
| GE | Genf |
| JU | Jura |

## 🔮 Ausblick: Phase 3

In Phase 3 werden folgende Features hinzugefügt:
- 🏖️ **Ferien-Verwaltung** (Urlaubstage)
- 🤒 **Krankheitstage**
- 📊 **Erweiterte Statistiken**
- 📤 **Feiertage in Exporten** (Excel/PDF)

## 💡 Tipps

1. **Mehrere Jahre**: Du kannst JSON-Dateien für verschiedene Jahre nacheinander importieren
2. **Kanton wechseln**: Beim Kanton-Wechsel die Feiertage neu importieren
3. **Backup**: Sichere regelmäßig deine Daten über den Export
4. **Browser-Speicher**: Alle Daten werden lokal im Browser gespeichert

## 🆘 Häufige Fragen

**Q: Kann ich eigene Feiertage hinzufügen?**
A: Ja! Erstelle eine JSON-Datei mit deinen Feiertagen und importiere sie.

**Q: Was passiert wenn ich an einem Feiertag arbeite?**
A: Die gesamte Arbeitszeit wird als Überzeit gezählt (keine Sollzeit-Abrechnung).

**Q: Werden Feiertage in Exporten angezeigt?**
A: In Phase 3 wird eine Feiertags-Spalte in Exporten hinzugefügt.

**Q: Kann ich Feiertage wieder löschen?**
A: Aktuell nicht einzeln. Du kannst aber den Browser-Speicher leeren und neu importieren.

## 📄 Dateien

- `Arbeitszeitrechner.html` - Hauptdatei mit allen Features
- `feiertage_schweiz_2025.json` - Schweizer Feiertage 2025
- `README_Phase2.md` - Diese Anleitung

Viel Erfolg mit dem Arbeitszeitrechner! 🚀

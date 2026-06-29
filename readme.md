# HKA-Thesis-Template (Typst)

Wiederverwendbares Typst-Template für Abschlussarbeiten an der Hochschule Karlsruhe (HKA), optional in Kooperation mit einem Unternehmen. Das Template enthält Titelseite, Eigenständigkeits- und KI-Erklärung, Verzeichnisse, Abkürzungssystem, Grafik-Platzhalter, akademische Tabellen sowie Syntaxhervorhebung für C- und ARM-Assembler-Listings.

## Voraussetzungen

- **Typst** ≥ 0.12 ([Installation](https://github.com/typst/typst)) oder die VS-Code-Erweiterung *Tinymist*.
- **Schriften** (sonst werden Ersatzschriften genutzt): Cambria, Arial, Liberation Sans.
- **Internet** beim ersten Build, damit die Pakete `acrostiche` und `outrageous` aus dem Typst-Universe geladen werden.

## Verzeichnisstruktur

```
template/
├─ thesis.typ        # Einstiegspunkt: Reihenfolge, Verzeichnisse, Layout, Akronyme
├─ config.toml       # Metadaten (Autor, Titel, Prüfer, Modi …)
├─ meta.typ          # Sammelmodul: liest config.toml + bündelt alle Helfer
├─ typst.toml        # Paket-Manifest + Abhängigkeiten
├─ bibliography.bib  # Beispiel-Literatur (ersetzen)
├─ lib/              # Helfer: acronyms.typ, figures.typ, tables.typ
├─ themes/           # code.typ + *.sublime-syntax / *.tmTheme (C & ARM-Assembler)
├─ common/
│  ├─ cover.typ                 # Titelseite
│  └─ statutory-declaration.typ # KI- + Eigenständigkeitserklärung (Platzhalter)
├─ content/          # 00 Zusammenfassung + 6 Kapitel (Lorem-Ipsum)
└─ assets/           # hkalogo.svg, firmenlogo.svg, aufgabenstellung.svg
```

## Kompilieren

```powershell
typst compile thesis.typ          # erzeugt thesis.pdf
typst watch thesis.typ            # baut bei jeder Änderung neu
```

## Anpassen

1. **Metadaten** in `config.toml` setzen: `author`, `title`, `thesis-type`, Prüfer/Betreuer (`reviewer-two`/`advisor-two` leer lassen zum Ausblenden), `university`, `company`, `completion-period`.
2. **Logos** in `assets/` ersetzen: `firmenlogo.svg` durch das Firmenlogo, ggf. `hkalogo.svg` aktualisieren.
3. **Erste Seite (Aufgabenstellung)** in `thesis.typ`: `assets/aufgabenstellung.svg` durch das eigene PDF/Bild ersetzen oder den Block entfernen.
4. **Erklärungen** in `common/statutory-declaration.typ` an die tatsächliche KI-Nutzung und verwendeten Hilfsmittel anpassen.
5. **Zusammenfassung/Abstract** in `content/00-Zusammenfassung.typ` und Kapitel in `content/` füllen.
6. **Abkürzungen** in `thesis.typ` (`init-acronyms`) und ggf. `acr-case-forms` in `lib/acronyms.typ` pflegen.
7. **Quellen** in `bibliography.bib` eintragen, im Text mit `@schluessel` zitieren.

## Modi

- `isDraft` (in `config.toml`): `true` zeigt das DRAFT-Wasserzeichen und `#note[...]`-Anmerkungen.
- `isTwoSided`: doppelseitiges Layout mit Kapitelbeginn auf ungeraden Seiten.

## Helfer

- `fig-platzhalter-klein/mittel/gross` — Grafik-Platzhalter; `tab-h`/`tab-d` — Tabellenzellen.
- `c-listing` / `asm-listing` — Code mit Zeilennummern; `req("FR-1")` — Querverweis auf Anforderung.
- `acr-emph` / `acrpl-emph` — Akronym-Erstnennung; `acr-cap` — Kurzform für Beschriftungen.

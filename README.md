# C programmieren lernen

Ein kleiner Einsteigerkurs in C: jede Lektion ist ein kommentiertes, lauffähiges
Programm. Lies den Code, starte ihn, ändere ihn – so lernt man C am schnellsten.

## Vorbereitung

Du brauchst einen C-Compiler:

| System  | Installation |
|---------|--------------|
| Linux   | `sudo apt install build-essential` (Debian/Ubuntu) |
| macOS   | `xcode-select --install` |
| Windows | [MSYS2](https://www.msys2.org/) oder WSL, dann `gcc` installieren |

Prüfen: `gcc --version`

## Ein Programm kompilieren und starten

```sh
gcc -Wall -Wextra -std=c11 -o hallo lektionen/01_hallo_welt.c
./hallo
```

- `-Wall -Wextra` → der Compiler warnt dich vor typischen Fehlern (immer benutzen!)
- `-std=c11` → moderner C-Standard
- `-o hallo` → Name der ausführbaren Datei

Oder einfach alles auf einmal mit dem Makefile: `make` (Programme landen in `bin/`).

## Lektionen

| Nr. | Datei | Thema |
|-----|-------|-------|
| 01 | `01_hallo_welt.c` | Aufbau eines Programms, `printf` |

Weitere Lektionen kommen Schritt für Schritt dazu.

Arbeite sie **der Reihe nach** durch. Am Ende jeder Datei stehen kleine
Aufgaben zum Ausprobieren.

## Übungen

Deine eigenen Lösungen schreibst du
selbst in den Ordner `uebungen/` – und wenn du festhängst, frag einfach nach!

## Tipps

1. **Tippe Code selbst ab** statt zu kopieren – das trainiert.
2. **Lies Fehlermeldungen von oben nach unten.** Der erste Fehler ist meist der echte.
3. **Ändere absichtlich etwas** und schau, was passiert.
4. Fehler mit Speicher findest du mit `gcc -g -fsanitize=address,undefined ...`.
5. Gute Referenz: <https://en.cppreference.com/w/c>

# backup-7z-checksum
Backup Prozedere einzelner Ordner

## Zweck
Es soll ein bestimmter Ordner auf einem Windows-Rechner, z.B. C:\FOLDER ein ein 7z-Archiv gsichert werden und dazu eine Checksumme erzeugt werden. Das Backup wird monatlich als Vollbackup durchgeführt, innderhalb des Monats inkrementell.

Auf dem Windows-Rechner wird dazu die Batch-Datei _FolderBackup7z.cmd_ aufgerufen, die eine Archivdatei FOLDERbackup_JJJJ-MM auf einen Übergabe-Share screibt mit JJJJ= aktuelle Jahreszahl und MM= aktueller Monat.

Der Übergabe-Share ist von einem Linux-Rechner erreichbar, auf dem dann mit dem Shell-Skript _genhash-mon.sh_ eine Checksumme erzeugt wird.

## Vorausstzungen ##
Auf dem Windows-Rechner muss 7-Zip installiert sein.
Download über

https://7-zip.org/
# backup-7z-checksum
Backup Prozedere einzelner Ordner

## Zweck
Es soll ein bestimmter Ordner auf einem Windows-Rechner, z.B. C:\FOLDER ein ein 7z-Archiv gsichert werden und dazu eine Checksumme erzeugt werden. Das Backup wird monatlich als Vollbackup durchgeführt, innderhalb des Monats inkrementell.

Auf dem Windows-Rechner wird dazu die Batch-Datei `FolderBackup7z.cmd` aufgerufen, die eine Archivdatei __FOLDERbackup_JJJJ-MM__ auf einen Übergabe-Share screibt mit __JJJJ=__ aktuelle Jahreszahl und __MM=__ aktueller Monat.

Der Übergabe-Share ist von einem Linux-Rechner erreichbar, auf dem dann mit dem Shell-Skript `genhash-mon.sh` eine Checksumme erzeugt wird.

## Vorausstzungen ##
Auf dem Windows-Rechner muss 7-Zip installiert sein.
Download über

https://7-zip.org/
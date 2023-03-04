#/usr/bin/bash

# Monat ermitteln ...
monat=$(date +%m)
jahr=$(date +%Y)
# echo $monat

echo wechsele Verzeichnis ...
cd ~/transfer/AMEdata/Backup/

echo erstelle hash ...
sha512sum AMEbackup_$jahr-$monat.7z AMEbackup_$jahr-$monat.log > AMEbackup_$jahr-$monat.sha512

echo pruefe hash ...
sha512sum -c AMEbackup_$jahr-$monat.sha512

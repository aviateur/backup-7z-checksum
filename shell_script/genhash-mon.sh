#/usr/bin/bash

# Monat ermitteln ...
monat=$(date +%m)
jahr=$(date +%Y)
# echo $monat

echo wechsele Verzeichnis ...
cd ~/transfer/FOLDER/Backup/

echo erstelle hash ...
sha512sum FOLDERbackup_$jahr-$monat.7z FOLDERbackup_$jahr-$monat.log > FOLDERbackup_$jahr-$monat.sha512

echo pruefe hash ...
sha512sum -c FOLDERbackup_$jahr-$monat.sha512

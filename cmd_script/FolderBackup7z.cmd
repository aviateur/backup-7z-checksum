@echo off

@echo off
set moddate=2023-03-04
echo.
echo.
echo ---------------------------------------------------------
echo.
echo     Backup-Folder mit 7z
echo     %moddate%
echo.
echo ---------------------------------------------------------
echo.
echo Das Fenster wird bei Programmende automatisch geschlossen!
echo.
rem created at 2016-12-05 by aviateur
rem modified at ...

rem Declarations
set PathToBin="C:\Program Files\7-Zip\7z.exe"
set SourcePath="C:\FOLDER"
set DestPath="\\SERVER\transfer\FOLDER\backup\"
set DestFile=FOLDERbackup_%date:~6,4%-%date:~3,2%
set LogFile=%DestPath%%DestFile%.log

echo.
echo Sichere %SourcePath% ...
echo ####### %Date% - %Time% START by %USERNAME% ###### >> %Logfile%
%PathToBin% u %DestPath%%DestFile% -up1q3r2x1y2z1w2 %SourcePath% >> %LogFile%
echo ####### %Date% - %Time% END   by %USERNAME% ###### >> %Logfile%

echo.
echo Fertig!
echo.

pause

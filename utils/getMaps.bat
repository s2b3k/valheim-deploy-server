@ECHO OFF
rem *** Creating timestamp ***
for /f "tokens=2 delims==" %%a in ('wmic OS Get localdatetime /value') do set "dt=%%a"
set "YY=%dt:~2,2%" & set "YYYY=%dt:~0,4%" & set "MM=%dt:~4,2%" & set "DD=%dt:~6,2%"
set "HH=%dt:~8,2%" & set "Min=%dt:~10,2%" & set "Sec=%dt:~12,2%"
set "fullstamp=%YYYY%-%MM%-%DD%_%HH%-%Min%-%Sec%"

set "folderName=map_%fullstamp%"
echo Map backup in folder: "%folderName%"

rem *** Is folder existing? ***
if not exist "%folderName%" mkdir "%folderName%"

rem *** Downloading map ***
set "MAP_NAME=YOUR_MAP"
set "SERVER_IP=X.X.X.X"
scp -i "valheim.pem" ubuntu@%SERVER_IP%:/home/ubuntu/valheim/saves/worlds/%MAP_NAME%.fwl ./%folderName%/%MAP_NAME%.fwl
scp -i "valheim.pem" ubuntu@%SERVER_IP%:/home/ubuntu/valheim/saves/worlds/%MAP_NAME%.db ./%folderName%/%MAP_NAME%.db
ECHO done :)
@echo off
:config
title Flexa v.2.1 - Incredible easy tool for device information grabbing
color 1F
set "machine=Flexa_%computername%"
set "ipyn=1"
set "cpath=%cd%"
::output making
md %machine%
cls
goto main

:main
cls
echo.
echo.
type flexa
echo.
echo.

echo Welcome %username% to Flexa!
echo.
echo 10 seconds to start grabbing...
timeout 10
goto grabbing
:grabbing
echo.
echo.
echo Grabbing IP...
aria2c http://api.ipify.org -o ip.txt -dir %cpath%\%machine%\
echo.
echo Grabbing version...
ver >> %cpath%\%machine%\ver.txt

echo.
echo Grabbing VOL info...
vol >> %cpath%\%machine%\vol.txt

echo.
echo Grabbing ipconfig...
ipconfig /all >> %cpath%\%machine%\ipconfig.txt
ipconfig /displaydns >> %cpath%\%machine%\ipconfig.txt

echo.
echo Grabbing Net-User...
net user >> %cpath%\%machine%\net-user.txt

echo.
echo Grabbing Assoc...
assoc >> %cpath%\%machine%\assoc.txt
echo.
echo Grabbing SET...
set >> %cpath%\%machine%\set.txt
echo.
echo Grabbing Compat
compact >> %cpath%\%machine%\compact.txt

echo.
echo Grabbing Ftype...
ftype >> %cpath%\%machine%\ftype.txt

echo.
echo Grabbing NetstatAT...
netstat -an >> %cpath%\%machine%\netstat-an.txt

echo.
echo Grabbing Power-CFG...
powercfg /a >> %cpath%\%machine%\powercfg.txt

echo.
echo Grabbing TaskList...
tasklist >> %cpath%\%machine%\tasklist.txt

echo.
echo Grabbing BIOS...
wmic bios >> %cpath%\%machine%\bios.txt

echo.
echo Grabbing CPU...
wmic cpu >> %cpath%\%machine%\cpu.txt

echo.
echo Grabbing systeminfo...
systeminfo >> %cpath%\%machine%\systeminfo.txt

echo.
echo Grabbing Tree...
tree /A /F >> %cpath%\%machine%\tree.txt

echo.
echo Grabbing Timezone...
wmic timezone >> %cpath%\%machine%\timezone.txt

echo.
echo Grabbing OS...
wmic os >> %cpath%\%machine%\os.txt
echo.
echo.
echo.
type flexa
echo.
echo was finished work successfully!
echo Thank you to using our software!
pause
exit
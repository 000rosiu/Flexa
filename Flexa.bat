@echo off
:config
title Flexa v3 - Incredible easy tool for device information grabbing
color 1F
set "machine=Flexa_%computername%"
set "ipyn=1"
set "cpath=%cd%"
md %machine%
cls
goto main

:error
cls
color 4E
echo.
echo.
type Flexa
echo.
echo.
echo ERROR!
echo.
pause
goto main
:main
color 1F
cls
echo.
echo.
type flexa
echo.
echo.

echo Welcome %username% to Flexa!
echo.
echo.
echo Do you want to list the entire C drive tree (option 1) or list the current user's tree (option 2)?
echo.
echo.
set /p treeoption=Select:
if %treeoption%==1 goto treeall
if %treeoption%==2 goto treeuser
goto error

:treeall
echo.
echo Grabbing Tree of C:\ ...
cd C:\
tree /A /F >> %cpath%\%machine%\tree.log
goto grabbing

:treeuser
echo.
echo Grabbing Tree of User %username%...
cd C:\Users\%username%\
tree /A /F >> %cpath%\%machine%\tree.log
goto grabbing

:grabbing
cd %cpatch%
cls
echo.
echo.
echo Grabbing version... (via ver)
ver >> %cpath%\%machine%\ver.log

echo.
echo Grabbing VOL info... (via vol)
vol >> %cpath%\%machine%\vol.log

echo.
echo Grabbing ipconfig... (via ipconfig)
ipconfig /all >> %cpath%\%machine%\ipconfig.log
ipconfig /displaydns >> %cpath%\%machine%\ipconfig.log

echo.
echo Grabbing Net-User... (via net)
net user >> %cpath%\%machine%\net-user.log

echo.
echo Grabbing Assoc... (via assoc)
assoc >> %cpath%\%machine%\assoc.log
echo.
echo Grabbing SET... (via setlog)
set >> %cpath%\%machine%\set.log
echo.
echo Grabbing Compat from C... (via compat)
cd 	C:\
compact >> %cpath%\%machine%\compact.log

echo.
echo Grabbing Ftype... (via ftype)
ftype >> %cpath%\%machine%\ftype.log

echo.
echo Grabbing Netstat... (via netstat)
netstat -an >> %cpath%\%machine%\netstat-an.log

echo.
echo Grabbing PowerCFG... (via powercfg)
powercfg /a >> %cpath%\%machine%\powercfg.log

echo.
echo Grabbing TaskList... (via tasklist)
tasklist >> %cpath%\%machine%\tasklist.log

echo.
echo Grabbing BIOS... (via wmic)
wmic bios >> %cpath%\%machine%\bios.log

echo.
echo Grabbing CPU... (via wmic)
wmic cpu >> %cpath%\%machine%\cpu.log

echo.
echo Grabbing systeminfo... (via wmic)
systeminfo >> %cpath%\%machine%\systeminfo.log

echo.
echo Grabbing Timezone... (via wmic)
wmic timezone >> %cpath%\%machine%\timezone.log

echo.
echo Grabbing Graphics... (via wmic)
wmic path win32_videocontroller >> %cpath%\%machine%\graphics.log

echo.
echo Grabbing RAM... (via wmic)
wmic memorychip >> %cpath%\%machine%\ram.log

echo.
echo Grabbing Disk... (via wmic)
wmic memorychip >> %cpath%\%machine%\disk.log

echo.
echo Grabbing OS... (via wmic)
wmic os >> %cpath%\%machine%\os.log
cd %cpath%
cls
echo.
echo.
echo.
type flexa
echo.
echo was finished work successfully!
echo.
echo Feel free to visit 000rWeb:
echo www.000r.ovh
echo.
pause
exit

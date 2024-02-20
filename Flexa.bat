::[Bat To Exe Converter]
::
::fBE1pAF6MU+EWHreyHcjLQlHcFTSbHm1FbwJ1Mz+/OGTrV0hUu46YI67
::YAwzoRdxOk+EWAjk
::fBw5plQjdCyDJGyX8VAjFEsEHBaNL2KvOpEZ++Pv4Pq7ugMUV+1f
::YAwzuBVtJxjWCl3EqQJgSA==
::ZR4luwNxJguZRRnk
::Yhs/ulQjdF+5
::cxAkpRVqdFKZSDk=
::cBs/ulQjdF+5
::ZR41oxFsdFKZSDk=
::eBoioBt6dFKZSDk=
::cRo6pxp7LAbNWATEpCI=
::egkzugNsPRvcWATEpCI=
::dAsiuh18IRvcCxnZtBJQ
::cRYluBh/LU+EWAnk
::YxY4rhs+aU+IeA==
::cxY6rQJ7JhzQF1fEqQJhZksaHErSXA==
::ZQ05rAF9IBncCkqN+0xwdVsHAlHMbCXrZg==
::ZQ05rAF9IAHYFVzEqQIWJB5MTUSUbws=
::eg0/rx1wNQPfEVWB+kM9LVsJDAKOOXO7SLAE7Yg=
::fBEirQZwNQPfEVWB+kM9LVsJDAKOOXO7SLAE7Yg=
::cRolqwZ3JBvQF1fEqQIZJhhGSQCLPme/RrAd+/G7++WIrg0bW/B/fIrN07eLYOkd7Er2eJc533VU2MweDRladxysDg==
::dhA7uBVwLU+EWBGy8VAkIVZ9YSjLfEe1FaE47f7ojw==
::YQ03rBFzNR3SWATE0k41MBo0
::dhAmsQZ3MwfNWATEvHQ1Og9dAS2vECL6KroP/Mz++fnn
::ZQ0/vhVqMQ3MEVWAtB9wSA==
::Zg8zqx1/OA3MEVWAtB9wSA==
::dhA7pRFwIByZRRmt+kEiLR9dTgiHfG67Faxc/Of046qBrV9dUOcpcYzemr2AJu8B50TwfJkjln1ImckOBRVfHg==
::Zh4grVQjdCyDJGyX8VAjFEsEHBaNL2KvOpEZ++Pv4Pq7pEEYTONxfZfeug==
::YB416Ek+ZW8=
::
::
::978f952a14a936cc963da21a135fa983
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
echo Grabbing version...
ver >> %cpath%\%machine%\ver.log

echo.
echo Grabbing VOL info...
vol >> %cpath%\%machine%\vol.log

echo.
echo Grabbing ipconfig...
ipconfig /all >> %cpath%\%machine%\ipconfig.log
ipconfig /displaydns >> %cpath%\%machine%\ipconfig.log

echo.
echo Grabbing Net-User...
net user >> %cpath%\%machine%\net-user.log

echo.
echo Grabbing Assoc...
assoc >> %cpath%\%machine%\assoc.log
echo.
echo Grabbing SET...
set >> %cpath%\%machine%\set.log
echo.
echo Grabbing Compat...
cd 	C:\
compact >> %cpath%\%machine%\compact.log

echo.
echo Grabbing Ftype...
ftype >> %cpath%\%machine%\ftype.log

echo.
echo Grabbing NetstatAT...
netstat -an >> %cpath%\%machine%\netstat-an.log

echo.
echo Grabbing Power-CFG...
powercfg /a >> %cpath%\%machine%\powercfg.log

echo.
echo Grabbing TaskList...
tasklist >> %cpath%\%machine%\tasklist.log

echo.
echo Grabbing BIOS...
wmic bios >> %cpath%\%machine%\bios.log

echo.
echo Grabbing CPU...
wmic cpu >> %cpath%\%machine%\cpu.log

echo.
echo Grabbing systeminfo...
systeminfo >> %cpath%\%machine%\systeminfo.log

echo.
echo Grabbing Timezone...
wmic timezone >> %cpath%\%machine%\timezone.log

echo.
echo Grabbing Graphics...
wmic path win32_videocontroller >> %cpath%\%machine%\graphics.log

echo.
echo Grabbing RAM...
wmic memorychip >> %cpath%\%machine%\ram.log

echo.
echo Grabbing Disk...
wmic memorychip >> %cpath%\%machine%\disk.log

echo.
echo Grabbing OS...
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
echo Thank you to using our software!
echo www.LostDevs.ct8.pl
echo.
pause
exit

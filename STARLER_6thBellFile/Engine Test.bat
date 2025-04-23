@echo off 
title Unknown 
::Displays different colors within a string.
chcp 65001 >nul
for /F "tokens=1,2 delims=#" %%a in ('"prompt #$H#$E# & echo on & for %%b in (1) do reml"') do (
  set "DEL=%%a"
)
:ColorText
<nul set /p ".=%DEL%" > "%~2"
findstr /v /a "tokens=1,2":%1 /R "^$" "%~2" >nul
del "%~2" >nul 2>&1
goto main.var

:main.var
:: Describe world and creates how game works
set game_type=RPG
set random_encounter=true
if %random_encounter% == true set RE_rate=0
::amount of steps taken
set RE_max=10
goto ingame.var

:ingame.var
::all stats set to ten
set lv=1
set HP=10
set MAXHP=10
set PWR=10
set SPD=10
set DEF=10
set ELE=10
set MC=10
call :ColorText ac "Hello world"
pause >nul

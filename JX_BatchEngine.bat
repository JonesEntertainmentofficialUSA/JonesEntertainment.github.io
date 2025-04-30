@echo off      
chcp 65001 >nul
::Place this engine at the beginning of the code of the software.
::CALL (The file location it is inXY)/JXXYBatchEngine.bat
title %IMPORTXYVAR:GameName%
SETLOCAL EnableDelayedExpansion
for /F "tokens=1,2 delims=#" %%a in ('"prompt #$H#$E# & echo on & for %%b in (1) do rem"') do (
  set "DEL=%%a"
)
ping localhost -n 3 >nul
::color define
set color1=F0
set color2=C0
set color3=B0
set color4=D0
set color5=10
set color6=A0
set color7=0C
set color8=0F
set color9=20
set color10=30
set color11=40
set color12=50
::GridDefine
set player=█
set playerX=1
set playerY=1
goto asignXYobstacle

:asignXYobstacle
set ob=#
set obX=12
set obY=12
goto MadeWithScreen

:MadeWithScreen
cls
call :colorEcho F0 "==========================MADE WITH JX-BatchEngine=========================="
ping localhost -n 2 >nul
goto loading_screen 


:loading_screen 
cls
echo. 
echo.
echo.
echo                                                                                                                                          █████████████████
echo                                                                                                                                          █ Please Wait...█
echo                                                                                                                                          █████████████████
ping localhost -n 4 >nul
goto IMPORT.Grid_creator

:IMPORT.Grid_creator
::Using (X,Y) type grid 
set 1XY1=0
set 1XY2=0
set 1XY3=0
set 1XY4=0
set 1XY5=0
set 1XY6=0
set 1XY7=0
set 1XY8=0
set 1XY9=0
set 1XY10=0
set 1XY11=0
set 1XY12=0
::second row
set 2XY1=0
set 2XY2=0
set 2XY3=0
set 2XY4=0
set 2XY5=0
set 2XY6=0
set 2XY7=0
set 2XY8=0
set 2XY9=0
set 2XY10=0
set 2XY11=0
set 2XY12=0
::third row
set 3XY1=0
set 3XY2=0
set 3XY3=0
set 3XY4=0
set 3XY5=0
set 3XY6=0
set 3XY7=0
set 3XY8=0
set 3XY9=0
set 3XY10=0
set 3XY11=0
set 3XY12=0
::fourth row 
set 4XY1=0
set 4XY2=0
set 4XY3=0
set 4XY4=0
set 4XY5=0
set 4XY6=0
set 4XY7=0
set 4XY8=0
set 4XY9=0
set 4XY10=0
set 4XY11=0
set 4XY12=0
::fith Row
set 5XY1=0
set 5XY2=0
set 5XY3=0
set 5XY4=0
set 5XY5=0
set 5XY6=0
set 5XY7=0
set 5XY8=0
set 5XY9=0
set 5XY10=0
set 5XY11=0
set 5XY12=0
::sixth row
set 6XY1=0
set 6XY2=0
set 6XY3=0
set 6XY4=0
set 6XY5=0
set 6XY6=0
set 6XY7=0
set 6XY8=0
set 6XY9=0
set 6XY10=0
set 6XY11=0
set 6XY12=0
::7th row
set 7XY1=0
set 7XY2=0
set 7XY3=0
set 7XY4=0
set 7XY5=0
set 7XY6=0
set 7XY7=0
set 7XY8=0
set 7XY9=0
set 7XY10=0
set 7XY11=0
set 7XY12=0
:: 8th Row
set 8XY1=0
set 8XY2=0
set 8XY3=0
set 8XY4=0
set 8XY5=0
set 8XY6=0
set 8XY7=0
set 8XY8=0
set 8XY9=0
set 8XY10=0
set 8XY11=0
set 8XY12=0
::9th row
set 9XY1=0
set 9XY2=0
set 9XY3=0
set 9XY4=0
set 9XY5=0
set 9XY6=0
set 9XY7=0
set 9XY8=0
set 9XY9=0
set 9XY10=0
set 9XY11=0
set 9XY12=0
::10th row
set 10XY1=0
set 10XY2=0
set 10XY3=0
set 10XY4=0
set 10XY5=0
set 10XY6=0
set 10XY7=0
set 10XY8=0
set 10XY9=0
set 10XY10=0
set 10XY11=0
set 10XY12=0
:: 11th row
set 11XY1=0
set 11XY2=0
set 11XY3=0
set 11XY4=0
set 11XY5=0
set 11XY6=0
set 11XY7=0
set 11XY8=0
set 11XY9=0
set 11XY10=0
set 11XY11=0
set 11XY12=0
::12th row
set 12XY1=0
set 12XY2=0
set 12XY3=0
set 12XY4=0
set 12XY5=0
set 12XY6=0
set 12XY7=0
set 12XY8=0
set 12XY9=0
set 12XY10=0
set 12XY11=0
set 12XY12=0
goto obLocation

:IMPORT.playerMovement
echo off
choice /c wasde /n 
if !errorlevel! EQU w @set /A "playerY=%playerY%-1" 
if !errorlevel! EQU w goto obLocation
if !errorlevel! EQU a @set /A "playerX=%playerX%-1"
if !errorlevel! EQU a goto obLocation
if !errorlevel! EQU s @set /A "playerY=%playerY%+1"
if !errorlevel! EQU s goto obLocation
if !errorlevel! EQU d @set /A "playerX=%playerX%+1"
if !errorlevel! EQU d goto obstacleLocation
if !errorlevel! EQU e goto IMPORT-Menu
goto obLocation

:obLocation
::ob row 1
if %obX% == 1 %obY% == 1 set 1XY1=%ob%
if %obX% == 1 %obY% == 2 set 1XY2=%ob%
if %obX% == 1 %obY% == 3 set 1XY3=%ob%
if %obX% == 1 %obY% == 4 set 1XY4=%ob%
if %obX% == 1 %obY% == 5 set 1XY5=%ob%
if %obX% == 1 %obY% == 6 set 1XY6=%ob%
if %obX% == 1 %obY% == 7 set 1XY7=%ob%
if %obX% == 1 %obY% == 8 set 1XY8=%ob%
if %obX% == 1 %obY% == 9 set 1XY9=%ob%
if %obX% == 1 %obY% == 10 set 1XY10=%ob%
if %obX% == 1 %obY% == 11 set 1XY11=%ob%
if %obX% == 1 %obY% == 12 set 1XY12=%ob%
::ob row 2 
if %obX% == 2 %obY% == 1 set 2XY1=%ob%
if %obX% == 2 %obY% == 2 set 2XY2=%ob%
if %obX% == 2 %obY% == 3 set 2XY3=%ob%
if %obX% == 2 %obY% == 4 set 2XY4=%ob%
if %obX% == 2 %obY% == 5 set 2XY5=%ob%
if %obX% == 2 %obY% == 6 set 2XY6=%ob%
if %obX% == 2 %obY% == 7 set 2XY7=%ob%
if %obX% == 2 %obY% == 8 set 2XY8=%ob%
if %obX% == 2 %obY% == 9 set 2XY9=%ob%
if %obX% == 2 %obY% == 10 set 2XY10=%ob%
if %obX% == 2 %obY% == 11 set 2XY11=%ob%
if %obX% == 2 %obY% == 12 set 2XY12=%ob%
::ob row 3
if %obX% == 3 %obY% == 1 set 3XY1=%ob%
if %obX% == 3 %obY% == 2 set 3XY2=%ob%
if %obX% == 3 %obY% == 3 set 3XY3=%ob%
if %obX% == 3 %obY% == 4 set 3XY4=%ob%
if %obX% == 3 %obY% == 5 set 3XY5=%ob%
if %obX% == 3 %obY% == 6 set 3XY6=%ob%
if %obX% == 3 %obY% == 7 set 3XY7=%ob%
if %obX% == 3 %obY% == 8 set 3XY8=%ob%
if %obX% == 3 %obY% == 9 set 3XY9=%ob%
if %obX% == 3 %obY% == 10 set 3XY10=%ob%
if %obX% == 3 %obY% == 11 set 3XY11=%ob%
if %obX% == 3 %obY% == 12 set 3XY12=%ob%
::ob Row 4
if %obX% == 4 %obY% == 1 set 4XY1=%ob%
if %obX% == 4 %obY% == 2 set 4XY2=%ob%
if %obX% == 4 %obY% == 3 set 4XY3=%ob%
if %obX% == 4 %obY% == 4 set 4XY4=%ob%
if %obX% == 4 %obY% == 5 set 4XY5=%ob%
if %obX% == 4 %obY% == 6 set 4XY6=%ob%
if %obX% == 4 %obY% == 7 set 4XY7=%ob%
if %obX% == 4 %obY% == 8 set 4XY8=%ob%
if %obX% == 4 %obY% == 9 set 4XY9=%ob%
if %obX% == 4 %obY% == 10 set 4XY10=%ob%
if %obX% == 4 %obY% == 11 set 4XY11=%ob%
if %obX% == 4 %obY% == 12 set 4XY12=%ob%
::ob Row 5 
if %obX% == 5 %obY% == 1 set 5XY1=%ob%
if %obX% == 5 %obY% == 2 set 5XY2=%ob%
if %obX% == 5 %obY% == 3 set 5XY3=%ob%
if %obX% == 5 %obY% == 4 set 5XY4=%ob%
if %obX% == 5 %obY% == 5 set 5XY5=%ob%
if %obX% == 5 %obY% == 6 set 5XY6=%ob%
if %obX% == 5 %obY% == 7 set 5XY7=%ob%
if %obX% == 5 %obY% == 8 set 5XY8=%ob%
if %obX% == 5 %obY% == 9 set 5XY9=%ob%
if %obX% == 5 %obY% == 10 set 5XY10=%ob%
if %obX% == 5 %obY% == 11 set 5XY11=%ob%
if %obX% == 5 %obY% == 12 set 5XY12=%ob%
::ob Row 6 
if %obX% == 6 %obY% == 1 set 6XY1=%ob%
if %obX% == 6 %obY% == 2 set 6XY2=%ob%
if %obX% == 6 %obY% == 3 set 6XY3=%ob%
if %obX% == 6 %obY% == 4 set 6XY4=%ob%
if %obX% == 6 %obY% == 5 set 6XY5=%ob%
if %obX% == 6 %obY% == 6 set 6XY6=%ob%
if %obX% == 6 %obY% == 7 set 6XY7=%ob%
if %obX% == 6 %obY% == 8 set 6XY8=%ob%
if %obX% == 6 %obY% == 9 set 6XY9=%ob%
if %obX% == 6 %obY% == 10 set 6XY10=%ob%
if %obX% == 6 %obY% == 11 set 6XY11=%ob%
if %obX% == 6 %obY% == 12 set 6XY12=%ob%
::ob Row 7 
if %obX% == 7 %obY% == 1 set 7XY1=%ob%
if %obX% == 7 %obY% == 2 set 7XY2=%ob%
if %obX% == 7 %obY% == 3 set 7XY3=%ob%
if %obX% == 7 %obY% == 4 set 7XY4=%ob%
if %obX% == 7 %obY% == 5 set 7XY5=%ob%
if %obX% == 7 %obY% == 6 set 7XY6=%ob%
if %obX% == 7 %obY% == 7 set 7XY7=%ob%
if %obX% == 7 %obY% == 8 set 7XY8=%ob%
if %obX% == 7 %obY% == 9 set 7XY9=%ob%
if %obX% == 7 %obY% == 10 set 7XY10=%ob%
if %obX% == 7 %obY% == 11 set 7XY11=%ob%
if %obX% == 7 %obY% == 12 set 7XY12=%ob%
::ob Row 8 
if %obX% == 8 %obY% == 1 set 8XY1=%ob%
if %obX% == 8 %obY% == 2 set 8XY2=%ob%
if %obX% == 8 %obY% == 3 set 8XY3=%ob%
if %obX% == 8 %obY% == 4 set 8XY4=%ob%
if %obX% == 8 %obY% == 5 set 8XY5=%ob%
if %obX% == 8 %obY% == 6 set 8XY6=%ob%
if %obX% == 8 %obY% == 7 set 8XY7=%ob%
if %obX% == 8 %obY% == 8 set 8XY8=%ob%
if %obX% == 8 %obY% == 9 set 8XY9=%ob%
if %obX% == 8 %obY% == 10 set 8XY10=%ob%
if %obX% == 8 %obY% == 11 set 8XY11=%ob%
if %obX% == 8 %obY% == 12 set 8XY12=%ob%
::ob Row 9
if %obX% == 9 %obY% == 1 set 9XY1=%ob%
if %obX% == 9 %obY% == 2 set 9XY2=%ob%
if %obX% == 9 %obY% == 3 set 9XY3=%ob%
if %obX% == 9 %obY% == 4 set 9XY4=%ob%
if %obX% == 9 %obY% == 5 set 9XY5=%ob%
if %obX% == 9 %obY% == 6 set 9XY6=%ob%
if %obX% == 9 %obY% == 7 set 9XY7=%ob%
if %obX% == 9 %obY% == 8 set 9XY8=%ob%
if %obX% == 9 %obY% == 9 set 9XY9=%ob%
if %obX% == 9 %obY% == 10 set 9XY10=%ob%
if %obX% == 9 %obY% == 11 set 9XY11=%ob%
if %obX% == 9 %obY% == 12 set 9XY12=%ob%
::ob Row 10
if %obX% == 10 %obY% == 1 set 10XY1=%ob%
if %obX% == 10 %obY% == 2 set 10XY2=%ob%
if %obX% == 10 %obY% == 3 set 10XY3=%ob%
if %obX% == 10 %obY% == 4 set 10XY4=%ob%
if %obX% == 10 %obY% == 5 set 10XY5=%ob%
if %obX% == 10 %obY% == 6 set 10XY6=%ob%
if %obX% == 10 %obY% == 7 set 10XY7=%ob%
if %obX% == 10 %obY% == 8 set 10XY8=%ob%
if %obX% == 10 %obY% == 9 set 10XY9=%ob%
if %obX% == 10 %obY% == 10 set 10XY10=%ob%
if %obX% == 10 %obY% == 11 set 10XY11=%ob%
if %obX% == 10 %obY% == 12 set 10XY12=%ob%
::ob Row 11
if %obX% == 11 %obY% == 1 set 11XY1=%ob%
if %obX% == 11 %obY% == 2 set 11XY2=%ob%
if %obX% == 11 %obY% == 3 set 11XY3=%ob%
if %obX% == 11 %obY% == 4 set 11XY4=%ob%
if %obX% == 11 %obY% == 5 set 11XY5=%ob%
if %obX% == 11 %obY% == 6 set 11XY6=%ob%
if %obX% == 11 %obY% == 7 set 11XY7=%ob%
if %obX% == 11 %obY% == 8 set 11XY8=%ob%
if %obX% == 11 %obY% == 9 set 11XY9=%ob%
if %obX% == 11 %obY% == 10 set 11XY10=%ob%
if %obX% == 11 %obY% == 11 set 11XY11=%ob%
if %obX% == 11 %obY% == 12 set 11XY12=%ob%
::ob Row 12
if %obX% == 12 %obY% == 1 set 12XY1=%ob%
if %obX% == 12 %obY% == 2 set 12XY2=%ob%
if %obX% == 12 %obY% == 3 set 12XY3=%ob%
if %obX% == 12 %obY% == 4 set 12XY4=%ob%
if %obX% == 12 %obY% == 5 set 12XY5=%ob%
if %obX% == 12 %obY% == 6 set 12XY6=%ob%
if %obX% == 12 %obY% == 7 set 12XY7=%ob%
if %obX% == 12 %obY% == 8 set 12XY8=%ob%
if %obX% == 12 %obY% == 9 set 12XY9=%ob%
if %obX% == 12 %obY% == 10 set 12XY10=%ob%
if %obX% == 12 %obY% == 11 set 12XY11=%ob%
if %obX% == 12 %obY% == 12 set 12XY12=%ob%
goto playerLocation

:playerLocation
::player row 1
if %playerX% == 1 %playerY% == 1 set 1XY1=%player%
if %playerX% == 1 %playerY% == 2 set 1XY2=%player%
if %playerX% == 1 %playerY% == 3 set 1XY3=%player%
if %playerX% == 1 %playerY% == 4 set 1XY4=%player%
if %playerX% == 1 %playerY% == 5 set 1XY5=%player%
if %playerX% == 1 %playerY% == 6 set 1XY6=%player%
if %playerX% == 1 %playerY% == 7 set 1XY7=%player%
if %playerX% == 1 %playerY% == 8 set 1XY8=%player%
if %playerX% == 1 %playerY% == 9 set 1XY9=%player%
if %playerX% == 1 %playerY% == 10 set 1XY10=%player%
if %playerX% == 1 %playerY% == 11 set 1XY11=%player%
if %playerX% == 1 %playerY% == 12 set 1XY12=%player%
::player row 2 
if %playerX% == 2 %playerY% == 1 set 2XY1=%player%
if %playerX% == 2 %playerY% == 2 set 2XY2=%player%
if %playerX% == 2 %playerY% == 3 set 2XY3=%player%
if %playerX% == 2 %playerY% == 4 set 2XY4=%player%
if %playerX% == 2 %playerY% == 5 set 2XY5=%player%
if %playerX% == 2 %playerY% == 6 set 2XY6=%player%
if %playerX% == 2 %playerY% == 7 set 2XY7=%player%
if %playerX% == 2 %playerY% == 8 set 2XY8=%player%
if %playerX% == 2 %playerY% == 9 set 2XY9=%player%
if %playerX% == 2 %playerY% == 10 set 2XY10=%player%
if %playerX% == 2 %playerY% == 11 set 2XY11=%player%
if %playerX% == 2 %playerY% == 12 set 2XY12=%player%
::player row 3
if %playerX% == 3 %playerY% == 1 set 3XY1=%player%
if %playerX% == 3 %playerY% == 2 set 3XY2=%player%
if %playerX% == 3 %playerY% == 3 set 3XY3=%player%
if %playerX% == 3 %playerY% == 4 set 3XY4=%player%
if %playerX% == 3 %playerY% == 5 set 3XY5=%player%
if %playerX% == 3 %playerY% == 6 set 3XY6=%player%
if %playerX% == 3 %playerY% == 7 set 3XY7=%player%
if %playerX% == 3 %playerY% == 8 set 3XY8=%player%
if %playerX% == 3 %playerY% == 9 set 3XY9=%player%
if %playerX% == 3 %playerY% == 10 set 3XY10=%player%
if %playerX% == 3 %playerY% == 11 set 3XY11=%player%
if %playerX% == 3 %playerY% == 12 set 3XY12=%player%
::Player Row 4
if %playerX% == 4 %playerY% == 1 set 4XY1=%player%
if %playerX% == 4 %playerY% == 2 set 4XY2=%player%
if %playerX% == 4 %playerY% == 3 set 4XY3=%player%
if %playerX% == 4 %playerY% == 4 set 4XY4=%player%
if %playerX% == 4 %playerY% == 5 set 4XY5=%player%
if %playerX% == 4 %playerY% == 6 set 4XY6=%player%
if %playerX% == 4 %playerY% == 7 set 4XY7=%player%
if %playerX% == 4 %playerY% == 8 set 4XY8=%player%
if %playerX% == 4 %playerY% == 9 set 4XY9=%player%
if %playerX% == 4 %playerY% == 10 set 4XY10=%player%
if %playerX% == 4 %playerY% == 11 set 4XY11=%player%
if %playerX% == 4 %playerY% == 12 set 4XY12=%player%
::Player Row 5 
if %playerX% == 5 %playerY% == 1 set 5XY1=%player%
if %playerX% == 5 %playerY% == 2 set 5XY2=%player%
if %playerX% == 5 %playerY% == 3 set 5XY3=%player%
if %playerX% == 5 %playerY% == 4 set 5XY4=%player%
if %playerX% == 5 %playerY% == 5 set 5XY5=%player%
if %playerX% == 5 %playerY% == 6 set 5XY6=%player%
if %playerX% == 5 %playerY% == 7 set 5XY7=%player%
if %playerX% == 5 %playerY% == 8 set 5XY8=%player%
if %playerX% == 5 %playerY% == 9 set 5XY9=%player%
if %playerX% == 5 %playerY% == 10 set 5XY10=%player%
if %playerX% == 5 %playerY% == 11 set 5XY11=%player%
if %playerX% == 5 %playerY% == 12 set 5XY12=%player%
::Player Row 6 
if %playerX% == 6 %playerY% == 1 set 6XY1=%player%
if %playerX% == 6 %playerY% == 2 set 6XY2=%player%
if %playerX% == 6 %playerY% == 3 set 6XY3=%player%
if %playerX% == 6 %playerY% == 4 set 6XY4=%player%
if %playerX% == 6 %playerY% == 5 set 6XY5=%player%
if %playerX% == 6 %playerY% == 6 set 6XY6=%player%
if %playerX% == 6 %playerY% == 7 set 6XY7=%player%
if %playerX% == 6 %playerY% == 8 set 6XY8=%player%
if %playerX% == 6 %playerY% == 9 set 6XY9=%player%
if %playerX% == 6 %playerY% == 10 set 6XY10=%player%
if %playerX% == 6 %playerY% == 11 set 6XY11=%player%
if %playerX% == 6 %playerY% == 12 set 6XY12=%player%
::Player Row 7 
if %playerX% == 7 %playerY% == 1 set 7XY1=%player%
if %playerX% == 7 %playerY% == 2 set 7XY2=%player%
if %playerX% == 7 %playerY% == 3 set 7XY3=%player%
if %playerX% == 7 %playerY% == 4 set 7XY4=%player%
if %playerX% == 7 %playerY% == 5 set 7XY5=%player%
if %playerX% == 7 %playerY% == 6 set 7XY6=%player%
if %playerX% == 7 %playerY% == 7 set 7XY7=%player%
if %playerX% == 7 %playerY% == 8 set 7XY8=%player%
if %playerX% == 7 %playerY% == 9 set 7XY9=%player%
if %playerX% == 7 %playerY% == 10 set 7XY10=%player%
if %playerX% == 7 %playerY% == 11 set 7XY11=%player%
if %playerX% == 7 %playerY% == 12 set 7XY12=%player%
::Player Row 8 
if %playerX% == 8 %playerY% == 1 set 8XY1=%player%
if %playerX% == 8 %playerY% == 2 set 8XY2=%player%
if %playerX% == 8 %playerY% == 3 set 8XY3=%player%
if %playerX% == 8 %playerY% == 4 set 8XY4=%player%
if %playerX% == 8 %playerY% == 5 set 8XY5=%player%
if %playerX% == 8 %playerY% == 6 set 8XY6=%player%
if %playerX% == 8 %playerY% == 7 set 8XY7=%player%
if %playerX% == 8 %playerY% == 8 set 8XY8=%player%
if %playerX% == 8 %playerY% == 9 set 8XY9=%player%
if %playerX% == 8 %playerY% == 10 set 8XY10=%player%
if %playerX% == 8 %playerY% == 11 set 8XY11=%player%
if %playerX% == 8 %playerY% == 12 set 8XY12=%player%
::Player Row 9
if %playerX% == 9 %playerY% == 1 set 9XY1=%player%
if %playerX% == 9 %playerY% == 2 set 9XY2=%player%
if %playerX% == 9 %playerY% == 3 set 9XY3=%player%
if %playerX% == 9 %playerY% == 4 set 9XY4=%player%
if %playerX% == 9 %playerY% == 5 set 9XY5=%player%
if %playerX% == 9 %playerY% == 6 set 9XY6=%player%
if %playerX% == 9 %playerY% == 7 set 9XY7=%player%
if %playerX% == 9 %playerY% == 8 set 9XY8=%player%
if %playerX% == 9 %playerY% == 9 set 9XY9=%player%
if %playerX% == 9 %playerY% == 10 set 9XY10=%player%
if %playerX% == 9 %playerY% == 11 set 9XY11=%player%
if %playerX% == 9 %playerY% == 12 set 9XY12=%player%
::Player Row 10
if %playerX% == 10 %playerY% == 1 set 10XY1=%player%
if %playerX% == 10 %playerY% == 2 set 10XY2=%player%
if %playerX% == 10 %playerY% == 3 set 10XY3=%player%
if %playerX% == 10 %playerY% == 4 set 10XY4=%player%
if %playerX% == 10 %playerY% == 5 set 10XY5=%player%
if %playerX% == 10 %playerY% == 6 set 10XY6=%player%
if %playerX% == 10 %playerY% == 7 set 10XY7=%player%
if %playerX% == 10 %playerY% == 8 set 10XY8=%player%
if %playerX% == 10 %playerY% == 9 set 10XY9=%player%
if %playerX% == 10 %playerY% == 10 set 10XY10=%player%
if %playerX% == 10 %playerY% == 11 set 10XY11=%player%
if %playerX% == 10 %playerY% == 12 set 10XY12=%player%
::Player Row 11
if %playerX% == 11 %playerY% == 1 set 11XY1=%player%
if %playerX% == 11 %playerY% == 2 set 11XY2=%player%
if %playerX% == 11 %playerY% == 3 set 11XY3=%player%
if %playerX% == 11 %playerY% == 4 set 11XY4=%player%
if %playerX% == 11 %playerY% == 5 set 11XY5=%player%
if %playerX% == 11 %playerY% == 6 set 11XY6=%player%
if %playerX% == 11 %playerY% == 7 set 11XY7=%player%
if %playerX% == 11 %playerY% == 8 set 11XY8=%player%
if %playerX% == 11 %playerY% == 9 set 11XY9=%player%
if %playerX% == 11 %playerY% == 10 set 11XY10=%player%
if %playerX% == 11 %playerY% == 11 set 11XY11=%player%
if %playerX% == 11 %playerY% == 12 set 11XY12=%player%
::Player Row 12
if %playerX% == 12 %playerY% == 1 set 12XY1=%player%
if %playerX% == 12 %playerY% == 2 set 12XY2=%player%
if %playerX% == 12 %playerY% == 3 set 12XY3=%player%
if %playerX% == 12 %playerY% == 4 set 12XY4=%player%
if %playerX% == 12 %playerY% == 5 set 12XY5=%player%
if %playerX% == 12 %playerY% == 6 set 12XY6=%player%
if %playerX% == 12 %playerY% == 7 set 12XY7=%player%
if %playerX% == 12 %playerY% == 8 set 12XY8=%player%
if %playerX% == 12 %playerY% == 9 set 12XY9=%player%
if %playerX% == 12 %playerY% == 10 set 12XY10=%player%
if %playerX% == 12 %playerY% == 11 set 12XY11=%player%
if %playerX% == 12 %playerY% == 12 set 12XY12=%player%
goto Main.Grid

:Main.Grid
cls
call :colorEcho !color1! !1XY1! !2XY1! !3XY1! !4XY1! !5XY1! !6XY1! !7XY1! !8XY1! !9XY1! !10XY1! !11XY1! !12XY1!
call :colorEcho !color2! !1XY2! !2XY2! !3XY2! !4XY2! !5XY2! !6XY2! !7XY2! !8XY2! !9XY2! !10XY2! !11XY2! !12XY2!
call :colorEcho !color3! !1XY3! !2XY3! !3XY3! !4XY3! !5XY3! !6XY3! !7XY3! !8XY3! !9XY3! !10XY3! !11XY3! !12XY3!
call :colorEcho !color4! !1XY4! !2XY4! !3XY4! !4XY4! !5XY4! !6XY4! !7XY4! !8XY4! !9XY4! !10XY4! !11XY4! !12XY4!
call :colorEcho !color5! !1XY5! !2XY5! !3XY5! !4XY5! !5XY5! !6XY5! !7XY5! !8XY5! !9XY5! !10XY5! !11XY5! !12XY5!
call :colorEcho !color6! !1XY6! !2XY6! !3XY6! !4XY6! !5XY6! !6XY6! !7XY6! !8XY6! !9XY6! !10XY6! !11XY6! !12XY6!
call :colorEcho !color7! !1XY7! !2XY7! !3XY7! !4XY7! !5XY7! !6XY7! !7XY7! !8XY7! !9XY7! !10XY7! !11XY7! !12XY7!
call :colorEcho !color8! !1XY8! !2XY8! !3XY8! !4XY8! !5XY8! !6XY8! !7XY8! !8XY8! !9XY8! !10XY8! !11XY8! !12XY8!
call :colorEcho !color9! !1XY9! !2XY9! !3XY9! !4XY9! !5XY9! !6XY9! !7XY9! !8XY9! !9XY9! !10XY9! !11XY9! !12XY9!
call :colorEcho !color10! !1XY10! !2XY10! !3XY10! !4XY10! !5XY10! !6XY10! !7XY10! !8XY10! !9XY10! !10XY10! !11XY10! !12XY10!
call :colorEcho !color11! !1XY11! !2XY11! !3XY11! !4XY11! !5XY11! !6XY11! !7XY11! !8XY11! !9XY11! !10XY11! !11XY11! !12XY11!
call :colorEcho !color12! !1XY12! !2XY12! !3XY12! !4XY12! !5XY12! !6XY12! !7XY12! !8XY12! !9XY12! !10XY12! !11XY12! !12XY12!
goto :IMPORT.Event
:IMPORT.Event
if %Event% == true goto IMPORT.event_message
if %Event% == false goto IMPORT.playerMovement
::Always name the one of the labels XY Main Titlescreen.
::This engine displays colorXY and defines other things used in games
::This engine is made specifically for batchXY howeverXY translating it into other languages 
:: may let it work but less likely.

:IMPORT.SavingFile
set save_control=0
cls
call :colorEcho !color1! "Save your game?"
echo.
call :colorEcho !color1! "    1) Save"
echo.
call :colorEcho !color1! "    2) Check file"
echo.
call :colorEcho !color1! "    3) exit save menu"
echo.
call :colorEcho !color1! " [Press enter after number is pressed...]"
set /p save_control=
if %save_control% == 1 goto IMPORT.NewSave
if %save_control% == 2 goto IMPORT.CheckFiles
if %save_control% == 3 goto IMPORT.Locate





::Keep at the end of the code
:colorEcho
echo off
<nul set /p ".=%DEL%" > "%~2"
findstr /v /a:%1 /R "^$" "%~2" nul
del "%~2" > nul 2>&1i

rem (For future reference)
::for /l %%b (1XY1XY%grid_height%) do (
::  for /l %%b in (1XY1XY%grid_width%) do (
::        echo. %Your_Variable%
::  )
::  echo.
::)
::
rem This is the way you use the grid. Place objects in certain spots.
:: With this you add the choice command in order to not have to use "ENTER" key to 
:: move the ob.

::XYINFORMATION SECTION
:: 
::                  :: GRID TYPE::
:: Grid Layout is 12 by 12.
:: XY Using (XXYY) 
:: XY Going up is decending while going down is acending XY Similar to p5.js (JavaScript) 
:: ============
:: Ex.
::                         [+1 Y]     [+1 X] XY>
::                           |
::                           |
::                           V
::               (1XY1) (2XY1) (3XY1) (4XY1) (5XY1) (6XY1) (7XY1) (8XY1) (9XY1) (10XY1) (11XY1) (12XY1)
::               (1XY2) (2XY2) (3XY2) (4XY2) (5XY2) (6XY2) (7XY2) (8XY2) (9XY2) (10XY2) (11XY2) (12XY2)
::===============================================================================================
:: Call this batch file to use the engine. Call it after @echo off of YOUR game.
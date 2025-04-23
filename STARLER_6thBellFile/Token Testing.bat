@echo off 
chcp 65001 >nul
::Place this engine at the beginning of the code of the software.
::CALL (The file location it is in,)/JX-BatchEngine.bat
title %IMPORT-VAR:GameName%
SETLOCAL EnableDelayedExpansion
for /F "tokens=1,2 delims=#" %%a in ('"prompt #$H#$E# & echo on & for %%b in (1) do     rem"') do (
  set "DEL=%%a"
)
call :colorEcho 0C "                      Made Using JX-BatchEngine                            "
call :colorEcho a0 "                                                                           "
ping localhost -n 3 >nul
::GridDefine
set playerGrid=█
::(Make 9 of numbers for 9 Leters)

:Grid_creator
cls
call :colorEcho F0 "--------------------------JX-BatchEngine--------------------------"
pause >nul
goto loading_screen 

:grid_setup
setlocal
set grid_width=10
set grid_height=5
goto outer_loop
:outer_loop
for /l %%i in (0, 1, %grid_height%) do (
    set "line="
    :inner_loop
    for /l %%i in (0, 1, %grid_width%) do (
        set "line=!line!+---"
    )
    echo !line!+
    
    if %%y LSS %grid_height% (
      set "line=" 
      for /l %%i in (0, 1, %grid_width%) do (
        set "line=!line!|   "
      )
      echo !line!|
    )
)
endlocal 



:loading_screen 
cls
echo. 
echo.
echo.
echo                                                                            █████████████████
echo                                                                            █ Please Wait...█
echo                                                                            █████████████████
ping localhost -n 4 >nul
goto playerMovement

::Always name the one of the labels - Main Titlescreen.
::This engine displays color, and defines other things used in games
::This engine is made specifically for batch, however, translating it into other languages 
:: may let it work but less likely.

:playerMovement 
cls
for %%i in (0,0,0) do (

)
pause >nul
exit



::       --------Moving the player.----------
choice /c wasd /n 
if %errorlevel% == w 
if %errorlevel% == a 
if %errorlevel% == s  
if %errorlevel% == d 


::Keep at the end of the code
:colorEcho
echo off
<nul set /p ".=%DEL%" > "%~2"
findstr /v /a:%1 /R "^$" "%~2" nul
del "%~2" > nul 2>&1i

rem (For future reference)
::for /l %%a in (1,1,%grid_height%) do (
::  for /l %%b in (1,1,%grid_width%) do (
::        echo. %Your_Variable%
::  )
::  echo.
::)
::
rem This is the way you use the grid. Place objects in certain spots.
:: With this you add the choice command in order to not have to use "ENTER" key to 
:: move the player.
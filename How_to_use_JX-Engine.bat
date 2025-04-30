@echo off 
::IMPORT-Menu label is built into the engine. 
::to open the menu. You can build the menu yourself.
::However, always place the menu, in the IMPORT-Menu label.
call Jx-BatchEngine
goto in-gameVar

:in-gameVar


:IMPORT-Menu
cls
echo   ████████████████████████████████████████████
echo   █ 
echo   █
echo   ████████████████████████████████████████████




:area1
:: To change the controls, you'll have to 
:: place the controls under IMPORT.playerMovement in JX-BatchEngine, in 
:: a new copy of the file. 
echo off 
set color1=F0
call :colorEcho !color1! "HP !HP!"
echo.
call :IMPORT.playerMovement





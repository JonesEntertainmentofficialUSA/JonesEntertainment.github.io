@echo off
chcp 65001 >nul
::The sprites
set p1=👨
set b=██
set g=⬛
goto create_grid

:create_grid      
::---------------------------------------------------::
:: X grid - Can be changed from player's moves.      ::
::---------------------------------------------------::
set x1=0
set x2=0
set x3=0
set x4=0
set x5=0
::---------------------------------------------------::
:: Y grid - Can also be changed from player's moves. ::
::---------------------------------------------------::
set y1=0
set y2=0
set y3=0
set y4=0
set y5=0
::Defines the main grid
if %x1% == 0 if %x2% == 0 if %x3% == 0 if %x4% == 0 if %x5% == 0 set grid_x=%b%%b%%b%%b%%b%
if %y1% == 0 if %y2% == 0 if %y3% == 0 if %y4% == 0 if %y5% == 0 set grid_y=%b%

::Combining these grids
goto main

:main
echo %grid_x%
echo %grid_y%
echo %grid_x%
pause >nul
goto main

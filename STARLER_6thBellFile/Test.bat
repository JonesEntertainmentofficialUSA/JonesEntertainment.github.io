


@echo off

:: Save the original color (for restoring at the end)
for /f "tokens=2 delims==" %%I in ('"prompt $E"') do set "ESC=%%I"

:: Set initial color to white text on black background
color 0F

:: Display first colored text (Red)
color 4F
echo This is red text.

:: Move to next line
echo.

:: Display second colored text (Green)
color 2F
echo This is green text.

:: Move to next line
echo.

:: Display third colored text (Blue)
color 1F
echo This is blue text.

:: Move to next line
echo.

:: Display fourth colored text (Yellow)
color 6F
echo This is yellow text.

:: Reset to default color (White on Black)
color 0F
echo Reset to default color.

:: End
Pause

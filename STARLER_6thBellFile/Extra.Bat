@echo off
color 0A
cls

:: Initialize game variables
set playerX=2
set playerY=2
set playerHP=100
set playerATK=10
set playerDEF=5
set gold=0
set maxHP=100

:: Game title and introduction
echo Welcome to the Batch RPG Game!
echo You are at the center of the world, move around, fight monsters, and shop.
echo Use WASD to move (W=up, A=left, S=down, D=right).
echo Press Q to quit the game.
echo.
pause

:: Main game loop
:gameLoop
cls
call :drawGrid
call :handleInput
call :randomEncounter
goto gameLoop

:: Draw Grid
:drawGrid
:: Use Unicode block characters for a better grid appearance
echo.
for /L %%y in (0,1,4) do (
    for /L %%x in (0,1,4) do (
        if %%x==%playerX% if %%y==%playerY% (
            echo|set /p= O
        ) else (
            echo|set /p= .
        )
    )
    echo.
)
goto :eof

:: Handle Input (WASD movement)
:handleInput
set /p move=Move (WASD): 
if /I "%move%"=="W" if %playerY% gtr 0 set /a playerY-=1
if /I "%move%"=="S" if %playerY% lss 4 set /a playerY+=1
if /I "%move%"=="A" if %playerX% gtr 0 set /a playerX-=1
if /I "%move%"=="D" if %playerX% lss 4 set /a playerX+=1
if /I "%move%"=="Q" exit
goto :eof

:: Random encounter
:randomEncounter
:: Random chance to encounter a monster
set /a encounterChance=%RANDOM% %% 5
if %encounterChance%==0 (
    call :battle
)
goto :eof

:: Battle sequence
:battle
cls
echo You encountered a wild monster!
:: Initialize monster stats
set monsterHP=50
set monsterATK=8
set monsterDEF=3
echo Monster HP: %monsterHP%  Your HP: %playerHP%
pause
:: Battle loop
:combatLoop
cls
echo Your HP: %playerHP%  Monster HP: %monsterHP%
echo [A] Attack   [R] Run
set /p action=Choose action:
if /I "%action%"=="A" (
    :: Player attack
    set /a damage=%playerATK% - %monsterDEF%
    if %damage% lss 1 set damage=1
    set /a monsterHP-=damage
    echo You dealt %damage% damage to the monster!
    if %monsterHP% lss 1 goto :victory
)
if /I "%action%"=="R" goto :escape
:: Monster turn
set /a damage=%monsterATK% - %playerDEF%
if %damage% lss 1 set damage=1
set /a playerHP-=damage
echo The monster dealt %damage% damage to you!
if %playerHP% lss 1 goto :gameOver
goto :combatLoop

:: Victory
:victory
cls
echo You defeated the monster!
set /a gold+=10
pause
goto :eof

:: Game Over
:gameOver
cls
echo You have been defeated!
echo Game Over.
pause
exit
:: Check for Shop encounter
if %playerX%==4 if %playerY%==4 (
    call :enterShop
)

:: Enter Shop
:enterShop
cls
echo Welcome to the Shop! You have %gold% gold.
echo [1] Heal for 20 HP (Cost: 10 gold)
echo [2] Exit Shop
set /p shopChoice=Choose an option:
if %shopChoice%==1 (
    if %gold% GEQ 10 (
        set /a playerHP+=20
        if %playerHP% gtr %maxHP% set playerHP=%maxHP%
        set /a gold-=10
        echo You healed for 20 HP!
    ) else (
        echo Not enough gold!
    )
)
if %shopChoice%==2 goto :eof
goto :enterShop

:: Boss Battle at coordinates (4,4)
if %playerX%==4 if %playerY%==4 (
    call :bossBattle
)

:: Boss Battle Function
:bossBattle
cls
echo You've encountered the final boss!
set bossHP=200
set bossATK=20
set bossDEF=10
echo Boss HP: %bossHP%  Your HP: %playerHP%
pause
:combatLoopBoss
cls
echo Your HP: %playerHP%  Boss HP: %bossHP%
echo [A] Attack   [R] Run
set /p action=Choose action:
if /I "%action%"=="A" (
    set /a damage=%playerATK% - %bossDEF%
    if %damage% lss 1 set damage=1
    set /a bossHP-=damage
    echo You dealt %damage% damage to the boss!
    if %bossHP% lss 1 goto :victory
)
if /I "%action%"=="R" goto :escape
:: Boss turn
set /a damage=%bossATK% - %playerDEF%
if %damage% lss 1 set damage=1
set /a playerHP-=damage
echo The boss dealt %damage% damage to you!
if %playerHP% lss 1 goto :gameOver
goto :combatLoopBoss

:: Victory
:victory
cls
echo You have defeated the boss and won the game!
pause
exit
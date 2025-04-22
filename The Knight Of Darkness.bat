@echo off
chcp 65001 >nul
set INFO=      All Data and information is created by Jones Entertainment. For The Knight Of Darkness. 
title The Knight of Darkness
color  F0
::           Code Made by Jones Entertainment (c) 
::                2024
echo                               JONES 
echo                               ----- (c)          Presents...
echo                                ENT 
echo.
ping localhost -n 6 >nul 
::MainVariables
:VAR0
cls                       
set lv=1
set f=0
set RE=0
set EXP=0
set G=0
set ATK=10
set DEF=5
set SPD=5
set PWR=10
set INT=5
set MP=0
set HP=100
set MAXHP=100
set aim_f1=0
goto VAR2
:VAR2
::Item Variables
set ITEM1=3
set ITEM1_NAME=Potion
set ITEM2=0
set ITEM2_NAME=Elixir
set ITEM3=0
set ITEM3_NAME=Escape Rope
set ITEM4=0
set ITEM4_NAME=FIRE BOTTLE
set ITEM5=0
set ITEM5_NAME=Full Heal
set Treasure1=YES
set BOSS1RANK=NO
goto VAR3
:VAR3
if %ITEM1% GEQ 1 set Item.Potion=%ITEM1%
if not %ITEM1% GEQ 1 set Item.Potion=0
goto VAR4

:VAR4
set SKILL1=DOUBLE SLASH
set SKILL2=TRIPLE SLASH
set SKILL3=FREEZE 
set SKILL4=FREEZAGA
set SKILL5=BURN
set SKILL6=BURNING
set SKILL7=THUNDER
set SKILL8=THUNDARE
set skill.1=NONE
set skill.2=NONE
set skill.3=NONE
set skill.4=NONE
set skill.5=NONE
set skill.6=NONE
set skill.7=NONE
set skill.8=NONE
goto VAR5

:VAR5
set tres=([v])
goto titleScreen
::------------------------------------------------------------------------------------------------::
:: Indicates where the player will goto if there is no 'F' variable change.                       ::
:: Locator is for labels that don't change the variable "F" such as the menu, as it will return to::
:: to the current label that "f" equals if you leave the menu.                                    ::
::------------------------------------------------------------------------------------------------::
:Locator
if not %RE% LEQ 4 goto Bat_Check
if %f% == 0 goto titleScreen 
if %f% == 1 goto HomeTown1.0
if %f% == 2 goto HomeTown1.1
if %f% == 3 goto HomeTown1.2
if %f% == 4 goto HomeTown1.3
if %f% == 5 goto HomeTown1.4
if %f% == 6 goto HomeTown1.5
if %f% == 7 goto HomeTown1.6
if %f% == 8 goto HomeTown1.7
if %f% == 9 goto HomeTown1.8
if %f% == 10 goto Forest1.0
if %f% == 11 goto Forest1.1
if %f% == 12 goto Forest1.2
if %f% == 13 goto Forest1.3
if %f% == 14 goto Lake1.0
if %f% == 15 goto Lake1.1
if %f% == 16 goto Lake1.2
if %f% == 17 goto Lake1.3 
::-------------------------------------------------------------------------------------------------------------------::
:: If the player goes to the menu, the Locator will make sure the player returns to the area it was before the player:: 
:: went to the menu.                                                                                                 ::
::-------------------------------------------------------------------------------------------------------------------::
:HomeTown1.0
cls      
if %RE% == 5 goto Bat_Check
set f=1  
echo           ****************************************************************************
echo           *  ooooo                                                                   *     
echo           * ooooooo                                                                  * 
echo           *  0ooo0                                                                   *
echo           *___[ ]___________________________________________________________________ *            
echo           *   [_]                                                                    * 
echo           *_________________________________________________________________________ *    
echo           *                                 /===========/                            *
echo           *                                /===========/                             *
echo           *                               /===========/                              *
echo           *                              /===========/                               *
echo           *                             /===========/                                *
echo           *                            /===========/                                 *
echo           *---------------------------/===========/--------------------------------- *
echo           *      (/0_0)                                                              *
echo           *      [] :]]                                                              *
echo           *       [][]                                                               *
echo           *                                                                          *
echo           *_________________________________________________________________________ *
echo           *ooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooo *
echo           *~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ *
echo           ****************************************************************************
set /p num=
::------------------------------------------------------------------------------::
::Row1(RandomEnounters(RE)If RE equals 5, then the player will enter a battle. )::
::------------------------------------------------------------------------------::
if %num% == s @set /A "RE=%RE%+1"
if %num% == w @set /A "RE=%RE%+1"
if %num% == d @set /A "RE=%RE%+1"
if %num% == a @set /A "RE=%RE%+1"
::-------------------::
::Row2(Main Controls)::
::-------------------::
if %num% == e goto Menu
if %num% == d goto HomeTown1.1
if %num% == a goto HomeTown1.0
:HomeTown1.1
cls
if %RE% == 5 goto Bat_Check
set f=2
echo           ****************************************************************************
echo           *  ooooo                                                                   *     
echo           * ooooooo                                                                  * 
echo           *  0ooo0                                                                   *
echo           *___[ ]___________________________________________________________________ *            
echo           *   [_]                                                                    * 
echo           *_________________________________________________________________________ *    
echo           *                                 /===========/                            *
echo           *                                /===========/                             *
echo           *                               /===========/                              *
echo           *                              /===========/                               *
echo           *                             /===========/                                *
echo           *                            /===========/                                 *
echo           *---------------------------/===========/--------------------------------- *
echo           *                   (/0_0)                                                 *
echo           *                   [] :]]                                                 *
echo           *                    [][]                                                  *
echo           *                                                                          *
echo           *_________________________________________________________________________ *
echo           *ooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooo *
echo           *~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ *
echo           ****************************************************************************
set /p num=
::------------------------------------------------------------------------------::
::Row1(RandomEnounters(RE)If RE equals 5, then the player will enter a battle. )::
::------------------------------------------------------------------------------::
if %num% == s @set /A "RE=%RE%+1"
if %num% == w @set /A "RE=%RE%+1"
if %num% == d @set /A "RE=%RE%+1"
if %num% == a @set /A "RE=%RE%+1"   
::-------------------::
::Row2(Main Controls)::
::-------------------::
if %num% == e goto Menu
if %num% == d goto HomeTown1.2
if %num% == a goto HomeTown1.0
:: Extra notes: 

:Bat_Check
cls
if not %RE% == 5 goto Locator
if %RE% == 5 goto Fight1 

:Menu
cls
echo      ████████████████████████████████████████████████
echo      █ 1.) ITEM █ 2.) SKILL █ 3.) STAT  █ 4.) EXIT  █
echo      ████████████████████████████████████████████████
echo.
echo         %HP%/%MAXHP%HP                G %G% 
echo.
echo         SAVE ('S')                          
echo.      
set /p num=
if %num% == 1 goto item
if %num% == 2 goto skil
if %num% == 3 goto stat
if %num% == 4 goto Locator
if %num% == s goto Create_SaveFile

:skil
cls
echo    ********************************************************
echo    *                     SKILL                            *
echo    ********************************************************
echo        NAME:           DAMAGE:             MP COST:                   
echo    ========================================================
echo    1.) %skill.1%       %S1DMG%               %MPC1%       
echo    2.) %skill.2%       %S2DMG%               %MPC2%
echo    3.) %skill.3%       %S3DMG%               %MPC3%
echo    4.) %skill.4%       %S4DMG%               %MPC4%
echo    5.) %skill.5%       %S5DMG%               %MCP5%
echo    6.) %skill.6%       %S6DMG%               %MPC6%
echo    7.) %skill.7%       %S7DMG%               %MPC7%
echo    8.) %skill.8%       %S8DMG%               %MPC8%
pause >nul
goto Menu


:item
cls
echo     Press C to go back to menu...
echo     =====================================
echo     ITEM -
echo     =====================================
echo     %ITEM1_NAME% \\ %ITEM1% 
echo     %ITEM2_NAME% \\ %ITEM2%
echo     %ITEM3_NAME% \\ %ITEM3% 
echo     %ITEM4_NAME% \\ %ITEM4%
echo     %ITEM5_NAME% \\ %ITEM5%
echo     =====================================
set /p num=
if %num% == 1 goto Amount_I1
if %num% == 2 goto Amount_I2
if %num% == 3 goto Amount_I3
if %num% == c goto Menu
::
:Amount_I1
if not %ITEM1% == 0 goto Absorb_I1
if %ITEM1% == 0 goto NotEnough

:Amount_I2
if not %ITEM2% == 0 goto Absorb_I2
if %ITEM2% == 0 goto NotEnough

:Amount_I3
if not %ITEM2% == 0 goto Absorb_I3
if %ITEM1% == 0 goto NotEnough

:Absorb_I1
if not %HP% == %MAXHP% goto HP_CHANGE
if %HP% == %MAXHP% goto item

:Absorb_I2
@set /A "ITEM2=%ITEM2%-1"
@set /A "MP=%MP%+25"
echo   Magic Power Increased.
echo           (v)
pause >nul
goto item 

:HP_CHANGE
set num=1
if %num% == 1 @set /A "HP=%HP%+50"
if %num% == 1 goto HPcheck
::-----------------------------------------------------------------------------::
:: Absorb Item 1, subtracts item amount by 1. If used. If not used.            ::
::If HP is full, make a program and/or label that doesn't decrease Item amount.::
::-----------------------------------------------------------------------------::
:NotEnough
echo           ***************************************
echo           * You don't seem to have this item... *      
echo           ***************************************
pause >nul 
goto item
::
::
:HPcheck
if %HP% GTR %MAXHP% set HP=%MAXHP%
goto itemUsage.Potion

:itemUsage.Potion
echo       You recovered.
echo           (v)
@set /A "ITEM1=%ITEM1%-1"
pause >nul
goto item

:stat
cls
echo                         %name%
echo                ATTACK:  %ATK% - POWER: %PWR%
echo                DEFENSE: %DEF%    ---
echo                SPEED:   %SPD%    ---
echo                INTEL:   %INT%    ---
echo                LEVEL:    %lv%    ---
pause >nul
goto Menu

:titleScreen 
set RE=0
cls
echo                          KNIGHT OF DARK
echo                        ██████████████████
echo                        █  1  START      █
echo                        █  2  CONTINUE   █
echo                        █  3  SETTINGS   █
echo                        █  4  EXIT       █
echo                        ██████████████████
set /p num=
if %num% == 1 goto beginning
if %num% == 2 goto Continue 
if %num% == 3 goto SETTINGS
if %num% == 4 exit
:beginning 
cls
echo.                      
echo                  connecting...
ping localhost -n 3 >nul
cls
echo.
ping localhost -n 2 >nul
cls
echo                  CONNECTED.
ping localhost -n 2 >nul
cls
echo                  ARE YOU THERE?
ping localhost -n 2 >nul
cls
echo                  GREAT.
ping localhost -n 2 >nul
cls
echo                  WELCOME.
ping localhost -n 2 >nul
cls
echo                                        ██████████████████████
echo                                        █ WHAT IS YOUR NAME? █
echo                                        ██████████████████████
set /p name=              
pause >nul
goto HomeTown1.0

:Fight1
color 0F
ping localhost -n 1 >nul
color F0
ping localhost -n 1 >nul
color 0F
ping localhost -n 1 >nul
color F0
if %random% GTR %random% set EMY_HP=50
if %random% LSS %random% set EMY_HP=100
if %random% GEQ %random% set EMY_HP=25
set Enemy_attack=10
goto BATTLE_1

:BATTLE_1
cls                       
echo                                        {:)}\\
echo                   (/o_)                    \ \
echo                   [\\)----                  []
echo                  // \\                      []
echo     [ATTACK] 1
echo     [SKILL]  2
echo     [ITEM]   3
echo     [RUN]    4
echo.
echo     HP: %HP%  MP: %MP%                     %EMY_HP% ENEMY HEALTH
set /p num=
if %num% == 1 goto F1_ATTACK
if %num% == 2 goto F1_SKILL
if %num% == 3 goto F1_ITEM
if %num% == 4 goto RunChance

:F1_SKILL
set gg=0
echo    ********************************************************
echo    *                     SKILL                            *
echo    ********************************************************
echo        NAME:           DAMAGE:             MP COST:                   
echo    ========================================================
echo    1.) %skill.1%       %S1DMG%               %MPC1%       
echo    2.) %skill.2%       %S2DMG%               %MPC2%
echo    3.) %skill.3%       %S3DMG%               %MPC3%
echo    4.) %skill.4%       %S4DMG%               %MPC4%
echo    5.) %skill.5%       %S5DMG%               %MCP5%
echo    6.) %skill.6%       %S6DMG%               %MPC6%
echo    7.) %skill.7%       %S7DMG%               %MPC7%
echo    8.) %skill.8%       %S8DMG%               %MPC8%
set /p num= 
if %num% == 0 goto BATTLE_1
::
if %num% == 1 set skillUsage=S1
if %num% == 1 goto SKILLCHECK_F1
::
if %num% == 2 set skillUsage=S2
if %num% == 2 goto SKILLCHECK_F1
::
if %num% == 3 set skillUsage=S3
if %num% == 3 goto SKILLCHECK_F1
::
if %num% == 4 set skillUsage=S4
if %num% == 4 goto SKILLCHECK_F1
::
if %num% == 5 set skillUsage=S5
if %num% == 5 goto SKILLCHECK_F1
::
if %num% == 6 set skillUsage=S6
if %num% == 6 goto SKILLCHECK_F1
::
if %num% == 7 set skillUsage=S7
if %num% == 7 goto SKILLCHECK_F1
::
if %num% == 8 set skillUsage=S8
if %num% == 8 goto SKILLCHECK_F1
else(
    goto BATTLE_1
)

:SKILLCHECK_F1
if %skillUsage% == S1 goto SKILL1_F1
if %skillUsage% == S2 goto SKILL2_F1
else(
    goto BATTLE_1
)

:SKILL1_F1
if not %skill.1% == NONE set aim_f1=2
if not %skill.1% == NONE goto Skill_1_and_2_F1
if %skill.1% == NONE goto BATTLE_1
else(
    goto BATTLE_1
)

:SKILL2_F1
if not %skill.2% == NONE set aim_f1=3
if not %skill.2% == NONE goto Skill_1_and_2_F1
if %skill.2% == NONE goto BATTLE_1
else(
    goto BATTLE_1    
)

:Skill_1_and_2_F1
cls
if %aim_f1% == 2 set giga=DOUBLE SLASH
if %aim_f1% == 3 set giga=TRIPLE SLASH
if not %gg% == %aim_f1% goto SKILL1_and_2_aimCheck_F1
if %gg% == %aim_f1% goto BATTLE_1


:SKILL1_and_2_aimCheck_F1
echo      ********************************************
echo                    %giga%                
echo      ********************************************
echo.
echo.
echo.
echo               \                        {:)}\\
echo                '/ (/o_)                    \ \
echo                  \\\ ]                      []
echo                  // \\                      []
@set /A "EMY_HP=%EMY_HP%-%ATK%"
@set /A "gg=%gg%+1"
if %gg% == %aim_f1% goto BATTLE_1
ping localhost -n 1 >nul
goto Skill_1_and_2_F1


:F1_ITEM
echo.
echo                 USE ITEM-
echo     =====================================
echo     ITEM -
echo     =====================================
echo     %ITEM1_NAME% \\ %ITEM1% 
echo     %ITEM2_NAME% \\ %ITEM2%
echo     %ITEM3_NAME% \\ %ITEM3% 
echo     %ITEM4_NAME% \\ %ITEM4%
echo     %ITEM5_NAME% \\ %ITEM5% 
echo     =====================================
set /p num=
if %num% == 1 goto Using_Item1_F1
if %num% == 2 goto Using_Item2_F1
if %num% GEQ 6 goto BATTLE_1

:Using_Item1_F1
if not %ITEM1% GEQ 1 goto none
if %ITEM1% GEQ 1 goto healing_F1

:none
echo.
echo                           NONE LEFT
ping localhost -n 3 >nul
goto F1_ITEM

:healing_F1
if %HP% == %MAXHP% goto F1_ITEM
if not %HP% == %MAXHP% goto HP_check

:HP_check
if %HP% GEQ 60 set HP=%MAXHP% 
if %HP% LEQ 50 @set /A "HP=%HP%+50"
goto BATTLE_1

:RunChance
if %random% LEQ %random% goto Run_fail
if %random% GEQ %random% goto Locator
:Run_fail
echo                   YOU FAILED TO GET AWAY!!
echo                           (v)
pause >nul
goto EnemyTurn
:F1_ATTACK
cls
echo               \                        {:)}\\
echo                '/ (/o_)                    \ \
echo                  \\\ ]                      []
echo                  // \\                      []
echo     [ATTACK] 1
echo     [SKILL]  2
echo     [ITEM]   3
echo     [RUN]    4
echo.
echo     HP: %HP%  MP: %MP%                   %EMY_HP% ENEMY HEALTH
ping localhost -n 1 >nul
color 00
@set /A "EMY_HP=%EMY_HP%-ATK"
color F0
cls                                  
echo                                                    !!
echo                                              //{O:}
echo                   (/o_)                     / /   
echo                   [\\)----                  []
echo                  // \\                      []
echo     [ATTACK] 1
echo     [SKILL]  2
echo     [ITEM]   3
echo     [RUN]    4
echo.
echo     HP: %HP%  MP: %MP%                   %EMY_HP% ENEMY HEALTH
ping localhost -n 2 >nul
if %EMY_HP% LEQ 0 goto VictoryBasicBattle
else(
    goto EnemyTurn
    )
:VictoryBasicBattle
cls                       
echo                                                ///
echo                   (/o_)                       ///
echo                   [\\)----                   ///
echo                  // \\                      ///
echo     ENEMY DEFEATED!!
echo.
ping localhost -n 2 >nul
@set /A "EXP=%EXP%+1"
@set /A "G=%G%+10"
goto EXPCheck1

:EXPCheck1
echo         -- BATTLE OVER --
echo            %name% WON!
echo.           
echo           █ █ █  @  ███ 
echo            █ █   █  █ █
echo.
echo                (v)
pause >nul
goto EXPCheck2


:EXPCheck2
if not %EXP% == 5 goto nextEXPCheck
echo.  
echo  %name% leveled up!              
echo.      
echo    ███         ████       █  █ █   █ █ ██
echo    ███      ███████       ██  █    ███ █
echo █████████      ████
echo    ███         ████
echo    ███     ████████████
echo.
echo                      (v)
pause >nul
if %EXP% GEQ 5 @set /A "ATK=%ATK%+10"
if %EXP% GEQ 5 @set /A "DEF=%DEF%+10"
if %EXP% GEQ 5 @set /A "INT=%INT%+10"
if %EXP% GEQ 5 @set /A "SPD=%SPD%+10"
if %EXP% GEQ 5 @set /A "PWR=%PWR%+10"
if %EXP% GEQ 5 @set /A "MP=%MP%+20"
if %EXP% GEQ 5 @set /A "MAXHP=%MAXHP%+100"
if %EXP% GEQ 5 @set /A "lv=%lv%+1"
goto nextEXPcheck
:nextEXPcheck
if %EXP% GEQ 5 set EXP=0
set RE=0
goto new_skill_check

:new_skill_check
if %lv% == 3 set skill.1=%SKILL1%
if %lv% == 6 set skill.2=%SKILL2%
goto Locator

:HomeTown1.2
cls
if %RE% == 5 goto Bat_Check
set f=3
echo           ****************************************************************************
echo           *  ooooo                                                                   *     
echo           * ooooooo                                                                  * 
echo           *  0ooo0                                                                   *
echo           *___[ ]___________________________________________________________________ *            
echo           *   [_]                                                                    * 
echo           *_________________________________________________________________________ *    
echo           *                                 /===========/                            *
echo           *                                /===========/                             *
echo           *                               /===========/                              *
echo           *                              /===========/                               *
echo           *                             /===========/                                *
echo           *                            /===========/                                 *
echo           *---------------------------/===========/--------------------------------- *
echo           *                              (/0_0)                                      *
echo           *                              [] :]]                                      *
echo           *                               [][]                                       *
echo           *                                                                          *
echo           *_________________________________________________________________________ *
echo           *ooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooo *
echo           *~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ *
echo           ****************************************************************************
set /p num=
if %num% == s @set /A "RE=%RE%+1"
if %num% == w @set /A "RE=%RE%+1"
if %num% == d @set /A "RE=%RE%+1"
if %num% == a @set /A "RE=%RE%+1"
::Row2(Main Controls)
if %num% == e goto Menu
if %num% == d goto HomeTown1.3
if %num% == a goto HomeTown1.1
if %num% == w goto HomeTown1.4
:HomeTown1.3
cls
if %RE% == 5 goto Bat_Check
set f=4
echo           ****************************************************************************
echo           *  ooooo                                                                   *     
echo           * ooooooo                                                                  * 
echo           *  0ooo0                                                                   *
echo           *___[ ]___________________________________________________________________ *            
echo           *   [_]                                                                    * 
echo           *_________________________________________________________________________ *    
echo           *                                 /===========/                            *
echo           *                                /===========/                             *
echo           *                               /===========/                              *
echo           *                              /===========/                               *
echo           *                             /===========/                                *
echo           *                            /===========/                                 *
echo           *---------------------------/===========/--------------------------------- *
echo           *                                                (/0_0)                    *
echo           *                                                [] :]]                    *
echo           *                                                 [][]                     *
echo           *                                                                          *
echo           *_________________________________________________________________________ *
echo           *ooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooo *
echo           *~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ *
echo           ****************************************************************************
set /p num=
if %num% == s @set /A "RE=%RE%+1"
if %num% == w @set /A "RE=%RE%+1"
if %num% == d @set /A "RE=%RE%+1"
if %num% == a @set /A "RE=%RE%+1"
::Row2(Main Controls)
if %num% == e goto Menu
if %num% == d goto HomeTown1.3
if %num% == a goto HomeTown1.2
:HomeTown1.4
cls
if %RE% == 5 goto Bat_Check
set f=5
echo           ****************************************************************************
echo           *  ooooo                                                                   *     
echo           * ooooooo                           (/0_0)                                 * 
echo           *  0ooo0                            [] :]]                                 *
echo           *___[ ]______________________________[][]_________________________________ *            
echo           *   [_]                                                                    * 
echo           *_________________________________________________________________________ *    
echo           *                                 /===========/                            *
echo           *                                /===========/                             *
echo           *                               /===========/                              *
echo           *                              /===========/                               *
echo           *                             /===========/                                *
echo           *                            /===========/                                 *
echo           *---------------------------/===========/--------------------------------- *
echo           *                                                                          *
echo           *                                                                          *
echo           *                                                                          *
echo           *                                                                          *
echo           *_________________________________________________________________________ *
echo           *ooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooo *
echo           *~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ *
echo           ****************************************************************************
set /p num=
if %num% == s @set /A "RE=%RE%+1"
if %num% == w @set /A "RE=%RE%+1"
if %num% == a @set /A "RE=%RE%+1"
::Row2(Main Controls)
if %num% == e goto Menu
if %num% == s goto HomeTown1.2
if %num% == a goto HomeTown1.4
if %num% == d goto HomeTown1.5

:EnemyTurn
cls
echo                     !!                {:D}\\
echo                   (/!o)                    \ \
echo                   [\\0[]][][][][][][][]]][][]
echo                  // //                 
ping localhost -n 2 >nul
@set /A "HP=%HP%-%Enemy_attack%"
goto HP_Check
:HP_Check
if not %HP% LEQ 0 goto BATTLE_1
if %HP% LEQ 0 goto GAME_OVER 

:GAME_OVER
cls
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo                                                    ███████████
echo                                                    █GAME OVER█
echo                                                    ███████████
ping localhost -n 4 >nul
set HP=%MAXHP%
goto titleScreen


:Create_SaveFile
cls
echo                                               -- FILE  SETTINGS --
echo                                       ************************************
echo                                                  [SAVE GAME(1)]
echo                                                  [CONTINUE (2)]
echo                                                  [EXIT GAME(3)]
set /p num=                                                                    (x = Back)
if %num% == 1 goto save
if %num% == 2 goto Continue 
if %num% == 3 goto DblCheck
if %num% == x goto Locator

:DblCheck
cls
echo                                                  CLOSE THE GAME?
echo.
echo                                                    ███████████
echo                                                    █  (Y/N)  █
echo                                                    ███████████
set /p num=
if %num% == y exit 
if %num% == n goto Create_SaveFile
else (
    goto Create_SaveFile
)

:save
set Save_Date=%DATE%
echo.
echo.
echo.
echo.
echo Saving The-Knight-Of-Darkness-SAVEFILE.txt....
(
echo %name%
echo %lv%
echo %f%
echo %RE%
echo %EXP%
echo %G%
echo %ATK%
echo %DEF%
echo %SPD%
echo %PWR%
echo %INT%
echo %MP%
echo %HP%
echo %MAXHP%
echo %aim_f1%
echo %ITEM1%
echo %ITEM1_NAME%
echo %ITEM2%
echo %ITEM2_NAME%
echo %ITEM3%
echo %ITEM3_NAME%
echo %ITEM4%
echo %ITEM4_NAME%
echo %ITEM5%
echo %ITEM5_NAME%
echo %Treasure1%
echo %BOSS1RANK%
echo %SKILL1%
echo %SKILL2%
echo %SKILL3%
echo %SKILL4%
echo %SKILL5%
echo %SKILL6%
echo %SKILL7%
echo %SKILL8%
echo %skill.1% 
echo %skill.2%
echo %skill.3%
echo %skill.4%
echo %skill.5%
echo %skill.6%
echo %skill.7%
echo %skill.8%
echo %INFO%
)>The-Knight-Of-Darkness-SAVEFILE.txt
goto Locator

:Continue
cls
echo                                                    CONTINUE OLD SAVE?
set /p num= [Y/N]
if %num% == y goto OLD_GAME_SAVE 
if %num% == n goto Locator

:OLD_GAME_SAVE
(
set /p name= 
set /p lv=
set /p f=
set /p RE=
set /p EXP=
set /p G=
set /p ATK=
set /p DEF=
set /p SPD=
set /p PWR=
set /p INT=
set /p MP=
set /p HP=
set /p MAXHP=
set /p aim_f1=
set /p ITEM1=
set /p ITEM1_NAME=
set /p ITEM2=
set /p ITEM2_NAME=
set /p ITEM3=
set /p ITEM3_NAME=
set /p ITEM4=
set /p ITEM4_NAME=
set /p ITEM5=
set /p ITEM5_NAME=
set /p Treasure1=
set /p BOSS1RANK=
set /p SKILL1=
set /p SKILL2=
set /p SKILL3=
set /p SKILL4=
set /p SKILL5=
set /p SKILL6=
set /p SKILL7=
set /p SKILL8=
set /p skill.1=
set /p skill.2=
set /p skill.3=
set /p skill.4=
set /p skill.5=
set /p skill.6=
set /p skill.7=
set /p skill.8=
set /p INFO=
)<The-Knight-Of-Darkness-SAVEFILE.txt
goto Locator

:HomeTown1.5
cls 
set f=6
echo   *******************************************************************************
echo   *                                                                      
echo   *  ooooo    ooooo
echo   * ooooooo  ooooooo
echo   *  0ooo0    0ooo0
echo   *   [ ]      [ ]
echo   *   [_]      [_]
echo   *     
echo   *
echo   *
echo   *  ____________________                        ____________
echo   *  [__\___\___\___\____\                      /[][][][][][]\
echo   *  {___\___\___\___\___\                     ////////////\\\\
echo   *  [                   ]                     [   WEAPONS    ]
echo   *  [                   ]                     [  ______      ]   (0_0)
echo   *  [     [-----] INN   ]                     [  [    ]      ]   []:[]
echo   *  [     [     ]       ]                     [  [    ]      ]    []]
echo   *  [     [     ]       ]                     [  [    ]      ]
echo   *  =====================                     ================
echo   *        (/0_0)
echo   *        [] :]]
echo   *         [][]                                                                 
echo   *******************************************************************************
set /p num=
if %num% == a goto HomeTown1.4
if %num% == w goto INN_Town1
if %num% == s goto HomeTown1.5
if %num% == d goto HomeTown1.6
if %num% == e goto Menu

::Hotel code{
:INN_Town1
cls
echo  ***********************************************
echo  * Welcome to the INN! What would you like to  *
echo  * do?                                         *
echo  ***********************************************
echo     (/0_0)        (0_0\)
echo     [] :]]  [][] /(   _)\
echo      [][]   [][]  /__/ \
echo =============================================
echo 1) Stay Over Night [30G]
echo 2) Leave           [00G]
set /p num=
if %num% == 1 goto G_check_INN
if %num% == 2 goto locator

:G_check_INN
if %G% LEQ 29 goto NotEnough_INN
if %G% GEQ 30 @set /A "G=%G%-30"
goto Good_Night_INN1

:Good_Night_INN1
ping localhost -n 3 >nul
set HP=%MAXHP%
color 0F
ping localhost -n 3 >nul
color F0
goto INN_Town1

:NotEnough_INN
echo        YOU DON'T HAVE ENOUGH!! 
echo.
pause >nul
goto INN_Town1
::}


:HomeTown1.6
cls 
set f=7
echo   *******************************************************************************
echo   *
echo   *  ooooo    ooooo
echo   * ooooooo  ooooooo
echo   *  0ooo0    0ooo0
echo   *   [ ]      [ ]
echo   *   [_]      [_]
echo   *
echo   *
echo   *
echo   *  ____________________                        ____________
echo   *  [__\___\___\___\____\                      /[][][][][][]\
echo   *  {___\___\___\___\___\                     ////////////\\\\
echo   *  [                   ]                     [   WEAPONS    ]
echo   *  [                   ]                     [  ______      ]   (0_0)
echo   *  [     [-----] INN   ]                     [  [    ]      ]   []:[]
echo   *  [     [     ]       ]                     [  [    ]      ]    []]
echo   *  [     [     ]       ]                     [  [    ]      ]
echo   *  =====================                     ================
echo   *                              (/0_0)
echo   *                              [] :]]
echo   *                               [][]                                                                 
echo   *******************************************************************************
set /p num=
if %num% == a goto HomeTown1.5
if %num% == w goto HomeTown1.6
if %num% == s goto HomeTown1.6
if %num% == d goto HomeTown1.7
if %num% == e goto Menu

:HomeTown1.7
cls 
set f=8
echo   *******************************************************************************
echo   *
echo   *  ooooo    ooooo
echo   * ooooooo  ooooooo
echo   *  0ooo0    0ooo0
echo   *   [ ]      [ ]
echo   *   [_]      [_]
echo   *
echo   *
echo   *
echo   *  ____________________                        ____________
echo   *  [__\___\___\___\____\                      /[][][][][][]\
echo   *  {___\___\___\___\___\                     ////////////\\\\
echo   *  [                   ]                     [   WEAPONS    ]
echo   *  [                   ]                     [  ______      ]   (0_0)
echo   *  [     [-----] INN   ]                     [  [    ]      ]   []:[]
echo   *  [     [     ]       ]                     [  [    ]      ]    []]
echo   *  [     [     ]       ]                     [  [    ]      ]
echo   *  =====================                     ================
echo   *                                               (/0_0)
echo   *                                               [] :]]
echo   *                                                [][]                                                                 
echo   *******************************************************************************
set /p num=
if %num% == a goto HomeTown1.6
if %num% == w goto Weapon_Shop
if %num% == s goto HomeTown1.7
if %num% == d goto HomeTown1.8
if %num% == e goto Menu

:HomeTown1.8
cls 
set f=9
echo   *******************************************************************************
echo   *
echo   *  ooooo    ooooo
echo   * ooooooo  ooooooo
echo   *  0ooo0    0ooo0
echo   *   [ ]      [ ]
echo   *   [_]      [_]
echo   *
echo   *
echo   *
echo   *  ____________________                        ____________
echo   *  [__\___\___\___\____\                      /[][][][][][]\
echo   *  {___\___\___\___\___\                     ////////////\\\\
echo   *  [                   ]                     [   WEAPONS    ]
echo   *  [                   ]                     [  ______      ]   (0_0)
echo   *  [     [-----] INN   ]                     [  [    ]      ]   []:[]
echo   *  [     [     ]       ]                     [  [    ]      ]    []]
echo   *  [     [     ]       ]                     [  [    ]      ]
echo   *  =====================                     ================
echo   *                                                              (/0_0)
echo   *                                                              [] :]]
echo   *                                                               [][]                                                                 
echo   *******************************************************************************
set /p num=Press Q to talk...
if %num% == a goto HomeTown1.7
if %num% == w goto Weapon_Shop
if %num% == s goto HomeTown1.7
if %num% == d goto Forest1.0
if %num% == e goto Menu
if %num% == q goto NPC_(HomeTown1.8)

:NPC_(HomeTown1.8)
::----------------------------------------------------------::
::The Dialogue changes depending on if the boss is defeated.::
::Line below determines if BOSS 1 is defeated.              ::
::----------------------------------------------------------::
if %BOSS1RANK% == DEFEATED goto NPC_(HomeTown1.8(AfterBoss))
echo.
echo           Town's Man:
echo    ========================
echo    There has been strong 
echo    monsters spotted down 
echo    this path... Be careful...
echo             (v)
echo.   
pause >nul
goto HomeTown1.8

:NPC_(HomeTown1.8(AfterBoss))
echo          Town's Man:
echo    ==========================
echo    Knights are headed up north....
echo    I wonder what is going on up there.
echo    Apparently a Knight betrayed them...
echo    This is getting a bit serious...
echo.
echo    Are you headed to the north? 
echo    [Y/N]
echo.
set /p num=
if %num% == Y goto NPC_Yes_Dialogue_HomeTown1.8
if %num% == N goto NPC_No_Dialogue_HomeTown1.8

:NPC_Yes_Dialogue_HomeTown1.8
echo   A friend of mine is taking 
echo   a carage to the north! Would you
echo   like to take it?
echo.
echo   Take the Carage north?
echo   [Y/N]
echo.
set /p num=
if %num% == Y goto NORTH_Loading_Screen
if %num% == N goto NPC_No_Dialogue_HomeTown1.8


:NPC_No_Dialogue_HomeTown1.8
echo                  (v)
pause >nul
goto HomeTown1.8


:Weapon_Shop
cls
echo  ********************************
echo  * Welcome to the weapon store. *
echo  ********************************
echo     (/0_0)        (0_0\)
echo     [] :]]  [][] /(   _)\
echo      [][]   [][]  /__/ \
echo  =============================================
echo  1) Stone Sword  [50G]
echo  2) Potion       [10G]
echo  3) Leave         [0G]
set /p num=
if %num% == 1 goto shopping1
if %num% == 2 goto shopping2 
if %num% == 3 goto locator

:shopping1 
if %G% LEQ 49 goto not_enough_g
if %G% GEQ 50 @set /A "G=%G%-50"
goto new_equipment(StoneSword)

:shopping2 
if %G% LEQ 9 goto not_enough_g
if %G% GEQ 10 @set /A "G=%G%-10"
if %G% GEQ 10 @set /A "ITEM1=%ITEM1%+1"
goto Weapon_Shop

:new_equipment(StoneSword)
echo.
echo   ================================
echo    %name% --) ATK +50         
echo   ================================
pause >nul
@set /A "ATK=%ATK%+50"
goto Weapon_Shop

:not_enough_g
echo.
echo     You don't have enough Gold!
echo               (v)
pause >nul
goto Weapon_Shop


:Forest1.0
cls
if %RE% == 5 goto Bat_Check
set f=10
echo   **************************************************
echo   *------------------------------------------------*
echo   * Vooooo VV ooooo VV ooooo VVVVVVVVVVVVVVVVVVVVVV*
echo   * ooooooo  ooooooo  ooooooo                      *
echo   *__0ooo0____0ooo0____0ooo0_______________________*
echo   *   [ ]      [ ]      [ ]                        *
echo   *   [_]      [_]      [_]                        *
echo   *  ooooo    ooooo    ooooo      %tres%           *
echo   * ooooooo  ooooooo  ooooooo                      *
echo   *  0ooo0    0ooo0    0ooo0                       *
echo   *   [ ]      [ ]      [ ]                        *
echo   *   [_]      [_]      [_]                        *
echo   *  (/0_0)                                        *
echo   *  [] :]]                                        *
echo   *   [][]                                         *
echo   *                                                *
echo   **************************************************
set /p num=
if %num% == s @set /A "RE=%RE%+1"
if %num% == w @set /A "RE=%RE%+1"
if %num% == d @set /A "RE=%RE%+1"
if %num% == a @set /A "RE=%RE%+1"
::
if %num% == a goto HomeTown1.8
if %num% == w goto Forest1.0
if %num% == s goto Forest1.0
if %num% == d goto Forest1.1
if %num% == e goto Menu

:Forest1.1
cls
if %RE% == 5 goto Bat_Check
set f=11
echo   **************************************************
echo   *------------------------------------------------*
echo   * Vooooo VV ooooo VV ooooo VVVVVVVVVVVVVVVVVVVVVV*
echo   * ooooooo  ooooooo  ooooooo                      *
echo   *__0ooo0____0ooo0____0ooo0_______________________*
echo   *   [ ]      [ ]      [ ]                        *
echo   *   [_]      [_]      [_]                        *
echo   *  ooooo    ooooo    ooooo      %tres%           *
echo   * ooooooo  ooooooo  ooooooo                      *
echo   *  0ooo0    0ooo0    0ooo0                       *
echo   *   [ ]      [ ]      [ ]                        *
echo   *   [_]      [_]      [_]                        *
echo   *            (/0_0)                              *
echo   *            [] :]]                              *
echo   *             [][]                               *
echo   *                                                *
echo   **************************************************
set /p num=
if %num% == s @set /A "RE=%RE%+1"
if %num% == w @set /A "RE=%RE%+1"
if %num% == d @set /A "RE=%RE%+1"
if %num% == a @set /A "RE=%RE%+1"
::
if %num% == a goto Forest1.0
if %num% == w goto Forest1.1
if %num% == s goto Forest1.1
if %num% == d goto Forest1.2
if %num% == e goto Menu


:Forest1.2
cls
if %RE% == 5 goto Bat_Check
set f=12
echo   **************************************************
echo   *------------------------------------------------*
echo   * Vooooo VV ooooo VV ooooo VVVVVVVVVVVVVVVVVVVVVV*
echo   * ooooooo  ooooooo  ooooooo                      *
echo   *__0ooo0____0ooo0____0ooo0_______________________*
echo   *   [ ]      [ ]      [ ]                        *
echo   *   [_]      [_]      [_]                        *
echo   *  ooooo    ooooo    ooooo      %tres%           *
echo   * ooooooo  ooooooo  ooooooo                      *
echo   *  0ooo0    0ooo0    0ooo0                       *
echo   *   [ ]      [ ]      [ ]                        *
echo   *   [_]      [_]      [_]                        *
echo   *                              (/0_0)            *
echo   *                              [] :]]            *
echo   *                               [][]             *
echo   *                                                *
echo   **************************************************
set /p num=
if %num% == s @set /A "RE=%RE%+1"
if %num% == w @set /A "RE=%RE%+1"
if %num% == d @set /A "RE=%RE%+1"
if %num% == a @set /A "RE=%RE%+1"
::
if %num% == a goto Forest1.1
if %num% == w goto Forest1.3
if %num% == s goto Forest1.2
if %num% == d goto Lake1.0
if %num% == e goto Menu


:Forest1.3
cls
if %RE% == 5 goto Bat_Check
set f=13
echo   **************************************************
echo   *------------------------------------------------*
echo   * Vooooo VV ooooo VV ooooo VVVVVVVVVVVVVVVVVVVVVV*
echo   * ooooooo  ooooooo  ooooooo                      *
echo   *__0ooo0____0ooo0____0ooo0_______________________*
echo   *   [ ]      [ ]      [ ]                        *
echo   *   [_]      [_]      [_]                        *
echo   *  ooooo    ooooo    ooooo      %tres%           *
echo   * ooooooo  ooooooo  ooooooo    (/0_0)            *
echo   *  0ooo0    0ooo0    0ooo0     [] :]]            *
echo   *   [ ]      [ ]      [ ]       [][]             *
echo   *   [_]      [_]      [_]                        *
echo   *                                                *
echo   *                                                *
echo   *                                                *
echo   *                                                *
echo   **************************************************
set /p num=
if %num% == s @set /A "RE=%RE%+1"
if %num% == d @set /A "RE=%RE%+1"
if %num% == a @set /A "RE=%RE%+1"
::
if %num% == a goto Forest1.3
if %num% == w goto Forest1.3
if %num% == q goto Forest1.3(treasure)
if %num% == s goto Forest1.2
if %num% == d goto Lake1.0
if %num% == e goto Menu
::
:Forest1.3(treasure)
if not %Treasure1% == OFF goto treasure1_change(Forest1)
if %Treasure1% == OFF goto Forest1.3
else (
    goto Forest1.3
    )

:treasure1_change(Forest1)
if %random% LSS %random% set treasureName=Potion+1
if %random% GTR %random% set treasureName=Gold+30
if %random% EQU %random% set treasureName=Potion+3
goto Forest1.3(treasure2)

::---------------------------------------------------------------------------------------------------------------::
::"Treasure2" label starts when the "Treasure1" var is ON, if the var is off, the tres var in Forest1.3(treasure)::
::is unreachable.                                                                                                ::
::---------------------------------------------------------------------------------------------------------------::

:Forest1.3(treasure2)
echo       TREASURE FOUND:
echo.
echo        %treasureName%
echo             (v)
echo.
pause >nul
if %treasureName% == Potion+1 @set /A "ITEM1=%ITEM1%+1"
if %treasureName% == Gold+30 @set /A "G=%G%+30"
if %treasureName% == Potion+3 @set /A "ITEM1=%ITEM1%+3"
set Treasure1=OFF
goto forest1.3

:Lake1.0
cls
if %RE% == 5 goto Bat_Check
set f=14
echo ********************************************************************
echo * ooooo                                                            *
echo *ooooooo      ~~~~~~~~~                                            *
echo * 0ooo0 \                                                          *
echo *  [ ]   \                                                         *
echo *  [_]    \               ~~~~~~~~~~                               *
echo *          \ ~~~~~~~                                               * 
echo *(/0_0) (0_0)                                                      *
echo *[] :]] [[$[]\     ~~~~~~~~                                        *
echo * [][]   [[]  \                       ~~~~~~~~                     *
echo *             /:                                                   *
echo * ooooo      / ]       ~~~~~~~~~~~~~~                              *
echo *ooooooo    /  ]                                                   *
echo * 0ooo0    /   ]                                                   *
echo *  [ ]    /    ]                ~~~~~~~~~~~~~~~~~~                 *
echo *  [_]   /     ]                                                   *
echo ********************************************************************
set /p num=
if %num% == s @set /A "RE=%RE%+1"
if %num% == w @set /A "RE=%RE%+1"
if %num% == d @set /A "RE=%RE%+1"
if %num% == a @set /A "RE=%RE%+1"
::
if %num% == a goto Forest1_BossCheck
if %num% == w goto Lake1.0
if %num% == s goto Lake1.0
if %num% == d goto Lake1.0
if %num% == q goto Lake1.0(NPC_chat)
if %num% == e goto Menu

:Lake1.0(NPC_chat)
echo.
echo          Wealthy Man:
echo    ========================
echo    It may not be safe to go
echo    riding on my fancy boat 
echo    today...
pause >nul
echo    I may have to go tomorrow.
echo    if it's safe...
pause >nul
goto Lake1.0

:Forest1_BossCheck
if %BOSS1RANK% == DEFEATED goto Forest1.3
if %lv% == 3 goto ForestBoss_1
if %lv% LEQ 2 goto Forest1.3


::Cutscene plays when player reaches level 3.
:ForestBoss_1
cls
echo   **************************************************
echo   *------------------------------------------------*
echo   * Vooooo VV ooooo VV ooooo VVVVVVVVVVVVVVVVVVVVVV*
echo   * ooooooo  ooooooo  ooooooo                      *
echo   *__0ooo0____0ooo0____0ooo0_______________________*
echo   *   [ ]      [ ]      [ ]                        *
echo   *   [_]      [_]      [_]     /[(:]              *
echo   *  ooooo    ooooo    ooooo   / /            !    *
echo   * ooooooo  ooooooo  ooooooo  []          (0_0\)  *
echo   *  0ooo0    0ooo0    0ooo0   []          [] :]]  *
echo   *   [ ]      [ ]      [ ]                 [][]   *
echo   *   [_]      [_]      [_]                        *
echo   *                                                *
echo   *                                                *
echo   *                                                *
echo   *                                                *
echo   **************************************************
echo      MONSTER: 
echo   ==============
echo   You! You've been the one killing our troops!
echo  We can't allow you to pass! 
pause >nul
cls
echo   **************************************************
echo   *------------------------------------------------*
echo   * Vooooo VV ooooo VV ooooo VVVVVVVVVVVVVVVVVVVVVV*
echo   * ooooooo  ooooooo  ooooooo                      *
echo   *__0ooo0____0ooo0____0ooo0_______________________*
echo   *   [ ]      [ ]      [ ]                        *
echo   *   [_]      [_]      [_]                        *
echo   *  ooooo    ooooo    ooooo                  !    *
echo   * ooooooo  ooooooo  ooooooo   ///         (0_0\) *
echo   *  0ooo0    0ooo0    0ooo0   ///          [] :]] *
echo   *   [ ]      [ ]      [ ]   ///            [][]  *
echo   *   [_]      [_]      [_]                        *
echo   *                                                *
echo   *                                                *
echo   *                                                *
echo   *                                                *
echo   **************************************************
ping localhost -n 3 >nul
cls
echo   **************************************************
echo   *------------------------------------------------*
echo   * Vooooo VV ooooo VV ooooo VVVVVVVVVVVVVVVVVVVVVV*
echo   * ooooooo  ooooooo  ooooooo                      *
echo   *__0ooo0____0ooo0____0ooo0_______________________*
echo   *   [ ]      [ ]      [ ]                        *
echo   *   [_]      [_]      [_]                        *
echo   *  ooooo    ooooo    ooooo                  !    *
echo   * ooooooo  ooooooo  ooooooo  (*O_O)      (0_0\)  *
echo   *  0ooo0    0ooo0    0ooo0  /_/:]_\      [] :]]  *
echo   *   [ ]      [ ]      [ ]    // \\        [][]   *
echo   *   [_]      [_]      [_]                        *
echo   *                                                *
echo   *                                                *
echo   *                                                *
echo   *                                                *
echo   **************************************************
echo      CAPTAIN: 
echo   ==============
echo   We've found you %name%. You can't go on now after
echo  what youv'e learned...
pause >nul
goto BOSS_BATTLE1


:BOSS_BATTLE1
color 0F
ping localhost -n 1 >nul
color F0
ping localhost -n 1 >nul
color 0F
ping localhost -n 1 >nul
color F0
set BOSS1_HP=1500
set BOSS1_attack=40
goto BOSS_1

:BOSS_1
cls                       
echo                                        (-0_0-)
echo                   (/o_)                /_/:\_\    
echo                   [\\)----              [] []    
echo                  // \\                  d   d  
echo     [ATTACK] 1
echo     [SKILL]  2
echo     [ITEM]   3
echo     [RUN]    4
echo.
echo     HP: %HP%  MP: %MP%                     %BOSS1_HP% ENEMY HEALTH
set /p num=
if %num% == 1 goto B1_ATTACK
if %num% == 2 goto B1_SKILL
if %num% == 3 goto B1_ITEM
if %num% == 4 goto RunChanceB1

:B1_SKILL
set gg=0
echo    ********************************************************
echo    *                     SKILL                            *
echo    ********************************************************
echo        NAME:           DAMAGE:             MP COST:                   
echo    ========================================================
echo    1.) %skill.1%       %S1DMG%               %MPC1%       
echo    2.) %skill.2%       %S2DMG%               %MPC2%
echo    3.) %skill.3%       %S3DMG%               %MPC3%
echo    4.) %skill.4%       %S4DMG%               %MPC4%
echo    5.) %skill.5%       %S5DMG%               %MCP5%
echo    6.) %skill.6%       %S6DMG%               %MPC6%
echo    7.) %skill.7%       %S7DMG%               %MPC7%
echo    8.) %skill.8%       %S8DMG%               %MPC8%
set /p num= 
if %num% == 0 goto BOSS_1
if %num% == 1 set skillUsage=S1
if %num% == 2 set skillUsage=S2
if %num% == 3 set skillUsage=S3
if %num% == 4 set skillUsage=S4
if %num% == 5 set skillUsage=S5
if %num% == 6 set skillUsage=S6
if %num% == 7 set skillUsage=S7
if %num% == 8 set skillUsage=S8
goto SKILLCHECK_B1

:SKILLCHECK_B1
if %skillUsage% == S1 goto SKILL1_B1
if %skillUsage% == S2 goto SKILL2_B1
else(
    goto BOSS_1
)

:SKILL1_B1
if not %skill.1% == NONE set aim_f1=2
if not %skill.1% goto Skill_1_and_2_B1
if %skill.1% == NONE goto BOSS_1
else(
    goto BOSS_1
)

:SKILL2_B1
if not %skill.2% == NONE set aim_f1=3
if not %skill.2% goto Skill_1_and_2_B1
if %skill.2% == NONE goto BOSS_1
else(
    goto BOSS_1    
)

:Skill_1_and_2_B1
cls
if %aim_f1% == 2 set giga=DOUBLE SLASH
if %aim_f1% == 3 set giga=TRIPLE SLASH
if not %gg% == %aim_f1% goto SKILL1_and_2_aimCheck_B1
if %gg% == %aim_f1% goto BOSS_1


:SKILL1_and_2_aimCheck_B1
echo      ********************************************
echo                    %giga%                
echo      ********************************************
echo.
echo.
echo.
echo               \                        (-0_0-)
echo                '/ (/o_)                /_/:\_\    
echo                  \\\ ]                  [] []    
echo                  // \\                  d   d  
@set /A "BOSS1_HP=%BOSS1_HP%-%ATK%"
@set /A "gg=%gg%+1"
ping localhost -n 1 >nul
goto Skill_1_and_2_B1


:B1_ITEM
echo.
echo                 USE ITEM-
echo     =====================================
echo     ITEM -
echo     =====================================
echo     %ITEM1_NAME% \\ %ITEM1% 
echo     %ITEM2_NAME% \\ %ITEM2%
echo     %ITEM3_NAME% \\ %ITEM3% 
echo     %ITEM4_NAME% \\ %ITEM4%
echo     %ITEM5_NAME% \\ %ITEM5% 
echo     =====================================
set /p num=
if %num% == 1 goto Using_Item1_B1
if %num% == 2 goto Using_Item2_B1
if %num% GEQ 6 goto BOSS_1

:Using_Item1_B1
if not %ITEM1% GEQ 1 goto noneB1
if %ITEM1% GEQ 1 goto healing_B1

:noneB1
echo.
echo                           NONE LEFT
ping localhost -n 3 >nul
goto B1_ITEM

:healing_B1
if %HP% == %MAXHP% goto B1_ITEM
if not %HP% == %MAXHP% goto HP_check_B1

:HP_check_B1
if %HP% GEQ 60 set HP=%MAXHP% 
if %HP% LEQ 50 @set /A "HP=%HP%+50"
goto BOSS_1

:RunChanceB1
if %random% LEQ %random% goto Run_fail_B1
if %random% GEQ %random% goto Run_fail_B1
:Run_fail_B1
echo                   YOU FAILED TO GET AWAY!!
ping localhost -n 2 >nul 
goto EnemyTurnB1

:B1_ATTACK
cls
echo               \                        (-0_0-)
echo                '/ (/o_)                /_/:\_\    
echo                  \\\ ]                  [] []    
echo                  // \\                  d   d                     
echo     [ATTACK] 1
echo     [SKILL]  2
echo     [ITEM]   3
echo     [RUN]    4
echo.
echo     HP: %HP%  MP: %MP%                   %BOSS1_HP% ENEMY HEALTH
ping localhost -n 1 >nul
color 00
@set /A "BOSS1_HP=%BOSS1_HP%-ATK"
color F0
cls                                  
echo                                            !!
echo                                       (-X.X-)
echo                   (/o_)                / [ : ]\    
echo                   [\\)----                [] []    
echo                  // \\                     d   d  
echo     [ATTACK] 1
echo     [SKILL]  2
echo     [ITEM]   3
echo     [RUN]    4
echo.
echo     HP: %HP%  MP: %MP%                   %BOSS1_HP% ENEMY HEALTH
ping localhost -n 2 >nul
if not %BOSS1_HP% LEQ 0 goto BOSS1Turn
if %BOSS1_HP% LEQ 0 goto VictoryBoss1


:VictoryBoss1
cls                       
echo                                            (X_X)
echo                   (/o_)                    /////   
echo                   [\\)----                /////   
echo                  // \\                      
echo                              Captain: I recognize your strength and I surrender...
echo    WIN.
echo.
ping localhost -n 4 >nul
@set /A "EXP=%EXP%+2"
@set /A "G=%G%+100"
goto EXPCheckB1

:EXPCheckB1
if %EXP% GEQ 5 @set /A "ATK=%ATK%+10"
if %EXP% GEQ 5 @set /A "DEF=%DEF%+10"
if %EXP% GEQ 5 @set /A "INT=%INT%+10"
if %EXP% GEQ 5 @set /A "SPD=%SPD%+10"
if %EXP% GEQ 5 @set /A "PWR=%PWR%+10"
if %EXP% GEQ 5 @set /A "MP=%MP%+20"
if %EXP% GEQ 5 @set /A "MAXHP=%MAXHP%+100"
if %EXP% GEQ 5 @set /A "lv=%lv%+1"
goto nextEXPcheckB1
:nextEXPcheckB1
if %EXP% GEQ 5 set EXP=0
set RE=0
goto cutsceneBOSS1Aftermath

:BOSS1Turn
cls
echo                     !!                (0-0-)
echo                   (/!o)000000000000000/:_\___\                  
echo                   [\\0================\\\\\\\\
echo                  // //                 d    d
ping localhost -n 2 >nul
@set /A "HP=%HP%-%BOSS1_attack%"
goto HP_Check
:HP_Check
if not %HP% LEQ 0 goto BOSS_1
if %HP% LEQ 0 goto GAME_OVER 


:cutsceneBOSS1Aftermath 
cls
echo   **************************************************
echo   *------------------------------------------------*
echo   * Vooooo VV ooooo VV ooooo VVVVVVVVVVVVVVVVVVVVVV*
echo   * ooooooo  ooooooo  ooooooo                      *
echo   *__0ooo0____0ooo0____0ooo0_______________________*
echo   *   [ ]      [ ]      [ ]                        *
echo   *   [_]      [_]      [_]                        *
echo   *  ooooo    ooooo    ooooo                  !    *
echo   * ooooooo  ooooooo  ooooooo  (*O_O)      (0_0\)  *
echo   *  0ooo0    0ooo0    0ooo0  /_/:]_\      [] :]]  *
echo   *   [ ]      [ ]      [ ]    // \\        [][]   *
echo   *   [_]      [_]      [_]                        *
echo   *                                                *
echo   *                                                *
echo   *                                                *
echo   *                                                *
echo   **************************************************
echo      CAPTAIN: 
echo   ==============
echo   %name% You've surprised me... I may not be able to beat you...
echo  I'll be back... And when I return the results of this fight shall
echo  be different...
pause >nul
set BOSS1RANK=DEFEATED
goto forest1.3


@echo off
title Pokemon Batch Version - Fan Game
echo                             PLEASE WAIT...
ping localhost -n 3 >nul
goto variables

:variables
color F0
set pkmn001=Bulbasaur
set pkmn002=squirtle
set pkmn003=charmander
set pkmn004=Pikachu
set pkmn005=evee
set pkmn006=ponyta
set pkmn007=jigglypuff
set pkmn008=rattata
set pkmn009=raichu
set pkmn010=mew
set pkmn011=mewtwo
set pkm1sp=[0_O]]\==\
set pkm2sp=;(o.o)}. 
set pkm3sp=:{0w0}\\
set pkm4sp=(o'w'o)Zz
set pkm5sp=J(O_O)L
set pkm6sp=(*_*)]'';;
set pkm7sp=/(o*_*o)\
set pkm8sp=(!#!)
set pkm9sp=(#'w'#)Zz
set pkm10sp=(UvU)
set pkm11sp=(2_2)
:status
set P1HP=25
set P2HP=25
set P3HP=25
set P4HP=25
set P5HP=25
set P6HP=25
set P7HP=25
set P8HP=25
set P9HP=25
set P10HP=25
set P11HP=25
goto starting

:starting
cls
echo                                    ***************
echo                                    *      ,      *
echo                                    *   POKEMON   *
echo                                    *BATCH VERSION*
echo                                    *             *
echo                                    ***************             #########
echo                                                               #         #
echo                                                               #####_____#
echo                                                              #    #  0)\#
echo                                                             ###### _   \#
echo                                                                 ########
echo                                                                 \   [  /\
echo                                                                / [  o  ] \000
echo                      Press anything to begin...               /  [  o  ]\()))0
echo                                                               \  [_____] [_]
echp                                                                \_[ _L_ ]
echo                                                                  [ ] [ ]
echo                                                                  [ ] [ ]
echo                                                                  /_/ \_\
pause >nul
goto progress

:progress
cls
echo                                                       @@@@@@@@@@@@@@@@@@@@@
echo                                                       @                   @
echo                                                       @[O] NEW GAME       @
echo                                                       @[ ] CONTINUE       @   'O' = Okay
echo                                                       @                   @
echo                                                       @@@@@@@@@@@@@@@@@@@@@
echo.
set /p num=
if %num% == s goto continue
if %num% == w goto progress
if %num% == o goto gamebegin

:continue
cls
echo                                                       @@@@@@@@@@@@@@@@@@@@@
echo                                                       @                   @
echo                                                       @[ ] NEW GAME       @
echo                                                       @[O] CONTINUE       @   'O' = Okay
echo                                                       @                   @
echo                                                       @@@@@@@@@@@@@@@@@@@@@
echo.
set /p num=
if %num% == s goto continue
if %num% == w goto progress
if %num% == o goto file_check



:gamebegin
cls
set f=1
echo ***********************************************************************************************************************************
echo *[  { } ]   ___        [[PC]]       [ o  o  o  # ]                        ]                                                       
echo *()()()()  (]o_)       []--[]       ==============                        ]                                                       
echo *{      }  []_]]                                                          ]                                                       
echo *{______}   []]                                                           ]                                                       
echo *[]    []                                                                 ]
echo *=========================================            ===================== 
echo *                                        [            ]                   
echo *                                        ::::::::::::::
echo *
echo *
echo *
echo *                                 
echo *
echo *
echo *
echo *
echo *
echo ***********************************************************************************************************************************
set /p num=
if %num% == d goto gamebegin2
if %num% == e goto menu
if %num% == w goto gamebegin
if %num% == a goto gamebegin
if %num% == s goto gamebegin

:menu
cls
echo     *******************************  %date%
echo     1) PKMN
echo     2) BAG
echo     3) DEX
echo     4) SAVE
echo     *******************************  %time%TIME
echo                        'B' = Back
set /p num=
if %num% == B goto locator
if %num% == 1 goto PKMN
if %num% == 2 goto BAG_P.Ball
if %num% == 3 goto DEX
if %num% == 4 goto SAVE

::The locator decides where the player will go. The variable will be 'f'
::If f is a certain number the player will goto that certain screen.

:Locator 
cls
if %f% == 1 goto gamebegin
if %f% == 2 goto 
if %f% == 3 goto 
if %f% == 4 goto 
if %f% == 5 goto 
if %f% == 6 goto
if %f% == 7 goto 
if %f% == 8 goto 


:PKMN
cls
echo                  POKEMON 
echo.                =========
echo       ROW 1: %pkmn1%
echo       ROW 2: %pkmn2%
echo       ROW 3: %pkmn3% 
echo       ROW 4: %pkmn4% 
echo       ROW 5: %pkmn5%
echo       ROW 6: %pkmn6% 
echo       = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =
pause >nul
goto menu 

:: Only 6 Pokemon: The style should be the same as RS.
:BAG_P.Ball
cls
echo               1         2        X
echo           [POTIONS] [P.BALL]   {Back}
echo          ================================================
echo           PokeBall x%amount%n
echo           PrimierBall x%amount%
echo.
echo
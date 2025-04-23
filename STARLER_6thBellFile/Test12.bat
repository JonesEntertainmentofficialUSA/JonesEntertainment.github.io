@echo off 
set %OB00%=No Object.
set %OB01%=.
set %OB02%=.
set %OB03%=.
set %OB04%=.
set %OB05%=.
set %OB06%=.
set %OB07%=.
set %OB08%=.
set %OB09%=.
set %OB10%=No Object.
::**************************************
::* Main Variables for objects ^       *
::*                                    *
::**************************************
echo Find last file?
echo     [Y/N]
set /p num=
if %num% == y goto file_check
if not %num% == n goto NewFile 

:NewFile
set /p GAMENAME=[Title Name]: 
goto SavingTitle

:SavingTitle
echo Saving %GAMENAME%.txt
(
echo %GAMENAME%
)>%GAMENAME%.txt
goto Main

:file_check
echo       Search GAMEFILE:
echo      ==================
set /p OldGame= What was the name of the last GAME created?--
(
set /p GAMENAME=
)<%OldGame%.txt


:Main 
title %GAMENAME% - GameFordgerStudio
cls
echo                  1.) Continue (%GAMENAME%)
echo                  2.) News
echo                  3.) Restart
echo.
set /p num=
if %num% == 1 goto GAME_CREATOR
if %num% == 2 goto News
if %num% == 3 goto eof


:GAME_CREATOR
cls
echo                                            -UI-
echo ***********************************************************************************************************
echo * [(1)ADD EVENT]  [(2)Lay Out Of Map]  [(3)Add Cutscene]   [(4)Database]   [(5)Game Type]   [(s) = SAVE]  * 
echo ***********************************************************************************************************
echo  %OB00% 
echo  %OB10%
echo  %OB20%
echo  %OB30% 
echo  %OB40%
set /p num= 
if %num% == 1 goto Class_Object_Creator
if %num% == 2 goto Build_Mode
if %num% == 3 goto Cutscene_Maker
if %num% == 4 goto DataBase
if %num% == 5 goto GameTypes
if %num% == s goto SAVE


:Class_Object_Creator
echo #Comment: Class Creation's code. (* = Define) (~(Number) = For; Range ) ($ = Var is active) (\\ = Control Object) 
echo #Comment: Semi colon for continued line
echo.
::*Class:NameExample
::for:\\Player;
::w;
::
::*Class:NameExample2
::For; ~25; 
::While Player$
::
set /p Class1=*Class:Name
set /p line1=
set /p line2=
set /p line3=
set /p line4=
set /p line5=
if %line1% == for:\\["var_player"]; set %var_player-Control%=%line2%
if %line1% == for:\\["var_object"]; set %var_object-Control%=%line2%
if %line1% == %Class1% goto Class_Object_Creator
if %line1% == x goto GAME_CREATOR
if %line2% == WASD set var_player-Control=%line2% 
if %line2% == EndLastLine set var_player-Control=wasd

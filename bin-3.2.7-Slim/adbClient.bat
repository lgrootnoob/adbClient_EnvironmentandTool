@echo off
color 0A
call hstart /NOCONSOLE "cmdmp3 init.mp3 >nul"
type cane
busybox sleep 1
echo.
echo.
echo Initializing....
adb devices > nul
echo.
echo __________________
echo Adb Initialized.
echo _________________
echo.
echo ______________________
java -version
echo ________________________
echo.
IF errorlevel 1 goto ok
echo Java found! :)
set java=1
goto :okd
:ok
echo No java found.
echo Is the java executable in your path?
echo Is your path variable messed up?
set java=0
busybox sleep 2
MODE CON:COLS=126 Lines=900
goto :clientsetup
:okd
echo Looks like everything is alright!
busybox sleep 1
MODE CON:COLS=126 Lines=900
goto :clientsetup


##############################
Written by: Jacob Colton Lane
Year: 2013
Contact me at: 469-265-4801
Or: jaclane299@gmail.com
Or even on Xda @lgrootnoob
Dont spam me!
##############################

rem nul is the black hole of windows
rem This script uses a path to filter out commands from the bin dir

rem Below is deprecated
rem :startch
rem if exist updateyes del updateyes > out
rem goto :clientsetup
rem :startup
rem echo y or n
rem set /p "updatesgetannoying=Would you like for adbclient to check for updates on start?"
rem if "updatesgetannoying"=="y" echo updatesarecool > updateyes
rem if "updatesgetannoying"=="n" goto :startch
rem echo alldone > dn
rem Above is deprecated

rem Beginning setup below
:clientsetup
rem busybox sleep 2
rem if not exist dn goto :startup
rem if exist updateyes call vercheck.bat
title adbClient
cd > cd.cd
set /p cddir=<cd.cd
del cd.cd
call %cddir%\addpath.bat
if not exist clr.txt echo 0B > clr.txt
if not exist hist.txt echo 1 > hist.txt
set /p gohist=<%cddir%\hist.txt
set clrsnd=color
set /p clrval=<%cddir%\clr.txt
%clrsnd% %clrval%
cls
date /T
time /T
echo ________________________________________________________________
echo Anything unrecognized will be passed to the Windows Command Line!
echo __________________________________________________________________
echo TIPS:
echo exit = kill server and exit
echo q = quit but keep server alive
echo Reboot = rbt, Logcat menu = lgmn
echo Reboot to bootloader = rbtldr
echo Reboot to recovery = rbtvry
echo When you cd somewhere type back to go back to the original folder
echo If the tool stalls then use control-c key combo to push it forward
echo ____________________________________________________
rem Check for dirs to make below
if not exist ..\Work\nul mkdir ..\Work
if not exist ..\Work\userbin\nul mkdir ..\Work\userbin
rem Deprecated: if not exist ..\Work\nul (mkdir ..\Work)&(copy addpath.bat ..\Work\addpath.bat >nul)&(del ..\Work\addpath.bat >nul)
rem Deprecated: if not exist ..\Work\userbin\nul (mkdir ..\Work\userbin)&(copy addpath.bat ..\Work\userbin\addpath.bat >nul)&(del ..\Work\userbin\addpath.bat >nul)
rem Below is the new addpath code And to help with deprecation I check for old files to rm
cd ..\Work
call %cddir%\addpath.bat
attrib -h workpathgen.bat >nul
if exist workpathgen.bat del workpathgen.bat >nul
cd userbin
call %cddir%\addpath.bat
attrib -h userbinpath.bat >nul
if exist userbinpath.bat del userbinpath.bat >nul
cd ..
rem Above is the new addpath code
rem the next line will help when calling batch modules in the bin folder such as clc
set callatcmdtime=call
adb devices
fastboot devices
%clrsnd% %clrval%
call whoami > %cddir%\who
set /p iam=<%cddir%\who
set runtimemarkup=$
if %iam%==System set runtimemarkup=#
if %iam%==Admin set runtimemarkup=#
if %iam%==Administrator set runtimemarkup=#
rem Above done internal setting up


rem Below is the main loop
:doneloop
echo.
if "%gohist%"=="0" goto :pass

:inlitter
set /a "histcount"="%histcount%+1"
if "%histcount%"=="5" (color 0C)&(echo About to clear screen!!!)&(call whoami > %cddir%\who)&(pause)&(cls)&(set histcount=0)&(adb devices)&(fastboot devices)&(%clrsnd% %clrval%)&(set /p iam=<%cddir%\who)&(goto:doneloop)

:pass
echo ______________________________
cd
echo ________________________________
set "intent="
echo Adb Shell = sh , Send commands to the Shell with Adb = adbsh 
echo kill = kill-server , rst = kill\start server , Adb Devices = dv
echo For an extended menu please type xt
set /p "intent=%iam%%runtimemarkup%"
rem Exit code tags on exit changing back to cddir to prevent incompatibilities
%callatcmdtime% %intent%
goto :doneloop

Thanks for using my tool!
Report any bugs to me immediately in my xda thread.
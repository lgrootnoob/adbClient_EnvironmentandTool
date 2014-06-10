@echo off
set /p goname=<%cddir%\hist.txt
if "%goname%"=="1" (set "goname=on")
if "%goname%"=="0" (set "goname=off")
set "clrscrnval="
echo ____________________________________
echo Enter nothing to go back
echo Enter off or on
echo Default value is on
echo The screen will clear after three outputs if value is on
echo vice versa
echo The current value is in a hist txt file
echo _______________________________________________________
set /p "clrscrnval=:"
if not defined clrscrnval goto :doneloop
if "%clrscrnval%"=="on" (echo 1 > %cddir%\hist.txt)&(set gohist=1)
if "%clrscrnval%"=="off" (echo 0 > %cddir%\hist.txt)&(set gohist=0)
goto :EOF
@echo off
rem Below is a deveject frontend that is part of the 2.2 rel
deveject.exe | more
echo ___________________
echo Enter the Name listed on the left to eject the drive
echo by Volume Name
echo ____________________________________
echo ____Enter Nothing to go back to Menu____
set /p jectname=Name:
if not defined jectname goto :EOF
set jectfunct=deveject.exe
echo (Enter Without Parentheses)
echo Eject %jectname% ?
set /p jectmay=y or n?
if /i not %jectmay%==y goto :EOF
set devargs=-EjectName:
%dr%%jectfunct% %devargs%%jectname%
echo Ejected!!!
pause
goto :EOF
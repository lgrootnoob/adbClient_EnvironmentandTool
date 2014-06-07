@echo off
set "shellcont="
echo Enter command to send to device
echo Enter nothing to go back
set /p "shellcont=Command $~:
if not defined shellcont goto :doneloop
set "adbshell=adb shell"
%adbshell% %shellcont% | more
set adbshell=
set shellcont=
goto :EOF
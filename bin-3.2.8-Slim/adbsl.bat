@echo off
echo ADB SIDELOAD
adb devices
echo Enter nothing to go back!
set /p "sdld=File:"
if not defined sdld goto :EOF
set "sdldcmd=adb sideload"
%sdldcmd% %sdld%
goto :EOF
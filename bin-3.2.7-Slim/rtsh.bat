@echo off
set "adbrootsh=adb shell su -c sh"
echo Root shell started!
%adbrootsh%
goto :EOF
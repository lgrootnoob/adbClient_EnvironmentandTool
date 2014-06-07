@echo off
set "ddfgg=adb connect"
if not "%1"=="" goto :adbcit
echo The cnt command will take the ip address as an argument
set "oh="
echo Enter nothing to go back
echo Enter Ip Address
set /p "oh=:"
if not defined oh goto :EOF
%ddfgg% %oh%
adb devices
goto :EOF
:adbcit
%ddfgg% %1
goto :EOF
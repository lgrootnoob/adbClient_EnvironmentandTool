@echo off
rem Below asks for cmd to send to pm on a device shell
set pom=pm
echo Enter nothing to go back
set /p "ppom=Command to send to pm:"
if not defined ppom goto :doneloop
set "ayodb=adb shell su -c"
%ayodb% %pom% %ppom%
goto :EOF
@echo off
rem Below uninstalls android apks by name
echo Enter nothing to go back
set /p "apkitem=Package:"
if not defined apkitem goto :doneloop
set "pmuninst=pm uninstall"
set "ayodb=adb shell su -c"
%ayodb% %pmuninst% %apkitem%
goto :EOF
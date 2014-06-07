@echo off
rem Below will unroot your device by removing files
echo n will go back
echo y will unroot
set /p "ishesure=Are you sure?"
if not defined ishesure goto :doneloop
if "%ishesure%"==n goto :doneloop
adb shell su -c rm /system/etc/init.d/99SuperSUDaemon
adb shell su -c rm /system/xbin/busybox
adb shell su -c rm /system/bin/busybox
adb shell su -c rm /system/bin/su
adb shell su -c rm /system/xbin/su
echo All done !
echo You may now uninstall the Superuser app
goto :EOF
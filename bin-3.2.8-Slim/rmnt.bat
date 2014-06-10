@echo off
echo Enter nothing to go back!
echo This requires busybox to be installed on the device!
echo You can install busybox with the qfx command
echo ________________________
echo Type the partition name that you wish to remount
echo Example: /system
echo Another example: /data
echo _________________
set "prt="
set /p "prt=Partition name:"
if not defined prt goto :EOF
echo Enter nothing to go back!
echo __________________
echo ro = Read-only remount
echo rw = Read-write remount
echo __________________
set "ebox="
set /p ebox=Remount Option?
if not defined ebox goto :EOF
set "bbox=adb shell busybox mount -o remount,"
echo Remounting....
%bbox%%ebox% %prt%
echo Remount Finished.
echo Displaying mount info:
echo ___________________________________________________
adb shell mount || more
echo _______________________________________________________
goto :EOF
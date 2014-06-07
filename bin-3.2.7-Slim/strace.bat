@echo off
rem Below is an Strace installer
rem Pusher deprecated for strace command sender
echo strace is an alternative to logcat
echo Yes = strace will be installed to the device and given execute permissions,
echo strace help can be found on xda forums
echo Enter nothing to do nothing and go back to command line
echo installation requires busybox
set /p "asktrc=?"
if not defined asktrc goto :EOF
if /i "%asktrc%"=="yes" (
pushd %cddir%
adb push strace /data/local/tmp/strace
adb shell su -c busybox mount -o rw,remount /system
adb shell "su -c cat /data/local/tmp/strace > /system/bin/strace"
adb shell su -c rm /data/local/tmp/strace
adb shell su -c chmod 777 /system/bin/strace
popd
)
goto :EOF

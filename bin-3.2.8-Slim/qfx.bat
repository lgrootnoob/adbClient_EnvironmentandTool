@echo off
pushd %cddir%
echo Enter nothing to go back
echo Enter 1 for homescreen fix.
echo Enter 2 for busybox install
echo Enter 3 for sqlite3(3.7.16) install
set "qfx="
set "remounter=adb shell "su -c busybox mount -o remount,rw /system"
if not "%1"=="" (set qfx=%1)&(goto :paramskip)
set /p "qfx=:"
:paramskip
if not defined qfx goto :EOF
if "%qfx%"=="1" goto :push
if "%qfx%"=="2" goto :bb
if "%qfx%"=="3" goto :sq
:cont
popd
goto :EOF
:push
%remounter%
cd %cddir%
call apkin com.nemustech.launcher-1.apk
goto :cont
:bb
%remounter%
adb push %cddir%\busybox /data/local/tmp/busybox
adb shell "su -c cat /data/local/tmp/busybox > /system/xbin/busybox"
adb shell su -c chmod 755 /system/xbin/busybox
adb shell rm /data/local/tmp/busybox
goto :cont
:sq
%remounter%
adb push %cddir%\sqlite3 /data/local/tmp/sqlite3
adb shell "busybox chmod 777 /data/local/tmp/sqlite3"
adb shell "su -c cat /data/local/tmp/sqlite3 > /system/xbin/sqlite3"
adb shell rm /data/local/tmp/sqlite3
adb shell su -c chmod 755 /system/xbin/sqlite3
goto :cont
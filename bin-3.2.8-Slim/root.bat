@echo off
echo.
echo Make sure you have the proper drivers installed and your device shows up under List of Devices Attached
adb wait-for-device
echo These root methods require the Control-c Keyboard combo shall they stall for more than 10 seconds.
set "strt="
set "ebgnbdvrg=./data/local/tmp/busybox mount -o remount,rw /system"
set "adsafasfa=chmod 755 /data/local/tmp/busybox"
set "agsdgsafg=busybox /data/local/tmp/busybox"
set "chmd=chmod 755"
set "supath=/system/xbin/su"
set "su=su"
pushd %cddir%
set "xplt="
echo Enter Nothing To go back!
echo Enter the number associated with your root method
echo For 4.x android users you might have to turn off verify apps installed over adb
echo Does not support 4.3 or newer
echo.
echo If none of these exploits works, you can try srsroot,search for cydiaimpactor, cydiaimpactor will work on 4.3 or newer I believe, or make a thread on XDA.
echo Table:
echo ___________________________________________________________________
echo Android 2.1-2.3: 1=psneuter 2=zergRush
echo Android 2.1+: 3=Framaroot(Application that has lots of exploits)
echo 4=Exynosabuse(A specific exploit application that targets Devices that run the Exynos processor)
echo ____________________________________________________________________________________
if not "%1"=="" (set xplt=%1)&(goto :paramskip)
set /p "xplt=Method?"
:paramskip
if not defined xplt (popd)&(goto :EOF)
set "q=adb shell"
set "w=adb push"
set "e=/data/local/tmp"
set "alte=/data/local/tmp/"
set "thaslash=\"
set "r=chmod 755"
set "t=."
set "y=goto :doneloop"
if "%xplt%"=="1" (set nm=psneuter)&(goto :snd)
if "%xplt%"=="2" (
set nm=zergRush
goto :snd
)
if "%xplt%"=="3" (
goto :three
) 
if "%xplt%"=="4" (
goto :four
) ELSE (
popd
goto :EOF
)
:snd
%w% %cddir%%thaslash%%nm% %alte%%nm%
%q% %r% %alte%%nm%
%q% %t%%alte%%nm%
%w% %cddir%%thaslash%%agsdgsafg%
%q% %adsafasfa%
%q% %ebgnbdvrg%
%w% %cddir%%thaslash%%su% %supath%
%q% %chmd% %supath%
set "apk="
set /p apk=Install Supersu too?
set "sgsdgsdgfwe=Superuser.apk /data/local/tmp/Superuser.apk"
set "wdffaettth=pm install /data/local/tmp/Superuser.apk"
if /i "%apk%"=="y" (
%w% %cddir%%thaslash%%sgsdgsdgfwe%
%q% %wdffaettth%
)
if /i "%apk%"=="yes" (
%w% %cddir%%thaslash%%sgsdgsdgfwe%
%q% %wdffaettth%
)
popd
goto :EOF
:three
echo Installing.....
adb push Framaroot-1.8.0.apk /data/local/tmp/Framaroot-1.8.0.apk
adb shell pm install /data/local/tmp/Framaroot-1.8.0.apk
adb shell rm /data/local/tmp/Framaroot-1.8.0.apk
echo Framaroot installed!
set "apk="
set /p apk=Install Supersu too?
if /i "%apk%"=="y" (
set "sgsdgsdgfwe=Superuser.apk /data/local/tmp/Superuser.apk"
set "wdffaettth=pm install /data/local/tmp/Superuser.apk"
%w% %cddir%%thaslash%%sgsdgsdgfwe%
%q% %wdffaettth%
)
adb shell am start -a android.intent.action.MAIN -n com.alephzain.framaroot/.FramaActivity
popd
goto :EOF
:four
echo Installing.....
adb push ExynosAbuse-v1.40.apk /data/local/tmp/ExynosAbuse-v1.40.apk
adb shell pm install /data/local/tmp/ExynosAbuse-v1.40.apk
adb shell rm /data/local/tmp/ExynosAbuse-v1.40.apk
echo Exynosabuse installed!
set "apk="
set /p apk=Install Supersu too?
if /i "%apk%"=="y" (
set "sgsdgsdgfwe=Superuser.apk /data/local/tmp/Superuser.apk"
set "wdffaettth=pm install /data/local/tmp/Superuser.apk"
%w% %cddir%%thaslash%%sgsdgsdgfwe%
%q% %wdffaettth%
)
set /p "strt=Start ExynosAbuse?"
if not defined strt goto :EOF
if /i "%strt%"=="y" adb shell am start -a android.intent.action.MAIN -n eu.chainfire.exynosabuse/.MainActivity
if /i "%strt%"=="yes" adb shell am start -a android.intent.action.MAIN -n eu.chainfire.exynosabuse/.MainActivity
popd
goto :EOF
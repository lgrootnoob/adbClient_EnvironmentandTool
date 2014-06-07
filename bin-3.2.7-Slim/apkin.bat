@echo off
rem Below asks for an apk file to install then pushes the file to datalocalfilename and installs with pm and then rms the apk from datalocal
echo Enter nothing to go back
echo Enter apk to install
if not "%1"=="" (set apktoinstall=%1)&(goto :paramskip)
set /p "apktoinstall=:"
:paramskip
if not defined apktoinstall goto :doneloop
set "ayodb=adb shell su -c"
set "sdgdfhpm=pm install /data/local/"
set "loc=/data/local/"
set "sgrgrgsseg=adb push"
echo Press control c when command says success.
%sgrgrgsseg% %apktoinstall% %loc%%apktoinstall%
echo Succesfully pushed file
%ayodb% %sdgdfhpm%%apktoinstall%
set "rmapk=rm"
%ayodb% %rmapk% %loc%%apktoinstall%
goto :EOF
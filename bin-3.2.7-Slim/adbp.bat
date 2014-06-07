@echo off
set "pullcont="
echo Enter item to pull
echo Enter nothing to go back
echo File size listed in Megabytes beside the filename.
echo When you type a destination you must type a file name to send it to:
echo yo.txt
set /p "pullcont=Item $~:"
if not defined pullcont goto :EOF
:do
set "adbsz=adb shell du -smc "
set "adbpull=adb pull"
set "adbsh=adb shell"
set "bboxmd5=busybox md5sum"
set "md5=md5sum"
echo ___________________________
%adbsh% %bboxmd5% %pullcont%
echo Size:
%adbsz%%pullcont%
echo ___________________________
echo If you want it in the current folder just hit enter.
set /p "output=Destination:"
%adbpull% %pullcont% %output%
echo ___________________________
%md5% %output%
echo Size:
busybox du -sm %output%
echo ___________________________
echo If the two don't match then the file transferred is corrupted and you must resend!
set "req="
set /p "req=Redo Pull Operation?"
if /i "%req%"=="y" goto :do
if /i "%req%"=="yes" goto :do
set "adbpull="
set "pullcont="
set "output="
goto :EOF
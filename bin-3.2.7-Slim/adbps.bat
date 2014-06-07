@echo off
set "pushcont="
echo Enter item to push
echo Enter nothing to go back
echo File size listed in Megabytes beside the filename.
set /p "pushcont=Item and/or Item Path $~:"
if not defined pushcont goto :EOF
set "md5=md5sum"
set "md5b=busybox md5sum"
set "adbsh=adb shell"
set /p "destcont=Item Destination $~:"
set "adbpush=adb push"
set "adbsz=adb shell du -smc "
:do
echo _______________________
%md5b% %pushcont%
echo Local md5 hash is above
echo Size:
busybox du -sm %pushcont%
echo _______________________
%adbpush% %pushcont% %destcont%
echo _____________________________
%adbsh% %md5b% %destcont%
echo Destination md5 hash is above
echo Size:
%adbsz%%destcont%
echo _____________________________
echo If the two don't match then the file transferred is corrupted and you must resend!
set "req="
set /p "req=Redo Push Operation?"
if /i "%req%"=="y" goto :do
if /i "%req%"=="yes" goto :do
set "adbpush="
set "pushcont="
goto :EOF
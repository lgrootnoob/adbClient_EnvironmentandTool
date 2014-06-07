@echo off
adb shell "su -c dmesg" > %cddir%\..\Work\dmesgout.txt
call start notepad %cddir%\..\Work\dmesgout.txt
goto :EOF
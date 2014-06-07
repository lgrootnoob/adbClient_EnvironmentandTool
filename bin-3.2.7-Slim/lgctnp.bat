@echo off
echo Enter control-c to stop logcat collection
call work
adb logcat > %cddir%\..\Work\logcatout.txt
call start notepad %cddir%\..\Work\logcatout.txt
call back
goto :EOF
@echo off
rem Below will send commands to strace on the device
echo Enter command to send to device
echo --help will display help info
echo _________________________________________________________________
echo Fyi: You must have installed strace with the strace command already!!!
echo _________________________________________________________________
:tracer
echo Enter nothing to do nothing and go back to command line
set "sndthatrace="
set /p "sndthatrace=strace "
if not defined sndthatrace goto :EOF
set "tracea=strace"
set "adbshl=adb shell"
%adbshl% %tracea% %sndthatrace%
goto :tracer
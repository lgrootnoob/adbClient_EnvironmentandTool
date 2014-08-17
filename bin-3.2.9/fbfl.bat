@echo off
echo Enter nothing to go back
echo Enter the name of the partition image that you want to flash
echo Syntax = recovery recovery.img
echo Another example = system system.img
set /p "flshimg=:"
if not defined flshimg goto :EOF
set "fbsndworker=fastboot flash"
%fbsndworker% %flshimg%
goto :EOF
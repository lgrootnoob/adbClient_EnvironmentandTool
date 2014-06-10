@echo off
if "%1"=="ls" goto :ls
goto :EOF
:ls
echo Syntax: ls directory
echo Where if you do not specify a directory it will list the contents of the current directory
echo Description: lists files and folders in the directory of your choice
goto :EOF
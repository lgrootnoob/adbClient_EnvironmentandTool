@echo off
rem Below is tar extracter that might not work
echo Enter nothing to go back
echo Enter your archive name to extract
set /p "tar=:"
if not defined tar goto :EOF
set "tarcmd=busybox tar -x"
%tarcmd% %tar%
goto :EOF
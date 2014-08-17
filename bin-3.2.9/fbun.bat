@echo off
set "rus="
echo FASTBOOT UNLOCK!
echo WIPES DATA! (Factory reset)
echo Enter nothing to go back
echo Enter y to continue
set /p "rus=?"
if not defined rus goto :EOF
if /i "%rus%"=="y" set "rus=1"
if /i "%rus%"=="yes" set "rus=1"
if "%rus%"=="1" fastboot unlock
goto :EOF
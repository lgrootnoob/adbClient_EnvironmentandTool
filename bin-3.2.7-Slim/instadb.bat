@echo off
:new
set "installmaybe="
pushd %cddir%
echo Enter y to continue or enter nothing to go back
set /p "installmaybe=Would you like to install adb and fastboot to system:"
if not defined installmaybe goto :EOF
echo Enter the username of your account
echo or an account with privileges
set /p "userforit=Username:"
runas /env /user:%userforit% instadbworker.bat
echo All done!
pause
popd
goto :EOF
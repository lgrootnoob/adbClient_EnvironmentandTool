@echo off
:passtime
echo Remember that if you dont type anything you will be able to go back
echo _________________________________________________________
net user
echo _________________________________________________________
echo.
set ntuse=net user
echo Enter Account name nothing equals the username: Administrator
set /p name=Account Name:
if not defined name goto :EOF
echo Enter Password for %name% nothing equals the password: garble
set /p thepass=Password:
if not defined thepass goto :EOF
echo Account Name = %name%
echo ____________________
echo Password = %thepass%
echo ____________________
echo Are you sure you want to continue? y or n
set /p contpass=?
if /i not %contpass%==y goto :looplist
%ntuse% %name% %thepass%
echo Settings are applied!
goto :EOF
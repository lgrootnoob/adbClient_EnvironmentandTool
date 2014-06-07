@echo off
echo Enter nothing to go back
echo Enter a partition to erase
echo Commands are separated with a comma
echo cache , boot , system , userdata , recovery
set /p "fbdel=:"
if not defined fbdel goto :EOF
set "f=fastboot erase"
%f% %fbdel%
goto :EOF
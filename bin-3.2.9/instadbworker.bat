@echo off
copy /Y AdbWinApi.dll %windir%\system32\AdbWinApi.dll
copy /Y AdbWinUsbApi.dll %windir%\system32\AdbWinUsbApi.dll
copy /Y adb.exe %windir%\system32\adb.exe
copy /Y fastboot.exe %windir%\system32\fastboot.exe
pause
goto :EOF
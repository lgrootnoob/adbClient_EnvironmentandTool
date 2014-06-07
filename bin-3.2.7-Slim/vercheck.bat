@echo off
pushd %cddir%
call ftp -s:ftpvercheck
cls
ping -n 2 127.0.0.1 >nul
set /p versee=<ver.txt
echo %versee%
ping -n 2 127.0.0.1 >nul
if /i "%versee%"=="2.3" (echo adbClient is up to date)&(goto :done)
goto :setup
:done
pause
del ver.txt
cls
popd
goto :EOF
:setup
echo adbClient is not up to date
echo Press any key to go to xda thread for new download
pause
call start http://forum.xda-developers.com/showthread.php?t=2517527
cls
popd
goto :EOF
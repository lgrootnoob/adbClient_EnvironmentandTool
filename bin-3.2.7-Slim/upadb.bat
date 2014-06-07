@echo off
adb kill-server
pushd %cddir%
call ftp -s:ftpull
popd
goto :EOF
@echo off
echo Scanning all hosts on local network.
:begin
set "yo"="ping"
set /p "prefix"=
if not defined prefix set "prefix"="192.168.1."
set counter++
if %counter%>255 goto :EOF
%yo% %prefix%
goto :begin
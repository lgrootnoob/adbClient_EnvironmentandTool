@echo off
if exist ip (
set /p ip=<ip
goto :hg
)
color 0B
title Ping test
:askping
cls
set chk=
echo Enter = Default address
set /p chk=Address:
cls
if not defined chk (
(echo Default Ping!)&(ping 8.8.8.8)
) ELSE (
(echo Custom Ping!)&(ping %chk%)
)
:askquit
echo Press Enter to quit and y to restart
set chk=n
set /p chk=Restart?
if /i "%chk%"=="n" goto :EOF
if /i not "%chk%"=="y" (
(cls)&(goto :askquit)
) ELSE (
goto :askping
)
:hg
ping %ip% > nul
ping %ip% > outping
(del ip)&(cls)&(exit)
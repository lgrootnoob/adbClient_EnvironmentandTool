@echo off
cd > addpath
set /p addpath=<addpath
set PATH=%addpath%;%PATH%
del addpath
goto :EOF
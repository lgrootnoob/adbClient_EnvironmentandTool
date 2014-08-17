@echo off
:goforit
cd tar\bin
cd > workpathtar
set /p workpathtar=<workpathtar
SET PATH=%workpathtar%;%PATH%
del workpathtar
cd ..
cd ..
goto :EOF
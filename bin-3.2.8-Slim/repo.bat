@echo off
cd %cddir%\..\Work\userbin
echo Enter nothing to go back!
echo quit will also exit
echo List stuff to retrieve = list
echo Install something just type the filename
:ftpstart
set /p "retr=What to do?"
if not defined retr goto :exitit
if "%retr%"=="list" goto :listit
if "%retr%"=="quit" goto :exitit
echo open jacobs-elec.chickenkiller.com > ftpit
echo anon >> ftpit
echo cd repo >> ftpit
echo get %retr% >> ftpit
echo quit >> ftpit
ftp -s:ftpit
del ftpit
goto :ftpstart
:listit
echo open jacobs-elec.chickenkiller.com > ftpit
echo anon >> ftpit
echo cd repo >> ftpit
echo dir >> ftpit
echo quit >> ftpit
ftp -s:ftpit
del ftpit
goto :ftpstart
:exitit
cd ..
goto :EOF
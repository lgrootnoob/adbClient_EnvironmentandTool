@echo off
set "clrval="
echo Enter nothing to go back
echo Syntax = Take a letter from the first side
echo And put it together with a letter from the second side to
echo make background color then text color
echo 08 = black background with gray text
echo ___________________________________
echo     0 = Black     8 = Gray
echo     1 = Blue      9 = Light Blue
echo     2 = Green     A = Light Green
echo     3 = Aqua      B = Light Aqua
echo     4 = Red       C = Light Red
echo     5 = Purple    D = Light Purple
echo     6 = Yellow    E = Light Yellow
echo     7 = White     F = Bright White
echo __________________________________________
set /p "clrvalue=Color?"
if not defined clrvalue goto :doneloop
echo %clrvalue% > %cddir%\clr.txt
set /p clrval=<%cddir%\clr.txt
%clrsnd% %clrval%
goto :EOF
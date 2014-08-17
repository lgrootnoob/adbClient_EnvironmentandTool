@echo off
set "bboxps=busybox ps"
%bboxps% %1 %2 %3 %4
goto :EOF
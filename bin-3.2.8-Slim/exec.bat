@echo off
set "bbox=adb push"
set "bboxsh=adb shell"
set "bboxch=chmod 777"
set "bbox2=/data/local/tmp/"
set "bboxe=./data/local/tmp/"
%bbox% %1 %bbox2%%1
%bboxsh% %bboxch% %bbox2%%1
%bboxsh% %bboxe%%1
goto :EOF
adbClient_EnvironmentandTool
============================

A batch/binary tool for android debugging from the windows command line. 
Can also be used for building a rooting script when you don't want to rewrite some code or setup adb and fastboot on the client's system. 
You can put your automated script in the work folder and then have the adbclient launcher start that script right before the main loop. like so: "call rootscript.bat".
Your code can reference my code by doing things such as sqlite3/busybox installations: "call qfx 3".
XDA project thread http://forum.xda-developers.com/showthread.php?t=2517527
To know the syntax of commands just use --help on any version 3.3 or later

@echo off
cls

echo Drag and drop a .txt with links on me!
if not "%~x1"==".txt" goto :error

CHOICE /M "Where to download: alongside script-file (Y -default) or links-file (N)?" /T 5 /D y

IF ERRORLEVEL ==2 GOTO SKIPCD
cd %~dp0
:SKIPCD

echo making a new folder "%~n1"...
mkdir %~n1

echo downloading links...
aria2c --input-file=%1 --dir="%~n1" --max-connection-per-server=2 --remote-time true

echo Done!
goto :end
:error
echo please give me text file! (try again)
:end
pause
@echo off

set workdir=%~dp0
set nssm=%workdir%\nssm.exe

for %%i in (%CD%) do set service=%%~nxi

%nssm% stop %service%
echo %service% service stoped

%nssm% remove %service% confirm
echo %service% service removed
@echo off

set workdir=%~dp0
set nssm=%workdir%\nssm.exe

for %%i in (%CD%) do set service=%%~nxi

%nssm% stop %service%
echo %service% service stoped

copy %workdir%\%service%.exe %targetdir%

%nssm% start %service%
echo %service% service started
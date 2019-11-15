@echo off

set workdir=%~dp0
set targetdir=C:\\services\%service%
set nssm=%workdir%\nssm.exe
mkdir %targetdir%

for %%i in (%CD%) do set service=%%~nxi

echo Installing %service% service at %targetdir%\%service%.exe.

copy %workdir%\%service%.exe %targetdir%

%nssm% install %service% %targetdir%\%service%.exe
%nssm% set %service% AppStdout %targetdir%\%service%.out
%nssm% set %service% AppStderr %targetdir%\%service%.err
echo %service% service installed

%nssm% start %service%
echo %service% service started
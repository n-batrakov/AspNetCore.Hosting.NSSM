@echo off

set scripts=%~dp0\scripts\
set workdir=%scripts%\..\
set out=%workdir%\dist\api

dotnet publish -o %out% -c Release %workdir%

copy %scripts%\*.* %out%
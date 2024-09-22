@echo off

REM creates version.h with HEAD commit hash
REM params: $1=full path to output file (usually points version.h)
REM VS2022 locks the file after creation, so added a workaround for that

setlocal enableextensions enabledelayedexpansion

cd /d "%~dp0"

set "var="%~1%.bak""

break> %var%

<nul set /p=^"#define GIT_SHA1 ^"^"> %var%

where git
if "%errorlevel%" == "0" ( goto :havegit ) else ( goto :writeending )

:havegit
for /f %%v in ('git rev-parse --short HEAD') do set version=%%v
<nul set /p="%version%" >> %var%

:writeending

echo ^" >> %var%
echo const char* g_GIT_SHA1 = GIT_SHA1; >> %var%

del %1
rename %var% %~n1.cpp

EXIT /B
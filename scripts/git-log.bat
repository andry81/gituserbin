@echo off

rem USAGE:
rem   git-log.bat commit.log

setlocal

if "%~1" == "" (
  echo %~nx0: error: output file is not defined.
  exit /b 255
) >&2

git log --format="%%B%%-C()%%n" > "%~1"

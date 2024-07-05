@echo off
setlocal

REM Change directory to the current directory where this batch file is located
cd /d %~dp0

REM Delete the .git directory and its contents
rd /s /q .git
del README.md
del LICENSE

REM Delete the batch script itself
del "%~f0"

@echo off

setlocal

"%SSH_SHELL_ROOT%\bin\ssh.exe" -t %GIT_AUTH_USER%@shell.sourceforge.net create

pause

@echo off

rem Example:
rem   newcred.bat git:https://github.com USER PASS Enterprise
rem   newcred.bat git:https://USER@github.com USER PASS LocalMachine

setlocal

call "%PROJECTS_ROOT%/andry81/contools/contools/Scripts/Tools/admin/Wincred/newcred.bat" %%*

pause
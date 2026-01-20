@echo off

setlocal

call "%%PROJECTS_ROOT%%/andry81/gitcmd/gitcmd/scripts/git_unmirror_refs.bat" %%*

pause

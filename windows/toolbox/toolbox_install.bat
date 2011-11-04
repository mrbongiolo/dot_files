@echo off
rem Make CMD load cmd_init file at startup
reg add "HKCU\Software\Microsoft\Command Processor" /v AutoRun /t REG_EXPAND_SZ /d "%~dp0cmd_init.cmd"

rem Add this directory to the PATH
reg add "HKCU\Environment" /v PATH /f /d "%~dp0;%path%

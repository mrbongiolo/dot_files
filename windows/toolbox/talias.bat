@echo off

IF "%*"=="" (
  echo Please provide the alias parameters
) ELSE (
  rem Get 'cmd_init.cmd' file path
  FOR /F "tokens=3" %%a IN ('REG QUERY "HKCU\Software\Microsoft\Command Processor" /V AutoRun') DO (
    IF NOT "%%a"=="" (
      echo DOSKEY %* >> "%%a"
      echo "%*" alias added to "%%a" file. Please reopen the command prompt to make it available.
    ) ELSE (
      echo The path to 'cmd_init.cmd' file was not found on the registry. Please read the installation instructions at the README.
    )
  )
)

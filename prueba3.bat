@ECHO OFF
REM
REM This script is intended to be used as a test to ensure that a machine can execute scripts through Faronics Deploy
REM All that this script does is create a marker file on the root of the current sytsem volume indicating that this script 
REM has run correctly with a date and time stamp appended to it.
REM
REM Check for the existance of the log file, if it does not exist create it. 
IF NOT EXIST C:\test-script-log.txt ECHO Faronics Deploy Test Script > %SYSTEMDRIVE%\test-script-log.txt
REM Echo the date and time into the log file.
ECHO %date% %time% - Script run successfully >> %SYSTEMDRIVE%\test-script-log.txt

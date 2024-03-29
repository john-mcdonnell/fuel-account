@ECHO OFF

SET SCRIPT_FOLDER=%~dp0
SET SCRIPT_FILE=%~n0
SET LOG_FILE=%SCRIPT_FOLDER%\%SCRIPT_FILE%.log

SET PROJECT_NAME=FuelAccount
SET PROJECT_FOLDER=%SCRIPT_FOLDER%\..\source\%PROJECT_NAME%

start /WAIT "%PROJECT_NAME% Build" /MIN cmd /C "create-build.xml.cmd > ""%LOG_FILE%"" 2>&1"
echo. >> "%LOG_FILE%" 2>&1
echo. >> "%LOG_FILE%" 2>&1
echo. >> "%LOG_FILE%" 2>&1
start /WAIT "%PROJECT_NAME% Build" /MIN cmd /C "build_ant.cmd ""%PROJECT_FOLDER%"" >> ""%LOG_FILE%"" 2>&1"

EXIT /B
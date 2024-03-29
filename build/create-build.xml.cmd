@ECHO OFF

SET SCRIPT_FOLDER=%~dp0

SET PROJECT_NAME=FuelAccount
SET PROJECT_FOLDER=%SCRIPT_FOLDER%\..\source\%PROJECT_NAME%

SET SDK_FOLDER=C:\apps\development\eclipse-adt\sdk
SET SDK_TOOLS_FOLDER=%SDK_FOLDER%\tools
SET SDK_TOOLS_BUILD_SCRIPT_CREATE_PROGRAM=%SDK_TOOLS_FOLDER%\android.bat

echo Re-generating the ANT build script for the project "%PROJECT_FOLDER%".
echo.
echo.
echo.

REM Re-create the ANT build script (build.xml).
"%SDK_TOOLS_BUILD_SCRIPT_CREATE_PROGRAM%" update project --path "%PROJECT_FOLDER%"

EXIT /B
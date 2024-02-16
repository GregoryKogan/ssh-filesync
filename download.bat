@echo off
set DOWNLOAD_FOLDER=
set SERVER_PORT=
set SERVER_ADDRESS=

REM delete directory if exists
if exist %DOWNLOAD_FOLDER% rd /s /q %DOWNLOAD_FOLDER%

REM download files
scp -P %SERVER_PORT% -r %SERVER_ADDRESS%:~/%DOWNLOAD_FOLDER% .

pause
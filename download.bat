@echo off
set DOWNLOAD_FOLDER=your_download_folder
set SYNC_DIR_NAME=your_sync_dir_name
set SERVER_PORT=your_server_port
set SERVER_ADDRESS=your_server_address

set DOWNLOAD_DIR=%DOWNLOAD_FOLDER%\%SYNC_DIR_NAME%

REM create directory if it doesn't exist
if not exist %DOWNLOAD_DIR% mkdir %DOWNLOAD_DIR%

REM download files
scp -P %SERVER_PORT% -r %SERVER_ADDRESS%:~/%SYNC_DIR_NAME% %DOWNLOAD_DIR%

pause
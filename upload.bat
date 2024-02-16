@echo off
set UPLOAD_FOLDER=your_upload_folder
set SYNC_DIR_NAME=your_sync_dir_name
set SERVER_PORT=your_server_port
set SERVER_ADDRESS=your_server_address

set UPLOAD_DIR=%UPLOAD_FOLDER%\%SYNC_DIR_NAME%

REM remove old files
ssh -p %SERVER_PORT% %SERVER_ADDRESS% rm -rf %SYNC_DIR_NAME%

REM upload new files
scp -P %SERVER_PORT% -r %UPLOAD_DIR% %SERVER_ADDRESS%:~/

pause
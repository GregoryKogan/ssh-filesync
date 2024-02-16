@echo off
set UPLOAD_FOLDER=
set SERVER_PORT=
set SERVER_ADDRESS=

REM remove old files
ssh -p %SERVER_PORT% %SERVER_ADDRESS% rm -rf %UPLOAD_FOLDER%

REM upload new files
scp -P %SERVER_PORT% -r %UPLOAD_FOLDER% %SERVER_ADDRESS%:~/

pause
@echo off
SET QP_GW_BIN_DIR=%~dp0
"%QP_GW_BIN_DIR%\curl.exe" -s -X POST http://localhost:9091/api-gateway/shutdown
if %ERRORLEVEL% EQU 0 (
    echo API Gateway shutdown successfull
    GOTO :EOF
)
echo No such process: API Gateway
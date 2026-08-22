@echo off
chcp 65001 >nul
title ID Photo Tool - Local Test
cd /d "%~dp0"
echo Starting local server on port 8123 ...
start "" /b python -m http.server 8123 --bind 127.0.0.1
timeout /t 1 /nobreak >nul
start http://127.0.0.1:8123/
echo.
echo Opened in your browser. Close this window to stop the server.
echo.
pause

@echo off
chcp 65001 >nul
cd /d "%~dp0"
echo Starting component host (gate.1c.addin.proxy) on port 8082...
start "" gate.1c.addin.proxy.exe --http-port 8082 --http-bind 127.0.0.1 --dll fptr10_1c_win32_10_10_8_21.dll
timeout /t 10 /nobreak >nul
echo Starting settings service on port 8083...
start "" gate.atol.piot.exe --http 8083
timeout /t 4 /nobreak >nul
start "" http://127.0.0.1:8083/
echo.
echo The settings form is open in the browser.
echo To stop: close the gate.1c.addin.proxy and gate.atol.piot windows.
pause
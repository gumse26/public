@echo off
chcp 65001 >nul
cd /d "%~dp0"
echo Gateway in GATE queue mode (queue taken from config.json)...
gate.atol.piot.exe
pause
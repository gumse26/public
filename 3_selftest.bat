@echo off
chcp 65001 >nul
cd /d "%~dp0"
echo Self-test with real connection to the cash register...
gate.atol.piot.exe --selftest --connect
pause
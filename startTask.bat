@echo off
title ACME自动启动工具1.0 by zyl 20180124
color 0a
:::::::::::::: 参数设置::::::::::::::
rem 定时任务执行日志
set logDir=startServiceLog.log
rem 服务延迟启动时间，单位为秒
set waitTime=180
rem 要启动的服务的命令路径
set serversLnkDir=C:\dbgo_acme\ZylTestDir\servicesLnks

set mongodbStartBatLnk=%serversLnkDir%\A-mongodb.lnk
set zookkeeperStartBatLnk=%serversLnkDir%\B-zkServer.lnk
set redisStartBatLnk=%serversLnkDir%\C-redis.lnk
set vertxStartBatLnk=%serversLnkDir%\D-vertx.lnk
set A_tomcatStartBatLnk=%serversLnkDir%\E-startup8080.lnk
set B_tomcatStartBatLnk=%serversLnkDir%\F-startup9090.lnk
set nginxStartBatLnk=%serversLnkDir%\G-nginx_80.lnk

:::::::::::::: 参数设置::::::::::::::

echo ################## %date% %time% 开始任务
echo ################## %date% %time% 开始任务 > %logDir%

echo ################## %date% %time% 开始启动mongodb
echo ################## %date% %time% 开始启动mongodb >> %logDir%
start "启动mongodb服务" "cmd /k call %mongodbStartBatLnk%"

echo ################## %date% %time% 开始启动zookkeeper
echo ################## %date% %time% 开始启动zookkeeper >> %logDir%
start "启动zookkeeper服务" "cmd /k call %zookkeeperStartBatLnk%"

echo ################## %date% %time% 开始启动redis
echo ################## %date% %time% 开始启动redis >> %logDir%
start "启动redis服务" "cmd /k call %redisStartBatLnk%"

echo ################## %date% %time% 等待%waitTime%秒
echo ################## %date% %time% 等待%waitTime%秒 >> %logDir%
ping 127.0.0.1 -n %waitTime% >nul

echo ################## %date% %time% 开始启动vertxStart
echo ################## %date% %time% 开始启动vertxStart >> %logDir%
start "启动vertxStart服务" "cmd /k call %vertxStartBatLnk%"

echo ################## %date% %time% 开始启动A_tomcatStartBatLnk
echo ################## %date% %time% 开始启动A_tomcatStartBatLnk >> %logDir%
call %A_tomcatStartBatLnk% >nul

echo ################## %date% %time% 开始启动B_tomcatStartBatLnk
echo ################## %date% %time% 开始启动B_tomcatStartBatLnk >> %logDir%
call %B_tomcatStartBatLnk% >nul

echo ################## %date% %time% 等待%waitTime%秒
echo ################## %date% %time% 等待%waitTime%秒 >> %logDir%
ping 127.0.0.1 -n %waitTime% >nul

echo ################## %date% %time% 开始启动nginx
echo ################## %date% %time% 开始启动nginx >> %logDir%
call %nginxStartBatLnk%

echo ################## %date% %time% 结束任务
echo ################## %date% %time% 结束任务 >> %logDir%
rem ping 127.0.0.1 -n 10 >nul
pause
@echo off

































































































































@echo off


@echo off
title ACME�Զ��������񹤾�1.0 by zyl 20180125
color 0a
:::::::::::::: ��������::::::::::::::
rem ����ִ����־
set logDir=stopServiceLog.log
rem Ҫ��ֹ�ķ���
set mongodbServer=mongod.exe
set zkAndVertxAndTomcatServers=java.exe
set redisServer=redis-server.exe
set nginxServer=nginx.exe


echo ################## %date% %time% ��ʼ����
echo ################## %date% %time% ��ʼ���� > %logDir%

echo ################## %date% %time% ��ʼ��ֹmongodbServer
echo ################## %date% %time% ��ʼ��ֹmongodbServer >> %logDir%
TASKKILL /F /IM %mongodbServer%

echo ################## %date% %time% ��ʼ��ֹzkAndVertxAndTomcatServers
echo ################## %date% %time% ��ʼ��ֹzkAndVertxAndTomcatServers >> %logDir%
TASKKILL /F /IM %zkAndVertxAndTomcatServers%

echo ################## %date% %time% ��ʼ��ֹredisServer
echo ################## %date% %time% ��ʼ��ֹredisServer >> %logDir%
TASKKILL /F /IM %redisServer%

echo ################## %date% %time% ��ʼ��ֹnginxServer
echo ################## %date% %time% ��ʼ��ֹnginxServer >> %logDir%
TASKKILL /F /IM %nginxServer%

echo ################## %date% %time% ��������
echo ################## %date% %time% �������� >> %logDir%
pause
TASKKILL /F /IM cmd.exe
@echo off

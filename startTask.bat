@echo off
title ACME�Զ���������1.0 by zyl 20180124
color 0a
:::::::::::::: ��������::::::::::::::
rem ��ʱ����ִ����־
set logDir=startServiceLog.log
rem �����ӳ�����ʱ�䣬��λΪ��
set waitTime=180
rem Ҫ�����ķ��������·��
set serversLnkDir=C:\dbgo_acme\ZylTestDir\servicesLnks

set mongodbStartBatLnk=%serversLnkDir%\A-mongodb.lnk
set zookkeeperStartBatLnk=%serversLnkDir%\B-zkServer.lnk
set redisStartBatLnk=%serversLnkDir%\C-redis.lnk
set vertxStartBatLnk=%serversLnkDir%\D-vertx.lnk
set A_tomcatStartBatLnk=%serversLnkDir%\E-startup8080.lnk
set B_tomcatStartBatLnk=%serversLnkDir%\F-startup9090.lnk
set nginxStartBatLnk=%serversLnkDir%\G-nginx_80.lnk

:::::::::::::: ��������::::::::::::::

echo ################## %date% %time% ��ʼ����
echo ################## %date% %time% ��ʼ���� > %logDir%

echo ################## %date% %time% ��ʼ����mongodb
echo ################## %date% %time% ��ʼ����mongodb >> %logDir%
start "����mongodb����" "cmd /k call %mongodbStartBatLnk%"

echo ################## %date% %time% ��ʼ����zookkeeper
echo ################## %date% %time% ��ʼ����zookkeeper >> %logDir%
start "����zookkeeper����" "cmd /k call %zookkeeperStartBatLnk%"

echo ################## %date% %time% ��ʼ����redis
echo ################## %date% %time% ��ʼ����redis >> %logDir%
start "����redis����" "cmd /k call %redisStartBatLnk%"

echo ################## %date% %time% �ȴ�%waitTime%��
echo ################## %date% %time% �ȴ�%waitTime%�� >> %logDir%
ping 127.0.0.1 -n %waitTime% >nul

echo ################## %date% %time% ��ʼ����vertxStart
echo ################## %date% %time% ��ʼ����vertxStart >> %logDir%
start "����vertxStart����" "cmd /k call %vertxStartBatLnk%"

echo ################## %date% %time% ��ʼ����A_tomcatStartBatLnk
echo ################## %date% %time% ��ʼ����A_tomcatStartBatLnk >> %logDir%
call %A_tomcatStartBatLnk% >nul

echo ################## %date% %time% ��ʼ����B_tomcatStartBatLnk
echo ################## %date% %time% ��ʼ����B_tomcatStartBatLnk >> %logDir%
call %B_tomcatStartBatLnk% >nul

echo ################## %date% %time% �ȴ�%waitTime%��
echo ################## %date% %time% �ȴ�%waitTime%�� >> %logDir%
ping 127.0.0.1 -n %waitTime% >nul

echo ################## %date% %time% ��ʼ����nginx
echo ################## %date% %time% ��ʼ����nginx >> %logDir%
call %nginxStartBatLnk%

echo ################## %date% %time% ��������
echo ################## %date% %time% �������� >> %logDir%
rem ping 127.0.0.1 -n 10 >nul
pause
@echo off

































































































































@echo off


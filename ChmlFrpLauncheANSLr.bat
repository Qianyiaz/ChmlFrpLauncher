@echo off
title ChmlFrpLauncher 

:begin 
color 7a 
chcp 936
cls
echo. 
echo            ��ӭ ʹ�� CHml Frp Launcher
echo             ������������������������������������������������������������
echo                 [1]--���� frpc     
echo                 [2]--�޸� ini/toml
echo             ������������������������������������������������������������
echo                 [3]--ǧ��  ��           
echo                 [4]--����   ��
echo             ������������������������������������������������������������
echo                 [5]--�ر� frpc
echo                 [6]--���� ҳ
echo                 [7]--�˳� bat              
echo.               
choice /c 12345678 /n /m "���루1-8������="
 echo ���������%errorlevel%
if %errorlevel% == 1 goto ip1
if %errorlevel% == 2 goto ip2 
if %errorlevel% == 3 goto ip3
if %errorlevel% == 4 goto ip4  
if %errorlevel% == 5 goto ip5
if %errorlevel% == 6 goto ip6 
if %errorlevel% == 7 goto ip7 

:ip1
echo �������� frpc
ping localhost -n 3 > nul
cls 
echo frpc �汾
frpc -v
frpc -c ./frpc.toml
frpc -c ./frpc.ini
echo ������־�󣬰����������
pause>nul
goto begin

 :ip2
start "" "frpc.toml."
start "" "frpc.ini."
echo.
goto begin

:ip3
echo.
start "" "https://www.bilibili.com/video/BV1GJ411x7h7?t=13.8"
echo �㱻ƭ��
ping localhost -n 3 > nul
goto begin

:ip4
Color 4A 
Title ϵͳ�� 
taskkill /f /im explorer.exe 
cls
echo 15�����Խ��ָ�������ǧ���رս��� 
ping 127.0.0.1 -n 15 >nul 
start c:\windows\explorer.exe 
echo ����������������
start "" "indext.html"
goto begin 

:ip5
cls
echo.
echo ���Ϲر�
echo.
echo  ���ڹر� frpc
taskkill /im frpc.exe /f 1>nul 2>nul
goto begin 

:ip6
Color 3A
echo ���ڵ���
start "" "index.html"
goto begin

:ip7 
cls
echo       �����˳�
echo.
echo       886
ping localhost -n 3 > nul
exit 
 

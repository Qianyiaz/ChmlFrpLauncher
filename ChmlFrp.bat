@echo off
set /p choice=     ���롾�١��޸�frpc.ini   ���롾�ڡ�����ChmlFrp   ���롾�ۡ��˳�
call :%choice% 2>nul
exit /b
:1
start "" "frpc.ini."
:2
frpc
goto :EOF
:3
goto :EOF
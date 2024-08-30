@echo off
set /p choice=     输入【①】修改frpc.ini   输入【②】启动ChmlFrp   输入【③】退出
call :%choice% 2>nul
exit /b
:1
start "" "frpc.ini."
:2
frpc
goto :EOF
:3
goto :EOF
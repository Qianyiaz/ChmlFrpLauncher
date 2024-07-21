@echo off
title ChmlFrpLauncher 

:begin 
color 7a 
chcp 936
cls
echo. 
echo            欢迎 使用 CHml Frp Launcher
echo             ——————————————————————————————
echo                 [1]--启动 frpc     
echo                 [2]--修改 ini/toml
echo             ——————————————————————————————
echo                 [3]--千万  ；           
echo                 [4]--别输   。
echo             ——————————————————————————————
echo                 [5]--关闭 frpc
echo                 [6]--作者 页
echo                 [7]--退出 bat              
echo.               
choice /c 12345678 /n /m "输入（1-8）数字="
 echo 您输入的是%errorlevel%
if %errorlevel% == 1 goto ip1
if %errorlevel% == 2 goto ip2 
if %errorlevel% == 3 goto ip3
if %errorlevel% == 4 goto ip4  
if %errorlevel% == 5 goto ip5
if %errorlevel% == 6 goto ip6 
if %errorlevel% == 7 goto ip7 

:ip1
echo 正在启动 frpc
ping localhost -n 3 > nul
cls 
echo frpc 版本
frpc -v
frpc -c ./frpc.toml
frpc -c ./frpc.ini
echo 保存日志后，按任意键返回
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
echo 你被骗了
ping localhost -n 3 > nul
goto begin

:ip4
Color 4A 
Title 系统损坏 
taskkill /f /im explorer.exe 
cls
echo 15秒后电脑将恢复正常，千万别关闭界面 
ping 127.0.0.1 -n 15 >nul 
start c:\windows\explorer.exe 
echo 哈哈哈哈哈哈哈哈
start "" "indext.html"
goto begin 

:ip5
cls
echo.
echo 马上关闭
echo.
echo  正在关闭 frpc
taskkill /im frpc.exe /f 1>nul 2>nul
goto begin 

:ip6
Color 3A
echo 正在导航
start "" "index.html"
goto begin

:ip7 
cls
echo       正在退出
echo.
echo       886
ping localhost -n 3 > nul
exit 
 

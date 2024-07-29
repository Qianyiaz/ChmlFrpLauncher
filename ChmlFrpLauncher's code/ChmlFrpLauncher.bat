@echo off
goto ip14
:begin 
title ChmlFrpLauncher 
color 7a 
cls
echo. 
echo            欢迎 使用 CHml Frp Launcher
echo             ————————————————————————
echo                 [1]--启动 frpc     
echo                 [2]--修改 ini/toml
echo                 [3]--关闭 frpc
echo             ————————————————————————
echo                 [4]--千万  ；           
echo                 [5]--别输   。
echo             ————————————————————————
echo                 [6]--作者 页
echo                 [7]--下载frpc    
echo                 [8]--退出 bat              
echo.               
choice /c 12345678 /n /m "输入（1-8）数字="
    
if %errorlevel% == 1 goto ip1
if %errorlevel% == 2 goto ip2 
if %errorlevel% == 3 goto ip5
if %errorlevel% == 4 goto ip3
if %errorlevel% == 5 goto ip4
if %errorlevel% == 6 goto ip6 
if %errorlevel% == 7 goto start
if %errorlevel% == 8 goto ip7

:ip1
echo 正在启动 frpc
ping localhost -n 3 > nul
cls 
echo frpc 版本
frpc -v 
frpc -c ./frpc.toml 2>log.txt
frpc -c ./frpc.ini 2>log.txt
echo 保存日志后，按任意键返回
pause>nul
goto begin

:ip2
start "" "frpc.toml."
start "" "frpc.ini."
echo.
goto begin

:ip3
start "" "https://www.bilibili.com/video/BV1GJ411x7h7?t=13.8"
echo 你被骗了
ping localhost -n 5 > nul
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
echo 正在关闭 frpc
taskkill /im frpc.exe /f 1>nul 2>nul
goto begin 

:ip6
Color 3A
echo 正在导航
start "" "index.html"
goto begin

:ip7
echo 正在退出
ping localhost -n 3 > nul
exit 

:start 
cls 
echo.
echo            请选择您要使用的frpc版本
echo             ————————————————————————
echo                 [1]--ChmlFrpc
echo.
echo                 [2]--原版frpc
echo.
echo                 [3]--精简frpc
echo             ————————————————————————
echo                 [4]--frpc详情
echo                 [5]--退出下载页
echo                （下载地址在github要开加速器哟）
echo                （下载时千万千万别退出）
echo.
choice /c 12345 /n /m "输入（1-5）数字="

if %errorlevel% == 1 goto ip9
if %errorlevel% == 2 goto ip10
if %errorlevel% == 3 goto ip11
if %errorlevel% == 4 goto ip12
if %errorlevel% == 5 goto ip13

 :ip9
echo 正在下载frpc
powershell curl -o frpc.exe https://github.com/Qianyiaz/ChmlFrpLauncher/releases/download/1.0/ChmlFrpc.exe
powershell curl -o frpc.ini https://github.com/Qianyiaz/ChmlFrpLauncher/releases/download/1.0/frpc.toml
echo 下载完成
echo 返回启动页中
ping localhost -n 3 > nul
goto begin

 :ip10
echo 正在下载frpc
powershell curl -o frpc.exe https://github.com/Qianyiaz/ChmlFrpLauncher/releases/download/1.0/frpc.exe
powershell curl -o frpc.toml https://github.com/Qianyiaz/ChmlFrpLauncher/releases/download/1.0/frpc.toml
echo 下载完成
echo 返回启动页中
ping localhost -n 3 > nul
goto begin

 :ip11
echo 正在下载frpc
powershell curl -o frpc.exe https://github.com/Qianyiaz/ChmlFrpLauncher/releases/download/1.0/tiny.frpc.exe
powershell curl -o frpc.toml https://github.com/Qianyiaz/ChmlFrpLauncher/releases/download/1.0/frpc.toml
echo 下载完成
echo 返回启动页中
ping localhost -n 3 > nul
goto begin

 :ip12
start https://github.com/Qianyiaz/ChmlFrpLauncher/releases/tag/1.0
goto start

 :ip13
echo 返回启动页中
ping localhost -n 2 > nul
goto begin

 :ip14
@echo off
title ChmlFrpLauncher 
color 7a 
IF EXIST frpc.exe (
    rem frpc.exe
    goto begin
) ELSE (
    rem frpc.exe
    echo     检测到您未下载frpc文件
    echo     正在转入下载页
    ping localhost -n 3 > nul
    goto start
)

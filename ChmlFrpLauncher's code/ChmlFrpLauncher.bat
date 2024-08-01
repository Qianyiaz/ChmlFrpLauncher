@echo off
setlocal enabledelayedexpansion

set "lang_folder=%cd%\lang"


REM 
set "lang_file_zh=%cd%\lang\zh_cn.lang"
set "lang_file_en=%cd%\lang\en_us.lang"
set "config_file=config.txt"


rem
set "content="
for /f "usebackq delims=" %%A in ("config.txt") do (
    set "content=!content!%%A"
)

REM 
echo !content! | find /i "lang" > nul
if errorlevel 1 (
    :choose_language
    REM
    mkdir "%lang_folder%"
    move "zh_cn.lang" "%lang_folder%"
    move "en_us.lang" "%lang_folder%"
    cls
    title ChmlFrpLauncher 
    color 7a 
    type nul > config.txt
    echo tag_name: "1.8.1"> config.txt
    echo.
    echo            Please choose your language:
    echo                     [1]                 
    echo                     [2] English
    echo.
    set /p lang_choice="Enter your choice: "

    REM
    if "%lang_choice%"=="1" (
        set "selected_lang=zh_cn"
        echo lang=zh_cn>> "%config_file%"
    ) else if "%lang_choice%"=="2" (
        set "selected_lang=en_us"
        echo lang=en_us>> "%config_file%"
    ) else (
        echo Invalid choice. Please try again. 
        timeout /t 2 > nul
        goto choose_language
    )
) else (
    REM
    set "selected_lang="
    rem
    for /f "usebackq delims=" %%A in ("%config_file%") do (
        set "selected_lang=!selected_lang!%%A"
    )
)

REM
echo %selected_lang% | findstr /C:"lang=zh_cn" > nul
if errorlevel 1 (
    echo %selected_lang% | findstr /C:"lang=en_us" > nul
    if errorlevel 1 (
        echo Language not recognized.
        pause
        exit /b 1
    ) else (
        goto ip17
    )
) else (
    goto ip16
)

:begin
title ChmlFrpLauncher 
color 7a 

cls
echo.
echo !MENU_TITLE! 
echo !MENU_OPTIONS!
echo !MENU_OPTION_1!
echo !MENU_OPTION_2!
echo !MENU_OPTION_3!
echo !MENU_OPTION_7!
echo !MENU_OPTIONS!
echo !MENU_OPTION_4!
echo !MENU_OPTION_5!
echo !MENU_OPTIONS!
echo !MENU_OPTION_6!
echo !MENU_OPTION_8!
echo !MENU_OPTION_9!
echo.
choice /c 123456789 /n /m "!INPUT_PROMPT!"

if %errorlevel% == 1 goto ip1
if %errorlevel% == 2 goto ip2 
if %errorlevel% == 3 goto ip5
if %errorlevel% == 4 goto ip13
if %errorlevel% == 5 goto ip3
if %errorlevel% == 6 goto ip4
if %errorlevel% == 7 goto ip6
if %errorlevel% == 8 goto ip20
if %errorlevel% == 9 goto ip7

:ip1
echo !START_FRPC!
ping localhost -n 3 > nul
cls 
echo !Qyz-11!
frpc -v 
frpc -c ./frpc.toml 2>log.txt
frpc -c ./frpc.ini 2>log.txt
echo !Qyz-12!
pause > nul
goto ip15

:ip2
echo !MODIFY_CONFIG!
start "" "frpc.toml."
start "" "frpc.ini."
goto ip15

:ip3
start "" "https://www.bilibili.com/video/BV1GJ411x7h7?t=13.8"
echo !DOWNLOAD_FRPCq!
ping localhost -n 5 > nul
goto ip15

:ip4
Color 4A 
Title !Qyz-13! 
taskkill /f /im explorer.exe 
cls
echo !Qyz-14!
ping 127.0.0.1 -n 15 >nul 
start c:\windows\explorer.exe 
echo !Qyz-15!
start "" "indext.html"
goto ip15

:ip5
echo !CLOSE_FRPC!
taskkill /im frpc.exe /f 1>nul 2>nul
goto ip15

:ip6
Color 3A
echo !NAVIGATING!
start "" "index.html"
ping localhost -n 5 > nul
goto ip15

:ip7
echo !EXITING!
ping localhost -n 3 > nul
exit 

:start 
cls 
echo.
echo !MENUT_TITLE!
echo !MENU_OPTIONS!
echo !Qyz-1!
echo !Qyz-2!
echo !Qyz-3!
echo=!Qyz-4!
echo=!Qyz-5!
echo !MENU_OPTIONS!
echo !Qyz-6!
echo !Qyz-7!
echo.
set "frpc=%cd%\frpc.exe"
set "ini=%cd%\frpc.ini"
set "toml=%cd%\frpc.toml"

choice /c 12345 /n /m "!INPUT_PROMPTX!"

if %errorlevel% == 1 goto ip9
if %errorlevel% == 2 goto ip10
if %errorlevel% == 3 goto ip11
if %errorlevel% == 4 goto ip12
if %errorlevel% == 5 goto ip15

:ip9
echo !DOWNLOAD_FRPC! 
powershell curl -o %ini% !Download link2!

powershell curl -o %frpc% !Download link1!

powershell curl -o %ini% !Download link2!

echo !Qyz-8!
pause > nul
goto ip15

:ip10
echo !DOWNLOAD_FRPC! 
powershell curl -o %toml% !Download link2!

powershell curl -o %frpc% !Download link3!

powershell curl -o %toml% !Download link2!

echo !Qyz-8!
pause > nul
goto ip15

:ip11
echo !DOWNLOAD_FRPC! 
powershell curl -o %toml% !Download link2!

powershell curl -o %frpc% !Download link4!

powershell curl -o %toml% !Download link2!
echo !Qyz-8!
pause > nul
goto ip15

:ip12
start https://github.com/Qianyiaz/ChmlFrpLauncher/releases/tag/1.0
goto start

:ip13
echo !Qyz-24!
ping localhost -n 2 > nul
goto start

:ip14
@echo off
cls
del /f zh_cn.lang
del /f en_us.lang
cls
title ChmlFrpLauncher 
color 7a 
IF EXIST frpc.exe (
    rem frpc.exe
    goto begin
) ELSE (
    rem frpc.exe
    echo !Qyz-9!
    echo !Qyz-10!
    ping localhost -n 3 > nul
    goto ip13
)


:ip15
echo !RETURNING_TO_START!
ping localhost -n 2 > nul
goto begin

:ip16
rem

for /f "tokens=1,* delims==" %%a in (%lang_file_zh%) do (
    set "%%a=%%b"
)
goto ip14
:ip17
rem
for /f "tokens=1,* delims==" %%a in (%lang_file_en%) do (
    set "%%a=%%b"
)
goto ip14

:ip18
rem
set "tempfile=%cd%\github.txt"

REM
curl -s -o "%tempfile%" https://api.github.com/repos/Qianyiaz/ChmlFrpLauncher-download/releases/latest
for /f "tokens=2 delims=:, " %%B in ('type "%tempfile%" ^| findstr /i "tag_name"') do (
    set latestVersion=%%B
    set latestVersion=!latestVersion:"=!
)

for /f "tokens=2 delims=:, " %%A in ('type "config.txt" ^| findstr /i "tag_name"') do (
    set laestVersion=%%A
    set laestVersion=!laestVersion:"=!
)
for /f "tokens=2* delims=: " %%C in ('findstr /i "browser_download_url" "%tempfile%"') do (
set "download_url=%%D"
set "download_url=!download_url:"=!"
)
cls 
echo.
echo !Qyz-20!
echo !MENU_OPTIONS!
echo !Qyz-16!%laestVersion% 
echo !Qyz-17!%latestVersion%
echo !MENU_OPTIONS!
echo !Qyz-18!
echo !Qyz-23!
echo.
del github.txt
choice /c 12 /n /m "!Qyz-19!"

if %errorlevel% == 2 goto ip15
if %errorlevel% == 1 goto ip19

:ip19
powershell Invoke-WebRequest -Uri "https:%download_url%" -OutFile "ChmlFrpLauncher.exe"
powershell Invoke-WebRequest -Uri "https:%download_url%" -OutFile "ChmlFrpLauncher.exe"
powershell Invoke-WebRequest -Uri "https:%download_url%" -OutFile "ChmlFrpLauncher.exe"
pause
goto ip20

:ip20
echo !Qyz-22!
ping localhost -n 2 > nul
goto ip18



@echo off
setlocal enabledelayedexpansion

set "lang_folder=%cd%\CFL\lang"
del 1.bat >nul 2>&1
set "h_file=%cd%\CFL\html
move "index.html" "%h_file%"
move "indext.html" "%h_file%"
rmdir /s /q %cd%\CFL\Download
cls
set "lang_file_zh=%cd%\CFL\lang\zh_cn.lang"
set "lang_file_en=%cd%\CFL\lang\en_us.lang"
set "config=%cd%\CFL\config.txt"


set "content="
for /f "usebackq delims=" %%A in ("%config%") do (
    set "content=!content!%%A"
)
echo !content! | find /i "lang" > nul
if errorlevel 1 (
    :choose_language
    mkdir "%lang_folder%"
    mkdir "%h_file%"
    move "zh_cn.lang" "%lang_folder%"
    move "en_us.lang" "%lang_folder%"
    cls
    title ChmlFrpLauncher 
    color 7a 
    type nul > %config%
    echo tag_name: "1.8.1"> %config%
    echo.
    echo            Please choose your language:
    echo                     [1] 简体中文               
    echo                     [2] English
    echo.
    set /p lang_choice="Enter your choice: "


    if "%lang_choice%"=="1" (
        set "selected_lang=zh_cn"
        echo lang=zh_cn>> "%config%"
    ) else if "%lang_choice%"=="2" (
        set "selected_lang=en_us"
        echo lang=en_us>> "%config%"
    ) else (
        echo Invalid choice. Please try again. 
        timeout /t 2 > nul
        goto choose_language
    )
) else (
    set "selected_lang="
    rem
    for /f "usebackq delims=" %%A in ("%config%") do (
        set "selected_lang=!selected_lang!%%A"
    )
)


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
echo !MENU_OPTIONS!
echo !MENU_OPTION_4!
echo !MENU_OPTION_5!
echo !MENU_OPTIONS!
echo !MENU_OPTION_6!
echo !MENU_OPTION_9!
echo.
choice /c 1234567 /n /m "!INPUT_PROMPT!"

if %errorlevel% == 1 goto ip1
if %errorlevel% == 2 goto ip2 
if %errorlevel% == 3 goto ip5
if %errorlevel% == 4 goto ip3
if %errorlevel% == 5 goto ip4
if %errorlevel% == 6 goto ip23
if %errorlevel% == 7 goto ip7

:ip1
echo !START_FRPC!
ping localhost -n 3 > nul
cls 
echo !Qyz-11!
frpc -v 
frpc -c ./frpc.toml 2>%cd%\CFL\log.txt
frpc -c ./frpc.ini 2>%cd%\CFL\log.txt
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
start "" "%h_file%\indext.html"
goto ip15

:ip5
echo !CLOSE_FRPC!
taskkill /im frpc.exe /f 1>nul 2>nul
goto ip15

:ip6
Color 3A
echo !NAVIGATING!
start "" "%h_file%\index.html"
ping localhost -n 5 > nul
goto ip23

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
if %errorlevel% neq 0 (
    echo !Qyz-29!
    goto ip13
) else (
    echo !Qyz-8!
)

echo !Qyz-8!
pause > nul
goto ip15

:ip10
echo !DOWNLOAD_FRPC! 
powershell curl -o %toml% !Download link2!
powershell curl -o %frpc% !Download link3!
if %errorlevel% neq 0 (
    echo !Qyz-29!
    goto ip13
) else (
    echo !Qyz-8!
)

echo !Qyz-8!
pause > nul
goto ip15

:ip11
echo !DOWNLOAD_FRPC! 
powershell curl -o %toml% !Download link2!
powershell curl -o %frpc% !Download link4!
if %errorlevel% neq 0 (
    echo !Qyz-29!
    goto ip13
) else (
    echo !Qyz-8!
)

echo !Qyz-8!
pause > nul
goto ip15

:ip12
start https://github.com/Qianyiaz/ChmlFrpLauncher/releases/tag/1.0
goto start

:ip13
echo !Qyz-22!
ping localhost -n 2 > nul
goto start

:ip14
@echo off
del /f zh_cn.lang
del /f en_us.lang
cls
title ChmlFrpLauncher 
color 7a 
IF EXIST frpc.exe (
    goto begin
) ELSE (
    echo !Qyz-9!
    echo !Qyz-10!
    ping localhost -n 3 > nul
    goto start
)

:ip15
echo !RETURNING_TO_START!
ping localhost -n 2 > nul
goto begin

:ip16
for /f "tokens=1,* delims==" %%a in (%lang_file_zh%) do (
    set "%%a=%%b"
)
goto ip14

:ip17
for /f "tokens=1,* delims==" %%a in (%lang_file_en%) do (
    set "%%a=%%b"
)
goto ip14


:ip19
echo !Qyz-27!
set "xz_folder=%cd%\CFL\Download"
set "dz=%cd%\CFL\Download\ChmlFrpLauncher.exe"
mkdir "%xz_folder%"

powershell Invoke-WebRequest -Uri "https:%download_url%" -OutFile "%dz%"
powershell Invoke-WebRequest -Uri "https:%download_url%" -OutFile "%dz%"
powershell Invoke-WebRequest -Uri "https:%download_url%" -OutFile "%dz%"

if %errorlevel% neq 0 (
    echo !Qyz-29!
    goto ip23
) else (
    echo !Qyz-8!
)
pause

type nul > 1.bat
echo @echo off >> 1.bat
echo del %cd%\ChmlFrpLauncher.exe >> 1.bat
echo move %dz% %cd% >> 1.bat
echo start ChmlFrpLauncher.exe >> 1.bat
echo del %config% >> 1.bat
echo exit >> 1.bat
start 1.bat
exit

:ip21
set "tempfile=%cd%\CFL\github.txt"

curl -s -o "%tempfile%" %Api.Github%

for /f "tokens=2 delims=:, " %%B in ('type "%tempfile%" ^| findstr /i "tag_name"') do (
    set latestVersion=%%B
    set latestVersion=!latestVersion:"=!
)

for /f "tokens=2 delims=:, " %%A in ('type "%config%" ^| findstr /i "tag_name"') do (
    set CURRENTVersion=%%A
    set CURRENTVersion=!CURRENTVersion:"=!
)

for /f "tokens=2* delims=: " %%C in ('findstr /i "browser_download_url" "%tempfile%"') do (
set "download_url=%%D"
set "download_url=!download_url:"=!"
)


del %tempfile%

for /f "tokens=1,2,3 delims=." %%a in ("%CURRENTVersion%") do (
    set /a CURRENT_MAJOR=%%a
    set /a CURRENT_MINOR=%%b
    set /a CURRENT_PATCH=%%c
)

for /f "tokens=1,2,3 delims=." %%a in ("%latestVersion%") do (
    set /a LATEST_MAJOR=%%a
    set /a LATEST_MINOR=%%b
    set /a LATEST_PATCH=%%c
)

if !LATEST_MAJOR! gtr !CURRENT_MAJOR! (
    goto ip19
) else if !LATEST_MAJOR! equ !CURRENT_MAJOR! (
    if !LATEST_MINOR! gtr !CURRENT_MINOR! (
        goto ip19
    ) else if !LATEST_MINOR! equ !CURRENT_MINOR! (
        if !LATEST_PATCH! gtr !CURRENT_PATCH! (
            goto ip19
        ) else (
            goto ip24
        )
    ) else (
        goto ip24
    )
) else (
    goto ip24
)

:ip22
cls
echo.
echo !Qyz-20! 
echo !MENU_OPTIONS!
echo !Qyz-18!
echo !Qyz-25!
echo !MENU_OPTION_7!
echo !Qyz-23!
echo.
choice /c 1234 /n /m "!Qyz-19!"

if %errorlevel% == 1 goto ip21
if %errorlevel% == 2 goto ip6
if %errorlevel% == 3 goto ip13
if %errorlevel% == 4 goto ip15

:ip23
echo !Qyz-26!
ping localhost -n 2 > nul
goto ip22

:ip24
echo !Qyz-28!
goto ip23


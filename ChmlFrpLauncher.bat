::[Bat To Exe Converter]
::
::fBE1pAF6MU+EWHreyHcjLQlHcBODMmy2A7wgzO3o5P6IsnE6XfY3bY3n+byDLMYB+mnlYJgu3n9IpOgqICdQah+nUgY6rWta+GyROsv8
::fBE1pAF6MU+EWHreyHcjLQlHcBODMmy2A7wgzO3o5P6IsnE6XfY3bY3n+byDLMYB+mnlYJgu3n9IpOgqICdQah+nUgY6rWtaoiqNI8qQ0w==
::fBE1pAF6MU+EWHreyHcjLQlHcBODMmy2A7wgzO3o5P6IsnE6XfY3bY3n+byDLMYB+mnlYJgu3n9IpOgqICdUfxysUgo6lntR+GiEOcD8
::fBE1pAF6MU+EWHreyHcjLQlHcBODMmy2A7wgzO3o5P6IsnE6XfY3bY3n+byDLMYB+mnlYJgu3n9IpOgqICdUfxysUhU8lm1M+GiEOcD8
::YAwzoRdxOk+EWAjk
::fBw5plQjdCyDJGyX8VAjFAxVQgOOOWKGIrAP4/z0/9agq1kVQeADW4fW1pKcMMwS/0vnfZM/6nxbjsIPAxUWdxGkDg==
::YAwzuBVtJxjWCl3EqQJgSA==
::ZR4luwNxJguZRRnk
::Yhs/ulQjdF+5
::cxAkpRVqdFKZSjk=
::cBs/ulQjdF+5
::ZR41oxFsdFKZSTk=
::eBoioBt6dFKZSTk=
::cRo6pxp7LAbNWATEpSI=
::egkzugNsPRvcWATEpCI=
::dAsiuh18IRvcCxnZtBJQ
::cRYluBh/LU+EWAnk
::YxY4rhs+aU+IeA==
::cxY6rQJ7JhzQF1fEqQJhZkMaGErWXA==
::ZQ05rAF9IBncCkqN+0xwdVsFAlzMaAs=
::ZQ05rAF9IAHYFVzEqQITIBZYahaSEGqvCLYU7fqb
::eg0/rx1wNQPfEVWB+kM9LVsJDCeKMWecFKUw6f317OKCsC0=
::fBEirQZwNQPfEVWB+kM9LVsJDCeKMWecFKUw6f317OKCsC0=
::cRolqwZ3JBvQF1fEqQITIBZYahaSEGqvCLYU7fqb
::dhA7uBVwLU+EWPtNxVsqaEkEHlDi
::YQ03rBFzNR3SWATEVosBMQEUHlTQaAs=
::dhAmsQZ3MwfNWATEVosBMQEUHlTQaAs=
::ZQ0/vhVqMQ3MEVWAtB9witJlVR7CbjvoUtU=
::Zg8zqx1/OA3MEVWAtB9witJlVR7CbjvoUtU=
::dhA7pRFwIByZRRkCA4JQ
::Zh4grVQjdCyDJGyX8VAjFAxVQgOOOWKGIrAP4/z0/9agq1kVQeADW4fW1pKcMMwS/0vnfZM/6nhTlvcvBBZUWAC7Qg4hp21Ks3bLMt+Z0w==
::YB416Ek+Zm8=
::
::
::978f952a14a936cc963da21a135fa983
@echo off
setlocal enabledelayedexpansion

set s=7
set X=0
set v=1.8.4
set CF=%cd%\CFL
set CFL=ChmlFrpLauncher
set lo=%CF%\.logs
set lang_folder=%CF%\lang
set h_file=%CF%\html
set config=%CF%\.config
set frpc=%CF%\frp\frpc.exe
set ini=%CF%\frp\frpc.ini
set toml=%CF%\frp\frpc.toml
set xz_folder=%CF%\Download
set dz=%xz_folder%\%CFL%.exe
set tempfile=%CF%\github.txt

set "content="
for /f "usebackq delims=" %%A in ("%config%") do (
    set "content=!content!%%A"
)
echo !content! | find /i "lang" > nul
if errorlevel 1 (
    :cl
    cls
    (
    mkdir "%lang_folder%"
    mkdir "%h_file%"
    mkdir "%cd%\CFL\frp"
    move "zh_cn.lang" "%lang_folder%"
    move "en_us.lang" "%lang_folder%"
    move "index.html" "%h_file%"
    move "indext.html" "%h_file%" 
    ) >>nul 2>&1
    color %s%8
    type nul > %config%
    echo Version=%v%>> %config%
    echo Name=frpc >> %config%
    echo Count=0 >> %config%
    echo Update=true >> %config%
    echo.
    echo            Please choose your language:
    echo                     [1] Chinese-s           
    echo                     [2] English
    echo.
    set /p langn="Enter your choice: "
    
    if "%langn%"=="1" (
        set "selected_lang=zh_cn"
        echo Lang=zh_cn>> "%config%"
    ) else if "%langn%"=="2" (
        set "selected_lang=en_us"
        echo Lang=en_us>> "%config%"
    ) else (
        echo Invalid choice. Please try again. 
        timeout /t 2 > nul
        goto cl
    )
)
goto ip14

:ip14
color %s%8
for /f "tokens=1,* delims==" %%a in (%config%) do (
    set "%%a=%%b"
)
for /f "tokens=1,* delims==" %%a in (%lang_folder%\%lang%.lang) do (
    set "%%a=%%b"
)

(
    rmdir /s /q %xz_folder% 
    del 1.bat
    del /f zh_cn.lang 
    del /f en_us.lang 
) >>nul 2>&1

if %Update% == true (
    goto ip17
) else if %Update% == false (
    goto ip18
)

:ip17
Title !Qyz-33!

curl -s -o "%tempfile%" %Api.Github%

for /f "tokens=2 delims=:, " %%B in ('type "%tempfile%" ^| findstr /i "tag_name"') do (
    set l=%%B
    set l=!l:"=!
)

for /f "tokens=2* delims=: " %%C in ('findstr /i "browser_download_url" "%tempfile%"') do (
set "download_url=%%D"
set "download_url=!download_url:"=!"
)

del %tempfile%

for /f "tokens=1,2,3 delims=." %%a in ("%Version%") do (
    set /a C_M=%%a
    set /a C_M=%%b
    set /a C_P=%%c
)

for /f "tokens=1,2,3 delims=." %%a in ("%l%") do (
    set /a L_M=%%a
    set /a L_M=%%b
    set /a L_P=%%c
)

if %X% == 1 (
    goto ip20
) else (
    goto ip18
)

:ip18
title %CFL%
if !L_M! gtr !C_M! (
    goto ip19
) else if !L_M! equ !C_M! (
    if !L_M! gtr !C_M! (
        goto ip19
    ) else if !L_M! equ !C_M! (
        if !L_P! gtr !C_P! (
            goto ip19
        ) else (
            goto ip27
        )
    ) else (
        goto ip27
    )
) else (
    goto ip27
)

:ip27
IF EXIST %frpc% (
    if %x% == 2 (
        goto ip15
    ) else (
        goto begin
    )
) ELSE (
    echo !Qyz-9!
    echo !Qyz-10!
    ping localhost -n 3 > nul
    goto start
)




:begin
color %s%8
cls
echo.
echo !M-1! 
echo !M-s!
echo !M-2!
echo !M-3!
echo !M-4!
echo !M-s!
echo                  !Qyz-30!!l!
echo                  !Qyz-31!!Version!
echo !M-s!
echo !M-6!
echo !M-7!
echo.

choice /c 12345678 /n /m "!M-16!"

if %errorlevel% == 1 goto ip1
if %errorlevel% == 2 goto ip2 
if %errorlevel% == 3 goto ip5
if %errorlevel% == 4 goto ip3
if %errorlevel% == 5 goto ip4
if %errorlevel% == 6 goto ip23
if %errorlevel% == 7 goto ip7
if %errorlevel% == 8 goto ip28

:ip28
start "" %config%
goto ip15

:ip1
echo !M-8!
ping localhost -n 3 > nul
cls 
IF EXIST %toml% (
    start "%name%" cmd /c "%frpc% -v & %frpc% -c %toml% & pause"
) else if EXIST %ini% (
    start "%name%" cmd /c "%frpc% -v & %frpc% -c %ini% & pause"
) else (
    set x=2
    goto ip27
)

set /a Count=%Count% + 1

(for /f "usebackq delims=" %%A in ("%config%") do (
    set "lz=%%A"
    echo !lz! | findstr /c:"Count=" >nul
    if errorlevel 1 (
        echo !lz!
    )
)) > ".tmp"

move /Y ".tmp" "%config%" >>nul 2>&1

echo Count=%Count% >> %config%

echo !Qy!!Count!!AS!

echo !Qyz-12!
pause > nul
goto ip15

:ip2
echo !M-9!

IF EXIST %toml% (
    start "" "%toml%"
) else (
    start "" "%ini%"
)

goto ip15

:ip3
start "" "https://www.bilibili.com/video/BV1GJ411x7h7"
echo !M-11!
ping localhost -n 5 > nul
goto ip15

:ip4
Color 48
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
echo !M-10!
taskkill /im frpc.exe /f 
goto ip15

:ip6
Color 3A
echo !M-14!
start "" "%h_file%\index.html"
ping localhost -n 5 > nul
goto ip23

:ip7
echo !M-13!
ping localhost -n 3 > nul
exit 




:start 
cls 
echo.
echo !M-17!
echo !M-s!
echo !Qyz-1!
echo !Qyz-2!
echo !Qyz-3!
echo !M-s!
echo !Qyz-6!
echo !Qyz-7!
echo.

choice /c 12345 /n /m "!M-18!"

if %errorlevel% == 1 goto ip9
if %errorlevel% == 2 goto ip10
if %errorlevel% == 3 goto ip11
if %errorlevel% == 4 goto ip12
if %errorlevel% == 5 goto ip15

:ip9
echo !M-12! 

powershell curl -o %frpc% !Download link1!

IF EXIST %toml% (
    del %toml%
)

IF EXIST %ini% (
    goto ip25
) ELSE (
    powershell curl -o %ini% !Download link2!
    goto ip25
)

:ip10
echo !M-12! 
powershell curl -o %frpc% !Download link3!

IF EXIST %ini% (
    del %ini%
)

IF EXIST %toml% (
    goto ip25
) ELSE (
    powershell curl -o %toml% !Download link2!
    goto ip25
)

:ip11
echo !M-12! 
powershell curl -o %frpc% !Download link4!

IF EXIST %ini% (
    del %ini%
)

IF EXIST %toml% (
    goto ip25
) ELSE (
    powershell curl -o %toml% !Download link2!
    goto ip25
)

:ip12
start https://github.com/Qianyiaz/ChmlFrpLauncher/releases/tag/1.0
goto start

:ip13
echo !Qyz-22!
ping localhost -n 2 > nul
goto start

:ip15
echo !M-15!
ping localhost -n 2 > nul
goto begin

:ip16
set "X=1"
goto ip17

:ip20
echo !Qyz-30!!l!
echo !Qyz-31!!Version!
ping localhost -n 3 > nul

if !L_MAJOR! gtr !C_MAJOR! (
    goto ip19
) else if !L_MAJOR! equ !C_MAJOR! (
    if !L_MINOR! gtr !C_MINOR! (
        goto ip19
    ) else if !L_MINOR! equ !C_MINOR! (
        if !L_PATCH! gtr !C_PATCH! (
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

:ip19
echo !Qyz-27!
mkdir "%xz_folder%"
goto ip26

:ip26
powershell Invoke-WebRequest -Uri "https:%download_url%" -OutFile "%dz%"

if %errorlevel% neq 0 (
    echo !Qyz-29!
    goto ip26
) else (
    echo !Qyz-8!
)
pause

type nul > 1.bat

(
    echo @echo off
    echo del /f "%cd%\ChmlFrpLauncher.exe"
    echo del "%cd%\CFL\config.txt"
    echo move "%cd%\CFL\Download\ChmlFrpLauncher.exe" "%cd%"
    echo start ChmlFrpLauncher.exe
    echo exit
) > 1.bat

start 1.bat

exit

:ip22
cls
title %CFL%
echo.
echo !Qyz-20! 
echo !M-s!
echo !Qyz-18!
echo !Qyz-25!
echo !M-5!
echo !Qyz-32!
echo !M-s!
echo !Qyz-23!
echo.

choice /c 12345 /n /m "!Qyz-19!"

if %errorlevel% == 1 goto ip16
if %errorlevel% == 2 goto ip6
if %errorlevel% == 3 goto ip13
if %errorlevel% == 4 goto ip26
if %errorlevel% == 5 goto ip15

:ip23
echo !Qyz-26!
ping localhost -n 2 > nul
goto ip22

:ip24
echo !Qyz-28!
goto ip23

:ip25
if %errorlevel% neq 0 (
    echo !Qyz-29!
    goto ip13
)
echo !Qyz-8!
pause
goto ip15

:ip26
set "file=%CF%\hsd.txt"
curl -s -o "%file%" %hsdxz%
set count=0

for /f "usebackq delims=" %%A in ("%file%") do (
    set /a count+=1
)
set /a line=%random% %% count + 1
set number=0
for /f "usebackq delims=" %%A in ("%file%") do (
    set /a number+=1
    if !number! equ !line! (
        echo %%A
    )
)

del %file%
pause
goto ip23
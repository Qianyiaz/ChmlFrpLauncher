@echo off
set /p mima=
signtool sign /f "cert.pfx" /p %mima% "ChmlFrpLauncher.exe"
signtool timestamp /t http://github.com/Qianyiaz/ChmlFrpLauncher "ChmlFrpLauncher.exe"
pause
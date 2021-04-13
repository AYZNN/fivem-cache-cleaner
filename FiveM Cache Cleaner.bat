@echo off
title FiveM Tools - WaveShield - discord.gg/CXZwrZx
color c


echo " _    _                 _____ _     _      _     _ "
echo "| |  | |               /  ___| |   (_)    | |   | |"
echo "| |  | | __ ___   _____\ `--.| |__  _  ___| | __| |"
echo "| |/\| |/ _` \ \ / / _ \`--. \ '_ \| |/ _ \ |/ _` |"
echo "\  /\  / (_| |\ V /  __/\__/ / | | | |  __/ | (_| |"
echo " \/  \/ \__,_| \_/ \___\____/|_| |_|_|\___|_|\__,_|"
echo .
echo You Need a FiveM Anticheat ? WaveShield is here : discord.gg/CXZwrZx
echo Press Any Key to optimize FiveM and Clear the cache
pause >nul
cls

start "" http://www.waveshield.xyz/
start "" https://discord.com/invite/CXZwrZx

echo Clearing FiveM Cache...
TIMEOUT /T 1
rmdir /s /q "%LocalAppData%\FiveM\FiveM.app\cache\browser"
rmdir /s /q "%LocalAppData%\FiveM\FiveM.app\cache\db"
rmdir /s /q "%LocalAppData%\FiveM\FiveM.app\cache\priv"
rmdir /s /q "%LocalAppData%\FiveM\FiveM.app\cache\servers"
rmdir /s /q "%LocalAppData%\FiveM\FiveM.app\cache\subprocess"
rmdir /s /q "%LocalAppData%\FiveM\FiveM.app\cache\unconfirmed"
del /s /q /f "%LocalAppData%\FiveM\FiveM.app\crashometry"
del /s /q /f "%LocalAppData%\FiveM\FiveM.app\launcher_skip_mtl2"
del /s /q /f "%LocalAppData%\FiveM\FiveM.app\session"
rmdir /s /q "%LocalAppData%\FiveM\FiveM.app\plugins"
rmdir /s /q "%LocalAppData%\FiveM\FiveM.app\mods"
rmdir /s /q "%LocalAppData%\FiveM\FiveM.app\logs"
rmdir /s /q "%LocalAppData%\FiveM\FiveM.app\crashes"
del /s /q /f "%LocalAppData%\FiveM\FiveM.app\caches.XML"
del /s /q /f "%LocalAppData%\FiveM\FiveM.app\adhesive.dll"



echo Optimizing Your Computer for FiveM...
TIMEOUT /T 1
powercfg -s 8c5e7fda-e8bf-4a96-9a85-a6e23a8c635c
taskkill /f /im GTAVLauncher.exe
wmic process where name="FiveM.exe" CALL setpriority 128
wmic process where name="FiveM_b2189_GTAProcess.exe" CALL setpriority 128
taskkill /f /im wmpnetwk.exe.exe
taskkill /f /im OneDrive.exe
taskkill /f /im speedfan.exe
taskkill /f /im TeamWiever_Service.exe
taskkill /f /im opera.exe
taskkill /f /im java.exed

TIMEOUT /T 1
color c
cls
echo " _    _                 _____ _     _      _     _ "
echo "| |  | |               /  ___| |   (_)    | |   | |"
echo "| |  | | __ ___   _____\ `--.| |__  _  ___| | __| |"
echo "| |/\| |/ _` \ \ / / _ \`--. \ '_ \| |/ _ \ |/ _` |"
echo "\  /\  / (_| |\ V /  __/\__/ / | | | |  __/ | (_| |"
echo " \/  \/ \__,_| \_/ \___\____/|_| |_|_|\___|_|\__,_|"
echo .
echo Optimized and Cleared cache, this script was created by ayznnnn#3964
echo You Need a FiveM Anticheat ? WaveShield is here : discord.gg/CXZwrZx

set ip=
set /p ip= "You can now enter the server ip address to connect:"
echo Connecting to %ip% ...
start "" "fivem://connect/%ip%"
timeout /t 10 /nobreak

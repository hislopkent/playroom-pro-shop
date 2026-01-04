@echo off
:: ========================================================
:: THE PLAYROOM PRO SHOP - LAUNCH SEQUENCE (AWESOME GOLF)
:: ========================================================

:: 1. Coordinates for the "Ghost Monitor"
set X_POS=5120
set Y_POS=0
set WIDTH=3840
set HEIGHT=2160

:: 2. Launch Awesome Golf
echo Opening the Pro Shop for the Kids...
start "" "C:\Program Files\Awesome Golf\AwesomeGolf.exe"

:: 3. Wait for Load (Awesome Golf loads fast)
timeout /t 8

:: 4. Move to Ghost Display
nircmd win setsize title "Awesome Golf" %X_POS% %Y_POS% %WIDTH% %HEIGHT%

echo Stream Ready.

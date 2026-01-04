@echo off
:: ========================================================
:: THE PLAYROOM PRO SHOP - LAUNCH SEQUENCE (E6 CONNECT)
:: ========================================================

:: 1. Coordinates for the "Ghost Monitor" (Target: 4K TV Stream)
:: Assumes your Main + Vertical monitors occupy the first 5120 pixels.
set X_POS=5120
set Y_POS=0
set WIDTH=3840
set HEIGHT=2160

:: 2. Launch E6 Connect
echo Opening the Pro Shop for E6 Connect...
start "" "C:\Program Files (x86)\E6 Connect\E6Connect.exe"

:: 3. Wait for Load (E6 is heavy, give it time)
timeout /t 15

:: 4. Move to Ghost Display
:: Note: The Window Title for E6 is usually just "E6 Connect"
nircmd win setsize title "E6 Connect" %X_POS% %Y_POS% %WIDTH% %HEIGHT%

echo Stream Ready.

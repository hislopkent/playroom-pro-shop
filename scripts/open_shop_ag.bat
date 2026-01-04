@echo off
:: ============================================================================
:: SCRIPT: OPEN SHOP (AWESOME GOLF)
:: PURPOSE: Launches Awesome Golf for the kids and moves it to the Ghost Monitor
:: ============================================================================

:: --- CONFIGURATION ---
set X_POS=5120
set Y_POS=0
set WIDTH=3840
set HEIGHT=2160

:: --- STEP 1: LAUNCH ---
echo [STATUS] Launching Awesome Golf...
start "" "C:\Program Files\Awesome Golf\AwesomeGolf.exe"

:: --- STEP 2: WAIT ---
:: Awesome Golf loads much faster than E6, so we only wait 8 seconds.
echo [STATUS] Waiting 8 seconds...
timeout /t 8

:: --- STEP 3: MOVE ---
:: Note: The window title must match exactly what you see in the Taskbar.
nircmd win setsize title "Awesome Golf" %X_POS% %Y_POS% %WIDTH% %HEIGHT%

echo [SUCCESS] Awesome Golf is ready.

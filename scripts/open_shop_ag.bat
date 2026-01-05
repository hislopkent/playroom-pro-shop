@echo off
:: ============================================================================
:: SCRIPT: OPEN SHOP (AWESOME GOLF)
:: PURPOSE: Launches Awesome Golf and sets up the Pro Shop environment.
:: ============================================================================

:: --- CONFIGURATION ---
:: Adjust these coordinates for your Ghost Monitor/TV location
set X_POS=5120
set Y_POS=0
set WIDTH=3840
set HEIGHT=2160

:: --- STEP 1: ENABLE JUMBO MOUSE (For TV Visibility) ---
echo [STATUS] Enlarging Mouse Pointer...
powershell -ExecutionPolicy Bypass -File "%~dp0SetCursorSize.ps1" -Size 100

:: --- STEP 2: LAUNCH AWESOME GOLF ---
:: Updated with the correct file path you provided
echo [STATUS] Launching Awesome Golf...
start "" "C:\Program Files\Awesome Golf - Simulator\Awesome Golf Simulator.exe"

:: --- STEP 3: WAIT FOR LOAD ---
echo [STATUS] Waiting 8 seconds...
timeout /t 8

:: --- STEP 4: MOVE TO GHOST MONITOR ---
:: Note: We target the window title "Awesome Golf"
nircmd win setsize title "Awesome Golf" %X_POS% %Y_POS% %WIDTH% %HEIGHT%

echo [SUCCESS] Awesome Golf is ready.
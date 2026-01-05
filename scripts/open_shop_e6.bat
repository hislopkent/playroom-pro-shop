@echo off
:: ============================================================================
:: SCRIPT: OPEN SHOP (E6 CONNECT)
:: AUTHOR: Kent Hislop
:: PURPOSE: Launches E6 Connect and moves it to the "Ghost Monitor" (Dummy Plug)
:: DEPENDENCIES: nircmd.exe must be installed or in the same folder.
:: ============================================================================

:: --- CONFIGURATION SECTION ---
:: X_POS: The pixel coordinate where your Dummy Plug starts.
:: (Example: If main screens are 5120px wide, the dummy starts at 5120)
set X_POS=5120

:: Y_POS: Always 0 unless you have stacked monitors.
set Y_POS=0

:: RESOLUTION: The target resolution of your TV/Dummy Plug (4K = 3840x2160)
set WIDTH=3840
set HEIGHT=2160

:: --- NEW: ENABLE JUMBO MOUSE ---
:: Size 100 is very large, perfect for 4K TVs.
echo [STATUS] Enlarging Mouse Pointer...
powershell -ExecutionPolicy Bypass -File "%~dp0SetCursorSize.ps1" -Size 100

:: --- STEP 1: LAUNCH THE SOFTWARE ---
echo [STATUS] Launching E6 Connect...
:: 'start ""' tells Windows to open the app and return to this script immediately.
start "" "C:\Program Files (x86)\E6 Connect\E6Connect.exe"

:: --- STEP 2: WAIT FOR LOAD ---
:: E6 Connect is a heavy application. We wait 15 seconds to ensure the window
:: is fully created before we try to move it.
:: If the game isn't moving, increase this number (e.g., timeout /t 20)
echo [STATUS] Waiting 15 seconds for startup...
timeout /t 15

:: --- STEP 3: MOVE TO GHOST MONITOR ---
:: We use 'nircmd' to grab the window named "E6 Connect" and force it
:: to the coordinates defined above.
:: Syntax: setsize [title] [x] [y] [width] [height]
nircmd win setsize title "E6 Connect" %X_POS% %Y_POS% %WIDTH% %HEIGHT%

echo [SUCCESS] E6 Connect is running on the Ghost Display.

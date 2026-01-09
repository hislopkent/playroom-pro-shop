@echo off
:: ============================================================================
:: SCRIPT: OPEN SHOP (FS GOLF PC)
:: PURPOSE: Launches FS Golf via Shortcut, moves to TV, and LOCKS mouse.
:: ============================================================================

:: --- CONFIGURATION ---
set X_POS=5120
set Y_POS=0
set WIDTH=3840
set HEIGHT=2160

:: --- STEP 1: ENABLE JUMBO MOUSE ---
echo [STATUS] Enlarging Mouse Pointer...
powershell -ExecutionPolicy Bypass -File "%~dp0SetCursorSize.ps1" -Size 64

:: --- STEP 2: LAUNCH FS GOLF ---
echo [STATUS] Launching FS Golf...
start "" "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\FS Golf PC 2.0.lnk"

:: --- STEP 3: WAIT FOR LOAD ---
:: Keeping the 30s wait since you confirmed it takes a while to boot
echo [STATUS] Waiting 30 seconds for startup...
timeout /t 30

:: --- STEP 4: MOVE TO GHOST MONITOR ---
:: UPDATED: Uses the exact EXE name from your screenshot
nircmd win setsize process "FlightScopeVideoTeachingApp.exe" %X_POS% %Y_POS% %WIDTH% %HEIGHT%

:: --- NEW STEP: FORCE FOCUS ---
nircmd win activate process "FlightScopeVideoTeachingApp.exe"
timeout /t 1

:: --- STEP 5: TRAP THE MOUSE ---
echo [STATUS] Locking Mouse to Simulator Screen...
:: REMINDER: Update MOUSE_X if you found a different number earlier
set MOUSE_X=7040
set MOUSE_Y=1080

nircmd setcursor %MOUSE_X% %MOUSE_Y%
"%ProgramFiles(x86)%\Dual Monitor Tools\DMT.exe" "DMT:Cursor:LockCursor"

echo [SUCCESS] FS Golf is locked and loaded.
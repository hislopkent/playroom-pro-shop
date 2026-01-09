@echo off
:: ============================================================================
:: SCRIPT: OPEN SHOP (AWESOME GOLF)
:: PURPOSE: Launches Awesome Golf, moves to Ghost Monitor, and LOCKS mouse.
:: ============================================================================

:: --- CONFIGURATION ---
set X_POS=5120
set Y_POS=0
set WIDTH=3840
set HEIGHT=2160

:: --- STEP 1: ENABLE JUMBO MOUSE ---
echo [STATUS] Enlarging Mouse Pointer...
powershell -ExecutionPolicy Bypass -File "%~dp0SetCursorSize.ps1" -Size 64

:: --- STEP 2: LAUNCH AWESOME GOLF ---
echo [STATUS] Launching Awesome Golf...

:: FIX: Set Working Directory first
cd /d "C:\Program Files\Awesome Golf - Simulator"
start "" "Awesome Golf Simulator.exe"

:: --- STEP 3: WAIT FOR LOAD ---
echo [STATUS] Waiting 10 seconds for startup...
timeout /t 10

:: --- STEP 4: MOVE TO GHOST MONITOR ---
nircmd win setsize title "Awesome Golf" %X_POS% %Y_POS% %WIDTH% %HEIGHT%

:: --- NEW STEP: FORCE FOCUS ---
nircmd win activate title "Awesome Golf"
timeout /t 1

:: --- STEP 5: TRAP THE MOUSE ---
echo [STATUS] Locking Mouse to Simulator Screen...
:: REMINDER: Update MOUSE_X if the PowerShell test showed a different number
set MOUSE_X=7040
set MOUSE_Y=1080

nircmd setcursor %MOUSE_X% %MOUSE_Y%
"%ProgramFiles(x86)%\Dual Monitor Tools\DMT.exe" "DMT:Cursor:LockCursor"

echo [SUCCESS] Awesome Golf is ready and locked.
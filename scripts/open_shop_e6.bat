@echo off
:: ============================================================================
:: SCRIPT: OPEN SHOP (E6 CONNECT)
:: PURPOSE: Launches E6 Connect, moves to Ghost Monitor, and LOCKS mouse.
:: ============================================================================

:: --- CONFIGURATION ---
:: X_POS: Pixel coordinate where Dummy Plug starts (Width of your main monitors)
:: CHECK THIS: If your main screens are not 5120px wide, update this number.
set X_POS=5120
set Y_POS=0

:: RESOLUTION: Target resolution of Dummy Plug
set WIDTH=3840
set HEIGHT=2160

:: --- STEP 1: ENABLE JUMBO MOUSE ---
echo [STATUS] Enlarging Mouse Pointer...
powershell -ExecutionPolicy Bypass -File "%~dp0SetCursorSize.ps1" -Size 64

:: --- STEP 2: LAUNCH E6 CONNECT ---
echo [STATUS] Launching E6 Connect...

:: 1. Force script to looking inside the E6 folder first (The Fix)
cd /d "C:\Program Files\E6 Golf\E6 Connect"

:: 2. Now launch the specific EXE
start "" "E6Connect.exe"

:: --- STEP 3: WAIT FOR LOAD ---
:: E6 takes a while. If the window doesn't move, increase this number.
echo [STATUS] Waiting 20 seconds for startup...
timeout /t 20

:: --- STEP 4: MOVE TO GHOST MONITOR ---
nircmd win setsize title "E6 Connect" %X_POS% %Y_POS% %WIDTH% %HEIGHT%

:: --- NEW STEP: FORCE FOCUS ---
:: Click on the window to ensure Windows knows it's active
nircmd win activate title "E6 Connect"
timeout /t 1

:: --- STEP 5: TRAP THE MOUSE ---
echo [STATUS] Locking Mouse to Simulator Screen...
:: CRITICAL: Update these numbers using the PowerShell trick if the mouse misses the center.
set MOUSE_X=7040
set MOUSE_Y=1080

nircmd setcursor %MOUSE_X% %MOUSE_Y%
"%ProgramFiles(x86)%\Dual Monitor Tools\DMT.exe" "DMT:Cursor:LockCursor"

echo [SUCCESS] E6 Connect is running and Mouse is Locked.
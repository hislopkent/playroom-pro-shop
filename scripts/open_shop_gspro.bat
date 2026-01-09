@echo off
:: ============================================================================
:: SCRIPT: OPEN SHOP (GSPRO LAUNCHER)
:: PURPOSE: Launches GSPro Launcher -> Moves to TV -> You Click Play -> Moves Game
:: ============================================================================

:: --- CONFIGURATION ---
set X_POS=5120
set Y_POS=0
set WIDTH=3840
set HEIGHT=2160
set MOUSE_X=7040
set MOUSE_Y=1080

:: --- STEP 1: ENABLE JUMBO MOUSE ---
echo [STATUS] Enlarging Mouse Pointer...
powershell -ExecutionPolicy Bypass -File "%~dp0SetCursorSize.ps1" -Size 64

:: --- STEP 2: START LAUNCHER ---
echo [STATUS] Launching GSPro Launcher...
cd /d "C:\GSProV1"
start "" "GSPLauncher.exe"

:: --- STEP 3: MOVE LAUNCHER TO TV ---
echo [STATUS] Waiting 5 seconds for Launcher...
timeout /t 5
nircmd win setsize process "GSPLauncher.exe" %X_POS% %Y_POS% %WIDTH% %HEIGHT%

:: --- STEP 4: LOCK MOUSE (So you can click Play) ---
echo [STATUS] Locking Mouse for "Play" Button...
nircmd setcursor %MOUSE_X% %MOUSE_Y%
"%ProgramFiles(x86)%\Dual Monitor Tools\DMT.exe" "DMT:Cursor:LockCursor"

:: --- STEP 5: WAIT FOR USER ACTION ---
echo [ACTION REQUIRED] Please click "Play" on the TV screen now.
echo [STATUS] Waiting 20 seconds for Game Engine to load...
timeout /t 20

:: --- STEP 6: MOVE ACTUAL GAME WINDOW ---
:: Once you click Play, the Launcher closes and "GSPro.exe" opens.
:: We catch it and ensure it is also on the TV.
nircmd win setsize process "GSPro.exe" %X_POS% %Y_POS% %WIDTH% %HEIGHT%
nircmd win activate process "GSPro.exe"

:: --- STEP 7: RE-LOCK MOUSE (Just in case) ---
nircmd setcursor %MOUSE_X% %MOUSE_Y%
"%ProgramFiles(x86)%\Dual Monitor Tools\DMT.exe" "DMT:Cursor:LockCursor"

echo [SUCCESS] GSPro is running.
@echo off
:: ============================================================================
:: SCRIPT: CLOSE SHOP (RESET)
:: PURPOSE: Closes simulator apps and resets mouse to normal size.
:: ============================================================================

:: 1. UNLOCK THE MOUSE (Crucial step!)
echo [STATUS] Unlocking Mouse...
"%ProgramFiles(x86)%\Dual Monitor Tools\DMT.exe" "DMT:Cursor:FreeCursor"

:: 2. Close the Games (Forcefully)
echo [STATUS] Closing Simulator Software...

:: Kill E6 Connect
taskkill /IM "E6Connect.exe" /F >nul 2>&1

:: Kill Awesome Golf
taskkill /IM "AwesomeGolf.exe" /F >nul 2>&1

:: Kill FS Golf (UPDATED NAME)
taskkill /IM "FlightScopeVideoTeachingApp.exe" /F >nul 2>&1

:: 3. Reset Mouse Size (Size 32 is Windows Standard)
echo [STATUS] Resetting Mouse to Normal...
powershell -ExecutionPolicy Bypass -File "%~dp0SetCursorSize.ps1" -Size 32

echo [SUCCESS] Shop is Closed. Back to work!
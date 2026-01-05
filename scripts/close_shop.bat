@echo off
:: ============================================================================
:: SCRIPT: CLOSE SHOP (RESET)
:: PURPOSE: Closes simulator apps and resets mouse to normal size for office work.
:: ============================================================================

:: 1. Close the Games (Forcefully to ensure they don't hang)
echo [STATUS] Closing Simulator Software...
taskkill /IM "E6Connect.exe" /F >nul 2>&1
taskkill /IM "AwesomeGolf.exe" /F >nul 2>&1
taskkill /IM "FSGolf.exe" /F >nul 2>&1

:: 2. Reset Mouse Size (Size 32 is Windows Standard)
echo [STATUS] Resetting Mouse to Normal...
powershell -ExecutionPolicy Bypass -File "%~dp0SetCursorSize.ps1" -Size 32

echo [SUCCESS] Shop is Closed. Back to work!

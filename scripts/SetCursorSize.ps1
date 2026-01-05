<#
.SYNOPSIS
    Instantly changes the Windows Mouse Cursor size.
.DESCRIPTION
    Used by the Playroom Pro Shop to toggle between "TV Mode" (Huge) and "Desk Mode" (Normal).
.PARAMETER Size
    The size of the cursor. 32 is Normal. 48+ is Large. 100 is Jumbo.
.EXAMPLE
    .\SetCursorSize.ps1 -Size 128
#>

param(
    [int]$Size = 32
)

# 1. Update the Registry Key (So it remembers the setting)
Set-ItemProperty -Path "HKCU:\Control Panel\Cursors" -Name "CursorBaseSize" -Value $Size

# 2. Force Windows to Refresh the Cursor (Using C# System Calls)
# This trick avoids needing to log off/restart.
$CSharpSig = @'
[DllImport("user32.dll", EntryPoint = "SystemParametersInfo")]
public static extern bool SystemParametersInfo(int uAction, int uParam, int lpvParam, int fuWinIni);
'@

try {
    $Cursor = Add-Type -MemberDefinition $CSharpSig -Name Win32Utils -Namespace System -PassThru
    # Action 0x0057 is SPI_SETCURSORS (Reloads the system cursors)
    $Cursor::SystemParametersInfo(0x0057, 0, 0, 0x01 -bor 0x02)
    Write-Host "Cursor resized to $Size"
} catch {
    Write-Error "Failed to refresh cursor. Registry updated, but restart might be needed."
}

<#
.SYNOPSIS
    Instantly changes the Windows Mouse Cursor size using the Modern API.
.PARAMETER Size
    The cursor height in pixels.
    32  = Normal (Standard)
    48  = Large
    64  = Extra Large
    128 = Giant (Recommended for TV)
#>

param(
    [int]$Size = 32
)

# Define the C# signature for the hidden Windows API call
$CSharpSig = @'
[DllImport("user32.dll", EntryPoint = "SystemParametersInfo")]
public static extern bool SystemParametersInfo(uint uiAction, uint uiParam, uint pvParam, uint fWinIni);
'@

# Load the function into PowerShell
$CursorUtils = Add-Type -MemberDefinition $CSharpSig -Name WinAPICall -Namespace SystemParamInfo -PassThru

# The Magic Numbers:
# 0x2029 = Undocumented Action ID for "Set Cursor Size" on Windows 10/11
# 0x01   = Update registry (SPIF_UPDATEINIFILE) so it persists
$ActionID = 0x2029
$UpdateFlag = 0x01

try {
    # Execute the command
    $CursorUtils::SystemParametersInfo($ActionID, 0, $Size, $UpdateFlag)
    Write-Host "Success: Cursor scaled to $Size px"
} catch {
    Write-Error "Failed to resize cursor. Ensure this script is run with ExecutionPolicy Bypass."
}
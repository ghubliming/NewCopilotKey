Add-Type @"
using System;
using System.Runtime.InteropServices;
public class WinAPI {
    [DllImport("user32.dll")]
    public static extern IntPtr FindWindow(string lpClassName, string lpWindowName);
    
    [DllImport("user32.dll")]
    public static extern bool SetForegroundWindow(IntPtr hWnd);
    
    [DllImport("user32.dll")]
    public static extern void keybd_event(byte bVk, byte bScan, uint dwFlags, UIntPtr dwExtraInfo);
    
    public const int KEYEVENTF_KEYUP = 0x0002;
    public const byte VK_MENU = 0x12;  // Alt key
    public const byte VK_2 = 0x32;     // '2' key
}
"@

# Find Chrome window
$chrome = Get-Process chrome | Where-Object { $_.MainWindowHandle -ne 0 } | Select-Object -First 1
$chromeHwnd = $chrome.MainWindowHandle

if ($chromeHwnd -ne [IntPtr]::Zero) {
    # Bring it to the foreground
    [WinAPI]::SetForegroundWindow($chromeHwnd)
    
    Start-Sleep -Milliseconds 100  # Small delay to ensure focus
    
    # Simulate Alt + 2
    [WinAPI]::keybd_event([WinAPI]::VK_MENU, 0, 0, [UIntPtr]::Zero)  # Press Alt
    [WinAPI]::keybd_event([WinAPI]::VK_2, 0, 0, [UIntPtr]::Zero)    # Press 2
    
    [WinAPI]::keybd_event([WinAPI]::VK_2, 0, [WinAPI]::KEYEVENTF_KEYUP, [UIntPtr]::Zero)  # Release 2
    [WinAPI]::keybd_event([WinAPI]::VK_MENU, 0, [WinAPI]::KEYEVENTF_KEYUP, [UIntPtr]::Zero)  # Release Alt
} else {
    Write-Host "Chrome window not found."
}

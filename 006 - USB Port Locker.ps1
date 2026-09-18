# Save as USBLock.ps1 (Run as Administrator)
# USB Disable karna ho toh value 4 karein, Enable karna ho toh 3 karein
$value = 4 

$regPath = "HKLM:\SYSTEM\CurrentControlSet\Services\USBSTOR"
Set-ItemProperty -Path $regPath -Name "Start" -Value $value

if ($value -eq 4) {
    Write-Host "USB Mass Storage is now LOCKED." -ForegroundColor Red
} else {
    Write-Host "USB Mass Storage is now UNLOCKED." -ForegroundColor Green
}

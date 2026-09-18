# Save as CCTV_Watchdog.ps1
# Apne IP Cameras ya Network Switches ke IP yahan daalein
$devices = @(
    "192.168.1.10", # Camera 1
    "192.168.1.11", # Camera 2
    "192.168.1.100" # NVR / Managed Switch
)
$logFile = "C:\Scripts\CCTV_Uptime_Log.txt"

foreach ($ip in $devices) {
    # Check if device is responding on the network
    $isAlive = Test-Connection -ComputerName $ip -Count 2 -Quiet
    $timestamp = Get-Date -Format "yyyy-MM-dd HH:mm:ss"
    
    if (-not $isAlive) {
        $msg = "[$timestamp] ALERT: Device IP $ip is OFFLINE! Check power or network cable."
        Add-Content -Path $logFile -Value $msg
    } else {
        $msg = "[$timestamp] OK: Device IP $ip is online."
        Add-Content -Path $logFile -Value $msg
    }
}

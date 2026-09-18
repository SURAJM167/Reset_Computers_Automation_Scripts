$logFile = "C:\Scripts\Internet_Drops.txt"
$wasDown = $false

while ($true) {
    $ping = Test-Connection 8.8.8.8 -Count 1 -Quiet
    if (-not $ping -and -not $wasDown) {
        "$(Get-Date) - INTERNET DOWN" | Out-File -Append $logFile
        $wasDown = $true
    } elseif ($ping -and $wasDown) {
        "$(Get-Date) - INTERNET RESTORED" | Out-File -Append $logFile
        $wasDown = $false
    }
    Start-Sleep -Seconds 5
}

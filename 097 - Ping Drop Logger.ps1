$target = "8.8.8.8"
$logFile = "C:\Scripts\PingDropLog.txt"
Write-Host "Monitoring drops for $target... Press Ctrl+C to stop." -ForegroundColor Yellow

while ($true) {
    if (-not (Test-Connection $target -Count 1 -Quiet)) {
        $msg = "$(Get-Date) - Connection DROP to $target"
        $msg | Out-File -Append $logFile
        Write-Host $msg -ForegroundColor Red
    }
    Start-Sleep -Seconds 1
}

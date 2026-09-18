# Save as DiskHealthCheck.ps1
$reportPath = "$env:USERPROFILE\Desktop\DiskHealthReport.txt"
"--- Drive Health Report: $(Get-Date) ---" | Out-File -FilePath $reportPath

$disks = Get-PhysicalDisk
foreach ($disk in $disks) {
    $status = $disk.HealthStatus
    $model = $disk.FriendlyName
    $sizeGB = [math]::Round($disk.Size / 1GB, 2)
    
    $log = "Model: $model | Size: $sizeGB GB | Health: $status"
    $log | Out-File -FilePath $reportPath -Append
    
    if ($status -ne 'Healthy') {
        "WARNING: $model is failing! Immediate chip/hardware replacement required." | Out-File -FilePath $reportPath -Append
    }
}
Write-Host "Disk Health Report saved to Desktop."

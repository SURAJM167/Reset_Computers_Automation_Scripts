# Save as AutoBackupNAS.ps1
$sourceData = "D:\TallyData"
$nasPath = "\\192.168.1.100\Backups\Tally"
$dateStamp = Get-Date -Format "yyyy-MM-dd_HH-mm"
$zipDestination = "$nasPath\TallyBackup_$dateStamp.zip"

try {
    Compress-Archive -Path "$sourceData\*" -DestinationPath $zipDestination -Force
    Write-Host "Backup Successful: $zipDestination" -ForegroundColor Green
} catch {
    Write-Host "Backup Failed! Check network path." -ForegroundColor Red
}

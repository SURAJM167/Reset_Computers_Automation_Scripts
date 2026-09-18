# Save as NIC_Restarter.ps1
$targetIP = "8.8.8.8" # Ya NVR/Gateway ka IP
$adapterName = "Ethernet" # Apne adapter ka naam dalein
$logPath = "C:\Scripts\NetworkRestarts.log"

$isAlive = Test-Connection -ComputerName $targetIP -Count 3 -Quiet

if (-not $isAlive) {
    Write-Host "Network Down! Restarting Adapter..."
    Restart-NetAdapter -Name $adapterName -Force
    "$(Get-Date -Format 'dd-MM-yyyy HH:mm:ss') - Adapter '$adapterName' Restarted automatically." | Out-File -Append $logPath
} else {
    Write-Host "Network is stable."
}

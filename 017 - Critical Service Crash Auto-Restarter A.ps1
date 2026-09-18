$serviceName = "Spooler" # Replace with target service name

$status = (Get-Service -Name $serviceName).Status
if ($status -ne 'Running') {
    Start-Service -Name $serviceName
    Write-Host "$serviceName was down. Restarted successfully at $(Get-Date)." -ForegroundColor Yellow
} else {
    Write-Host "$serviceName is running normally." -ForegroundColor Green
}

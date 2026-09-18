$adapter = Get-NetAdapter | Where-Object Status -ne 'Up'
if ($adapter) {
    Write-Host "Resetting problematic adapter: $($adapter.Name)..." -ForegroundColor Yellow
    Disable-NetAdapter -Name $adapter.Name -Confirm:$false
    Start-Sleep -Seconds 3
    Enable-NetAdapter -Name $adapter.Name -Confirm:$false
    Write-Host "Adapter Reset!" -ForegroundColor Green
} else {
    Write-Host "All adapters are already Up." -ForegroundColor Green
}

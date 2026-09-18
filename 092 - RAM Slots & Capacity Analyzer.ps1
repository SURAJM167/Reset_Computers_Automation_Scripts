$mem = Get-CimInstance Win32_PhysicalMemory
$slots = Get-CimInstance Win32_PhysicalMemoryArray

Write-Host "RAM Upgrade Analysis:" -ForegroundColor Cyan
Write-Host "Max Capacity Supported: $([math]::Round($slots.MaxCapacity/1048576, 2)) GB"
Write-Host "Total Slots: $($slots.MemoryDevices)"
Write-Host "Slots Used: $($mem.Count)"

$mem | ForEach-Object {
    Write-Host "Installed: $([math]::Round($_.Capacity/1GB, 2)) GB at $($_.Speed) MHz" -ForegroundColor Yellow
}

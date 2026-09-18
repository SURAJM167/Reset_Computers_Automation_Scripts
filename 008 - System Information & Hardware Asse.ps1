# Save as AssetExport.ps1
$reportPath = "$env:USERPROFILE\Desktop\PC_Asset_Info.csv"

$system = Get-CimInstance Win32_ComputerSystem
$bios = Get-CimInstance Win32_BIOS
$cpu = Get-CimInstance Win32_Processor | Select-Object -First 1
$ram = Get-CimInstance Win32_PhysicalMemory | Measure-Object -Property Capacity -Sum

$assetData = [PSCustomObject]@{
    PC_Name = $system.Name
    Manufacturer = $system.Manufacturer
    Model = $system.Model
    SerialNumber = $bios.SerialNumber
    Processor = $cpu.Name
    RAM_GB = [math]::Round($ram.Sum / 1GB, 2)
}

$assetData | Export-Csv -Path $reportPath -NoTypeInformation
Write-Host "Hardware details exported to Desktop." -ForegroundColor Cyan

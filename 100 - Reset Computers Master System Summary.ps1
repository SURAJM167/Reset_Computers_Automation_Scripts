Clear-Host
Write-Host "=============================================" -ForegroundColor Cyan
Write-Host "      RESET COMPUTERS - SYSTEM DIAGNOSTIC    " -ForegroundColor Cyan
Write-Host "=============================================" -ForegroundColor Cyan

$os = Get-CimInstance Win32_OperatingSystem
$cpu = (Get-CimInstance Win32_Processor).Name
$ram = [math]::Round((Get-CimInstance Win32_PhysicalMemory | Measure-Object Capacity -Sum).Sum / 1GB, 2)
$ip = (Get-NetIPAddress -AddressFamily IPv4 -InterfaceAlias Wi-Fi, Ethernet -ErrorAction SilentlyContinue).IPAddress
$uptime = (Get-Date) - $os.LastBootUpTime

Write-Host "OS        : $($os.Caption)" -ForegroundColor White
Write-Host "CPU       : $cpu" -ForegroundColor White
Write-Host "RAM       : $ram GB" -ForegroundColor White
Write-Host "IPv4      : $($ip -join ', ')" -ForegroundColor White
Write-Host "Uptime    : $($uptime.Days) Days, $($uptime.Hours) Hours" -ForegroundColor White
Write-Host "=============================================" -ForegroundColor Cyan
Write-Host "Diagnostics Complete. Ready for repair." -ForegroundColor Green

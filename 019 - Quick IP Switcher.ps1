$adapter = "Ethernet"
$choice = Read-Host "Enter 1 for Static IP (CCTV Config) or 2 for DHCP (Internet)"

if ($choice -eq '1') {
    New-NetIPAddress -InterfaceAlias $adapter -IPAddress 192.168.1.100 -PrefixLength 24 -DefaultGateway 192.168.1.1 -ErrorAction SilentlyContinue
    Write-Host "Set to Static IP: 192.168.1.100" -ForegroundColor Cyan
} elseif ($choice -eq '2') {
    Set-NetIPInterface -InterfaceAlias $adapter -Dhcp Enabled
    Set-DnsClientServerAddress -InterfaceAlias $adapter -ResetServerAddresses
    Write-Host "Reverted to DHCP (Auto IP)" -ForegroundColor Green
}

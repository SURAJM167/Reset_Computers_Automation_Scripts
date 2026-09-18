$subnet = "192.168.1."
$liveIPs = @()

1..254 | ForEach-Object {
    $ip = "$subnet$_"
    if (Test-Connection -ComputerName $ip -Count 1 -Quiet -TimeoutSeconds 1) {
        Write-Host "$ip is ONLINE" -ForegroundColor Green
        $liveIPs += $ip
    }
}
$liveIPs | Out-File "C:\Scripts\LiveNetworkDevices.txt"

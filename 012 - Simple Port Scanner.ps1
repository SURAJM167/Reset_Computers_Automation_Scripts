$target = "192.168.1.100"
$ports = @(80, 443, 554, 8000, 3389)

foreach ($port in $ports) {
    $connection = Test-NetConnection -ComputerName $target -Port $port -WarningAction SilentlyContinue
    if ($connection.TcpTestSucceeded) {
        Write-Host "Port $port is OPEN on $target" -ForegroundColor Green
    } else {
        Write-Host "Port $port is CLOSED on $target" -ForegroundColor Red
    }
}

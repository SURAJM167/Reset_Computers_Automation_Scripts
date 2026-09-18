$baitFile = "C:\Users\Public\Documents\~AAA_Important_Finance.txt"
if (-not (Test-Path $baitFile)) { New-Item -Path $baitFile -ItemType File -Value "Do not modify" }

$watcher = New-Object IO.FileSystemWatcher
$watcher.Path = "C:\Users\Public\Documents"
$watcher.Filter = "~AAA_Important_Finance.txt"

Register-ObjectEvent $watcher "Changed" -Action {
    Write-Host "RANSOMWARE DETECTED! Isolating network..." -ForegroundColor Red
    Disable-NetAdapter -Name "*" -Confirm:$false
}

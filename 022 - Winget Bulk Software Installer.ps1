Write-Host "Installing standard AMC softwares..." -ForegroundColor Cyan
$softwares = @("Google.Chrome", "AnyDeskSoftwareGmbH.AnyDesk", "VideoLAN.VLC")

foreach ($app in $softwares) {
    Write-Host "Installing $app..."
    winget install --id $app --silent --accept-package-agreements --accept-source-agreements
}
Write-Host "All softwares installed successfully!" -ForegroundColor Green

Write-Host "Disabling Windows Telemetry & Data Collection..." -ForegroundColor Yellow
$regPath = "HKLM:\SOFTWARE\Policies\Microsoft\Windows\DataCollection"
if (-not (Test-Path $regPath)) { New-Item -Path $regPath -Force | Out-Null }
Set-ItemProperty -Path $regPath -Name "AllowTelemetry" -Value 0

Stop-Service -Name "DiagTrack" -Force -ErrorAction SilentlyContinue
Set-Service -Name "DiagTrack" -StartupType Disabled
Write-Host "Telemetry Disabled. Privacy enhanced and system sped up!" -ForegroundColor Green

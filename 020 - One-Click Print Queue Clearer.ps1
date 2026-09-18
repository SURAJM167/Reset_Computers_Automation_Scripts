Stop-Service -Name Spooler -Force
Write-Host "Spooler stopped. Clearing queue..."
Remove-Item -Path "$env:windir\System32\spool\PRINTERS\*.*" -Force -Recurse -ErrorAction SilentlyContinue
Start-Service -Name Spooler
Write-Host "Print queue cleared and Spooler restarted!" -ForegroundColor Green

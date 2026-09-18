# Save as AMC_PCCleaner.ps1
Write-Host "System Cleanup Started..." -ForegroundColor Cyan

# Folders to clean
$paths = @(
    "$env:TEMP\*",
    "C:\Windows\Temp\*",
    "C:\Windows\Prefetch\*",
    "C:\Windows\SoftwareDistribution\Download\*"
)

foreach ($path in $paths) {
    try {
        Remove-Item -Path $path -Recurse -Force -ErrorAction SilentlyContinue
        Write-Host "Cleared: $path" -ForegroundColor Green
    } catch {
        Write-Host "Skipped some files in: $path (In use)" -ForegroundColor Yellow
    }
}

# Clear Recycle Bin
Clear-RecycleBin -Force -ErrorAction SilentlyContinue
Write-Host "Recycle Bin Emptied." -ForegroundColor Green
Write-Host "Cleanup Complete! System Optimized." -ForegroundColor Cyan

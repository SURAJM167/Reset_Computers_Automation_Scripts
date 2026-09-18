# Save as FolderSync.ps1
$source = "D:\MainOfficeFiles"
$destination = "\\192.168.2.50\ReceptionShare"
$logFile = "C:\Scripts\SyncLog.txt"

# /MIR (Mirror), /Z (Restartable mode), /R:3 (Retry 3 times), /W:5 (Wait 5 sec)
robocopy $source $destination /MIR /Z /R:3 /W:5 /LOG+:$logFile

Write-Host "Sync process finished. Check $logFile for details."

# MySQL required in system path
$dbUser = "root"
$dbPass = "password"
$dbName = "accounting_db"
$backupPath = "D:\Backups\DB_Backup_$(Get-Date -Format 'yyyyMMdd_HHmm').sql"

& mysqldump -u $dbUser -p$dbPass $dbName > $backupPath
Write-Host "Database backup saved to $backupPath"

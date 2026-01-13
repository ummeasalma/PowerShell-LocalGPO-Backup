# SIMPLE GPO + ADMX RESTORE

$BackupRoot = "C:\GPOBackup"
$LGPO       = "C:\LGPO\LGPO.exe"
$ADMXDest   = "C:\Windows\PolicyDefinitions"

# Copy ADMX + ADML first
Copy-Item -Path "$BackupRoot\ADMX\*" -Destination $ADMXDest -Recurse -Force

# Apply Local GPO backup
& $LGPO /g "$BackupRoot\LGPO"

# Refresh policy
gpupdate /force

Write-Host "Restore completed."
# SIMPLE GPO + ADMX BACKUP

$BackupRoot = "C:\GPOBackup"
$LGPO       = "C:\LGPO\LGPO.exe"
$ADMXSource = "C:\Windows\PolicyDefinitions"

New-Item -ItemType Directory -Path "$BackupRoot\LGPO" -Force | Out-Null
New-Item -ItemType Directory -Path "$BackupRoot\ADMX" -Force | Out-Null

& $LGPO /b "$BackupRoot\LGPO" /n "LocalGPO Backup"
Copy-Item -Path "$ADMXSource\*" -Destination "$BackupRoot\ADMX" -Recurse -Force

Write-Host "Backup completed."

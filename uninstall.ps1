$ErrorActionPreference = "Stop"

$TargetDir = Join-Path $env:USERPROFILE ".codex\pets\nailoong"
$BackupRoot = Join-Path $env:USERPROFILE ".codex\pet-backups"

if (-not (Test-Path $TargetDir)) {
  Write-Host "Nailoong is not installed."
  exit 0
}

New-Item -ItemType Directory -Force -Path $BackupRoot | Out-Null
$stamp = Get-Date -Format "yyyyMMdd-HHmmss"
$BackupDir = Join-Path $BackupRoot "nailoong-uninstalled-$stamp"
Move-Item -LiteralPath $TargetDir -Destination $BackupDir

Write-Host "Uninstalled Nailoong and saved a backup to $BackupDir"

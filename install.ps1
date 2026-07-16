$ErrorActionPreference = "Stop"

$SourceDir = Split-Path -Parent $MyInvocation.MyCommand.Path
$TargetDir = Join-Path $env:USERPROFILE ".codex\pets\nailoong"
$BackupRoot = Join-Path $env:USERPROFILE ".codex\pet-backups"

if (-not (Test-Path (Join-Path $SourceDir "pet.json"))) {
  throw "pet.json not found."
}

if (-not (Test-Path (Join-Path $SourceDir "spritesheet.webp"))) {
  throw "spritesheet.webp not found."
}

if (Test-Path $TargetDir) {
  New-Item -ItemType Directory -Force -Path $BackupRoot | Out-Null
  $stamp = Get-Date -Format "yyyyMMdd-HHmmss"
  $BackupDir = Join-Path $BackupRoot "nailoong-$stamp"
  Move-Item -LiteralPath $TargetDir -Destination $BackupDir
  Write-Host "Backed up existing Nailoong pet to $BackupDir"
}

New-Item -ItemType Directory -Force -Path $TargetDir | Out-Null
Copy-Item -LiteralPath (Join-Path $SourceDir "pet.json") -Destination $TargetDir
Copy-Item -LiteralPath (Join-Path $SourceDir "spritesheet.webp") -Destination $TargetDir

Write-Host "Installed Nailoong to $TargetDir"
Write-Host "Restart Codex Desktop, then choose Nailoong in Settings -> Appearance -> Pet."

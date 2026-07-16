$ErrorActionPreference = "Stop"

$SourceDir = Split-Path -Parent $MyInvocation.MyCommand.Path
$TargetDir = Join-Path $env:USERPROFILE ".codex\pets\nello"
$BackupRoot = Join-Path $env:USERPROFILE ".codex\pet-backups"

if (-not (Test-Path (Join-Path $SourceDir "pet.json"))) {
  throw "pet.json not found. Run src\generate_nello_pet.py first."
}

if (-not (Test-Path (Join-Path $SourceDir "spritesheet.webp"))) {
  throw "spritesheet.webp not found. Run src\generate_nello_pet.py first."
}

if (Test-Path $TargetDir) {
  New-Item -ItemType Directory -Force -Path $BackupRoot | Out-Null
  $stamp = Get-Date -Format "yyyyMMdd-HHmmss"
  $BackupDir = Join-Path $BackupRoot "nello-$stamp"
  Move-Item -LiteralPath $TargetDir -Destination $BackupDir
  Write-Host "Backed up existing Nello pet to $BackupDir"
}

New-Item -ItemType Directory -Force -Path $TargetDir | Out-Null
Copy-Item -LiteralPath (Join-Path $SourceDir "pet.json") -Destination $TargetDir
Copy-Item -LiteralPath (Join-Path $SourceDir "spritesheet.webp") -Destination $TargetDir

Write-Host "Installed Nello to $TargetDir"
Write-Host "Restart Codex Desktop, then choose Nello in Settings -> Appearance -> Pet."

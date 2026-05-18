param(
  [switch]$WithECC,
  [switch]$DryRun
)

$ErrorActionPreference = "Stop"

function Info($message) {
  Write-Host "[Byte-Brane] $message"
}

$scriptDir = Split-Path -Parent $MyInvocation.MyCommand.Path
$skillSource = Join-Path $scriptDir "skills\clarify-before-execute"
$targetRoot = Join-Path $HOME ".codex\skills"
$target = Join-Path $targetRoot "clarify-before-execute"

Info "Installing core Skill: clarify-before-execute"
Info "Source: $skillSource"
Info "Target: $target"

if ($DryRun) {
  Info "Dry run: no files will be copied."
} else {
  if (-not (Test-Path -LiteralPath $skillSource)) {
    throw "Skill source not found: $skillSource"
  }
  New-Item -ItemType Directory -Force -Path $targetRoot | Out-Null
  if (Test-Path -LiteralPath $target) {
    Remove-Item -LiteralPath $target -Recurse -Force
  }
  Copy-Item -LiteralPath $skillSource -Destination $target -Recurse -Force
  Info "Installed clarify-before-execute."
}

if ($WithECC) {
  Info "ECC upstream source: https://github.com/affaan-m/everything-claude-code"
  Info "Suggested upstream command: npx -y ecc-universal"
  Info "This repository does not vendor ECC Skills. Verify upstream instructions and license before installing."
  if (-not $DryRun) {
    $answer = Read-Host "Run 'npx -y ecc-universal' now? Type YES to continue"
    if ($answer -eq "YES") {
      npx -y ecc-universal
    } else {
      Info "Skipped ECC install."
    }
  }
}

Info "Done. To use it, ask Codex: 'Use the clarify-before-execute workflow for this task.'"


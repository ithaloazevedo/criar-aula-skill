param(
    [string]$SourcePath,
    [string]$TargetPath
)

$ErrorActionPreference = "Stop"

if (-not $SourcePath) {
    $repoRoot = Split-Path -Parent $PSScriptRoot
    $SourcePath = Join-Path $repoRoot "criar-aula"
}

if (-not $TargetPath) {
    $TargetPath = Join-Path $HOME ".codex\skills\criar-aula"
}

$resolvedSource = Resolve-Path -LiteralPath $SourcePath

if (-not (Test-Path -LiteralPath (Join-Path $resolvedSource "SKILL.md"))) {
    throw "Source does not look like a skill folder: $resolvedSource"
}

$targetParent = Split-Path -Parent $TargetPath
if (-not (Test-Path -LiteralPath $targetParent)) {
    New-Item -ItemType Directory -Path $targetParent | Out-Null
}

if (-not (Test-Path -LiteralPath $TargetPath)) {
    New-Item -ItemType Directory -Path $TargetPath | Out-Null
}

Get-ChildItem -LiteralPath $resolvedSource -Force | ForEach-Object {
    Copy-Item -LiteralPath $_.FullName -Destination $TargetPath -Recurse -Force
}

$sourceFiles = Get-ChildItem -LiteralPath $resolvedSource -Recurse -File | ForEach-Object {
    $relative = $_.FullName.Substring($resolvedSource.Path.Length + 1)
    [pscustomobject]@{
        Relative = $relative
        Hash = (Get-FileHash -LiteralPath $_.FullName -Algorithm SHA256).Hash
    }
}

$resolvedTarget = Resolve-Path -LiteralPath $TargetPath
$targetFiles = Get-ChildItem -LiteralPath $resolvedTarget -Recurse -File | ForEach-Object {
    $relative = $_.FullName.Substring($resolvedTarget.Path.Length + 1)
    [pscustomobject]@{
        Relative = $relative
        Hash = (Get-FileHash -LiteralPath $_.FullName -Algorithm SHA256).Hash
    }
}

$sourceMap = @{}
foreach ($file in $sourceFiles) {
    $sourceMap[$file.Relative] = $file.Hash
}

$mismatches = New-Object System.Collections.Generic.List[string]
foreach ($relative in $sourceMap.Keys) {
    $targetMatch = $targetFiles | Where-Object { $_.Relative -eq $relative } | Select-Object -First 1
    if (-not $targetMatch) {
        $mismatches.Add("Missing in target: $relative")
    } elseif ($targetMatch.Hash -ne $sourceMap[$relative]) {
        $mismatches.Add("Hash mismatch: $relative")
    }
}

if ($mismatches.Count -gt 0) {
    Write-Host "Skill sync failed:"
    foreach ($mismatch in $mismatches) {
        Write-Host "- $mismatch"
    }
    exit 1
}

Write-Host "Skill synced to: $resolvedTarget"

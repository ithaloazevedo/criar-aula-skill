param(
    [string]$SkillPath
)

$ErrorActionPreference = "Stop"

if (-not $SkillPath) {
    $repoRoot = Split-Path -Parent $PSScriptRoot
    $SkillPath = Join-Path $repoRoot "criar-aula"
}

$resolvedSkillPath = Resolve-Path -LiteralPath $SkillPath
$skillMd = Join-Path $resolvedSkillPath "SKILL.md"
$errors = New-Object System.Collections.Generic.List[string]

if (-not (Test-Path -LiteralPath $skillMd)) {
    $errors.Add("SKILL.md not found at $skillMd")
} else {
    $content = Get-Content -Raw -LiteralPath $skillMd
    $frontmatter = [regex]::Match($content, "^---\r?\n(?<body>.*?)\r?\n---", [System.Text.RegularExpressions.RegexOptions]::Singleline)

    if (-not $frontmatter.Success) {
        $errors.Add("SKILL.md frontmatter is missing or malformed")
    } else {
        $frontmatterBody = $frontmatter.Groups["body"].Value
        $name = ([regex]::Match($frontmatterBody, "(?m)^name:\s*(.+)$")).Groups[1].Value.Trim()
        $description = ([regex]::Match($frontmatterBody, "(?m)^description:\s*(.+)$")).Groups[1].Value.Trim()

        if (-not $name) {
            $errors.Add("Frontmatter missing name")
        } elseif ($name -notmatch "^[a-z0-9-]+$") {
            $errors.Add("Skill name must be lowercase hyphen-case: $name")
        } elseif ($name.Length -gt 64) {
            $errors.Add("Skill name is longer than 64 characters")
        }

        if (-not $description) {
            $errors.Add("Frontmatter missing description")
        } elseif ($description.Length -gt 1024) {
            $errors.Add("Description is longer than 1024 characters")
        } elseif ($description.Contains("<") -or $description.Contains(">")) {
            $errors.Add("Description cannot contain angle brackets")
        }
    }

    if ($content -notmatch "## Orquestracao Agentica") {
        $errors.Add("SKILL.md missing Orquestracao Agentica section")
    }

    if ($content -notmatch "## Definition of Done") {
        $errors.Add("SKILL.md missing Definition of Done section")
    }

    $linkedResources = [regex]::Matches($content, '`(?<path>(references|agents)/[^`]+)`')
    foreach ($match in $linkedResources) {
        $linkedPath = $match.Groups['path'].Value
        $relativePath = $linkedPath.Replace("/", [System.IO.Path]::DirectorySeparatorChar)
        $target = Join-Path $resolvedSkillPath $relativePath
        if (-not (Test-Path -LiteralPath $target)) {
            $errors.Add("Linked resource not found: $linkedPath")
        }
    }
}

$requiredFiles = @(
    "agents/openai.yaml",
    "references/agentes.md",
    "references/fluxo-agentico.md",
    "references/cenarios-de-teste.md",
    "references/checklist-qualidade.md",
    "references/notion-docencia.md"
)

foreach ($requiredFile in $requiredFiles) {
    $target = Join-Path $resolvedSkillPath $requiredFile.Replace("/", [System.IO.Path]::DirectorySeparatorChar)
    if (-not (Test-Path -LiteralPath $target)) {
        $errors.Add("Required file not found: $requiredFile")
    }
}

if ($errors.Count -gt 0) {
    Write-Host "Skill validation failed:"
    foreach ($errorMessage in $errors) {
        Write-Host "- $errorMessage"
    }
    exit 1
}

Write-Host "Skill validation passed: $resolvedSkillPath"

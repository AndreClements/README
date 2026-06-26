# render-pdf.ps1 - Markdown to PDF via Pandoc + XeLaTeX
# Factorial harmonic proportions design system
# Usage: powershell -ExecutionPolicy Bypass -File .\tools\render-pdf.ps1 -InputFile path\to\file.md
# Brand: powershell -ExecutionPolicy Bypass -File .\tools\render-pdf.ps1 -InputFile path\to\file.md -Brand

[CmdletBinding()]
param(
    [Parameter(Mandatory=$true, Position=0)]
    [string]$InputFile,

    [Parameter(Mandatory=$false)]
    [string]$OutputFile,

    [Parameter(Mandatory=$false)]
    [string]$Template,

    [Parameter(Mandatory=$false)]
    [string]$Title,

    [Parameter(Mandatory=$false)]
    [string]$Author = "Andr$([char]0x00E9) S Clements",

    [Parameter(Mandatory=$false)]
    [string]$Lang = 'en',

    [Parameter(Mandatory=$false)]
    [int]$TocDepth = 2,

    [Parameter(Mandatory=$false)]
    [bool]$NumberSections = $true,

    [Parameter(Mandatory=$false)]
    [bool]$Toc = $true,

    [Parameter(Mandatory=$false)]
    [string]$PaperSize = 'a4',

    [Parameter(Mandatory=$false)]
    [string]$FontSize = '11pt',

    [Parameter(Mandatory=$false)]
    [switch]$Brand
)

# ============================================================================
# DESIGN SYSTEM - Factorial Harmonic Proportions
# ============================================================================
#
# The golden ratio phi = 1.618... is one member of a family of factorial
# harmonic ratios derived from continued fractions and recursive sequences.
#
# Base unit: 11pt (font size)
# Primary ratio: phi = (1 + sqrt(5))/2 = 1.618033988749895
#
# Type scale uses phi^n progression:
#   phi^-1 = 0.618  (small text)
#   phi^0  = 1.000  (body)
#   phi^1  = 1.618  (h4)
#   phi^2  = 2.618  (h3)
#   phi^3  = 4.236  (h2)
#   phi^4  = 6.854  (h1)
#
# Spacing uses same progression for visual coherence.
# ============================================================================

$SCRIPT_DIR = Split-Path -Parent $MyInvocation.MyCommand.Path
$REPO_ROOT = Split-Path -Parent $SCRIPT_DIR

# Helper: resolve full path
function Resolve-FullPath([string]$p) {
    if ([System.IO.Path]::IsPathRooted($p)) {
        return $p
    }
    $resolved = Join-Path (Get-Location) $p
    if (Test-Path $resolved) {
        return (Resolve-Path $resolved).Path
    }
    return $resolved
}

# Helper: find Pandoc
function Get-PandocPath {
    $pandoc = Get-Command pandoc -ErrorAction SilentlyContinue
    if ($pandoc) { return $pandoc.Source }

    $candidates = @(
        [System.IO.Path]::Combine($env:LOCALAPPDATA, 'Pandoc', 'pandoc.exe'),
        [System.IO.Path]::Combine($env:ProgramFiles, 'Pandoc', 'pandoc.exe')
    )
    foreach ($c in $candidates) {
        if (Test-Path $c) { return $c }
    }
    return $null
}

# Helper: find XeLaTeX
function Get-XeLatexPath {
    $xelatex = Get-Command xelatex -ErrorAction SilentlyContinue
    if ($xelatex) { return $xelatex.Source }

    $candidates = @(
        [System.IO.Path]::Combine($env:LOCALAPPDATA, 'Programs', 'MiKTeX', 'miktex', 'bin', 'x64', 'xelatex.exe'),
        [System.IO.Path]::Combine($env:ProgramFiles, 'MiKTeX', 'miktex', 'bin', 'x64', 'xelatex.exe')
    )
    foreach ($c in $candidates) {
        if (Test-Path $c) { return $c }
    }
    return $null
}

# Helper: log message
function Write-Log {
    param([string]$Message, [string]$Level = 'INFO')
    $ts = Get-Date -Format 'HH:mm:ss'
    $color = switch ($Level) {
        'INFO'    { 'Cyan' }
        'SUCCESS' { 'Green' }
        'WARNING' { 'Yellow' }
        'ERROR'   { 'Red' }
        default   { 'White' }
    }
    Write-Host "[$ts] [$Level] $Message" -ForegroundColor $color
}

# Helper: extract title from YAML front matter
function Extract-YamlTitle([string]$content) {
    if ($content -match '(?s)^---\s*\n(.*?)\n---') {
        $yaml = $Matches[1]
        if ($yaml -match 'title:\s*[''"]?([^''""\n]+)[''"]?') {
            return $Matches[1].Trim()
        }
    }
    if ($content -match '(?m)^#\s+(.+)$') {
        return $Matches[1].Trim()
    }
    return $null
}

# ============================================================================
# VALIDATION
# ============================================================================

Write-Log 'render-pdf.ps1 - Factorial Harmonic PDF Generator'

# Validate input
if (-not (Test-Path $InputFile)) {
    Write-Log "Input file not found: $InputFile" 'ERROR'
    exit 1
}

$InputFile = Resolve-FullPath $InputFile
Write-Log "Input: $InputFile"

# Determine output
if (-not $OutputFile) {
    $OutputFile = [System.IO.Path]::ChangeExtension($InputFile, '.pdf')
}
$OutputFile = Resolve-FullPath $OutputFile
Write-Log "Output: $OutputFile"

# Find Pandoc
$pandocPath = Get-PandocPath
if (-not $pandocPath) {
    Write-Log 'Pandoc not found. Install via: winget install JohnMacFarlane.Pandoc' 'ERROR'
    exit 1
}
Write-Log "Pandoc: $pandocPath"

# Find XeLaTeX
$xelatexPath = Get-XeLatexPath
if (-not $xelatexPath) {
    Write-Log 'XeLaTeX not found. Install via: winget install MiKTeX.MiKTeX' 'ERROR'
    exit 1
}
Write-Log "XeLaTeX: $xelatexPath"

# Find template
if (-not $Template) {
    $Template = Join-Path (Join-Path $REPO_ROOT 'templates') 'bauhaus-academic.tex'
}
$hasTemplate = Test-Path $Template
if ($hasTemplate) {
    Write-Log "Template: $Template"
} else {
    Write-Log "Template not found, using defaults" 'WARNING'
}

# ============================================================================
# EXTRACT METADATA
# ============================================================================

$content = Get-Content $InputFile -Raw -Encoding UTF8
if (-not $Title) {
    $Title = Extract-YamlTitle $content
    if ($Title) {
        Write-Log "Title: $Title"
    }
}

# ============================================================================
# BUILD PANDOC ARGUMENTS
# ============================================================================

$pandocArgs = [System.Collections.ArrayList]@()
$null = $pandocArgs.Add('"' + $InputFile + '"')
$null = $pandocArgs.Add('-o')
$null = $pandocArgs.Add('"' + $OutputFile + '"')
$null = $pandocArgs.Add('--pdf-engine=' + $xelatexPath)
$null = $pandocArgs.Add('--pdf-engine-opt=-interaction=nonstopmode')

# Template disabled for now - Pandoc default works better with complex tables
# if ($hasTemplate) {
#     $null = $pandocArgs.Add('--template=' + $Template)
# }

if ($Title) {
    $null = $pandocArgs.Add('--metadata=title:"' + $Title + '"')
}
$null = $pandocArgs.Add('--metadata=author:"' + $Author + '"')
$null = $pandocArgs.Add('--metadata=lang:' + $Lang)
$null = $pandocArgs.Add('--metadata=date:' + (Get-Date -Format 'yyyy-MM-dd'))

$null = $pandocArgs.Add('-V')
$null = $pandocArgs.Add('papersize=' + $PaperSize)
$null = $pandocArgs.Add('-V')
$null = $pandocArgs.Add('fontsize=' + $FontSize)
$null = $pandocArgs.Add('-V')
$null = $pandocArgs.Add('geometry:margin=2.5cm')

# Font configuration
# IBM Plex installed via: .\tools\install-plex-fonts.ps1
# Fallback: Segoe UI (Windows default sans), Consolas (monospace)
if (-not $Brand) {
    # Default mode: use IBM Plex if available, fall back to Segoe UI
    $null = $pandocArgs.Add('-V')
    $null = $pandocArgs.Add('mainfont="IBM Plex Serif"')
    $null = $pandocArgs.Add('-V')
    $null = $pandocArgs.Add('sansfont="IBM Plex Sans"')
    $null = $pandocArgs.Add('-V')
    $null = $pandocArgs.Add('monofont="IBM Plex Mono"')
}
# When -Brand is set, fonts are configured by asc-branding.tex (via fontspec)

if ($Toc) {
    $null = $pandocArgs.Add('--toc')
    $null = $pandocArgs.Add('--toc-depth=' + $TocDepth)
}

if ($NumberSections) {
    $null = $pandocArgs.Add('--number-sections')
}

$null = $pandocArgs.Add('--standalone')

# ASC branding (octagram, IBM Plex, terracotta accents)
if ($Brand) {
    $brandingHeader = Join-Path (Join-Path $REPO_ROOT 'templates') 'asc-branding.tex'
    if (Test-Path $brandingHeader) {
        # Pandoc does not substitute template variables inside an --include-in-header file, so
        # resolve the asc-templates-path / asc-fonts-path placeholders into a temp header here.
        $templatesPath = (Join-Path $REPO_ROOT 'templates').Replace('\', '/')
        $userFontsPath = (Join-Path $env:LOCALAPPDATA 'Microsoft\Windows\Fonts').Replace('\', '/')
        $brandRaw = Get-Content $brandingHeader -Raw -Encoding UTF8
        $brandResolved = $brandRaw.Replace('$asc-templates-path$', $templatesPath).Replace('$asc-fonts-path$', $userFontsPath)
        $resolvedHeader = Join-Path ([System.IO.Path]::GetTempPath()) 'asc-branding-resolved.tex'
        [System.IO.File]::WriteAllText($resolvedHeader, $brandResolved, (New-Object System.Text.UTF8Encoding($false)))
        $null = $pandocArgs.Add('--include-in-header=' + $resolvedHeader)
        Write-Log "Branding: ASC (octagram + IBM Plex + earth tones)"
    } else {
        Write-Log "Branding header not found: $brandingHeader" 'WARNING'
    }
    # Lua filter: emoji → coloured LaTeX circles (CARDS signals)
    $luaFilter = Join-Path (Join-Path $REPO_ROOT 'templates') 'emoji-to-latex.lua'
    if (Test-Path $luaFilter) {
        $null = $pandocArgs.Add('--lua-filter=' + $luaFilter)
        Write-Log "Lua filter: emoji-to-latex"
    }
}

$inputDir = Split-Path -Parent $InputFile
$templatesDir = Join-Path $REPO_ROOT 'templates'
$resourcePaths = @($inputDir, $REPO_ROOT, $templatesDir, 'docs', 'docs/assets', 'projects')
$resourcePathArg = $resourcePaths -join [System.IO.Path]::PathSeparator
$null = $pandocArgs.Add('--resource-path=' + $resourcePathArg)

# ============================================================================
# EXECUTE PANDOC
# ============================================================================

Write-Log 'Rendering PDF...'
Write-Log ('Args: ' + ($pandocArgs -join ' '))

try {
    $psi = New-Object System.Diagnostics.ProcessStartInfo
    $psi.FileName = $pandocPath
    $psi.Arguments = $pandocArgs -join ' '
    $psi.UseShellExecute = $false
    $psi.RedirectStandardOutput = $true
    $psi.RedirectStandardError = $true
    $psi.CreateNoWindow = $true

    $proc = [System.Diagnostics.Process]::Start($psi)
    $stdout = $proc.StandardOutput.ReadToEnd()
    $stderr = $proc.StandardError.ReadToEnd()
    $proc.WaitForExit()

    if ($proc.ExitCode -eq 0) {
        if (Test-Path $OutputFile) {
            $fileInfo = Get-Item $OutputFile
            $sizeKB = [math]::Round($fileInfo.Length / 1024, 0)
            Write-Log "PDF generated: $OutputFile [$sizeKB KB]" 'SUCCESS'
        } else {
            Write-Log 'Pandoc completed but output file not found' 'ERROR'
            exit 1
        }
    } else {
        Write-Log "Pandoc failed with exit code: $($proc.ExitCode)" 'ERROR'
        if ($stderr) {
            Write-Log "Error output: $stderr" 'ERROR'
        }
        exit $proc.ExitCode
    }
} catch {
    Write-Log "Exception: $($_.Exception.Message)" 'ERROR'
    exit 1
}

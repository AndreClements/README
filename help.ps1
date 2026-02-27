# help.ps1 -- Project help for the README repository
# Usage: .\help.ps1 [topic]
# Topics: tools, methods, paths, all

param(
    [ValidateSet('tools', 'methods', 'paths', 'all', '')]
    [string]$Topic = ''
)

function Write-Section($title) {
    Write-Host ""
    Write-Host "  $title" -ForegroundColor Cyan
    Write-Host "  $('-' * $title.Length)" -ForegroundColor DarkGray
}

function Write-Entry($name, $desc) {
    Write-Host "  " -NoNewline
    Write-Host $name -ForegroundColor Yellow -NoNewline
    Write-Host "  $desc" -ForegroundColor Gray
}

function Show-Header {
    Write-Host ""
    Write-Host "  README -- Human-OS" -ForegroundColor White
    Write-Host "  A cyber artist's book by Andre S Clements" -ForegroundColor DarkGray
    Write-Host "  CII: Computational Intelligence Integrity" -ForegroundColor Magenta
}

function Show-Tools {
    Write-Section "Tools"
    Write-Entry "render-pdf.ps1" "Markdown -> PDF via Pandoc + XeLaTeX"
    Write-Host '    .\tools\render-pdf.ps1 -InputFile "path\to\file.md"' -ForegroundColor DarkGray
    Write-Host '    .\tools\render-pdf.ps1 -InputFile "file.md" -Brand' -ForegroundColor DarkGray
    Write-Host ""
    Write-Entry "render_equations.py" "YAML -> equation card images (Instagram-ready)"
    Write-Host "    python tools/render_equations.py tools/equations/parametric_authorship.yaml" -ForegroundColor DarkGray
    Write-Host ""
    Write-Entry "render_badges.py" "YAML -> SVG badges/header/shield (midNight darkMagic)"
    Write-Host "    python tools/render_badges.py tools/badges/midnight_darkmagic.yaml" -ForegroundColor DarkGray
    Write-Host ""
    Write-Entry "install-plex-fonts.ps1" "Download and install IBM Plex Serif + Sans"
    Write-Host "    powershell -ExecutionPolicy Bypass -File .\tools\install-plex-fonts.ps1" -ForegroundColor DarkGray
    Write-Host ""
    Write-Entry "flatten-md.ps1" "Flatten repo to single Markdown file"
    Write-Host "    .\flatten-md.ps1" -ForegroundColor DarkGray
}

function Show-Methods {
    Write-Section "Methodology (CII)"
    Write-Entry "METHODOLOGY_CII.md" "Governing methodology -- A Pragmatics of Engagement"
    Write-Host "    docs/methods/METHODOLOGY_CII.md" -ForegroundColor DarkGray
    Write-Host ""
    Write-Host "  Task tiers:" -ForegroundColor Gray
    Write-Host "    T1 (Skirmish)     Read: 0, 1, 3.1, 7" -ForegroundColor DarkGray
    Write-Host "    T2 (Project)      Read: 0-5, 7-8" -ForegroundColor DarkGray
    Write-Host "    T3 (Publication)  Read: All sections" -ForegroundColor DarkGray
    Write-Host ""
    Write-Host "  Evaluation order: Axiology -> Poetry/artistry -> Ethos/technicality" -ForegroundColor Gray
    Write-Host "  CARDS: Competence, Autonomy, Relatedness, Dignity, Safety" -ForegroundColor DarkGray
}

function Show-Paths {
    Write-Section "Key Paths"
    Write-Entry "docs/methods/" "Methodology and method documents"
    Write-Entry "docs/assets/" "Visual assets (SVGs, images)"
    Write-Entry "tools/" "Build and generation scripts"
    Write-Entry "tools/equations/" "YAML equation definitions"
    Write-Entry "tools/badges/" "YAML badge/header definitions"
    Write-Entry "templates/" "LaTeX templates and Lua filters"
    Write-Entry "lib/" "Library entries"
    Write-Entry "projects/" "Project workspaces"
    Write-Entry "staging/" "Drafts, reflections, in-progress work"
    Write-Entry "CONCEPTS/" "Glossary and conceptual index"
    Write-Entry "../PRIVATE_META/" "Sibling repo -- process observations, field notes"
}

# --- Main ---

Show-Header

switch ($Topic) {
    'tools'   { Show-Tools }
    'methods' { Show-Methods }
    'paths'   { Show-Paths }
    'all'     { Show-Tools; Show-Methods; Show-Paths }
    default   { Show-Tools; Show-Methods; Show-Paths }
}

Write-Host ""
Write-Host "  .\help.ps1 [tools|methods|paths|all]" -ForegroundColor DarkGray
Write-Host ""

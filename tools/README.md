# Tools

House tools for the README repository. CI-methodology scripts for document generation and automation.

---

## render-pdf.ps1

Renders Markdown files to PDF using Pandoc + XeLaTeX.

### Usage

```powershell
powershell -ExecutionPolicy Bypass -File .\tools\render-pdf.ps1 -InputFile "path\to\file.md"
```

### Parameters

| Parameter | Default | Description |
|-----------|---------|-------------|
| `-InputFile` | (required) | Path to Markdown file |
| `-OutputFile` | `<input>.pdf` | Output PDF path |
| `-Template` | `templates/bauhaus-academic.tex` | LaTeX template |
| `-Title` | (from YAML) | Document title |
| `-Author` | `André S Clements` | Author name |
| `-TocDepth` | `2` | Table of contents depth |
| `-NumberSections` | `$true` | Number sections |
| `-PaperSize` | `a4` | Paper size |
| `-FontSize` | `11pt` | Base font size |

### Dependencies

Installed via winget:

```powershell
winget install JohnMacFarlane.Pandoc
winget install MiKTeX.MiKTeX
```

### Design System

The template uses factorial harmonic proportions derived from φ (golden ratio = 1.618...):

```
Type Scale (φ^n):
  φ^-1 = 0.618  → footnotes, captions
  φ^0  = 1.000  → body text (11pt base)
  φ^1  = 1.618  → h4
  φ^2  = 2.618  → h3
  φ^3  = 4.236  → h2
  φ^4  = 6.854  → h1

Spacing Scale (same progression):
  6.11pt  → micro (φ^-2)
  9.89pt  → small (φ^-1)
  16pt    → base (φ^0)
  25.89pt → medium (φ^1)
  41.89pt → large (φ^2)
  67.77pt → xlarge (φ^3)
```

**Note:** φ is one member of a broader family of factorial resonance harmonics (Fibonacci, Lucas, Pell sequences). Current implementation uses φ as primary ratio; deeper harmonic relationships are a planned refinement.

### Current Status

| Feature | Status |
|---------|--------|
| PDF generation | Working |
| Custom LaTeX template | Disabled (table issues) |
| IBM Plex fonts | Pending (using Segoe UI fallback) |
| Emoji support | Pending |
| Factorial harmonics refinement | Pending |

### Example

```powershell
# Generate PDF from threshold mechanics paper
.\tools\render-pdf.ps1 -InputFile "workbench\sketch__threshold_mechanics_claude_constitution.md"

# Custom output location
.\tools\render-pdf.ps1 -InputFile "docs\paper.md" -OutputFile "output\paper.pdf"
```

---

## Related Files

| Path | Purpose |
|------|---------|
| `templates/bauhaus-academic.tex` | LaTeX template (Bauhaus-inspired design) |
| `workbench/academic-style.css` | CSS for HTML output |
| `flatten-md.ps1` | Repo flattening script (root) |

---

## CI Methodology

These tools follow the repository's CI methodology:

- **Explicit parameters** via `CmdletBinding()` — declarative configuration
- **Modular functions** with clear responsibilities
- **UTF-8 encoding** without BOM
- **Graceful degradation** when dependencies missing
- **Logging** with timestamps and severity levels

See `docs/methods/METHODOLOGY_CI.md` for full CI governance model.

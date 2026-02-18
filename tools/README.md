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
| `-Lang` | `en` | Document language |
| `-TocDepth` | `2` | Table of contents depth |
| `-NumberSections` | `$true` | Number sections |
| `-Toc` | `$true` | Include table of contents |
| `-PaperSize` | `a4` | Paper size |
| `-FontSize` | `11pt` | Base font size |
| `-Brand` | (switch) | Apply ASC branding: octagram footer/title, IBM Plex fonts (via fontspec), terracotta accents, emoji-to-latex filter |

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
| Custom LaTeX template | Disabled (table issues with Pandoc default) |
| IBM Plex fonts (via `-Brand`) | Working (fontspec in `asc-branding.tex`) |
| IBM Plex fonts (default mode) | Font name resolution — uses system font names |
| Emoji → LaTeX filter | Working (via `-Brand`, `emoji-to-latex.lua`) |
| Factorial harmonics refinement | Pending |

### YAML Front Matter

Pandoc consumes `---` delimited YAML front matter as metadata without rendering it in the PDF body. Use this for archive contracts, provenance metadata, and governance fields that should be in the source but not in the output:

```yaml
---
title: "Document Title"
subtitle: "Research Brief — Upstream Investigation"
archive:
  candidate: "MY_DOCUMENT"
  status: "revised"
  lineage: "Source A → Source B → Source C"
  revision_notes: >
    v2: What changed and why.
---
```

The `title:` and `subtitle:` fields are used by Pandoc for the title page. Custom fields (like `archive:`) are silently ignored unless a custom template references them. `Extract-YamlTitle` in `render-pdf.ps1` extracts the title from front matter automatically.

See `../META/field_notes/field_notes__yaml_front_matter_pdf.md` for the full pattern.

### Example

```powershell
# Generate PDF from threshold mechanics paper
.\tools\render-pdf.ps1 -InputFile "workbench\sketch__threshold_mechanics_claude_constitution.md"

# Custom output location
.\tools\render-pdf.ps1 -InputFile "docs\paper.md" -OutputFile "output\paper.pdf"

# With ASC branding (octagram, IBM Plex, terracotta accents)
.\tools\render-pdf.ps1 -InputFile "docs\paper.md" -Brand

# Custom author for co-authored documents
.\tools\render-pdf.ps1 -InputFile "docs\paper.md" -Brand -Author "André (and theMachine(s))"
```

---

## render_equations.py

Renders mathematical equations as Instagram-ready card images from YAML definitions.

### Usage

```bash
python tools/render_equations.py tools/equations/parametric_authorship.yaml
python tools/render_equations.py tools/equations/parametric_authorship.yaml --footnotes
python tools/render_equations.py tools/equations/parametric_authorship.yaml --output ./custom_dir
```

### Parameters

| Parameter | Default | Description |
|-----------|---------|-------------|
| `yaml_file` | (required) | Path to YAML file with equation definitions |
| `--output`, `-o` | (from YAML) | Override output directory |
| `--footnotes`, `-f` | false | Also render companion footnote/translation cards |
| `--no-composite` | false | Skip generating the average composite image |
| `--no-zip` | false | Skip creating ZIP bundle |

### Dependencies

```bash
pip install pillow matplotlib numpy pyyaml
```

### YAML Schema

Equation definitions live in `tools/equations/`:

```yaml
meta:
  title: "Parametric Authorship Equations"
  version: "1.1"
  output_dir: "../projects/theses/assets/..."
  style:
    width: 1080
    height: 566
    margin: 0.07
    bg_gray: 0.5
    text_color: "white"
    math_fontset: "stixsans"

equations:
  - slug: "01_generator_map"
    name: "Generator Mapping"
    latex: "$G:(S,P,C,E)\\mapsto\\mathcal{A}$"
    section: "§3.2"
    footnote: |
      Plain-English translation for accessibility...
```

### Features

- **YAML-driven** — Separate data from code; version-control equation corrections
- **Matplotlib mathtext** — No external LaTeX install required
- **Auto-scaling** — Fonts scale to fit margins
- **Composite generation** — Equal-weight palimpsest of all equations
- **ZIP bundling** — Ready for distribution
- **Optional footnote cards** — Render plain-English translations as companion images

### Visual Style

Cards use a minimalist aesthetic matching the thesis:
- 1080×566 pixels (Instagram-friendly landscape)
- 50% gray background (#808080)
- White STIX Sans mathematical typography
- ~7% margins (content box ~86% of canvas)

### Example

```bash
# Render all parametric authorship equations
python tools/render_equations.py tools/equations/parametric_authorship.yaml

# Also generate Pratchett-style footnote cards
python tools/render_equations.py tools/equations/parametric_authorship.yaml --footnotes
```

---

## Related Files

| Path | Purpose |
|------|---------|
| `tools/equations/` | YAML equation definitions for render_equations.py |
| `tools/equations/parametric_authorship.yaml` | Parametric authorship thesis equations + footnotes |
| `templates/bauhaus-academic.tex` | LaTeX template (Bauhaus-inspired design) |
| `templates/asc-branding.tex` | ASC branding header (octagram, IBM Plex, earth tones) |
| `templates/emoji-to-latex.lua` | CARDS signal emoji → coloured LaTeX circles |
| `templates/octagram-mark-standalone.pdf` | Pre-rendered octagram for footer/title |
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

#!/usr/bin/env python3
"""
Render SVG badges, header, and shield from YAML configuration.

Generates midNight darkMagic themed SVGs with embedded IBM Plex Mono
(subset via fonttools, base64-encoded for self-contained rendering).

Features:
  - YAML-driven configuration (separate data from code)
  - φ-based type scale and spacing
  - Font subsetting + base64 embedding for universal rendering
  - Semantic colour coding (keyword, function, type, operator)
  - Accessible: <title>, <desc>, aria-labelledby
  - Safe for repo: deterministic, no network calls

Dependencies:
  pip install pyyaml fonttools brotli

Usage:
  python render_badges.py badges/midnight_darkmagic.yaml
  python render_badges.py badges/midnight_darkmagic.yaml --output ./custom_dir
  python render_badges.py badges/midnight_darkmagic.yaml --no-font-embed

Author: André S Clements + Claude
License: MIT
"""

import argparse
import base64
import io
import os
import sys
from pathlib import Path
from typing import Any, Dict, List, Optional, Set
from xml.sax.saxutils import escape

import yaml


# ---------------------------------------------------------------------------
# Configuration
# ---------------------------------------------------------------------------

def load_config(yaml_path: str) -> Dict[str, Any]:
    """Load badge configuration from YAML file."""
    with open(yaml_path, "r", encoding="utf-8") as f:
        return yaml.safe_load(f)


def resolve_color(palette: Dict[str, str], name: str) -> str:
    """Resolve a semantic colour name to its hex value."""
    return palette.get(name, name)  # pass through if already a hex value


def resolve_size(typography: Dict[str, Any], name: str) -> int:
    """Resolve a φ-scale name to its pixel value."""
    return typography["scale"].get(name, int(name) if str(name).isdigit() else 18)


# ---------------------------------------------------------------------------
# Font embedding
# ---------------------------------------------------------------------------

def collect_chars(config: Dict[str, Any]) -> Set[str]:
    """Gather all unique characters used across all SVG text content."""
    chars: Set[str] = set()

    def add_text(text: str):
        chars.update(text)

    meta = config.get("meta", {})
    add_text(meta.get("title", ""))
    add_text(meta.get("version", ""))
    add_text(meta.get("attribution", ""))

    # Shield
    shield = config.get("shield", {})
    title = shield.get("title", {})
    if isinstance(title, dict):
        add_text(title.get("text", ""))
    elif isinstance(title, str):
        add_text(title)
    subtitle = shield.get("subtitle", {})
    for part in subtitle.get("parts", []):
        add_text(part.get("text", ""))

    # Header
    header = config.get("header", {})
    line1 = header.get("line1", {})
    if isinstance(line1, dict):
        add_text(line1.get("text", ""))
    for key in ("line2", "line3"):
        line = header.get(key, {})
        for part in line.get("parts", []):
            add_text(part.get("text", ""))
    constellation = header.get("constellation", {})
    for pill in constellation.get("pills", []):
        add_text(pill.get("label", ""))

    # Badges
    badges = config.get("badges", {})
    for pill in badges.get("pills", []):
        add_text(pill.get("label", ""))
        for tspan in pill.get("tspans", []):
            add_text(tspan.get("text", ""))

    # Add common characters that might be needed
    chars.update("ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789")
    chars.update(" .:•—×=/_-()")

    return chars


def subset_and_embed_font(font_path: str, chars: Set[str]) -> str:
    """
    Subset a woff2 font to the given characters and return a CSS @font-face block
    with the font embedded as a base64 data URI.
    """
    try:
        from fontTools.subset import Subsetter
        from fontTools.ttLib import TTFont
    except ImportError:
        print("  Warning: fonttools not available, skipping font embedding", file=sys.stderr)
        return ""

    # Load the font
    font = TTFont(font_path)

    # Create subsetter with the characters we need
    subsetter = Subsetter()
    subsetter.populate(text="".join(chars))
    subsetter.subset(font)

    # Write subset to bytes
    buf = io.BytesIO()
    font.flavor = "woff2"
    font.save(buf)
    font_bytes = buf.getvalue()

    # Base64 encode
    b64 = base64.b64encode(font_bytes).decode("ascii")

    size_kb = len(font_bytes) / 1024
    print(f"  Font subset: {len(chars)} chars -> {size_kb:.1f}KB woff2 -> {len(b64)}B base64")

    return f"""@font-face {{
      font-family: 'IBM Plex Mono';
      src: url(data:font/woff2;base64,{b64}) format('woff2');
      font-weight: 400;
      font-style: normal;
    }}"""


# ---------------------------------------------------------------------------
# SVG generation — Shield
# ---------------------------------------------------------------------------

def render_shield(config: Dict[str, Any], font_css: str) -> str:
    """Generate the shield SVG (compact identity card)."""
    palette = config["palette"]
    typography = config["typography"]
    meta = config["meta"]
    shield = config["shield"]

    w = shield["width"]
    h = shield["height"]
    rx = shield["rx"]
    sw = shield["stroke_width"]
    pad = shield["padding"]

    font_stack = f"'IBM Plex Mono', {typography['fallback_stack']}"

    title_cfg = shield["title"]
    title_text = title_cfg["text"] if isinstance(title_cfg, dict) else title_cfg
    title_color = resolve_color(palette, title_cfg.get("color", "fg") if isinstance(title_cfg, dict) else "fg")
    title_size = resolve_size(typography, title_cfg.get("size", "phi_neg1") if isinstance(title_cfg, dict) else "phi_neg1")

    subtitle_cfg = shield["subtitle"]
    subtitle_size = resolve_size(typography, subtitle_cfg.get("size", "phi_neg2"))

    # Build subtitle tspans
    subtitle_tspans = ""
    for part in subtitle_cfg.get("parts", []):
        color = resolve_color(palette, part["color"])
        text = escape(part["text"])
        subtitle_tspans += f'<tspan fill="{color}">{text}</tspan>'

    # Accessible metadata
    a11y_title = f"CII: {title_text} — shield"
    a11y_desc = f"midNight darkMagic • CII • v{meta['version']} • {meta['attribution']}"

    bg = resolve_color(palette, "bg")
    fg = resolve_color(palette, "fg")
    comment = resolve_color(palette, "comment")

    return f"""<?xml version="1.0" encoding="UTF-8"?>
<!-- Generated by render_badges.py — do not edit manually -->
<!-- Config: tools/badges/midnight_darkmagic.yaml -->
<svg width="{w}" height="{h}" viewBox="0 0 {w} {h}" xmlns="http://www.w3.org/2000/svg" role="img" aria-labelledby="t d">
  <title id="t">{escape(a11y_title)}</title>
  <desc id="d">{escape(a11y_desc)}</desc>
  <style>
    {font_css}
    text {{ font-family: {font_stack}; }}
  </style>

  <rect x="0" y="0" width="{w}" height="{h}" rx="{rx}" fill="{bg}"/>
  <rect x="{pad}" y="{pad}" width="{w - 2*pad}" height="{h - 2*pad}" rx="{rx}" fill="none" stroke="{comment}" stroke-width="{sw}"/>
  <text x="{pad + 8}" y="{h * 0.44}" fill="{title_color}" style="font-size:{title_size}px;">{escape(title_text)}</text>
  <text x="{pad + 8}" y="{h * 0.75}" style="font-size:{subtitle_size}px;">{subtitle_tspans}</text>
</svg>
"""


# ---------------------------------------------------------------------------
# SVG generation — Header
# ---------------------------------------------------------------------------

def render_header(config: Dict[str, Any], font_css: str) -> str:
    """Generate the header SVG (hero banner with constellation diagram)."""
    palette = config["palette"]
    typography = config["typography"]
    meta = config["meta"]
    header = config["header"]

    w = header["width"]
    h = header["height"]
    rx = header["rx"]
    ml = header["margin_left"]

    font_stack = f"'IBM Plex Mono', {typography['fallback_stack']}"
    bg = resolve_color(palette, "bg")
    comment = resolve_color(palette, "comment")

    # Line 1 — main title
    l1 = header["line1"]
    l1_text = l1["text"] if isinstance(l1, dict) else l1
    l1_color = resolve_color(palette, l1.get("color", "fg") if isinstance(l1, dict) else "fg")
    l1_size = resolve_size(typography, l1.get("size", "phi_1") if isinstance(l1, dict) else "phi_1")
    l1_y = l1.get("y", 84) if isinstance(l1, dict) else 84

    # Line 2 — subtitle with CII prefix
    l2 = header["line2"]
    l2_size = resolve_size(typography, l2.get("size", "phi_0"))
    l2_y = l2.get("y", 118)
    l2_tspans = ""
    for part in l2.get("parts", []):
        color = resolve_color(palette, part["color"])
        text = escape(part["text"])
        l2_tspans += f'<tspan fill="{color}">{text}</tspan>'

    # Line 3 — formula
    l3 = header["line3"]
    l3_size = resolve_size(typography, l3.get("size", "phi_neg1"))
    l3_y = l3.get("y", 160)
    l3_tspans = ""
    for part in l3.get("parts", []):
        color = resolve_color(palette, part["color"])
        text = escape(part["text"])
        l3_tspans += f'<tspan fill="{color}">{text}</tspan>'

    # Constellation diagram
    constellation_svg = _render_constellation(header.get("constellation", {}), palette, typography)

    # Accessible metadata
    a11y_title = f"CII: A Pragmatics of Engagement — header"
    a11y_desc = f"midNight darkMagic theme • CII • LAB-derived equidistant hues"

    return f"""<?xml version="1.0" encoding="UTF-8"?>
<!-- Generated by render_badges.py — do not edit manually -->
<!-- Config: tools/badges/midnight_darkmagic.yaml -->
<svg width="{w}" height="{h}" viewBox="0 0 {w} {h}" xmlns="http://www.w3.org/2000/svg" role="img" aria-labelledby="t d">
  <title id="t">{escape(a11y_title)}</title>
  <desc id="d">{escape(a11y_desc)}</desc>
  <style>
    {font_css}
    text {{ font-family: {font_stack}; }}
  </style>

  <rect x="0" y="0" width="{w}" height="{h}" rx="{rx}" fill="{bg}"/>

  <!-- Text block (left) -->
  <text x="{ml}" y="{l1_y}" fill="{l1_color}" style="font-size:{l1_size}px;">{escape(l1_text)}</text>
  <text x="{ml}" y="{l2_y}" style="font-size:{l2_size}px;">{l2_tspans}</text>
  <text x="{ml}" y="{l3_y}" style="font-size:{l3_size}px;">{l3_tspans}</text>

  <!-- Constellation diagram (right) -->
{constellation_svg}
</svg>
"""


def _render_constellation(
    constellation: Dict[str, Any],
    palette: Dict[str, str],
    typography: Dict[str, Any],
) -> str:
    """Render the diamond-topology constellation diagram."""
    if not constellation:
        return ""

    ox = constellation.get("origin_x", 860)
    oy = constellation.get("origin_y", 60)
    ph = constellation.get("pill_height", 34)
    prx = constellation.get("pill_rx", 12)
    sw = constellation.get("stroke_width", 1.75)
    lsw = constellation.get("line_stroke_width", 1.2)
    ts = resolve_size(typography, constellation.get("text_size", "phi_neg1"))
    comment = resolve_color(palette, "comment")

    pills = constellation.get("pills", [])
    connections = constellation.get("connections", [])

    # Build pill lookup by label
    pill_map = {}
    for pill in pills:
        label = pill["label"]
        cx = ox + pill["cx"]
        cy = oy + pill["cy"]
        pw = pill["width"]
        color = resolve_color(palette, pill["color"])
        pill_map[label] = {"cx": cx, "cy": cy, "w": pw, "color": color}

    lines = []
    lines.append(f'  <g>')

    # Draw connections first (behind pills)
    for conn in connections:
        f_pill = pill_map.get(conn["from"])
        t_pill = pill_map.get(conn["to"])
        if not f_pill or not t_pill:
            continue

        x1 = f_pill["cx"]
        y1 = f_pill["cy"] + ph / 2  # bottom of from pill
        x2 = t_pill["cx"]
        y2 = t_pill["cy"] - ph / 2  # top of to pill

        # Bezier control points — curved connection
        mid_y = (y1 + y2) / 2
        cp1x = x1
        cp1y = mid_y
        cp2x = x2
        cp2y = mid_y

        lines.append(
            f'    <path d="M{x1},{y1} C{cp1x},{cp1y} {cp2x},{cp2y} {x2},{y2}" '
            f'stroke="{comment}" stroke-width="{lsw}" fill="none" stroke-linecap="round"/>'
        )

    # Draw pills
    for pill in pills:
        label = pill["label"]
        p = pill_map[label]
        cx = p["cx"]
        cy = p["cy"]
        pw = p["w"]
        color = p["color"]

        # Pill background (filled with bg to cover connection lines)
        bg = resolve_color(palette, "bg")
        lines.append(
            f'    <rect x="{cx - pw/2}" y="{cy - ph/2}" width="{pw}" height="{ph}" '
            f'rx="{prx}" fill="{bg}" stroke="{color}" stroke-width="{sw}"/>'
        )
        lines.append(
            f'    <text x="{cx}" y="{cy + ts * 0.35}" text-anchor="middle" '
            f'fill="{color}" style="font-size:{ts}px;">{escape(label)}</text>'
        )

    lines.append(f'  </g>')
    return "\n".join(lines)


# ---------------------------------------------------------------------------
# SVG generation — Badges
# ---------------------------------------------------------------------------

def render_badges(config: Dict[str, Any], font_css: str) -> str:
    """Generate the badges SVG (vocabulary strip with pills)."""
    palette = config["palette"]
    typography = config["typography"]
    meta = config["meta"]
    badges = config["badges"]

    w = badges["width"]
    h = badges["height"]
    brx = badges["rx"]
    ph = badges["pill_height"]
    prx = badges["pill_rx"]
    psw = badges["pill_stroke_width"]
    ts = resolve_size(typography, badges.get("text_size", "phi_0"))
    gap = badges["gap"]
    ml = badges["margin_left"]
    mt = badges["margin_top"]

    font_stack = f"'IBM Plex Mono', {typography['fallback_stack']}"
    bg = resolve_color(palette, "bg")

    # Accessible metadata
    a11y_title = "CII: A Pragmatics of Engagement — badges"
    a11y_desc = "CII • as-if • if-not • risk_index = c×p×d — midNight darkMagic theme"

    pills_svg = []
    x_cursor = ml

    for pill in badges.get("pills", []):
        label = pill["label"]
        pw = pill["width"]
        color = resolve_color(palette, pill["color"])
        tspans = pill.get("tspans")

        # Pill rectangle
        y = mt - ph / 2
        pills_svg.append(
            f'    <rect x="{x_cursor}" y="{y}" width="{pw}" height="{ph}" '
            f'rx="{prx}" fill="none" stroke="{color}" stroke-width="{psw}"/>'
        )

        # Text — either multi-coloured tspans or single label
        text_x = x_cursor + pw / 2
        text_y = mt + ts * 0.35

        if tspans:
            tspan_parts = ""
            for ts_part in tspans:
                ts_color = resolve_color(palette, ts_part["color"])
                ts_text = escape(ts_part["text"])
                tspan_parts += f'<tspan fill="{ts_color}">{ts_text}</tspan>'
            pills_svg.append(
                f'    <text x="{text_x}" y="{text_y}" text-anchor="middle" '
                f'style="font-size:{ts}px;">{tspan_parts}</text>'
            )
        else:
            pills_svg.append(
                f'    <text x="{text_x}" y="{text_y}" text-anchor="middle" '
                f'fill="{color}" style="font-size:{ts}px;">{escape(label)}</text>'
            )

        x_cursor += pw + gap

    pills_content = "\n".join(pills_svg)

    return f"""<?xml version="1.0" encoding="UTF-8"?>
<!-- Generated by render_badges.py — do not edit manually -->
<!-- Config: tools/badges/midnight_darkmagic.yaml -->
<svg width="{w}" height="{h}" viewBox="0 0 {w} {h}" xmlns="http://www.w3.org/2000/svg" role="img" aria-labelledby="t d">
  <title id="t">{escape(a11y_title)}</title>
  <desc id="d">{escape(a11y_desc)}</desc>
  <style>
    {font_css}
    text {{ font-family: {font_stack}; }}
  </style>

  <rect x="0" y="0" width="{w}" height="{h}" rx="{brx}" fill="{bg}"/>

  <g>
{pills_content}
  </g>
</svg>
"""


# ---------------------------------------------------------------------------
# Output
# ---------------------------------------------------------------------------

def write_svg(content: str, path: str):
    """Write SVG content to file (UTF-8, no BOM, LF line endings)."""
    os.makedirs(os.path.dirname(path) or ".", exist_ok=True)
    with open(path, "w", encoding="utf-8", newline="\n") as f:
        f.write(content.strip() + "\n")


# ---------------------------------------------------------------------------
# Main
# ---------------------------------------------------------------------------

def main():
    parser = argparse.ArgumentParser(
        description="Render SVG badges, header, and shield from YAML configuration.",
        formatter_class=argparse.RawDescriptionHelpFormatter,
        epilog="""
Examples:
  python render_badges.py badges/midnight_darkmagic.yaml
  python render_badges.py badges/midnight_darkmagic.yaml --output ./custom_dir
  python render_badges.py badges/midnight_darkmagic.yaml --no-font-embed
        """,
    )
    parser.add_argument("yaml_file", help="Path to YAML file with badge configuration")
    parser.add_argument("--output", "-o", help="Override output directory")
    parser.add_argument(
        "--no-font-embed",
        action="store_true",
        help="Skip font subsetting/embedding (use font-family fallback only)",
    )
    parser.add_argument(
        "--shield-only", action="store_true", help="Only generate shield SVG"
    )
    parser.add_argument(
        "--header-only", action="store_true", help="Only generate header SVG"
    )
    parser.add_argument(
        "--badges-only", action="store_true", help="Only generate badges SVG"
    )
    args = parser.parse_args()

    # Load configuration
    yaml_path = Path(args.yaml_file)
    if not yaml_path.exists():
        print(f"Error: YAML file not found: {yaml_path}", file=sys.stderr)
        sys.exit(1)

    config = load_config(yaml_path)
    meta = config.get("meta", {})
    typography = config.get("typography", {})

    # Determine output directory
    output_dir = args.output or meta.get("output_dir", "./out_badges")
    if not os.path.isabs(output_dir):
        output_dir = str(yaml_path.parent / output_dir)

    # Determine which SVGs to generate
    generate_all = not (args.shield_only or args.header_only or args.badges_only)

    print(f"Rendering badges for: {meta.get('title', 'Unknown')}")
    print(f"Output: {output_dir}")

    # Font embedding
    font_css = ""
    if not args.no_font_embed:
        font_path = typography.get("font_source", "")
        if font_path and os.path.exists(font_path):
            print(f"  Subsetting font: {os.path.basename(font_path)}")
            chars = collect_chars(config)
            font_css = subset_and_embed_font(font_path, chars)
        elif font_path:
            print(f"  Warning: font not found at {font_path}, skipping embed", file=sys.stderr)
        else:
            print("  No font_source configured, skipping embed")
    else:
        print("  Font embedding disabled (--no-font-embed)")

    # Generate SVGs
    if generate_all or args.shield_only:
        print("  Rendering shield...", end=" ")
        svg = render_shield(config, font_css)
        path = os.path.join(output_dir, "repo_shield_midnight.svg")
        write_svg(svg, path)
        print(f"done ->{path}")

    if generate_all or args.header_only:
        print("  Rendering header...", end=" ")
        svg = render_header(config, font_css)
        path = os.path.join(output_dir, "repo_header_midnight.svg")
        write_svg(svg, path)
        print(f"done ->{path}")

    if generate_all or args.badges_only:
        print("  Rendering badges...", end=" ")
        svg = render_badges(config, font_css)
        path = os.path.join(output_dir, "repo_badges_midnight.svg")
        write_svg(svg, path)
        print(f"done ->{path}")

    print("\nDone.")


if __name__ == "__main__":
    main()

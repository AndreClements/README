#!/usr/bin/env python3
"""
Render equations as Instagram-ready cards from YAML definitions.

Enhanced version of the original render_parametric_equations.py script.
Reads equation definitions from YAML, supports batch corrections, and
optionally generates companion footnote cards.

Features:
  - YAML-driven equation definitions (separate data from code)
  - Configurable output directory and style
  - Corrected notation support
  - Optional footnote card generation
  - No external LaTeX needed: uses Matplotlib mathtext
  - Safe for repo: deterministic, no network calls

Dependencies:
  pip install pillow matplotlib numpy pyyaml

Usage:
  python render_equations.py equations/parametric_authorship.yaml
  python render_equations.py equations/parametric_authorship.yaml --footnotes
  python render_equations.py equations/parametric_authorship.yaml --output ./custom_output

Author: André S Clements + Claude
License: MIT
"""

import argparse
import os
import sys
import zipfile
from pathlib import Path
from typing import Any, Dict, List, Optional

import yaml
import numpy as np
from PIL import Image
import matplotlib
matplotlib.use("Agg")
import matplotlib.pyplot as plt


def load_config(yaml_path: str) -> Dict[str, Any]:
    """Load equation configuration from YAML file."""
    with open(yaml_path, 'r', encoding='utf-8') as f:
        return yaml.safe_load(f)


def setup_matplotlib(fontset: str = "stixsans", font_family: str = "DejaVu Sans"):
    """Configure matplotlib for math rendering."""
    plt.rcParams.update({
        "mathtext.fontset": fontset,
        "font.family": font_family,
    })


def render_math_card(
    slug: str,
    latex: str,
    output_dir: str,
    width: int = 1080,
    height: int = 566,
    margin: float = 0.07,
    bg_gray: float = 0.5,
    text_color: str = "white",
    start_fs: int = 64,
    min_fs: int = 20,
) -> str:
    """
    Render a single math card and return file path.

    Uses auto-scaling to fit the equation within margins.
    """
    os.makedirs(output_dir, exist_ok=True)
    content_w = int(width * (1 - 2 * margin))
    content_h = int(height * (1 - 2 * margin))

    fs = start_fs
    while fs >= min_fs:
        fig = plt.figure(
            figsize=(width/100, height/100),
            dpi=100,
            facecolor=(bg_gray, bg_gray, bg_gray)
        )
        ax = fig.add_axes([margin, margin, 1 - 2*margin, 1 - 2*margin])
        ax.set_axis_off()
        txt = ax.text(0.5, 0.5, latex, ha="center", va="center", color=text_color, fontsize=fs)
        fig.canvas.draw()
        bbox = txt.get_window_extent(renderer=fig.canvas.get_renderer())

        if bbox.width <= content_w and bbox.height <= content_h:
            path = os.path.join(output_dir, f"{slug}.png")
            fig.savefig(path, dpi=100)
            plt.close(fig)
            return path
        plt.close(fig)
        fs -= 2

    # Fallback with min_fs
    fig = plt.figure(
        figsize=(width/100, height/100),
        dpi=100,
        facecolor=(bg_gray, bg_gray, bg_gray)
    )
    ax = fig.add_axes([margin, margin, 1 - 2*margin, 1 - 2*margin])
    ax.set_axis_off()
    ax.text(0.5, 0.5, latex, ha="center", va="center", color=text_color, fontsize=min_fs)
    path = os.path.join(output_dir, f"{slug}.png")
    fig.savefig(path, dpi=100)
    plt.close(fig)
    return path


def render_text_card(
    slug: str,
    text: str,
    output_dir: str,
    width: int = 1080,
    height: int = 566,
    margin: float = 0.10,
    bg_gray: float = 0.5,
    text_color: str = "white",
    fontsize: int = 18,
) -> str:
    """
    Render a plain-text card (for footnotes/translations).

    Uses word-wrapping to fit text within margins.
    """
    os.makedirs(output_dir, exist_ok=True)

    fig = plt.figure(
        figsize=(width/100, height/100),
        dpi=100,
        facecolor=(bg_gray, bg_gray, bg_gray)
    )
    ax = fig.add_axes([margin, margin, 1 - 2*margin, 1 - 2*margin])
    ax.set_axis_off()

    # Use matplotlib's text wrapping
    ax.text(
        0.5, 0.5, text.strip(),
        ha="center", va="center",
        color=text_color,
        fontsize=fontsize,
        wrap=True,
        fontfamily="DejaVu Sans",
        style="italic",
    )

    path = os.path.join(output_dir, f"{slug}_footnote.png")
    fig.savefig(path, dpi=100)
    plt.close(fig)
    return path


def make_average_composite(
    paths: List[str],
    output_dir: str,
    width: int = 1080,
    height: int = 566,
    bg_gray: float = 0.5,
    out_name: str = "13_average_all.png"
) -> str:
    """
    Create equal-weight average composite over the gray background.

    Each equation card contributes equally to the final palimpsest effect.
    """
    gray_val = int(255 * bg_gray)
    base = Image.new("RGBA", (width, height), (gray_val, gray_val, gray_val, 255))

    for p in paths:
        img = Image.open(p).convert("RGBA")
        # Equal opacity for each layer (factorial distribution)
        img.putalpha(int(255 / max(1, len(paths))))
        base = Image.alpha_composite(base, img)

    out_path = os.path.join(output_dir, out_name)
    base.convert("RGB").save(out_path, "PNG")
    return out_path


def create_zip_bundle(paths: List[str], output_dir: str, bundle_name: str) -> str:
    """Create a ZIP archive of all rendered cards."""
    zip_path = os.path.join(output_dir, bundle_name)
    with zipfile.ZipFile(zip_path, "w", zipfile.ZIP_DEFLATED) as z:
        for p in paths:
            z.write(p, arcname=os.path.basename(p))
    return zip_path


def main():
    parser = argparse.ArgumentParser(
        description="Render equations as Instagram-ready cards from YAML definitions.",
        formatter_class=argparse.RawDescriptionHelpFormatter,
        epilog="""
Examples:
  python render_equations.py equations/parametric_authorship.yaml
  python render_equations.py equations/parametric_authorship.yaml --footnotes
  python render_equations.py equations/parametric_authorship.yaml --output ./custom_dir
        """
    )
    parser.add_argument("yaml_file", help="Path to YAML file with equation definitions")
    parser.add_argument("--output", "-o", help="Override output directory")
    parser.add_argument("--footnotes", "-f", action="store_true",
                        help="Also render footnote/translation cards")
    parser.add_argument("--no-composite", action="store_true",
                        help="Skip generating the average composite image")
    parser.add_argument("--no-zip", action="store_true",
                        help="Skip creating ZIP bundle")
    args = parser.parse_args()

    # Load configuration
    yaml_path = Path(args.yaml_file)
    if not yaml_path.exists():
        print(f"Error: YAML file not found: {yaml_path}", file=sys.stderr)
        sys.exit(1)

    config = load_config(yaml_path)
    meta = config.get("meta", {})
    style = meta.get("style", {})

    # Determine output directory
    output_dir = args.output or meta.get("output_dir", "./out_cards")
    if not os.path.isabs(output_dir):
        # Make relative to YAML file location
        output_dir = str(yaml_path.parent / output_dir)

    # Style configuration
    width = style.get("width", 1080)
    height = style.get("height", 566)
    margin = style.get("margin", 0.07)
    bg_gray = style.get("bg_gray", 0.5)
    text_color = style.get("text_color", "white")
    start_fs = style.get("start_fontsize", 64)
    min_fs = style.get("min_fontsize", 20)
    math_fontset = style.get("math_fontset", "stixsans")

    # Setup matplotlib
    setup_matplotlib(fontset=math_fontset)

    # Render equation cards
    equations = config.get("equations", [])
    paths = []

    print(f"Rendering {len(equations)} equations to {output_dir}")

    for eq in equations:
        slug = eq["slug"]
        latex = eq["latex"]

        print(f"  {slug}...", end=" ")
        path = render_math_card(
            slug=slug,
            latex=latex,
            output_dir=output_dir,
            width=width,
            height=height,
            margin=margin,
            bg_gray=bg_gray,
            text_color=text_color,
            start_fs=start_fs,
            min_fs=min_fs,
        )
        paths.append(path)
        print("done")

        # Optionally render footnote card
        if args.footnotes or meta.get("render_footnotes"):
            footnote = eq.get("footnote")
            if footnote:
                print(f"    {slug}_footnote...", end=" ")
                render_text_card(
                    slug=slug,
                    text=footnote,
                    output_dir=output_dir,
                    width=width,
                    height=height,
                    margin=0.10,
                    bg_gray=bg_gray,
                    text_color=text_color,
                )
                print("done")

    # Create composite
    if not args.no_composite and paths:
        print("  Creating composite...", end=" ")
        composite_path = make_average_composite(
            paths=paths,
            output_dir=output_dir,
            width=width,
            height=height,
            bg_gray=bg_gray,
        )
        paths.append(composite_path)
        print("done")

    # Create ZIP bundle
    if not args.no_zip and paths:
        title = meta.get("title", "equations").lower().replace(" ", "_")
        bundle_name = f"{title}_cards.zip"
        print(f"  Creating bundle {bundle_name}...", end=" ")
        zip_path = create_zip_bundle(paths, output_dir, bundle_name)
        print("done")
        print(f"\nBundle: {zip_path}")

    print(f"\nOutput: {output_dir}")
    print(f"Rendered: {len(equations)} equations + composite")


if __name__ == "__main__":
    main()

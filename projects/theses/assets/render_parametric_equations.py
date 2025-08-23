#!/usr/bin/env python3
"""
Render the Parametric Authorship equations as Instagram-ready cards.

- 12 individual cards (PNG, 1080x566 by default), 50% gray background,
  white math text, ~7% margins
- 13th composite image that averages all 12 at equal opacity
- No external LaTeX needed: uses Matplotlib mathtext
- Safe for repo: deterministic, no network calls

Dependencies:
  pip install pillow matplotlib numpy

Usage:
  python render_parametric_equations.py
  # outputs to ./out_cards_mathtext and a ZIP bundle

Knobs to tweak:
  W, H            -> card resolution
  MARGIN          -> fractional margins (0.07 ≈ 7%)
  MATH_FONTSET    -> one of: 'stix', 'stixsans', 'dejavusans', 'dejavuserif', 'cm'
  UI_FONT_FAMILY  -> non-math text font family (fallback)
"""

import os
import zipfile
from typing import List, Tuple

import numpy as np
from PIL import Image
import matplotlib
matplotlib.use("Agg")
import matplotlib.pyplot as plt

# -------------------
# Config
# -------------------
W, H = 1080, 566          # Landscape IG-friendly size
MARGIN = 0.07             # ~7% margins (content box ~86% of canvas)
BG_GRAY = 0.5             # 50% gray background
TEXT_COLOR = "white"
START_FS = 64
MIN_FS = 20

OUTDIR = "./out_cards_mathtext"
ZIP_NAME = "parametric_authorship_equations_cards_mathtext.zip"

# Math/typography
MATH_FONTSET = "stixsans"       # 'stixsans' feels “scientific”; try 'cm' for classic
UI_FONT_FAMILY = "DejaVu Sans"  # affects only non-math text (we don't use it here)

plt.rcParams.update({
    "mathtext.fontset": MATH_FONTSET,
    "font.family": UI_FONT_FAMILY,
})

# -------------------
# Equations (LaTeX)
# -------------------
# These are the 12 equations grounded in your draft; #12 is the radius
# form derived from the Quadratic Illumination constraint.
EQUATIONS: List[Tuple[str, str]] = [
    ("01_generator_map",  r"$G:(S,P,C,E)\mapsto\mathcal{A}$"),
    ("02_paf_tuple",      r"$\mathrm{PAF}:=\langle S,\ \mathcal{P},\ C,\ E,\ \Phi\rangle$"),
    ("03_param_space",    r"$\mathcal{P}\subseteq\mathbb{R}^{n}$"),
    ("04_phi_def",        r"$\Phi=\frac{\partial\mathcal{F}}{\partial P}$"),
    ("05_agency_metric",  r"$\operatorname{Auth}^{\star}=\left\|\nabla_{P}\mathbb{E}\!\left[\mathcal{F}(G)\right]\right\|\cdot"
                          r"\operatorname{Inv}(P\!\to\!\mathcal{F})\cdot R(C,E)\cdot\prod_{i}d_i$"),
    ("06_d_bounds",       r"$d_i\in[0,1]$"),
    ("07_dignity_tensor", r"$\mathbf{D}=\operatorname{diag}(d_{\mathrm{personal}},\,d_{\mathrm{object}},\,d_{\mathrm{system}})$"),
    ("08_illum_constraint", r"$I(r)=\frac{\alpha\,A_{\mathrm{open}}}{r^{2}}\leq \tau$"),
    ("09_feature_map",    r"$\mathcal{F}:\mathcal{A}\to\mathbb{R}^{k}$"),
    ("10_invariant_set",  r"$I=\{\,f\in\mathcal{F}\mid f(G(P+\Delta P))\approx f(G(P))\ \forall\,\|\Delta P\|\leq\epsilon\,\}$"),
    ("11_transition_set", r"$T=\{\, (f,\Delta P)\mid f(G(P+\Delta P))-f(G(P))\in\Delta^{\star}\,\}$"),
    ("12_radius_form",    r"$r\geq \sqrt{\frac{\alpha\,A_{\mathrm{open}}}{\tau}}$"),
]

# -------------------
# Renderer
# -------------------
def render_math_card(slug: str, eq: str,
                     w: int = W, h: int = H,
                     margin: float = MARGIN,
                     start_fs: int = START_FS, min_fs: int = MIN_FS) -> str:
    """Render a single math card and return file path."""
    os.makedirs(OUTDIR, exist_ok=True)
    content_w = int(w * (1 - 2 * margin))
    content_h = int(h * (1 - 2 * margin))

    fs = start_fs
    while fs >= min_fs:
        fig = plt.figure(figsize=(w/100, h/100), dpi=100, facecolor=(BG_GRAY, BG_GRAY, BG_GRAY))
        ax = fig.add_axes([margin, margin, 1 - 2*margin, 1 - 2*margin])
        ax.set_axis_off()
        txt = ax.text(0.5, 0.5, eq, ha="center", va="center", color=TEXT_COLOR, fontsize=fs)
        fig.canvas.draw()
        bbox = txt.get_window_extent(renderer=fig.canvas.get_renderer())
        if bbox.width <= content_w and bbox.height <= content_h:
            path = os.path.join(OUTDIR, f"{slug}.png")
            fig.savefig(path, dpi=100)
            plt.close(fig)
            return path
        plt.close(fig)
        fs -= 2

    # Fallback with min_fs
    fig = plt.figure(figsize=(w/100, h/100), dpi=100, facecolor=(BG_GRAY, BG_GRAY, BG_GRAY))
    ax = fig.add_axes([margin, margin, 1 - 2*margin, 1 - 2*margin])
    ax.set_axis_off()
    ax.text(0.5, 0.5, eq, ha="center", va="center", color=TEXT_COLOR, fontsize=min_fs)
    path = os.path.join(OUTDIR, f"{slug}.png")
    fig.savefig(path, dpi=100)
    plt.close(fig)
    return path

def make_average(paths: List[str], out_name: str = "13_average_all.png") -> str:
    """Equal-weight average composite over the gray background."""
    base = Image.new("RGBA", (W, H), (int(255*BG_GRAY),)*3 + (255,))
    for p in paths:
        img = Image.open(p).convert("RGBA")
        img.putalpha(int(255 / max(1, len(paths))))
        base = Image.alpha_composite(base, img)
    out_path = os.path.join(OUTDIR, out_name)
    base.convert("RGB").save(out_path, "PNG")
    return out_path

def main():
    paths = [render_math_card(slug, eq) for slug, eq in EQUATIONS]
    paths.append(make_average(paths))
    # Zip bundle
    zip_path = os.path.join(OUTDIR, "..", ZIP_NAME)
    with zipfile.ZipFile(zip_path, "w", zipfile.ZIP_DEFLATED) as z:
        for p in paths:
            z.write(p, arcname=os.path.basename(p))
    print("Wrote:", OUTDIR)
    print("Bundle:", zip_path)

if __name__ == "__main__":
    main()

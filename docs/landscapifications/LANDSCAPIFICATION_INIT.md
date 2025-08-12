`docs/landscapifications/LANDSCAPIFICATION_INIT.md`
# LANDSCAPIFICATION\_INIT.md

> **Version:** 0.2 (Seed Spec) • aligns with *A Pragmatics of Engagement* v3.3.3 • `theMachines`

---

## 0) Purpose & Posture

**Landscapification** renders body–world continuity as a field where systems (human, social, technical) leave legible traces.
Not illustration — practice under constraint. Not metaphysics — operational seeing.

* Ground rules: **as-if** (function) / **if-not** (audit), **risk\_index** scaling, **sovereignty over victory**.
* Telos: hold relation without being eaten by it.

---

## 1) Minimal Definition

A Landscapification is an **artifact** that encodes:

* **Forces** (vectors of complexity, power, distance-from-wetware),
* **Contracts** (intent → constraints → validation),
* **Residues** (patina: maculate design),
* **Voids** (the *Empty Turn*).

`artifact := f(forces, contract, residue, void)` with validation notes attached.

---

## 2) Bindings to CI Methodology (v3.3.3)

* **Principle 0 — Maculate Design:** surface scars; log history as patina.
* **As-If / If-Not:** dual mark-making modes (decisive vs. corrective).
* **Precautionary Principle:** validation cadence/depth ∝ `risk_index`.
* **Soft-Contract (human node):** consent, clarity, low overhead; time-boxed passes.
* **Complexity Budget:** stop before rigor smothers play.

---

## 3) Motif Library (v0.2)

Modules are combinable; each maps to principles or studio praxis.

1. **Twin Channels** (*as-if / if-not*) — two flows converging; one crisp, one noisy.
2. **Risk Surface** (`risk_index`) — topography/heat; inspectors where cadence increases.
3. **Contract Mesh** — nodes/edges; routes to tools/humans; **quorum + dissent** braid; minority preserved.
4. **Soft-Contract Sheet** — four lines (Aim / Boundary / Check / Exit) on translucent layer.
5. **Complexity Gauge** — vessel with `CB = attention_available − attention_required`.
6. **Empty Turn** — deliberate void; thin frame; small exit glyph.
7. **Maculate Field** — underpainting with scratches/log marks (`ShadowException`, cache flush, re-admit).
8. **Relational Stack** — strata: language → conversation → relationship; conductivity ↑.
9. **paintWithScalpel** — precise incision marks; “careful violence” to reveal structure without spectacle.
10. **Cleaning Brushes** — visible maintenance gestures; solvent wipes, cloth drags, watermarks; a post-pass acknowledging residue.
11. **Studio Logistics & Dynamics** — diagram of flow: light angles, drying racks, tool stations, walk-lines; encodes the studio as a routing graph.

---

## 4) Materials & Scales

* **Supports:** oil colour on **panel**, **canvas**, and **paper**; oil colour on **salvaged timber**.
* **Dry media / inks:** charcoal, ink, matte graphite, graphite wash, watercolour underpasses.
* **Scales:** studies 30×40 cm; mid 50×70 cm; feature 70×100 cm.
* **Edges:** *meticulous blur* at negotiated boundaries; sharp code-lines only where intent is explicit.

---

## 5) Palette Sets

Multiple sets; select per contract.

* **midNight darkMagic** (on black): high-L accents (LAB-spaced), calm neutrals.
* **Nord** (cool greys + cyan/indigo accents).
* **Solarized (low-sat variant)** (balanced warm/cool).
* **Monokai muted** (reduced chroma for print).
* **Bone/Umber** (earths + zinc/lead white logic).
* **Reduced Grayscale** (value orchestration; one accent only).

`palette := {bg, fg, comment, accents: {keyword, function, type, number, operator}}`

---

## 6) Themes

Themes are separate containers (semantic + affective clusters) applied across motifs/materials.

* **Sovereign Basin** — containment without enclosure.
* **Picked-Up-Sticks** — `theMachines` field; curated gloss; shadow mirrors  — mirrors can be valuable.
* **Distance-from-Wetware** — organics → circuitry gradient to event-horizon.
* **Meticulous Blur** — negotiated boundaries, memory, haze at edges.

`theme.apply(motifs, materials, palette) -> constraints Δ`

---

## 7) Working Contract

Use a small writable spec to route the making.

EG.

```yaml
contract:
  intent: "study|plate|feature|fineartwork|poem|writing"
  scope:
    motifs: ["twin","risk","mesh","scalpel","cleaning","studio-graph"]
    theme: "sovereign-basin|picked-up-sticks|distance-from-wetware|meticulous-blur"
  constraints:
    timebox: "2h|4h|8h"
    palette: "midnight-darkmagic|nord|solarized|monokai|bone-umber|grayscale"
    toolsOff: true
  outputs: ["plate","process-shot","validation-note"]
  validation: ["falsifiability_probe","AndYet_counterread"]
  legibility:
    level: 0|1|2        # 0 = poetic/oblique, 1 = mixed, 2 = technical/explicit
    text_overlay: true|false
    annotation_density: "low|medium|high"
  risk_index:
    complexity: 1..5
    power: 1..5
    distance_from_wetware: 1..5
```

**Derivative class interpretation (by `intent` and `legibility.level`):**

* `fineartwork`: level 0→ painterly oblique; 1→ visible dissent marks; 2→ include small schema glyphs only.
* `poem`: level 0→ no captions; 1→ short stanza overlay; 2→ stanza + legend for symbols.
* `writing`: level 0→ margin fragments; 1→ sidebar notes; 2→ inline labels, callouts, coordinates.

---

## 8) Studio Protocol (one session)

1. **Soft-Contract (human node)** — Aim (1–2), Boundary (1), Check, Exit.
2. **Plan** — select motifs; compute `risk_index`; set **Complexity Budget**.
3. **Pass A — As-If** (decisive marks) → **Pass B — If-Not** (corrections, patina).
4. **paintWithScalpel** where structure demands incision and the BODY demands detail — avoid the glamour and gravity of unbounded precision or virtuosity for its own sake.
5. **Cleaning Brushes** — maintenance pass; acknowledge residue; archive cloths if significant.
6. **Validation Note** — 3 bullets: what holds, what’s partial, what’s deferred.

---

## 9) Cataloguing & Provenance

```yaml
catalog_id: "LND-YYYY-NN"
title: "Landscapification — <motif-tags>"
support: "oil on panel|canvas|paper|timber"
media: ["oilcolour","charcoal","ink","matte-graphite","watercolour"]
size: "WxH cm"
date: ISO8601
commit: "<git short-hash>"
qr: "<url or repo path>"
notes: "dissent kept|empty-turn invoked|cb=<value>"
```

Back inscriptions include: catalog ID, date, short hash, license line.

---

## 10) Assets & References

* IG plates (square/portrait): `docs/assets/` (png/svg).
* Badge set (midNight darkMagic): `docs/assets/midnight-darkmagic/*.svg`.
* Captions: `docs/text/CAPTIONS.md`.

---

## 11) Safety & Risk

* If `risk_index ≥ 5` → double validator cadence; attach minority image (detail) as dissent.
* If `CB < 0` → *Empty Turn*; rescope or stop.

---

## 12) Release Modes

* **Studio Edition** — print(s) + plate sheet; QR to commit.
* **Network Edition** — web post with process note + validation note.
* **Field Deck** — 8–12 card set (motifs + captions).

---

## 13) License

**LICENSE:** \
Use with reasonable care.\
Fork ethically.\
Merge only with sufficient refactor.

# Pending site-Glossary edits — Foundations re-mirror (TOA v0.3.0)

*Status: staged, operator-run. Not yet applied.*

> ⚠ **HOLD (2026-07-16)** — do not run the site push / re-mirror cycle until the theory_of_art
> v0.3.1 pass lands (`staging/refactor__theory_of_art_v0.3.1.md`, §3.1). The two edits below are
> unaffected, but the Foundations mirror carries *"value is weight"* (`CONCEPTS/GLOSSARY.md` L41),
> which v0.3.1 supersedes — running the cycle now would carry a superseded gloss through a site
> round-trip, or force a second one. One cycle should carry both.

The **Foundations** section of `CONCEPTS/GLOSSARY.md` is **site-canonical, mirrored verbatim** from
[andresclements.com/glossary](https://andresclements.com/glossary/). Its rule: *"Any revision should
be made at the site and re-mirrored here."* So the two edits below are **not** applied to the repo
mirror directly — that would invert the canonical direction and create drift. They are staged here to
be pushed to the site first, then re-mirrored.

Two edits fall out of the theory_of_art v0.3.0 pass. Both are the operator's call on timing.

---

## Edit 1 — Creativity: drop "between elements" (align with the v0.3.0 axiom)

**Current (site + mirror):**

> **Creativity**: The ability to create new or different relations between elements, highlighting the
> idea that art is not simply a representation or expression of the artist's subjective experience,
> but rather something that arises from the manipulation or arrangement of elements in a new or
> different way, by creating new relationships between them.

**Target:**

> **Creativity**: The ability to make new or different relations — where the relata are individuated
> locally, by the domain of concern doing the appreciating, so "new" is relative to that domain
> rather than to a fixed inventory of elements. Art arises not from representing a subjective
> experience but from bringing forth a relation that was not there before.

*Rationale:* the axiom now reads *"new relations, towards the desirable"* (between-elements dropped;
see [theory_of_art.md](../docs/models/theory_of_art.md) §1). Until this is pushed, the site wording
stands as the **Foundations-key registration** (declared modulation, per the node's *Registrations*
section) — not an error, just an earlier key.

---

## Edit 2 — OOO / "aura": un-fuse Benjamin and Heidegger

**Current (site + mirror), the OOO entry:**

> …It aligns with Heidegger's concept of "aura," which posits that artworks possess an unique
> presence that cannot be reduced to their physical or functional properties.

**Problem:** *aura* is **Benjamin's** term (*The Work of Art in the Age of Mechanical Reproduction*,
1935), not Heidegger's. The withdrawn-presence idea OOO leans on is Heidegger's **tool-being /
world** (*The Origin of the Work of Art*). The entry conflates the two.

**Target:**

> …It aligns with Heidegger's account of the object's withdrawn **tool-being** — a presence that
> cannot be reduced to physical or functional properties. (Benjamin's neighbouring term *aura* names
> the presence a work loses under mechanical reproduction; the two are kin but not the same, and
> earlier wording here conflated them.)

*Rationale:* the mass–weight–field model's world-withdrawal → death-and-revival account (theory_of_art
§mass–weight–field, item 2) makes the aura/world distinction load-bearing, so the standing conflation
is worth correcting at the source. Both thinkers remain **hosted, unverified** in the repo until a
primary-source read (CII §5).

---

## After the site push

1. Apply Edits 1–2 at andresclements.com/glossary.
2. Re-mirror the Foundations block into `CONCEPTS/GLOSSARY.md`.
3. Drop the "re-mirror pending" note from the theory_of_art.md Provenance row and *Registrations*
   section.
4. Delete this file.

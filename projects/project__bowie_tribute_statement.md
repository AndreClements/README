`projects/project__bowie_tribute_statement.md`

# Project: Bowie Tribute Statement — Preproduction Tracker

> ```yaml
> contract:
>   title: "Bowie Tribute — Artist Statement Preproduction"
>   tier: "T2"
>   status: "in_progress"
>   deadline: "2026-04-20"
>   output_path: "C:/Users/User/Documents/ArtPraxis/exhibitions/2026-bowie-tribute/statement.md"
>   exhibition: "From Ziggy Stardust to Blackstar: A Tribute to the Genius of David Bowie"
>   venue: "The Viewing Room Art Gallery at St. Lorient, Pretoria"
>   dates: "2026-05-23 (opening) – 2026-06-15"
>   curator: "Gordon Froud"
>   submission_bundle: "bio + artist statement + photo"
>   provenance: "docs/models/spans.md (cross-book span, planned here → output in ArtPraxis)"
>   spelling: "South African English with UK bias"
> ```

---

**Lead Maintainer's Note.** This tracker holds the preproduction, voice audit, CARDS mapping, and sceptic-pass record for the Bowie tribute artist statement. The statement itself is output in ArtPraxis (studio/output repo). The gutter between this tracker and that output is itself a cross-book span (see [docs/models/spans.md](../docs/models/spans.md) §2 "Cross-book span").

---

## §1. Brief

- **Show**: "From Ziggy Stardust to Blackstar: A Tribute to the Genius of David Bowie"
- **Venue**: The Viewing Room Art Gallery, St. Lorient, Pretoria
- **Dates**: Opens 2026-05-23, closes 2026-06-15
- **Curator**: Gordon Froud
- **Work**: Layered-averaging composite of 319 Bowie images
  - Large unique print: R33,333.33
  - CD jewel case edition of 10: R3,333.33 each
- **Submission**: bio + artist statement + photo by **2026-04-20**
- **Audience**: Pretoria art-going public; Bowie fans; gallery's collector base

## §2. Voice Audit Plan

Per [voice-signature.md](C:/xampp/htdocs/andresclements.com/docs/research/voice-signature.md), the statement applies:

| Signature Move | Application |
|---|---|
| **Distributed Signature (3.12)** | Structurally central. 319 photographers, the machine, the maker — all typed and delimited. |
| **Constraint Gift (3.11)** | 319 inputs, equal weight (1/N), no single Bowie foregrounded. Constraint as generative. |
| **Code-as-Ontology (3.4)** | Name `layer-average.py` directly. No apology, no translation. The tool is the thesis. |
| **Maculate Disclosure (3.6)** | "Not physics lab precise — but honest enough." The method's limits stated as features. |
| **Short–long–short Sandwich (3.8)** | Paragraph architecture: assertion → elaboration → deflating coda. |
| **Colon Expansion (3.3)** | Method thesis then unpack. |
| **Compression > elaboration** | 200–300 words target; ruthless cut. |

**Anti-patterns to avoid** (voice §7):
- "not X but Y" framing → use additive ("less OR, more AND")
- Em-dashes as primary joint (LLM artefact)
- Semicolons as primary joint
- Resolving the tribute into tidy synthesis
- Performing Bowie-expertise
- Explaining the Afrikaans (if any lands)
- Spectacularising the 319 number

## §3. CARDS Mapping

| CARDS axis | Application |
|---|---|
| **Competence** | Method as meaning. `layer-average.py` demonstrates competence-as-transparency: the tool is shown, not hidden. |
| **Autonomy** | 319 source photographers, each retaining authorship at their own source. The composite does not erase sources; it averages them. |
| **Relatedness** | Tribute as distributed authorship. Network of makers, not a single hand. |
| **Dignity** | 1/N equal weighting. No single Bowie persona centred over others. Ziggy, Thin White Duke, Blackstar — each at equal weight. |
| **Safety** | No single image foregrounded: the composite cannot be used to crown one Bowie over another. Refuses hierarchy-making. |

**Diagnostic**: if any Bowie persona dominates the composite visually, the 1/N claim is false in practice. Verify by eye before submission.

## §4. Span Declaration

This statement is a cross-book span: planned here (README, methodology repo), output at `C:/Users/User/Documents/ArtPraxis/exhibitions/2026-bowie-tribute/statement.md` (ArtPraxis, studio repo). The gutter between the two repos is the site; the pairing is the plan-and-output relationship.

It is also (recursively) a demonstration of the spans model. Bowie's own life-work was a retroactive pairing machine: Ziggy ↔ Thin White Duke ↔ Blackstar, each persona answering across decades. The composite print is a span-of-spans.

## §5. Operator Tasks

- [ ] Verify source photograph count (319) against `layer-average.py` run log
- [ ] Confirm exact filename and location of `layer-average.py`
- [ ] Confirm pricing (R33,333.33 unique; R3,333.33 ×10 edition)
- [ ] Read-aloud BODY check (operator, before submission)
- [ ] Bio + photo bundle (separate from statement, same deadline)

## §6. Sceptic Pass Record

| Pass | Date | Reviewer | Outcome |
|---|---|---|---|
| Pre-draft | pending | operator | — |
| Post-draft | pending | operator + theMachine | — |

**Sceptic's questions**:
1. Is the 1/N ethical claim supported by the image itself, or only by the method?
2. Does "distributed authorship" credit the 319 photographers *specifically enough*, or merely nominally?
3. Does the statement perform Bowie-expertise (anti-pattern), or address the method as method?
4. Is the tribute-framing honest, or does it instrumentalise Bowie for a methodology demonstration?

## §7. Delivery Log

| Stage | Date | Notes |
|---|---|---|
| Preprod tracker created | 2026-04-05 | this file |
| Draft written (ArtPraxis) | pending | — |
| Operator revision | pending | 2–3 day buffer |
| Submitted to Gordon | target 2026-04-20 | — |
| Acceptance confirmed | pending | — |

## §8. Cross-links

- Output file (ArtPraxis): `exhibitions/2026-bowie-tribute/statement.md`
- Model: [docs/models/spans.md](../docs/models/spans.md)
- Voice signature: [C:/xampp/htdocs/andresclements.com/docs/research/voice-signature.md](C:/xampp/htdocs/andresclements.com/docs/research/voice-signature.md)
- Governance: [docs/methods/METHODOLOGY_CII.md](../docs/methods/METHODOLOGY_CII.md)
- Sibling tracker: [projects/project__eve_song_statement.md](project__eve_song_statement.md)
- bodyTime lineage: [projects/project__bodyTime_exhibition_manual.md](project__bodyTime_exhibition_manual.md)

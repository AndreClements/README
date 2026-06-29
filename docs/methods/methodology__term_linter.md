---
contract:
  title: "The Term Linter — a run-time check on candidate terms"
  version: "0.1.0"
  status: "Draft — held lightly, revisable"
  operator: "André S Clements, Programmer Artist"
  coagent: "theMachine(s)"
  tier: "T3"
  intent: >
    A run-time admissibility check on candidate terms, sibling to the Dignity Linter.
    A coined term is admissible iff it passes all six gates. The linter is the authored
    constraint; the renamed lexicon is the family it yields (PA-Applied: meaning lives in
    the mapping — A1 — so the rule is the deliverable, the terms are its output).
  emerged_from: >
    v0.1.0 → authored in the Term-Linter / lexicon pass (2026-06-28) against the standing
    over-coinage in parametric_authorship_masters.md. Sibling to the Dignity Linter
    (AII/DIOW Maintainer role; aLexicon.md). Counting rule observed: every gate carries
    existing apparatus, no new discipline or citation.
  anchors:
    - "../../README.md"
    - "../../projects/theses/parametric_authorship.md"
    - "METHODOLOGY_CII.md"
    - "voice_signature.md"
    - "../models/aLexicon.md"
  risk_index: 0.35
  spelling: "South African English with UK bias"
  body_check: "PENDING — the read-aloud (§ gate 4) is the operator's to run aloud"
---

# The Term Linter

> **Host ≠ Author.** The gates borrow apparatus already hosted in this repository — SRP and
> Liskov from [SOLID](../lib/SOLID.md) (Robert C. Martin et al.), the counting rule and the
> BODY check from [METHODOLOGY_CII.md](METHODOLOGY_CII.md) and [voice_signature.md](voice_signature.md),
> multipartiality from [MULTI_PARTIALITY.md](../lib/MULTI_PARTIALITY.md) (Ivan Boszormenyi-Nagy).
> Their attribution stays theirs. The *assembly* — six gates pointed at language, run as one
> admissibility check — is the author's, and is held lightly.

A run-time check on **candidate terms**, sibling to the **Dignity Linter** (the AII/DIOW
*Maintainer* role: pre-flight validation before any run). Where the Dignity Linter asserts
that a *run* preserves consent, trace, and refusal, the Term Linter asserts that a *coined
term* names what it claims to name and smuggles nothing. It is **one-slot itself**: it lints
terms, and nothing else.

The frame is **PA-Applied**. We author one constraint — this linter — and let the lexicon be
the family it yields. Meaning lives in the mapping (A1), so the rule is the deliverable; the
renamed terms are its output.

---

## The six gates

A candidate term is **admissible iff it passes all six**. Each gate cross-references its
existing home, so the linter imports no new discipline (the counting rule applies to its own
construction).

| # | Gate | The test | Home it carries |
|---|------|----------|-----------------|
| 1 | **One-slot** | Names exactly one axis. No bleed into a second slot. | name-the-axis; SRP (Single Responsibility) — [SOLID](../lib/SOLID.md) |
| 2 | **No-leak** | Every entailment of the metaphor is true of the target. | Liskov-for-metaphor — [SOLID](../lib/SOLID.md) |
| 3 | **Distinct-at-a-glance** | Distinguishable from its nearest neighbour on a fast read. | the A3 / A3★ collision (the failure this gate exists to catch) |
| 4 | **BODY-check** | Survives being said aloud — lands in the body, not the gloss. | [voice_signature.md](voice_signature.md) §9 — *mark pending; the operator runs it* |
| 5 | **Counting rule** | Carries existing apparatus; imports no new citation or discipline. | [METHODOLOGY_CII.md](METHODOLOGY_CII.md) (CII) |
| 6 | **Dignity-of-frame** | The metaphor must not smuggle a frame that violates the ethic the term serves. | multipartiality applied to language — [MULTI_PARTIALITY.md](../lib/MULTI_PARTIALITY.md) |

### Gate 1 — One-slot

A term names **one axis**. If you can read it as naming a second thing, it has bled. The test
is SRP transposed to vocabulary: *one reason for the term to change*. A term that names both a
*making* and a *reading*, or both a *quantity* and a *quality*, fails — split it or narrow it.

### Gate 2 — No-leak (Liskov for metaphor)

Substitute the **figure** for the **concept** in every sentence the term will appear in. If
anything the figure *implies* is false of the concept, the metaphor has leaked. This is the
Liskov Substitution Principle read for language: a subtype (the metaphor) must be usable
everywhere the supertype (the concept) is, with no surprising falsehood. The canonical leak in
this repository is **"VO2-max of authorship"** (see *Worked example A*).

### Gate 3 — Distinct-at-a-glance

A reader skimming at speed must not confuse the term with its **nearest neighbour**. Two terms
that differ only by a diacritic, a star, or a single letter fail this gate even when each is
individually clean. The repository's standing instance is **A3** (dignity conservation) beside
**A3★** (the beauty claim): two confusable symbols on one fast read, distinct slots wearing
near-identical handles. This gate says: rename one, or kill the collision at the root.

### Gate 4 — BODY-check *(PENDING — operator's)*

The term is **read aloud**. Per [voice_signature.md](voice_signature.md) §9: *"If it doesn't
register in the body or material contact, it's gloss."* A machine cannot run this gate — the
body's veto is the operator's. Every candidate that clears gates 1, 2, 3, 5, 6 is shipped with
a **BODY-check-pending** marker and waits for the reading-aloud before it is held as kept.

### Gate 5 — Counting rule

A new term must **carry apparatus that already exists** in the repository. If admitting it
obliges a new citation, a new discipline, or a new framework, the term has over-reached — the
addition must be justified on a provenance row or the term is cut. (This is the counting rule
from CII, applied to vocabulary growth.)

### Gate 6 — Dignity-of-frame

The metaphor must not smuggle a **frame** that violates the ethic the term is meant to serve.
A handle for a dignity-preserving claim that imports taking, extraction, conquest, or
non-consent fails — the frame contradicts the work. This is multipartiality applied to
language: the term must be able to stand with every party it names without flattening one of
them. The repository's instance is **"loot"** as a candidate handle for the beauty claim (see
*Worked example B*): the word imports the non-consensual taking that the claim's own defeater
exists to exclude.

---

## Worked examples

### A — the VO2-max cut (No-leak failure)

**Candidate:** *"the VO2-max of authorship"* (a ceiling metaphor for authorial reach), seeded
into the masters paper's body-as-spine pass (2026-06-26) and cut in the normalisation pass
(2026-06-28).

**Verdict: CUT.** Fails **Gate 2 (No-leak)**. VO2-max is a *measurable maximum* — a number with
a ceiling you can test to exhaustion. Substitute the figure for the concept: authorship's reach
runs out, in the paper's own frame, at *the sublime* — the unmasterable, the formless, what no
chosen constraint produces. The sublime is defined as **immeasurable**. So the figure implies a
testable ceiling on something the target defines as having none. The entailment is false of the
concept; the metaphor has leaked. (It also strains **Gate 5**: VO2-max imports exercise
physiology as a discipline with no apparatus already carried in the authorship frame.)

> **Note on the register's native home.** The physiology register — stimulus → response →
> adaptation, progressive overload, volume/intensity, deload, form-under-load — is **native and
> admissible** in [philosophy_of_body.md](../models/philosophy_of_body.md) §1 (*The Conditioning
> Loop*), where the body *is* the subject and the figure is literal. It leaks only when
> transposed onto authorship/aesthetics, where the sublime defeater bites. The lint is on the
> **transposition**, not on the register. See the lexicon pass for the catalogue verdict.

### B — the A3★ rename (a full six-gate run)

**Problem:** the beauty claim has no short handle — it is only ever "A3★ / the posited beauty
claim" — and "A3★" itself fails **Gate 3** against its near-neighbour "A3". A handle is needed,
and it must live on the **reception / legibility side** (beauty as the *felt reading* of a
freely-chosen, dignity-preserving constraint), **not** the production / output side.

**Rejected on file:**

| Candidate | Failing gate | Reason |
|-----------|--------------|--------|
| *Constraint Yield* | 1, 2 | Names the *making / averaging* (production side), not the felt reading; "yield" drags agronomic / materials-science baggage that is false of a phenomenological claim. |
| *Constraint Synthesis* | 1, 2 | Production side again; "synthesis" imports a Hegelian dialectical frame (thesis/antithesis/synthesis) the claim does not make. |
| *loot* | 6 | Imports non-consensual taking — exactly what A3★'s dignity defeater exists to exclude. The frame contradicts the ethic. |

The full reception-side candidate scoring and the recommended handle live in the lexicon pass
([parametric_authorship_masters__lexicon_pass.md](../../projects/theses/parametric_authorship_masters__lexicon_pass.md)),
where the lead recommendation (**Legible Grace**, BODY-check pending) is run against all six
gates with *The Enabling Read* as the lowest-leak alternative.

---

## How to run the linter

1. Write the candidate term and the **one slot** it is meant to name.
2. Run gates 1, 2, 3, 5, 6 — each is a pass/fail with a one-line reason on fail.
3. If all five pass, ship with a **BODY-check-pending** marker for gate 4.
4. The operator reads it aloud. Pass → kept. Fail → back to candidates.
5. Record the verdict on a provenance row (term · slot · gate(s) failed · status · home).

---

## Provenance

| claim / asset | source | tier | validation | notes |
|---|---|---|---|---|
| the six gates as one admissibility check on terms | Clements, this pass (2026-06-28) | Copper (self) | operator-authored | assembly is the author's; gates borrowed |
| One-slot ← SRP; No-leak ← Liskov | Martin et al. (via [SOLID](../lib/SOLID.md)) | Gold (hosted) | hosted-entry | Host ≠ Author |
| Counting rule; BODY check | [METHODOLOGY_CII.md](METHODOLOGY_CII.md); [voice_signature.md](voice_signature.md) §9 | Copper (repo) | internal cross-ref | BODY check pending |
| Dignity-of-frame ← multipartiality | Boszormenyi-Nagy (via [MULTI_PARTIALITY.md](../lib/MULTI_PARTIALITY.md)) | Gold (hosted) | hosted-entry | Host ≠ Author |
| VO2-max cut; A3★ rejected candidates | Clements, this pass | Copper (self) | operator-authored | worked examples |

> **Status: held lightly, revisable.** This linter is a tool, not a law. It is offered as a
> lens on the lexicon, not a gate anyone but the answerable maker is obliged to pass through.
> **BODY check pending** on this document itself — the operator's to run aloud.

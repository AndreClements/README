# Upstream tie-back / promotion — *Composed, using Parametric Authorship* → thesis

> **Proposal for review. Diff-style, not applied.** Nothing here is committed or written into the
> thesis. Tier T3. Counting rule held. The answerable maker signs the gate.
>
> Companion to [parametric_authorship_masters.md](parametric_authorship_masters.md) and the
> [lexicon pass](parametric_authorship_masters__lexicon_pass.md). Target file:
> [parametric_authorship.md](parametric_authorship.md) §2.5 (axioms A0–A7, lines 69–100).

---

## Why this runs upward

The paper has generated structure **above** the thesis's axioms. Provenance row 14 logs four
constructs as *"this pass"* — authored in the paper, not inherited. The thesis is stale with
respect to them. So the tie-back promotes **upward**: the paper is, for these constructs, the
source; the thesis is the target. README carries no axiom list (only the meat-noise couplet), so
all axiom-level promotions target the thesis §2.5 alone.

Three constructs are assessed for **promote vs. keep-local**, plus propagation of the A3★ rename
and the A3-code decision so paper and thesis do not drift.

---

## Construct 1 — the two-tier cut → **promote as a meta-axiom above A1–A7**

**Decision: promote.** The two-tier cut (constitutive/unfalsifiable vs. scoped/falsifiable) is
not a peer of A1–A7 — it governs **how each axiom is read**. A0 (equation-as-machine) and A1
(map-over-mark) are constitutive: they forbid no observation, and are judged by fertility and
coherence. A3 (dignity conservation) and A5 (withdrawal) are scoped: they carry defeaters and
answer to evidence. The cut is the rule that keeps the unfalsifiable axioms from borrowing the
empirical credit of the scoped ones, and the scoped ones from inheriting the constitutive ones'
immunity to disproof. That is a meta-axiom.

> **Proposed diff — insert before A0 (thesis §2.5, before line 73):**
>
> ```
> * **A✶ — The Two-Tier Cut (meta-axiom).** `read(axiom) := tier(axiom) ∈ {constitutive, scoped}`
>   (Every axiom below is read on one of two tiers. **Constitutive** axioms forbid no
>   observation; they are judged by fertility and coherence, not by a crucial experiment.
>   **Scoped** axioms carry defeaters, name their boundaries, and answer to evidence. The cut
>   keeps constitutive claims from claiming empirical credit, and keeps scoped claims from
>   claiming immunity to disproof. Source: masters paper §2, this pass — Clements, refactor
>   review; held lightly.)
> ```
>
> **Proposed diff — re-tier A0–A7 by appending a tier tag to each (thesis §2.5):**
>
> | Axiom | Proposed tier | Rationale |
> |---|---|---|
> | A0 Equation-as-Machine | **constitutive** | forbids no observation |
> | A1 Map-over-Mark | **constitutive** | a claim about where meaning lives |
> | A2 Execution-First Form | **constitutive** | a claim about the nature of form |
> | A3 Dignity Conservation | **scoped** | carries the `η` floor and the collapse defeater |
> | A4 Defaults Author | **scoped** | testable: disclose-and-bound or co-authorship stands |
> | A5 Withdrawal Right | **scoped** | testable: exit is live or it is not |
> | A6 Provenance-as-Trace | **scoped** | testable against the ledger |
> | A7 Dependency Inversion of Dignity | **scoped** | testable: the adapter `κ` exists or it does not |
>
> (Notation `A✶` chosen to be **distinct-at-a-glance** from `A3★`: a six-point star for the
> meta-axiom, the existing five-point `★` reserved for the paper's beauty code. Gate 3 applied to
> the promotion itself. The operator may prefer `A*`, `A0′`, or a named tier header — flagged.)

---

## Construct 2 — authorship distributes / responsibility concentrates → **promote as axiom A8**

**Decision: promote (own axiom).** This currently rests on A4 (defaults author) + A6
(provenance) + DIOW, but it is **entailed by none of them singly**: A4 distributes authorship,
A6 records the trace, DIOW inverts the dependency — none of the three says *the account is owed
by the one who set the control surfaces and launched the run*. The "sailor authors the set of the
sails and not the wind, and answers for the voyage all the same" formulation is load-bearing in
the paper (§2) and is its own principle. It earns an axiom.

> **Proposed diff — append after A7 (thesis §2.5, after line 95):**
>
> ```
> * **A8 — The Answerable Maker (scoped).** `author(𝒜) = distributed; account(𝒜) = concentrated`
>   (Authorship may distribute across substrates, defaults, and co-agents (A4); the account is
>   owed by the one who set the control surfaces and chose to launch the run. The sailor authors
>   the set of the sails, not the wind, and answers for the voyage all the same. Distinct from A4
>   (which distributes authorship) and A6 (which records the trace): A8 locates *responsibility*,
>   which neither does. Source: masters paper §2, this pass; held lightly.)
> ```
>
> **Alternative considered (corollary, not axiom):** A8 could be filed as a corollary to A4+A6
> (alongside C1, C2). Rejected because a corollary reads as *derived*, and the paper's point is
> that responsibility does **not** derive from the distribution — it runs the other way. Surfaced
> for the operator's call.

---

## Construct 3 — emergent (not imported, not epiphenomenal) ethics → **reconcile A3 upstream**

**Decision: reconcile, do not add an axiom.** This does not need its own axiom; it changes the
**status note** on A3. The paper holds dignity as arising *within* the coupling of the parties —
not imported from outside the system (not a deontic axiom dropped in), and not epiphenomenal (not
a side-effect with no causal weight). A3 in the thesis currently reads as a conserved invariant
without a status on where it comes from. Add one line.

> **Proposed diff — append to A3's gloss (thesis §2.5, line 83):**
>
> **Before (end of A3 gloss):** *"…η is context-specific and declared in the assembly header."*
>
> **After:** *"…η is context-specific and declared in the assembly header. **Status: emergent —
> dignity arises within the coupling of the parties, neither imported as an external deontic
> axiom nor epiphenomenal to the run; it has causal weight (it can zero Auth★) precisely because
> it is constitutive of the coupling, not added to it.** Source: masters paper §2, this pass."*

---

## Construct 4 — propagate the rename + A3-code decision (drift check)

So the paper and the thesis do not drift, the [lexicon-pass](parametric_authorship_masters__lexicon_pass.md)
decisions must land upstream too:

1. **A3★ → Legible Grace.** A3★ is currently **paper-only** (provenance row 12). If the thesis
   adopts the beauty claim at all, it lands **renamed**: *Legible Grace*, with the code `A3★`
   retained as the short tag. Until it lands in the thesis, the paper's first-mention
   parenthetical reads **"(coded A3★)"**, not "(A3★ in the thesis)". The moment the thesis adopts
   it, flip every paper parenthetical to **"(A3★ in the thesis)"** in the same commit — that is
   the drift check.
2. **A3-code drop is paper-local.** The thesis **keeps** the formal A3 code (it is used there —
   `conserve(D)`, Auth★). Only the *paper* drops the local code (where A3 is invoked, not tested).
   No thesis change for this; the asymmetry is intentional and is itself recorded here so a future
   reader does not "fix" the paper back into collision.
3. **Naming hygiene:** the meta-axiom uses `A✶` (six-point) specifically to stay
   distinct-at-a-glance from `A3★` (five-point). If the thesis adopts *Legible Grace* under `A3★`,
   the two stars must not be confusable — Gate 3 governs the thesis too.

---

## Drift-check summary (paper ↔ thesis must agree)

| Item | Paper says | Thesis says (post-promotion) | Agree? |
|---|---|---|---|
| Beauty handle | **Legible Grace** (coded A3★) | **Legible Grace** (coded A3★) | ✓ same handle |
| A3 formal code | dropped locally; cited to thesis | **kept** (used there) | ✓ intentional asymmetry, recorded |
| Two-tier cut | head of §2 | **A✶** meta-axiom above A1–A7 | ✓ |
| Answerable maker | §2 prose | **A8** | ✓ |
| Emergent ethic | §2 prose | **A3 status note** | ✓ |
| Star notation | `★` (beauty) | `A✶` (meta) ≠ `A3★` (beauty) | ✓ distinct-at-a-glance |

---

## Provenance (this pass)

| claim / asset | source | tier | validation | notes |
|---|---|---|---|---|
| two-tier cut as meta-axiom A✶ | masters §2 (Clements, refactor review) | Copper (self) | operator-authored | re-tiers A0–A7 |
| answerable maker as A8 | masters §2 | Copper (self) | operator-authored | not entailed by A4/A6 singly |
| emergent-ethic A3 status note | masters §2 | Copper (self) | operator-authored | reconcile, no new axiom |
| rename/A3 propagation + drift check | this pass | Copper (self) | operator-authored | paper ↔ thesis agreement |

> **BODY check pending** on every proposed axiom string — the operator reads `A✶`, `A8`, and the
> A3 status line aloud before any land. Held lightly, revisable. Host ≠ Author: the borrowed
> apparatus (Popper's falsifiability, autopoiesis, SOLID/DIP) keeps its attribution in the thesis
> as it already does; only the *assembly above the axioms* is promoted here.

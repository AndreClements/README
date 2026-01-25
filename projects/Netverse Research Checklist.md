# NetVerse — SRII Research & Implementation Checklist (Librarian Notes)
**File:** `docs/research/SRII-NetVerse_Research_Checklist.md`  
**Version:** 0.2  
**Last updated:** 2025-12-26  
**Purpose:** Keep the philosophy/physics/infra/math stack *tethered* to implementable artifacts for a persistent multi-user “words-as-objects” environment (Laravel 11 + Vue 3 + PixiJS + Matter.js; “maculate” constraints treated as design material).

---

## How to use this file
- Tick resources as you actually watch/read them.
- After each resource, extract **2–5 “implementables”** (rules, parameters, UI behaviors, data contracts).
- Treat “theoretical” items as *spec pressure*: they must cash out in **SRII invariants, tests, or UI affordances**.

### Priority legend
- **P0** = direct leverage (should inform immediate build decisions)
- **P1** = strengthens conceptual/technical framing (useful but not gating)
- **P2** = optional resonance / metaphor fuel (only if it earns its keep)

---

## 0) Anchor constraints (do not drift)
- [ ] **A0 (P0) Define SRII invariants**: what must *always* be true in the space (e.g., bounded mass ratios, stable sleep, snap constraints, conflict rules).
- [ ] **A1 (P0) Define persistence contract**: what is stored (state vs events), write frequency, reconciliation strategy, decay/pruning policy.
- [ ] **A2 (P0) Define multi-user concurrency contract**: authoritative server vs soft authority; latency posture; conflict resolution; “ownership/hold” semantics per word-object.

---

## 1) Philosophical & technical crossovers (OOO → software objects)
**Focus:** “Word-object” is not just UI text; it’s an agentic unit with persistent state + causal affordances.

### Core resources
- [ ] **R01 (P1) WATCH:** Object-Oriented Ontology (YouTube). Extract the minimal “flatness” rules you actually want SRII to embody. *(Ref: R01)*
- [ ] **R02 (P0) READ:** Ian Bogost — “What is Object-Oriented Ontology?” Use as a calibration text (short, direct). *(Ref: R02)*
- [ ] **R03 (P0) WATCH:** Ian Bogost lecture (Unit Operations / procedural rhetoric). Mine for “unit operation” framing you can translate into system verbs. *(Ref: R03)*
- [ ] **R04 (P1) WATCH:** Play Anything (Bogost). Use only if it yields concrete constraints on platform/materiality. *(Ref: R04)*

### Extractables (write these down after R02/R03)
- [ ] **A3 (P0) Word-object ontology sheet (1 page):**
  - intrinsic props (id, glyphs, mass, friction profile, semantic tags, provenance)
  - relational props (attachments, fields, cluster membership, gravity wells)
  - withdrawn props (stuff not shown but still causal: audit flags, decay timers, “charge”, permissions)
- [ ] **A4 (P0) SRII unit operations list:** 8–20 verbs max (e.g., *attract, repel, latch, decay, echo, occlude, align, resist, entangle*). Each verb maps to physics + persistence + UI feedback.
- [ ] **A5 (P1) Platform-materiality stance:** explicit sentence-level stance: *what constraints are celebrated vs mitigated* (so you don’t accidentally “cloud-native” your maculate thesis away).

---

## 2) Physicality in UI (game-feel without “juicy mush”)
**Focus:** physical plausibility is less important than *stable, legible, repeatable* haptics/physics.

### Core resources
- [ ] **R06 (P0) WATCH:** “Designing with Physics: Bend the Physics Engine to Your Will” (mass ratios, stability, jitter failure modes). *(Ref: R06)*
- [ ] **R07 (P0) WATCH:** “Dots That Go for Walks” (minimal UI that still feels alive; merging UI into objects; invisible ink). *(Ref: R07)*
- [ ] **R08 (P2) WATCH:** Valve biofeedback talk (only if you truly intend physiology loops). *(Ref: R08)*

### Implementation checkpoints
- [ ] **A6 (P0) Mass ratio policy:** choose a bounded range (e.g., 1:10 or 1:20) and *enforce it* even if semantic weights want extremes. Document the mapping.
- [ ] **A7 (P0) Drag model decision:** linear vs quadratic vs hybrid; define *why* (feel + stability + CPU). Add a test: “flick distance is predictable.”
- [ ] **A8 (P0) Sleep & settle policy:** how/when words go to sleep; wake conditions; how sleeping interacts with multi-user updates.
- [ ] **A9 (P0) “Mono-button” UI spec:** word = handle = control surface; no external gizmos unless they earn necessity.
- [ ] **A10 (P0) Invisible ink palette:** list the non-visual signals you will allow (micro-sound, micro-anim, subtle glow, haptic if available). Tie each to a *state transition*.

---

## 3) Hyperstrate (multi-agent + multi-user negotiation)
**Focus:** orchestration must become **contracts + audit trails**, not vibes. “No hallucinations” becomes “bounded output + validation + provenance.”

### Core resources
- [ ] **R11 (P0) READ:** Hypergames paper (arXiv). Extract 2–3 usable patterns for misaligned perceptions + nested beliefs. *(Ref: R11)*
- [ ] **R10 (P1) WATCH:** Teradata Possible 2025: “Orchestrating Multi-Agent Systems …” (useful for architecture vocabulary). *(Ref: R10)*
- [ ] **R14 (P1) WATCH:** “Google Agentspace in 3 Minutes” (only for quick mental model). *(Ref: R14)*

### Caution / low-signal items (optional)
- [ ] **R09 (P2) WATCH:** “Multi Agent Orchestration …” (YouTube short). *(Ref: R09)*
- [ ] **R12 (P2) WATCH:** “Orchestrated Agents: Omni-channel …” *(Ref: R12)*
- [ ] **R13 (P2) WATCH:** Agentspace short. *(Ref: R13)*

### Implementation checkpoints
- [ ] **A11 (P0) Agent roles contract (one table):**
  - Spatial Auditor (SRII): may *nudge*, may *veto*, may *annotate*
  - Semantic Suggestor: may *propose*, never *insert without user consent*
  - Mediator: resolves conflicts via explicit policy (not hidden heuristics)
- [ ] **A12 (P0) Provenance + consent rule:** every CI suggestion carries: source, rationale, confidence, and “why now.” No anonymous edits.
- [ ] **A13 (P0) Negotiation loop spec:** when human action conflicts with SRII, what happens?
  - allowed: soft snap, hinting, delayed settle, “resistance” feel
  - forbidden: silent teleportation, unexplained overrides
- [ ] **A14 (P0) Payoff matrices (small):** define what each agent optimizes (e.g., stability, legibility, novelty, semantic coherence), and what it must not optimize (e.g., engagement hacks).

---

## 4) Infrastructure & aesthetics (maculate LAMP as material)
**Focus:** “maculate” must show up as *designed constraints*: pacing, decay, visible latency texture, resource-aware pruning.

### Core resources
- [ ] **R05 (P1) WATCH:** Intro to LAMP (baseline refresher; low depth but aligns vocabulary). *(Ref: R05)*
- [ ] **R15 (P2) WATCH:** LAMP shorts (only if it yields a framing sentence). *(Ref: R15)*

### Metaphor-only (treat as optional / dangerous)
- [ ] **R16 (P2) READ:** Scarlet Letter PDF (maculate semantics / metaphor mining only). *(Ref: R16)*
- [ ] **R17 (P2) READ:** Eliot/Lawrence thesis (metaphor mining only). *(Ref: R17)*
- [ ] **R18 (P2) READ:** Basketball & Philosophy PDF (“maculate reception” metaphor only). *(Ref: R18)*

### Implementation checkpoints
- [ ] **A15 (P0) Maculate pacing rules:** define latency budgets and how they surface (e.g., “heavier words spawn slower” *only if consistent and legible*).
- [ ] **A16 (P0) Pruning/decay protocol:** what “rots” (history depth, micro-events, old attachments), on what schedule, with what user-facing traces.
- [ ] **A17 (P0) Persistence write strategy:** snapshot cadence; delta compression; background cleanup; idempotent writes; recovery plan.
- [ ] **A18 (P1) “Glitch as event” policy:** when you accept jitter/deflection as “maculate character” vs when you treat it as a bug. Put thresholds in writing.

---

## 5) Mathematical/compositional logic (Dynamic Symmetry + √2 armatures)
**Focus:** avoid “math theatre.” Use geometry only where it yields better layout stability, snap logic, or emergent compositional affordances.

### Core resources
- [ ] **R19 (P1) WATCH:** Dynamic symmetry for organic shapes. *(Ref: R19)*
- [ ] **R20 (P1) WATCH:** Dynamic symmetry grid package intro. *(Ref: R20)*
- [ ] **R21 (P1) WATCH:** Fundamentals of dynamic symmetry. *(Ref: R21)*
- [ ] **R25 (P1) READ:** MIT “Inhabiting the Square” (geometry as path/place). *(Ref: R25)*

### Secondary / use if you actually implement GA/layout optimisation
- [ ] **R24 (P2) READ:** Algorithmic support of creative architectural design (GA for layout). *(Ref: R24)*
- [ ] **R23 (P2) READ:** Symmetry & measuring paper (pedagogy; might be too tangential). *(Ref: R23)*
- [ ] **R22 (P2) READ:** StudySmarter “Dynamic balance” (likely shallow). *(Ref: R22)*

### Implementation checkpoints
- [ ] **A19 (P0) √2 grid spec:** coordinate system, snap granularity, and how it coexists with physics (snap-after-release vs continuous constraint).
- [ ] **A20 (P0) Armature affordances:** what the armature *does* (attractors, lanes, “gamut” rails, compositional fields).
- [ ] **A21 (P1) Composition telemetry:** choose measurable proxies (cluster density, alignment score, overlap entropy) to let SRII “feel” composition without dictating taste.

---

## 6) Synthesis deliverables (turn research into build artefacts)
**These are the outputs that keep SRII from staying literature.**
- [ ] **D1 (P0) SRII Physics Profile v1:** masses, friction, drag, restitution, sleep thresholds, constraints; includes “stability limits” and failure cases.
- [ ] **D2 (P0) Object model + persistence schema:** minimal tables/events; includes provenance fields; includes pruning.
- [ ] **D3 (P0) Multi-user interaction protocol:** ownership/locks, conflict resolution, reconciliation, latency posture.
- [ ] **D4 (P0) UI/UX feel spec:** gestures, feedback, “merged UI,” invisible ink palette, accessibility constraints.
- [ ] **D5 (P1) Agent contract spec:** roles, permissions, validation gates, logging/audit trails, consent semantics.

---

## Resource index (copy/paste URLs)
> Note: URLs are kept here to reduce clutter in the checklist.

```text
R01 https://www.youtube.com/watch?v=hYye7e32-90
R02 https://bogost.com/writing/blog/what_is_objectoriented_ontolog/
R03 https://www.youtube.com/watch?v=HOo3HIhAwDY
R04 https://www.youtube.com/watch?v=83FbAKf7wUQ
R05 https://www.youtube.com/watch?v=B-3xgz3C9ZQ
R06 https://www.youtube.com/watch?v=NwPIoVW65pE
R07 https://www.youtube.com/watch?v=VY8TsXKRySU
R08 https://www.youtube.com/watch?v=MdT7Qx2oRAg
R09 https://m.youtube.com/shorts/M22ODRXr0mI
R10 https://www.youtube.com/watch?v=yplrB0B8zxw
R11 https://arxiv.org/pdf/2507.19593
R12 https://www.youtube.com/watch?v=VLSJOOrYH2A
R13 https://www.youtube.com/shorts/jIXsb8nSYcY
R14 https://www.youtube.com/watch?v=DQ2x88_EBDQ
R15 https://www.youtube.com/watch?v=1bXjo9u5AdU
R16 https://uerjundergradslit.files.wordpress.com/2019/07/the-scarlet-letter-websters-thesaurus-edition.pdf
R17 https://researchcommons.waikato.ac.nz/bitstreams/e110a1a9-ec12-4315-b872-179fa05c651f/download
R18 https://elearning.shisu.edu.cn/pluginfile.php/71578/mod_folder/content/0/Basketball%20and%20Philosophy%20-%20Jerry%20L.%20Walls%2C%20Gregory%20Bassham%2C%20eds.pdf?forcedownload=1
R19 https://www.youtube.com/watch?v=gLh63xndFBA
R20 https://www.youtube.com/watch?v=ySEVz1f2Qpg
R21 https://www.youtube.com/watch?v=mE2UPGaiRMw
R22 https://www.studysmarter.co.uk/explanations/art-and-design/graphic-design/dynamic-balance/
R23 https://pdfs.semanticscholar.org/3997/59562a0059cd016b6b31ccf2d752a3658d39.pdf
R24 https://www.researchgate.net/publication/255606960_Algorithmic_Support_of_Creative_Architectural_Design
R25 https://dspace.mit.edu/bitstream/handle/1721.1/74743/09038812-MIT.pdf?sequence=2

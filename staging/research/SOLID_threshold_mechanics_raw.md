# SOLID as Threshold Mechanics — Raw Research Archive

> **Archive Note:** This document preserves the original research input for the SOLID Threshold Mechanics integration project. The framing has been transposed from "Visual Grammar" to "Threshold Mechanics" during planning, but the core content remains intact.

---

```yaml
archive:
  original_title: "SOLID as Visual Grammar — A Salutogenic + Hyperstrate Meta-Research Study of Modular Coherence in Information Design"
  reframed_as: "SOLID as Threshold Mechanics"
  archived: 2026-02-03
  session: 1
  gate: "T1 (Skirmish)"
  status: "raw_input"
```

---

## 1) Abstract

This study re-specifies SOLID (originally object-oriented software design heuristics) as a visual-communication grammar for building and maintaining coherent symbol systems across time, media, and institutions. The core claim is not "design should become software," but that SOLID names a family of anti-entropy constraints that already appear—implicitly—in strong information design: modular responsibilities, extension without rework, substitutable components, audience-specific interfaces, and abstraction-first portability.

Using the Salutogenesis lens (health as continuous yield; SOC = comprehensibility × manageability × meaningfulness) and the Philosophy of Hyperstrate (sovereign nodes + protocolled edges + ledgered field), the study proposes an evaluative instrument: SOLID-Lint for Visual Systems, supported by (i) genealogical analysis of SOLID's primary sources and predecessors, (ii) systematic review of open-access empirical/design research on comprehension and modular systems practice, and (iii) Research-through-Design pilots that publish protocols, ledgers, and dissent.

---

## 2) Problem Statement (Design-First)

Contemporary visual systems (identities, wayfinding, dashboards, exhibits, public information, UI design systems) are living fields: they drift, fork, accrete exceptions, and get edited by many hands. The failure mode is familiar: the system stops being readable, then stops being maintainable, then becomes coercive (audiences forced to decode noise; teams forced into brittle workarounds).

This proposal asks:

- What does SOLID become when the "objects" are visual modules and the "runtime" is human interpretation inside institutional logistics?
- Can "health" of a visual system be operationalised as continuous yield of coherence under perturbation (changes in medium, audience, policy, urgency, authorship)?
- Which SOLID constraints improve SOC (comprehensibility/manageability/meaningfulness) in real visual systems, and what are the trade-offs (over-modularity, loss of affect, fragmentation of voice)?

---

## 3) Minimal Lineage (Software Roots, Pulled into Design)

SOLID's "authorship context" matters here because you'll use it as a controlled import: you are transposing a principle-set born in one field into another.

- The principles were consolidated and popularized in early-2000s OO design discourse by **Robert C. Martin**, with canonical early articulation in *Design Principles and Design Patterns* (2000).
- Key antecedents are older and more foundational than the mnemonic: subtyping contracts (**Barbara Liskov**), open/closed thinking (**Bertrand Meyer**), and deeper modularity/information-hiding lineage often traced to **Parnas** (useful as the "pre-SOLID" bridge when speaking to design academia).
- For design academia positioning, you can treat SOLID as a "technical liberal art import" consistent with **Richard Buchanan**'s framing of design's integrative scope and "wickedness."

---

## 4) The Core Transposition (Hyperstrate-Native)

### 4.1 The Visual Field as Hyperstrate

- **Node (Sensation):** sovereign interpreters and makers (designer, viewer, curator, editor, developer, institution).
- **Edge (Protocol):** shared visual language rules: grids, typographic styles, icon semantics, accessibility rules, critique conventions, naming/versioning, file structures, production constraints.
- **Field (Hyperstrate):** the interlocked defaults: brand policy, publishing logistics, platform constraints, cultural codes, legal constraints, distribution channels.

**Sovereign Interface (transposed into design ops):**

- **Header:** intent + audience + context digest (what is this for, who is it for, where will it live).
- **Ledger:** change log + rationale + dissent + observed failures in the field.
- **Exit:** opt-out / alternate representations / graceful deprecation paths.
- **Lint:** preflight checks (semantic consistency, contrast, legibility, claims, accessibility, token compliance).

This is the scaffolding that keeps "co-authorship" legible and verifiable under drift—i.e., keeps the field "real" in Hyperstrate terms.

### 4.2 Salutogenesis as the Evaluation Spine

Here "health" is not aesthetic purity; it's whether the system keeps yielding coherence under stress.

- **Comprehensibility:** can people reliably parse it?
- **Manageability:** can it be changed without cascading breakage? (CET discipline: shortest dependency chain that remains valuable)
- **Meaningfulness:** does it preserve dignity and purpose rather than turning into coercive noise?

Empirical footholds for comprehensibility in visual systems exist (e.g., eye-tracking work on sketchnotes/infographics as reading processes).

---

## 5) SOLID Re-Specified for Information Design (The 74% "Ideas" Payload)

Below is the refactor that keeps SOLID about applied aesthetics and interpretation, not code cosplay.

### S — SRP as "Single Communicative Responsibility Per Module"

A visual module (pictogram, annotation style, axis treatment, caption block, wayfinding arrow, alert pattern) should have one primary reason to change: its communicative function.

- **Failure mode:** "god components" (one visual device trying to do identity + instruction + decoration + legal disclaimer) → noise, misreadings, fragile edits.
- **Salutogenic effect:** raises comprehensibility by preserving signal boundaries.

SRP's original formulation ("reason to change") is explicitly stated in Martin's essays; your move is to treat "reason" as communicative responsibility rather than feature responsibility.

### O — OCP as "Extend the Visual Language Without Rewriting Its Core"

Strong visual systems evolve by adding components and contexts (new posters, new pages, new signage situations) without breaking existing semantics.

- **Design-systems analogue:** new component variants + tokens, rather than ad-hoc edits that mutate core meanings.
- **Hyperstrate effect:** preserves ledger continuity; minimizes traumatic rewrites (invariants survive).

### L — LSP as "Substitutability of Sign-Components Under the Same Promise"

If two visual components claim to represent the same function (two warning icons; two chart encodings; two headline styles), then substituting one for the other should not violate the viewer's expectations.

- **Failure mode:** semantic drift disguised as style: "looks consistent" but behaves inconsistently.
- **Method hook:** test via controlled interpretation tasks (misclassification rates; time-to-correct-read; eye-movement patterns).

### I — ISP as "Audience-Specific, Task-Specific Interfaces"

Do not force audiences to depend on visual information they do not use.

- In infographics: separate "fast scan" layer from "deep read" layer; don't force everyone through the legend labyrinth.
- In wayfinding: don't make local navigation depend on city-scale maps.
- **CET mapping:** keep dependency chains short; keep value ≥ θ; keep risk ≤ τ.

### D — DIP as "Abstraction-First Portability Across Media and Institutions"

High-level meaning structures should not depend on low-level production particulars.

- **Design systems framing:** principles + semantic tokens + constraints ("danger", "secondary action", "caption") precede any specific typeface, colour value, or medium.
- **Hyperstrate effect:** protocol survives peer churn (staff changes, vendors, platform migrations).

This aligns with observed design-systems practice as a sociotechnical maintenance problem (not merely a component library).

### The Critique (So It Stays Masters-Level, Not Devotional)

SOLID, over-applied, can produce sterile modularism: fragmented voice, loss of productive ambiguity, excessive linting that kills local invention. Your Hyperstrate lens already contains the remedy: Δ★ transitions (declared breaks), logged dissent, and CET tuning (short chains, but not paranoid isolation).

---

## 6) Methods (Design Research–Legible)

### 6.1 Meta-Research Components

- **Genealogy / conceptual analysis:** SOLID primary texts + modularity predecessors, translated into semiotic/visual terms.
- **Systematic review (open access priority)** spanning:
  - design systems maintenance/practice studies (living systems under drift),
  - modularity/interface literature (interfaces as boundaries enabling interchangeability),
  - comprehension studies relevant to information design (eye-tracking / reading dynamics).

### 6.2 Practice-Based / Research-through-Design Spine

Use established arts/design research framings rather than importing "lab science theatre":

- **Christopher Frayling's** "research for/into/through" art & design framing as the methodological legitimation.
- **RtD formalization/critique (Zimmerman et al.)** to structure claims from artifacts into discussable knowledge.
- **Optional local anchoring:** practice-based design research framing (UJ/DEFSA doc) to keep committee alignment tight if you're in SA contexts.

### 6.3 The Instrument: SOLID-Lint for Visual Systems (Draft Spec)

- **Unit of analysis:** a visual system (identity, signage, editorial system, dashboard language, exhibition didactics).
- **Data:** artifacts + version history + constraints + critique notes + observed failures in the wild.
- **Outputs:** a "field ledger" + probe results + dissent log.

**Probes (examples):**

- **ε-nudge:** change one token/rule (e.g., warning colour, caption style) → measure substitution failures and downstream breakage.
- **context-drift watch:** move the system into a new medium (print → screen → spatial) → does meaning remain within ±ε?
- **peer-swap invariance:** different designers execute the same protocol → do results remain recognizably equivalent?
- **exit-liveness:** can audiences access alternate representations (language level, accessibility, low-bandwidth, low-literacy) without being punished by the system?

---

## 7) "Novel Applications" (Still Trans-Disciplinary, But Exported from Design)

These are framed as design-led exports rather than "software colonizes everything":

- **Exhibition didactics as ISP + LSP:** layered labels where the "fast layer" and "deep layer" are substitutable without contradiction; dissent is logged (curatorial Hyperstrate).
- **Civic emergency communication as DIP:** semantic-first iconography + language-independent abstraction layers, portable across print/screen/space under stress.
- **Academic argumentation as OCP:** thesis diagrams and conceptual schemas treated as an extendable visual language rather than one-off figures—new chapters extend without rewriting the system.
- **Brand identity as declared Δ★:** controlled breaks (seasonal campaigns, collaborations) are treated as explicit transitions with ledgered rationale, avoiding silent semantic drift.
- **Generative visual systems with SRP constraints:** generative art/design where modules have single communicative roles, enabling controlled recomposition without semiotic collapse.

Merit validation is straightforward: do these improve SOC proxies (comprehension + manageable change + perceived meaning) without over-modularizing the voice? Use probes + user studies + committee-readable documentation.

---

## 8) Short Quotation Set (Committee-Safe, <25 Words Each)

- "Indeterminacy implies that there are no definitive conditions or limits to design…"
- "Practice-led research is 'Research in which… creative practices… play an instrumental part in an inquiry.'"
- "Research through design… employs methods and processes from design practice as a legitimate…"
- "Interfaces… are essential… playing an important role in… interchangeability."

---

# Part 2: Object of Study & Meta-Research

## 1) Object of Study

SOLID = a bundled set of five design constraints that bias systems toward local coherence, controlled variation, and dependency discipline:

| Principle | Full Name |
|-----------|-----------|
| **SRP** | Single Responsibility Principle |
| **OCP** | Open–Closed Principle |
| **LSP** | Liskov Substitution Principle |
| **ISP** | Interface Segregation Principle |
| **DIP** | Dependency Inversion Principle |

**Canonical synthesis paper:** *Design Principles and Design Patterns*

Authorship context is mostly Robert C. Martin writing for Object Mentor audiences, during the 1990s OO/principles/patterns consolidation (Booch/Rumbaugh/UML era is visible directly in the ISP paper's framing).

---

## 2) Research Aim and Meta-Research Stance

### Aim

To study SOLID as:
1. a historical design-knowledge bundle (how it formed, what it absorbed, what it left out), and
2. a portable "constraint grammar" that can be transposed into non-software domains without turning into motivational mush.

### Why "Meta-Research" (Not Just "Literature Review")?

Because SOLID operates as normative infrastructure: it shapes what counts as "good design," what gets rewarded in pedagogy, what becomes legible in code review, and how "maintainability" is narrativized. Meta-research asks: what evidence exists, what rhetoric is used, what is measured, what becomes invisible, and how the bundle mutates across contexts?

---

## 3) Genealogy and Authorship Context

### 3.1 Primary Lineage (Software/Design)

- Martin's principle essays (mid-90s) were pragmatic guidance for engineers "in the trenches" (explicit in the ISP paper's intro).
- The 2000 paper consolidates the principles, ties them to dependency management, and explicitly frames DIP as a primary mechanism behind architecture/component design.

### 3.2 External Influences (Conceptual)

- **OCP** is explicitly attributed back to **Bertrand Meyer** (Design by Contract / OO construction lineage) even in later commentary.
- **LSP** has a formal lineage in **Barbara Liskov's** "Data Abstraction and Hierarchy" (1987) and the later behavioral notion with Jeannette Wing (1994).

### 3.3 Evidence Base (What We Can Responsibly Claim)

Peer-reviewed, open access evidence is still relatively sparse for SOLID-as-a-bundle, but there is solid experimental work suggesting benefits for comprehension/modularity in at least one modern context:

- Controlled experiment (open access via ACM full text + author PDF) reporting improved understanding/modularity / reduced coupling when SOLID refactoring is applied to ML code.
- Also: microservices literature sometimes reframes the principle-space (e.g., "IDEALS rather than SOLID"), useful as a critique/translation lens.

---

## 4) Impact and Philosophical Implications (~75%)

I'll treat SOLID as a set of **boundary operators**: each principle is less a rule and more a way of drawing/maintaining boundaries that regulate change, responsibility, substitution, and dependency flow.

### 4.1 SOLID as "Coherence Engineering" (Salutogenic Transposition)

Your salutogenic lens foregrounds coherence, comprehensibility, manageability, and meaningfulness—not "maximum performance" or "purity," but systems people can live inside without constant cognitive injury.

**Transposition claim:** SOLID increases a system's Sense of Coherence when applied as anti-chaos constraints rather than as ideology.

- **Comprehensibility:** SRP/ISP reduce interpretive entropy: fewer mixed motives per unit; fewer "fat contracts" per client.
- **Manageability:** DIP/OCP localize change pressure; you can intervene without global breakage (or at least you can predict where breakage will occur).
- **Meaningfulness:** LSP and SRP operationalize "promises kept" (substitutability; responsibility clarity). This becomes ethical as well as technical: it constrains deceptive structure.

**Interpretation:** SOLID is not merely maintainability doctrine; it's a health model for cognitive work (reducing chronic stressors like surprise coupling and promiscuous responsibility).

### 4.2 SOLID as an Ethics of Promises (LSP/DIP Especially)

A useful philosophical pivot: design is the making of promises under change.

- **LSP** is a theory of non-betrayal: if you claim "is-a" / subtype, you inherit obligations; you may not smuggle contradiction via strengthened preconditions or weakened postconditions.
- **DIP** flips the moral direction of dependence: high-level policy shouldn't kneel to low-level details; details should conform to abstractions shaped by stable intent.

**Implication:** SOLID encodes a politics of dependency: who gets to be stable, who must adapt, what becomes "detail," what becomes "policy." That matters far outside code.

### 4.3 SOLID as "Controlled Variation" (OCP as Evolutionary Operator)

OCP is often taught as "open for extension, closed for modification," but the deeper move is evolutionary topology:

- You are designing where variation is allowed to appear and where invariants are protected.

**Philosophical implication:** OCP is a technique for handling the metaphysics of sameness and difference: you partition the world into "stable commitments" vs "variation points." That's basically ontology engineering in miniature.

### 4.4 SOLID as an Epistemology of Interfaces (ISP)

ISP is frequently reduced to "don't make fat interfaces," but structurally it's about epistemic access control:

- Each client should see only what it must see; not for secrecy, but for legibility and local reasoning.

**Implication:** ISP becomes a general principle of non-totalizing knowledge: don't force every participant to adopt the full worldview of the system. This resonates strongly with transdisciplinary settings (academia, governance, pedagogy).

### 4.5 SOLID's Shadow: When It Harms Coherence

A salutogenic reading also forces a blunt "and-yet":

- SOLID can increase indirection, inflate abstraction layers, and create ceremonial architecture that decreases comprehensibility (especially under time pressure or uneven skill distribution).
- In distributed systems, "SOLID at class level" can miss the actual change vectors (deployment, data ownership, runtime coupling), hence alternative principle sets like IDEALS in microservices discourse.

**Meta-research hook:** study not only "does SOLID help," but under what socio-technical conditions SOLID increases or decreases Sense of Coherence.

---

## 5) A Masters-Level Study Design You Can Actually Run

### 5.1 Research Questions (Tight, Examinable)

- **RQ1 (Genealogy):** How did SOLID cohere historically (1990–2005), and which adjacent traditions did it absorb (DbC, patterns, modularity, substitution theory)?
- **RQ2 (Rhetoric vs Evidence):** What claims are made about SOLID (maintainability, extensibility, comprehension), and what open empirical evidence supports them?
- **RQ3 (Salutogenic transposition):** When mapped onto salutogenesis (comprehensibility/manageability/meaningfulness), where does SOLID measurably increase/decrease system coherence for practitioners?
- **RQ4 (Transdisciplinary portability):** What are valid "non-software" correspondences for SRP/OCP/LSP/ISP/DIP, and how can they be operationalized without metaphor drift?

### 5.2 Method (Meta-Research + Small Empirical Component)

**Work Package A — Primary-source hermeneutic + concept map**
- Close reading of SRP/OCP/DIP/ISP/LSP texts and the 2000 synthesis paper.
- Output: a principle graph: "what each principle constrains," "what it enables," "what it presupposes," "what it externalizes."

**Work Package B — Open access evidence synthesis**
- Focus on open peer-reviewed work that experimentally tests SOLID-like refactorings (e.g., comprehension effects).
- Extract: constructs measured (coupling, modularity, comprehension), threats to validity, context boundaries.

**Work Package C — Salutogenic operationalization**
- Define "design coherence" metrics inspired by SOC:
  - Comprehensibility → time-to-explain / error rate in interpretation tasks
  - Manageability → time-to-change / blast-radius of change
  - Meaningfulness → perceived purpose alignment (qual interviews)
- Anchor salutogenesis framing in established SOC literature.

**Work Package D — Transdisciplinary "translation experiments" (novel contribution)**
- Pick two non-software domains (e.g., academic programme design + museum/exhibition governance).
- Implement SOLID-transposed interventions.
- Pre/post measure: coherence, conflict load, change friction, stakeholder comprehension.

---

## 6) "Hyperstrate" Alignment (Explicitly Marked Inference)

Under the Hyperstrate reading:

- SOLID is a **stratification toolkit**: it designs how layers talk, what crosses boundaries, and which strata are allowed to vary.
- Interfaces become "membranes" between strata; dependencies become "gravity" vectors; substitutability becomes "compatibility of strata transformations."

---

## 7) Novel, Unconventional Applications (With "Creativity + Merit" Validation)

### Validation Criteria (Use These to Keep Novelty Honest)

A transposed SOLID application is valid if it satisfies:
1. **Structural fidelity:** preserves the constraint shape of the principle (not just the vibe).
2. **Operationalizability:** you can define observables and evaluate outcomes.
3. **Salutogenic effect:** expected to increase coherence (or you explicitly predict and test failure modes).
4. **Boundary ethics:** doesn't offload hidden costs onto less-powerful participants.

### 7.1 SOLID for Academic Research Programmes (Departments, Labs, Supervision)

- **SRP:** each role/unit has one primary responsibility (e.g., "methods support" isn't also "gatekeeping approvals").
- **ISP:** different stakeholders get different "interfaces" (students don't need the funder's compliance interface; funders don't need internal mentorship interface).
- **DIP:** policy-level academic aims should not depend on tooling/vendor details; tools conform to policy.
- **Test:** reduced coordination overhead, faster onboarding, fewer "mystery dependencies" in project delivery.

### 7.2 SOLID for Exhibition / Curatorial Governance (Art Institutions)

- **OCP:** keep a stable curatorial through-line while allowing new works/voices to extend the exhibition logic without rewriting the whole structure.
- **LSP:** if a satellite show claims membership in a programme, it must preserve core "contract" (access commitments, consent norms, interpretive scaffolding).
- **Test:** visitor comprehension and curator change friction; measure interpretive coherence pre/post.

### 7.3 SOLID for Policy Design (Municipal / Organisational Rules)

- **ISP:** citizens/teams interact with policy through role-appropriate contracts (avoid one mega-policy that everyone must parse).
- **DIP:** legislate intent at the top; keep implementation details swappable (vendors, formats, procedures).
- **Test:** policy longevity under admin change; implementation swap cost.

### 7.4 SOLID for Conflict-Resolution Protocols (Teams, Communities)

- **SRP:** separate "facilitation," "decision authority," and "documentation" roles to prevent responsibility entanglement.
- **OCP:** protocol supports new case types via extension (add modules), not via ad hoc mutation of the base rules.
- **Test:** fewer escalations, faster resolution, higher perceived fairness.

### 7.5 SOLID for Pedagogy (Course + Assessment Design)

- **ISP:** assessments expose only the interface needed to demonstrate competence (remove irrelevant cognitive load).
- **LSP:** alternative assessment formats must be substitutable (same learning outcomes; no hidden weakening/strengthening).
- This directly matches a salutogenic "healthy learning" orientation.

### 7.6 SOLID for AI-Augmented Workflows (Human + Model Co-Production)

- **DIP:** human intent/policy is the stable abstraction; model outputs are details.
- **ISP:** provide the model only the minimal context needed per task (interfaces per client), to reduce accidental overreach.
- **LSP:** if an AI tool claims to implement a workflow step, it must preserve invariants (citations, traceability, consent constraints).
- **Test:** fewer hallucination-driven failures; improved auditability; lower cognitive stress.

### 7.7 SOLID for Personal Practice Systems (Habits, Creative Work, Health Routines)

- **SRP:** don't let one ritual carry conflicting responsibilities ("exercise" also being "punishment," "work" also being "identity proof").
- **OCP:** routines are stable, but extensible: new constraints attach as modules rather than rewriting the whole identity-story.
- **Test:** adherence + perceived coherence (meaningfulness/manageability) rather than raw output.

---

## 8) Suggested Thesis Structure (Clean, Examinable)

1. **Introduction:** SOLID as design-knowledge bundle; why transdisciplinary; research questions.
2. **Genealogy:** primary sources + adjacent traditions (DbC, substitution theory, OO modularity).
3. **Meta-research review:** claims vs evidence; open access empirical findings.
4. **Salutogenic framework:** define coherence metrics; SOC mapping.
5. **Hyperstrate model integration:** SOLID as boundary operators across strata.
6. **Translation experiments:** two domains, methods, results.
7. **Synthesis:** when SOLID helps/hurts coherence; conditions; portability rubric.
8. **Conclusion:** SOLID as transdisciplinary constraint grammar; future work.

---

## 9) Core Source Set (Primary + Open Access Anchors)

### Primary SOLID Texts (Martin / Object Mentor)
- SRP
- OCP
- DIP
- ISP
- LSP (archived PDF)
- Consolidation (2000): Principles & Patterns

### Formal Lineage for LSP
- Liskov 1987 keynote paper
- Liskov & Wing 1994 behavioral subtyping

### Open Access Empirical Anchor (SOLID Effects)
- ACM full text + author PDF of controlled experiment in ML code understanding
- arXiv mirror (useful for methods replication)

### Salutogenesis Anchors (Open Access)
- Antonovsky 1996 health promotion framing
- Handbook/NCBI chapters on SOC + salutogenesis orientation

### Critique/Translation Context (Modern Architecture Discourse)
- IDEALS vs SOLID (microservices framing)
- "Is SOLID still relevant" practitioner synthesis (use as discourse object, not as evidence)

---

*End of raw research archive.*

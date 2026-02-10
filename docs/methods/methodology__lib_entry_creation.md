# METHODOLOGY — Library Entry Creation

> **Contract:**
> ```yaml
> title: "Library Entry Creation Methodology"
> intent: >
>   Define the process for importing external frameworks into the repository's
>   /docs/lib/ directory. Codifies selection criteria, structural template,
>   quality rubric (LHS), and CI checkpoints derived from analysing the five
>   existing library entries.
> emerged_from: "Comparative analysis of CARDS, MULTI_PARTIALITY, OOO, SALUTOGENESIS, SOLID — 2026-02-04"
> anchors:
>   - "../lib/README.md"
>   - "METHODOLOGY_CI.md"
>   - "methodology__lens_transposition.md"
> status: "active"
> risk_index: 0.25
> ```

---

## §1. What This Method Does

This methodology describes **how to create a library entry** — a hosted reference document for an external framework that has been adopted as a dependency within the repository's praxis.

It is the **upstream companion** to the [Lens Transposition Methodology](methodology__lens_transposition.md), which assumes a lib entry already exists. This method ensures the lib entry itself is well-constructed before any transposition begins.

**Scope:**
- Evaluating whether a framework warrants import
- Verifying primary sources
- Structuring the entry for coherence, integration, and honesty
- Scoring entry quality (Library Health Score)
- Governing the creation process via CI checkpoints

**Not this method:**
- Transposing frameworks into lenses (use [Lens Transposition](methodology__lens_transposition.md))
- Designing engagement systems (use [Axiology-First Aesthetics](methodology__axiology_first_aesthetics_for_engagement_design.md))
- Hosting facilitated sessions (use [Host Multi-Party Encounter](methodology__host_multi_party_encounter.md))

---

## §2. Selection Criteria (The Import Gate)

Not every framework warrants a lib entry. Before beginning, pass this **5-question gate**:

| # | Question | Threshold |
|---|----------|-----------|
| 1 | **External authorship?** | The framework must be authored by someone other than the repository maintainer. Host ≠ Author. |
| 2 | **Verifiable primary sources?** | At least one published, citable work (book, peer-reviewed paper, or established document). No oral-tradition-only frameworks. |
| 3 | **Integrates with ≥2 existing constructs?** | Must map meaningfully to at least two existing lib entries, models, or lenses. Isolated imports create dead nodes. |
| 4 | **Fills a gap?** | Must address a domain, dimension, or question not already covered by existing entries. Redundancy weakens the field. |
| 5 | **Active use case?** | Must have at least one concrete application within the repository (project, thesis, model, or methodology). Theory without praxis is a shelf ornament. |

**Scoring:** All 5 must be YES. If 4/5, document the exception and proceed with elevated scrutiny (risk_index += 0.10).

---

## §3. Source Verification Protocol

### 3.1 Primary Source Requirements

Every lib entry must cite:
- **At least one primary text** by the framework's originator (book, seminal paper, or foundational document)
- **Publication details** sufficient for independent verification (publisher, year, ISBN/DOI where available)
- **Lineage diagram** showing intellectual ancestry (who influenced whom)

### 3.2 Verification Tiers

| Tier | Source Type | Verification Method | Trust Level |
|------|------------|---------------------|-------------|
| **Gold** | Peer-reviewed journal article or academic press monograph | DOI, publisher record, citation index | Highest |
| **Silver** | Respected trade publication, university press, established practitioner text | Publisher record, edition history, citation by Gold sources | High |
| **Bronze** | Conference proceedings, dissertations, reputable online archives | Institutional affiliation, citation chains | Moderate |
| **Copper** | Practitioner manuals, workshop materials, correspondence | Direct attribution, provenance chain | Acceptable with caveats |

**Minimum:** At least one Gold or Silver source. Bronze and Copper sources supplement but do not replace.

### 3.3 The Honest Provenance Rule

If a framework has contested origins or disputed lineage, **document the dispute**. Do not choose sides; present the evidence. The lib entry is a reference node, not a court ruling.

### 3.4 Quotes

Include verified quotes where they illuminate core concepts. Every quote must have:
- Author attribution
- Source text (title, year)
- Page number or chapter reference where available

Prefer quotes that are **profound, precise, or poetic** — not decorative.

---

## §4. The Structural Template

Every lib entry follows this structure. Sections marked **[required]** must be present; sections marked **[recommended]** strengthen the entry.

```
# LIBRARY — [FRAMEWORK NAME] ([Author(s)])

> **Contract:**
> ```yaml
> title: "[Full Title]"
> author: "[Primary Author(s)]"
> host: "André S Clements (Reference Hosting Only)"
> intent: "[One-line purpose statement]"
> lineage: "[Condensed lineage chain]"
> status: "Imported Library"
> usage: "[Primary use cases within repository]"
> ```

---

## Attribution & Ownership                          [required]
- Author identification and intellectual ownership
- Key works (bibliography)
- Lineage diagram (ASCII tree)
- Maintainer's note (Host ≠ Author)

## §1. The Utility (Why Import This?)               [required]
- Inversion table (what this framework does differently)
- Why this matters for the repository (numbered list, ≥3 reasons)
- Integration hooks (which existing constructs connect)

## §2–§N. Core Constructs (The Primitives)          [required]
- Each major construct gets its own subsection
- Definition (original author's formulation)
- Formal notation where appropriate
- Repository mapping (how it translates)

## §N+1. Integration with CARDS                     [required]
- Bidirectional mapping table
- Each construct ↔ CARDS axis
- Diagnostic protocol

## §N+2. Integration with [Other Framework(s)]      [recommended]
- At least one additional integration beyond CARDS
- Bidirectional mapping preferred
- Strain points documented where mappings are imperfect

## §N+3. Execution Routines                         [recommended]
- Routine A: Diagnostic (assessing/understanding)
- Routine B: Relational/Design (building/applying)
- Routine C: Context-specific (domain application)

## §N+4. The And-Yet (Shadow)                       [recommended → required at LHS ≥ 0.80]
- Over-application risks
- Known limitations
- Scientific/methodological critiques
- Cultural or contextual constraints
- The meta-question: when does this framework itself violate its own principles?

## §N+5. Verification & Primary Sources             [recommended]
- Source verification status
- Key claims verified (with citations)
- Recent academic activity
- Contact/further verification paths

## Cross-links                                      [required]
- Library Index
- Related lib entries
- Corresponding lens (if exists)
- Related models, methods, protocols
- DEPENDENCIES.md
```

### Easter Eggs [optional]

Hidden HTML comments that reward careful readers. Not required, but they add personality and signal that the document was crafted with care, not generated mechanically.

**The quality gate:** An easter egg that *only* inventories constructs, *only* borrows another entry's punchline structure, or *only* paraphrases the framework's own axioms is performative — it signals cleverness, not understanding. None of these are inherently wrong: a borrowed structure filled with real observation works; a paraphrase that refracts through a new lens works. The failure is when any of these is the *entire* content — when the egg has no substance independent of the framework's own vocabulary.

The test: if you removed the construct names and framework jargon, would anything remain? If yes, it's observational. If no, it's inventory.

An easter egg succeeds when it **demonstrates understanding by *being*, not *describing*** — it embodies or applies the framework's logic rather than summarising it.

**Benchmarks:**
- SOLID: "Uncle Bob's Cabin" — wordplay earns the scene; "Barbara Liskov wins consistently" rewards specific historical knowledge; punchline is original
- OBJECTIFICATION: "The Object's Complaint" — the hammer speaks and says something the framework doesn't already say (the insult is denial of interiority, not being-used)
- KARPMAN: Two sentences; no construct inventory; identifies the exit mechanism (meta-awareness) without listing the three roles

```html
<!-- Your easter egg here -->
```

---

## §5. Quality Rubric — Library Health Score (LHS)

### 5.1 Scoring Dimensions

The LHS evaluates lib entries across 10 weighted dimensions:

| # | Dimension | Weight | Description |
|---|-----------|--------|-------------|
| D1 | **Provenance** | 15% | Source verification quality; lineage completeness |
| D2 | **Structural Compliance** | 10% | Adherence to §4 template; all required sections present |
| D3 | **Conceptual Depth** | 15% | Core constructs explained with precision and nuance |
| D4 | **CARDS Integration** | 10% | Bidirectional mapping to CARDS; diagnostic protocol |
| D5 | **Cross-Framework Integration** | 10% | Meaningful connections to ≥2 other frameworks |
| D6 | **Execution Routines** | 10% | Actionable procedures; not theory-only |
| D7 | **The And-Yet (Shadow)** | 10% | Honest self-critique; limitations documented |
| D8 | **Verification Depth** | 5% | Claims verified against primary sources |
| D9 | **Cross-Link Integrity** | 5% | All links resolve; bidirectional where appropriate |
| D10 | **Voice & Craft** | 10% | Memorable metaphors, verified quotes, easter eggs, personality |

### 5.2 Scoring Scale

Each dimension is scored 0–3:

| Score | Level | Meaning |
|-------|-------|---------|
| 0 | **Absent** | Dimension not addressed |
| 1 | **Minimal** | Present but thin; surface-level |
| 2 | **Solid** | Competent treatment; meets expectations |
| 3 | **Exceptional** | Benchmark quality; sets the standard |

### 5.3 Calculating LHS

```
LHS = Σ(score_i × weight_i) / Σ(max_score × weight_i)

Where max_score = 3 for all dimensions

LHS range: 0.00 — 1.00
```

### 5.4 Health Thresholds

| LHS | Status | Action |
|-----|--------|--------|
| ≥ 0.85 | 🟢 **Benchmark** | Publish; reference as exemplar |
| ≥ 0.70 | 🟢 **Healthy** | Publish; note improvement areas |
| ≥ 0.55 | 🟠 **Developing** | Publish with caveats; improvement plan required |
| < 0.55 | 🔴 **Insufficient** | Do not publish; revise before merging |

### 5.5 Existing Entries Scored (Calibration)

| Entry | D1 | D2 | D3 | D4 | D5 | D6 | D7 | D8 | D9 | D10 | **LHS** | **Status** |
|-------|----|----|----|----|----|----|----|----|----|----|---------|------------|
| **SOLID** | 3 | 3 | 3 | 3 | 3 | 3 | 3 | 2 | 3 | 3 | **0.97** | 🟢 Benchmark |
| **SALUTOGENESIS** | 3 | 3 | 3 | 3 | 3 | 2 | 1 | 2 | 3 | 3 | **0.88** | 🟢 Benchmark |
| **MULTI_PARTIALITY** | 3 | 3 | 3 | 3 | 3 | 3 | 2 | 2 | 3 | 2 | **0.90** | 🟢 Benchmark |
| **CARDS** | 2 | 3 | 3 | 3 | 2 | 3 | 1 | 1 | 2 | 2 | **0.77** | 🟢 Healthy |
| **OOO** | 3 | 2 | 2 | 1 | 2 | 0 | 0 | 3 | 2 | 1 | **0.53** | 🔴 Insufficient |

**Calibration note:** SOLID anchors the top; OOO reveals the gap that motivated this methodology. CARDS scores lower on D7 (no shadow section) and D5 (fewer cross-framework integrations) but compensates with exceptional D6 (execution routines that children can use). OOO's unique strength (D8: verification depth) is undermined by absent execution routines (D6) and shadow (D7).

---

## §6. Integration Requirements

### 6.1 Mandatory: CARDS Mapping

Every lib entry must map its core constructs to CARDS. The minimum viable integration:

```
For each core construct C_i:
  Map C_i → CARDS axis (which need does it address or threaten?)
  State the diagnostic implication (if C_i is violated, which CARD goes red?)
```

### 6.2 Recommended: Bidirectional Mapping

Strong entries map in both directions:

```
Forward:  Framework construct → CARDS axis → user experience
Reverse:  CARDS degradation → which framework construct might be violated?
```

### 6.3 Cross-Framework Integration

Map to at least **two** other constructs beyond CARDS:

| Likely Targets | When Relevant |
|----------------|---------------|
| **Salutogenesis** (SOC) | Framework relates to health, resilience, coherence |
| **Multi-Partiality** | Framework involves relational dynamics, fairness, perspectives |
| **OOO** | Framework involves ontology, non-human agency, withdrawal |
| **SOLID** | Framework involves boundaries, modularity, architectural coherence |
| **Parametric Authorship** | Framework involves constraints, authorship, agency |

### 6.4 Strain Points

Where mappings are imperfect, **document the strain**. A forced mapping is worse than an honest gap.

```
Strain point: [Framework concept X] maps imperfectly to [Repository concept Y]
Reason: [Why the mapping strains]
Implication: [What this means for usage]
```

---

## §7. The And-Yet Protocol

The And-Yet section is the **intellectual honesty checkpoint**. It prevents the lib entry from becoming advocacy.

### 7.1 Required Questions

Every And-Yet section must address:

1. **Over-application:** What happens when this framework is applied too broadly or too rigidly?
2. **Known limitations:** What does the author acknowledge as boundaries?
3. **External critiques:** What do informed critics say? (Cite specific critiques, not strawmen.)
4. **Cultural/contextual constraints:** Where might this framework not transfer well?
5. **The meta-question:** When does this framework violate its own principles?

### 7.2 The Self-Referential Test

> *"If this framework were applied to itself, where would it fail?"*

This question often produces the most revealing insight. SOLID applied to itself may violate ISP (too much interface). Salutogenesis applied to itself might miss its own pathogenic shadow. The meta-question is not a gotcha — it's a depth probe.

### 7.3 Tone

The And-Yet is not a disclaimer. It is written with the same care and respect as the rest of the entry. It says: "We take this seriously enough to stress-test it."

---

## §8. CI Checkpoints

### 8.1 Tier Structure

Lib entry creation follows CI methodology tiers:

| Gate | Name | Requirements | Artifacts |
|------|------|-------------|-----------|
| **T1** | **Source Gate** | Selection criteria passed (§2); primary sources identified and verified (§3); lineage diagram drafted; utility statement drafted | Source list, lineage, draft §1 |
| **T2** | **Structure Gate** | Full structural draft complete (§4 template); CARDS integration mapped (§6.1); ≥1 additional integration; core constructs specified | Complete draft (all sections) |
| **T3** | **Integrity Gate** | And-Yet section complete (§7); execution routines written; all cross-links verified; LHS calculated ≥ 0.70; indexes updated | Final entry + LHS scorecard |

### 8.2 Gate Validation

Each gate requires explicit sign-off:

```
T1 Sign-off:
  ✓ Selection criteria: [5/5 or N/5 with exception documented]
  ✓ Primary sources: [list with verification tier]
  ✓ Lineage: [verified / contested-documented]
  ✓ Utility: [draft statement]

T2 Sign-off:
  ✓ Template compliance: [all required sections present]
  ✓ CARDS integration: [bidirectional / forward-only]
  ✓ Cross-framework: [which frameworks, mapping quality]
  ✓ Depth check: [core constructs ≥ score 2]

T3 Sign-off:
  ✓ And-Yet: [5 questions addressed]
  ✓ Execution routines: [count and type]
  ✓ Cross-links: [all resolve, bidirectional where flagged]
  ✓ LHS: [score with dimensional breakdown]
  ✓ Index: [lib README updated]
```

### 8.3 Risk-Scaled Validation

Per METHODOLOGY_CI.md:

```
risk_index = complexity × power × distance_from_wetware
Validation.frequency ∝ risk_index
```

| Framework Type | Typical Risk | Validation Depth |
|----------------|-------------|------------------|
| Technical/formal (SOLID, algorithms) | 0.20–0.30 | Standard: verify sources, test mappings |
| Psychological/clinical (Enneagram, attachment) | 0.30–0.40 | Elevated: verify peer-review status, document scientific controversy |
| Philosophical/ontological (OOO, ethics) | 0.25–0.35 | Standard+: verify primary texts, document interpretive disputes |
| Political/ideological (critical theory, etc.) | 0.40–0.55 | High: multi-perspective verification, extensive And-Yet |

---

## §9. Housekeeping Protocol

After completing a lib entry:

### 9.1 Required Updates

| Location | Action |
|----------|--------|
| `docs/lib/README.md` | Add entry to index table |
| Entry itself | Cross-links section complete |
| Related lib entries | Add cross-links if integration sections reference them |
| `DEPENDENCIES.md` | Add author to constellation if not already present |

### 9.2 Recommended Updates

| Location | Action |
|----------|--------|
| `docs/lib/README.md` | Remove from "Planned Additions" if listed |
| Lens README | Note as candidate for future lens |
| Related methodologies | Add cross-link if applicable |

### 9.3 Verification Checklist

```
- [ ] YAML contract complete and well-formed
- [ ] Attribution & Ownership section present with lineage
- [ ] All cross-references resolve (test each link)
- [ ] Index tables updated
- [ ] LHS scorecard computed and documented
- [ ] Maintainer's note present (Host ≠ Author)
- [ ] No claims without citation
- [ ] Easter egg planted (optional but encouraged)
```

---

## §10. Worked Examples

### 10.1 Benchmark: SOLID (LHS: 0.97)

SOLID demonstrates benchmark quality through:
- **Lineage** tracing from Parnas (1972) through Meyer, Liskov, to Martin
- **Threshold transposition** that doesn't just explain but recontextualizes
- **Failure modes** for each principle (not just success conditions)
- **Triple integration** — CARDS (§5), Salutogenesis (§4), Game Theory (§6)
- **Three execution routines** — Diagnostic, Design, Debugging
- **The Shadow** (§7) — over-modularity, premature abstraction, ceremonial architecture
- **Easter egg** — Uncle Bob's Cabin (rewards careful readers)

### 10.2 Growth Target: OOO (LHS: 0.53)

OOO identifies improvement areas:
- **Missing:** Execution routines (how to *use* OOO, not just understand it)
- **Missing:** And-Yet section (OOO's own withdrawal problem — is it too withdrawn from practice?)
- **Thin:** CARDS integration (present but not bidirectional)
- **Strong:** Verification depth (unique among entries — recent academic activity tracked)

The gap between OOO and SOLID is the gap this methodology exists to close.

---

## The And-Yet (Self-Application)

This methodology, applied to itself:

1. **Over-application risk:** Not every imported framework needs the full LHS treatment. Simple, well-bounded constructs (like a single game mechanic) may be over-served by this process.
2. **Scoring subjectivity:** The LHS dimensions are weighted by judgment, not empirical calibration. Different scorers may assign different values. Mitigation: the calibration table (§5.5) anchors expectations.
3. **Template rigidity:** The structural template (§4) could become a cage rather than a scaffold. Lib entries that need a different structure should deviate with documented rationale — the template serves the content, not the reverse.
4. **Meta-question:** This methodology has no And-Yet protocol for itself — except this section. Which is exactly the kind of self-reference that makes the And-Yet work.

---

## Cross-links

- **[Library Index](../lib/README.md)** — Registry of imported constructs; usage protocol
- **[Lens Transposition](methodology__lens_transposition.md)** — Downstream method; assumes lib entry exists
- **[METHODOLOGY_CI.md](METHODOLOGY_CI.md)** — CI governance; As-If/If-Not; risk tiers
- **[SOLID.md](../lib/SOLID.md)** — Benchmark lib entry (LHS: 0.97)
- **[OOO.md](../lib/OOO.md)** — Growth target lib entry (LHS: 0.53)
- **[Axiology-First Aesthetics](methodology__axiology_first_aesthetics_for_engagement_design.md)** — Octagon review; dignity as design constraint
- **[PROTOCOL__lib_research.md](../protocols/PROTOCOL__lib_research.md)** — Upstream: research protocol that validates candidates before this methodology begins
- **[DEPENDENCIES.md](../../DEPENDENCIES.md)** — Broader constellation of influences

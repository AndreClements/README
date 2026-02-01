# /docs/methods/ — Operational Methodologies

> **Configuration:**
> ```yaml
> intent: >
>   A registry of operational methodologies — executable patterns for practice.
>   These documents implement §4 reFractoring: the "small, working models of
>   a more ethical reality."
> role: "Praxis & Protocol"
> maintenance: "Active development; field-tested and refined"
> pattern: "Executable documents with clear routines and failure modes"
> ```

---

## What This Folder Contains

**Methods** holds documents that are:
- **Operational** — designed to be executed, not just read
- **Situated** — grounded in specific contexts (CI, hosting, design)
- **Testable** — include success criteria and failure modes
- **reFractored** — refactored for clarity, refracted through praxis

These are the **"small, working models"** referenced in README §4.

---

## Relationship to Other Folders

| Folder | Role | Relation to Methods |
|--------|------|---------------------|
| **/models/** | Conceptual frameworks | Methods implement what models theorize |
| **/lib/** | Imported constructs | Methods may operationalize lib entries |
| **/lenses/** | Contextual transpositions | Methods are domain-specific enactments |

**Example flow:**
```
CARDS (lib) → SRII (model) → methodology (method) → practice (life)
```

---

## Index of Methods

| Method | Purpose | Key Anchors |
|--------|---------|-------------|
| **[METHODOLOGY_CI.md](METHODOLOGY_CI.md)** | A Pragmatics of Engagement with Machines; as-if/if-not protocol | README §4; SRII |
| **[methodology__host_multi_party_encounter.md](methodology__host_multi_party_encounter.md)** | Hosting protocols for multi-party encounters | README §4, §5 |
| **[methodology__axiology_first_aesthetics_for_engagement_design.md](methodology__axiology_first_aesthetics_for_engagement_design.md)** | Design methodology; aesthetics as governance | CARDS.md; SRII |
| **[methodology__lens_transposition.md](methodology__lens_transposition.md)** | Transposing external frameworks via figure-ground integration | /lenses/; /lib/ |

---

## Method Structure

Each method document typically includes:

1. **Intent** — What this method is for
2. **Core Principles** — Foundational stances
3. **Routines/Protocols** — Executable patterns
4. **Failure Modes** — What violation looks like
5. **Tests** — How to verify compliance
6. **Cross-links** — Connections to models and lib

---

## The As-If / If-Not Pattern

A recurring structure across methods:

| Mode | Function | Example |
|------|----------|---------|
| **As-If** | Provisional engagement; act as though X is true | "As-if this chair will hold" |
| **If-Not** | Parallel monitoring; track mismatch | "If-not, what's my exit?" |

This dual-mode operation enables **functional engagement without naive trust**.

---

## The Figure-Ground Pattern

Another recurring structure, especially in transposition methods:

| Configuration | What's Illuminated |
|---------------|-------------------|
| **Concept A as figure, B as ground** | How A maps onto B; where it fits or strains |
| **Concept B as figure, A as ground** | How B is enriched or challenged by A |
| **Both as figures, practice as ground** | What becomes actionable |
| **Practice as figure, theory as ground** | What theory enables |

Rapid alternation between configurations (stepping up/down) reveals **aspects invisible from any single vantage**.

---

## Risk Index

Methods often reference the risk heuristic:

```pseudocode
risk_index = complexity × power × distance_from_wetware
```

Higher risk → higher validation frequency → deeper inspection.

---

## Reading Order for Newcomers

1. **METHODOLOGY_CI.md** — Core engagement protocol (As-If/If-Not)
2. **methodology__axiology_first_aesthetics_for_engagement_design.md** — Design principles
3. **methodology__host_multi_party_encounter.md** — Hosting practices
4. **methodology__lens_transposition.md** — Meta-methodology for framework integration

---

## Contributing

When adding or modifying methods:

1. **Keep it executable** — Can someone actually do this?
2. **Include failure modes** — What does violation look like?
3. **Test in practice** — Methods should be field-tested
4. **Maintain cross-references** — Link to supporting models
5. **Update this index** — Keep the registry current

---

## Cross-links

- **[README.md §4](../../README.md)** — reFractoring; the source of method design
- **[/models/](../models/)** — Conceptual frameworks that methods implement
- **[/lib/](../lib/)** — Imported constructs (CARDS, Salutogenesis)
- **[/lenses/](../lenses/)** — Contextual transpositions
- **[SRII_AXIOLOGICAL_FRAMEWORK.md](../models/SRII_AXIOLOGICAL_FRAMEWORK.md)** — Axiological spine

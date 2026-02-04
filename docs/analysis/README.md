# /docs/analysis/ — Constellation Assessments

> **Configuration:**
> ```yaml
> intent: >
>   A registry of holistic assessments that examine the repository's
>   document constellation from above — surfacing tensions, gaps,
>   coherence patterns, and actionable refinements. Analysis operates
>   at the field level: it sees relationships between documents,
>   not just documents.
> role: "Assessment & Field Diagnostics"
> maintenance: "Periodic; triggered by structural changes or phase transitions"
> pattern: "Constellation-view documents with structured findings and prioritised actions"
> ```

---

## What This Folder Contains

**Analysis** holds documents that are:
- **Diagnostic** — examining the system's health, coherence, and gaps
- **Field-level** — seeing relationships between nodes, not just individual nodes
- **Actionable** — producing prioritised refinements (P0/P1/P2) and implementation hooks
- **Honest** — naming tensions explicitly, not smoothing them over

These are not reflective essays (see [/essays/](../essays/) for that) or theoretical frameworks (see [/models/](../models/)). Analysis is the system looking at itself without flinching.

---

## Relationship to Other Folders

| Folder | Role | Relation to Analysis |
|--------|------|-----------------------|
| **/models/** | Conceptual frameworks | Analysis assesses whether models cohere and identifies gaps |
| **/methods/** | Executable practices | Analysis tests whether methods fulfil what models promise |
| **/essays/** | Reflective readings | Essays discover; analysis diagnoses |
| **/protocols/** | Governance primitives | Analysis verifies protocol coverage and identifies missing governance |

---

## Index of Analyses

| Analysis | Scope | Status | Key Findings |
|----------|-------|--------|--------------|
| **[CONSTELLATION_ANALYSIS.md](CONSTELLATION_ANALYSIS.md)** | SRII + NetVerse + supporting protocols | draft | Operational under-specification as primary risk; SRII-lite adoption ladder; CARDS needs case law |

---

## Cross-links

- **[README.md §5](../../README.md)** — The Network; constellation dynamics
- **[/models/](../models/)** — Frameworks being assessed
- **[/essays/](../essays/)** — Reflective counterpart to diagnostic assessment
- **[/protocols/](../protocols/)** — Governance primitives under review
- **[SRII_AXIOLOGICAL_FRAMEWORK.md](../models/SRII_AXIOLOGICAL_FRAMEWORK.md)** — Primary assessment target

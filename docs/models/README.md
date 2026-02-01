# /docs/models/ — Conceptual Models

> **Configuration:**
> ```yaml
> intent: >
>   A registry of conceptual models and frameworks developed within or
>   adapted for this repository. These are dense gravity sources —
>   documents with high conceptual mass that shape the surrounding field.
> role: "Theory & Protocol Definition"
> maintenance: "Active development; extensions welcome with provenance"
> pattern: "Core nodes with explicit edges to README and downstream documents"
> ```

---

## What This Folder Contains

**Models** holds documents that are:
- **Conceptual frameworks** — theories operationalized for this praxis
- **Protocol definitions** — formal structures governing interaction
- **Dense gravity sources** — high-mass nodes that other documents orbit

These are not external imports (see [/lib/](../lib/) for that). These are **developed or substantially adapted frameworks** — original theoretical work or significant extensions of imported constructs.

---

## Relationship to Other Folders

| Folder | Role | Relation to Models |
|--------|------|-------------------|
| **/lib/** | Imported constructs (external authors) | Models may extend or integrate lib entries |
| **/lenses/** | Contextual transpositions | Lenses transpose models into specific domains |
| **/methods/** | Executable practices | Methods implement what models theorize |

**Example flow:**
```
CARDS (lib) → SRII_AXIOLOGICAL_FRAMEWORK (model) → LENS__salutogenesis (lens) → methodology (method)
```

---

## Index of Models

| Model | Purpose | Key Anchors |
|-------|---------|-------------|
| **[philosophy_of_hyperstrate.md](philosophy_of_hyperstrate.md)** | Field dynamics, coherence, CET, multi-partiality | README §5; all lenses |
| **[philosophy_of_body.md](philosophy_of_body.md)** | Embodied resilience, adaptive history, sovereign boundary | README §2 |
| **[SRII_AXIOLOGICAL_FRAMEWORK.md](SRII_AXIOLOGICAL_FRAMEWORK.md)** | Spatio-Relational Intelligence Integrity; CARDS as axiological spine | CARDS.md |
| **[srii__contract_of_aims.md](srii__contract_of_aims.md)** | Normative constitution; five articles and six invariants | SRII framework |
| **[SRII_CARDS_CASES.md](SRII_CARDS_CASES.md)** | Failure modes and mitigation patterns for each CARD | CARDS.md; case law |
| **[SRII_INVARIANTS_TO_MECHANISMS.md](SRII_INVARIANTS_TO_MECHANISMS.md)** | Mapping invariants to implementation patterns | srii__contract_of_aims.md |
| **[aLexicon.md](aLexicon.md)** | Operational definitions; shared vocabulary | All documents |

---

## Model Families

### SRII (Spatio-Relational Intelligence Integrity)

The SRII family provides the **axiological infrastructure**:

```
SRII_AXIOLOGICAL_FRAMEWORK.md  (core framework)
    ├── srii__contract_of_aims.md  (normative constitution)
    ├── SRII_CARDS_CASES.md  (case law)
    └── SRII_INVARIANTS_TO_MECHANISMS.md  (implementation)
```

### Philosophy Series

The philosophy documents provide **foundational orientations**:

- **philosophy_of_hyperstrate.md** — The field; what holds everything together
- **philosophy_of_body.md** — The ground; where theory meets flesh

### Supporting Documents

- **aLexicon.md** — Definitions that enable coherent cross-reference

---

## Reading Order for Newcomers

1. **aLexicon.md** — Get the vocabulary
2. **philosophy_of_hyperstrate.md** — Understand the field
3. **SRII_AXIOLOGICAL_FRAMEWORK.md** — See how CARDS integrates
4. **srii__contract_of_aims.md** — Learn the normative structure
5. **SRII_CARDS_CASES.md** — Study failure modes

---

## Contributing

When adding or modifying models:

1. **Maintain cross-references** — Update edges when nodes change
2. **Preserve provenance** — Document sources and influences
3. **Test coherence** — Does the model resonate with existing models?
4. **Update this index** — Keep the registry current

---

## Cross-links

- **[README.md](../../README.md)** — The Operator; master node
- **[/lib/](../lib/)** — Imported constructs (CARDS, Salutogenesis)
- **[/lenses/](../lenses/)** — Contextual transpositions
- **[/methods/](../methods/)** — Executable practices
- **[parametric_authorship.md](../../projects/theses/parametric_authorship.md)** — Formal framework for authorship

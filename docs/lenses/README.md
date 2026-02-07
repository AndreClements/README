# Lenses — Contextual Transpositions of Core Texts

*Index metadata follows. Skip freely; the map is for navigation, not reading.*

```yaml
contract:
  intent: >
    Define the "lens" document type and index existing lenses.
    Lenses are satellites in the Hyperstrate: contextual transpositions
    that preserve invariants while adapting affordances to specific domains.
  scope:
    in:
      - lens ontology and template
      - index of existing lenses
      - connection to README Observer Pattern (§5)
    out:
      - lens content (see individual lens files)
  anchors:
    readme: "../README.md"
    hyperstrate: "models/philosophy_of_hyperstrate.md"
    parametric_authorship: "../../projects/theses/parametric_authorship.md"
risk_index: 0.20
```

---

## What is a Lens?

A **lens** is a contextual transposition of one or more core texts into a specific application field. It operates within the Hyperstrate as a **sovereign peer**—connected to dense gravity sources (core texts) via explicit edges (cross-references, protocol conformance).

### Gravity Metaphor (from README §5)

> *"The Operator is a Subject in a dynamic Observer Constellations pattern."*

In the document constellation:

- **Core texts** = dense gravity sources (high conceptual mass, shape the surrounding field)
- **Lenses** = satellites (lower mass, orbit core texts, refract their light into specific domains)
- **Edges** = gravitational bonds (cross-references, shared invariants, protocol conformance)

A lens does not replace or compete with its core text. It **transposes** the core text's principles into a new context while preserving the fundamental invariants.

---

## Lens as Parametric Authorship

Following *parametric_authorship.md*, a lens can be understood as an execution of the Parametric Author Function in a specific domain:

```
LENS := PAF_transposed
     := <S', P', C', E', Φ'>
```

Where:
- **S' (Substrates)** — the domain-specific tools, materials, and platforms
- **P' (Parameters)** — the adjustable rules and ranges for this context
- **C' (Constraints)** — domain-specific limitations and requirements
- **E' (Environment)** — the local governance, budgets, and logistics
- **Φ' (Shaping functional)** — how sensitivity manifests in this domain

### What stays the same (Invariants)

Lenses preserve:
- **Dignity conservation** — D = diag(d_personal, d_object, d_system) remains non-decreasing
- **Sovereign Interface** — I = {Header, Ledger, Exit, Lint} must be satisfiable
- **Provenance** — all state changes must be traceable to origin

### What changes (Designed Transitions)

Lenses adapt:
- **Affordances** — how principles manifest in specific interactions
- **Vocabulary** — domain-specific terminology maps to core concepts
- **Mechanics** — concrete implementations of abstract constraints

---

## Lens as Hyperstrate Node

From *philosophy_of_hyperstrate.md*:

> *"The Hyperstrate is the protocolled field where the join of seeing and saying becomes shareable and verifiable across sovereign peers."*

Each lens is a **node** in this field:

| Layer | Lens Expression |
|-------|-----------------|
| **Node (Sensation)** | The lens's internal coherence; its "take" on the core texts |
| **Edge (Protocol)** | Cross-references, shared vocabulary, conformance to Sovereign Interface |
| **Field (Hyperstrate)** | The constellation of lenses + core texts; their mutual coherence |

### CET for Lenses

The **Chain Equilibrium Tension** formula applies to lens design:

```
CET_lens = argmin(length(deps)) s.t. value(deps) ≥ θ AND risk(deps) ≤ τ
```

A good lens:
- **Short dependency chain** — references only what it needs
- **High value** — makes core concepts actionable in the domain
- **Low risk** — doesn't distort core invariants

---

## README Anchoring (Required)

Every lens must reference back to the README. Suggested anchors:

| README Section | Use in Lens |
|----------------|-------------|
| **§2 The Operator** | When discussing agency, identity, or the "single instance" fiction |
| **§4 reFractoring** | When the lens is a refactor × refract of a core method |
| **§5 The Network** | When discussing relationships, observers, or constellation dynamics |
| **§8 Expected Output** | When discussing generator semantics, `yield`, or continuous process |

---

## Lens Template

```yaml
---
title: "LENS — <name>"
status: "draft"
updated: "<date>"
anchors:
  core_texts:
    - "<path/to/core_text_1.md>"
    - "<path/to/core_text_2.md>"
  readme_sections: ["§4", "§8"]  # which README sections this lens connects to
context:
  field: "<NetVerse2 | exhibition | CI-collab | etc>"
  motive: "<why this transposition exists>"
invariants_preserved:
  - "<SRII invariant or CARDS facet>"
transposition_rules:
  - "<what changes in this lens>"
outputs:
  - "<spec | checklist | mechanics | schema>"
risk_index: <0.0-1.0>
---

# LENS — <name>

## Distillation

- **Claim:** <one sentence thesis>
- **Constraint:** <what must remain true>
- **Mechanic:** <how it's implemented in this domain>
- **Failure mode:** <what violation looks like>
- **Test:** <how to verify compliance>

## Core Text Mapping

| Core Concept | Lens Expression |
|--------------|-----------------|
| <PAF term> | <domain equivalent> |
| ... | ... |

## Implementation Notes

...

## Cross-links

- README §X: <why this section matters>
- <other relevant docs>
```

---

## Index of Lenses

| Lens | Core Texts | Domain | Status |
|------|------------|--------|--------|
| [LENS__gravity_irreversibility_clarity](LENS__gravity_irreversibility_clarity.md) | README, Hyperstrate, PA | NetVerse2 physics | draft |
| [LENS__multi_partiality](LENS__multi_partiality.md) | README, MULTI_PARTIALITY, CARDS, Hyperstrate, SRII, PA | Relational systems, multi-stakeholder design, Observer networks | draft |
| [LENS__object_oriented_ontology](LENS__object_oriented_ontology.md) | README, OOO, SRII, PA | NetVerse, CI Collaboration, Machine dignity | draft |
| [LENS__salutogenesis](LENS__salutogenesis.md) | README, SALUTOGENESIS, CARDS, Hyperstrate, Body, PA | Health systems, personal practice | draft |
| [LENS__solid_threshold_mechanics](LENS__solid_threshold_mechanics.md) | README, SOLID, CARDS, SALUTOGENESIS, Hyperstrate, PA | Modular systems, exhibition, civic, pedagogy, AI, game design | draft |
| [LENS__objectification](LENS__objectification.md) | README, OBJECTIFICATION, CARDS, OOO, MULTI_PARTIALITY, SRII, PA | Ethical design, CI collaboration, machine dignity | draft |
| [LENS__enneagram](LENS__enneagram.md) | README, ENNEAGRAM, CARDS, MULTI_PARTIALITY, SALUTOGENESIS, PA | Self-knowledge, relational navigation, system design | draft |

---

## Cross-links

- **README.md** — The Operator; master node in the constellation (§5 Observer Pattern)
- **philosophy_of_hyperstrate.md** — Field dynamics, CET, dignity conservation
- **parametric_authorship.md** — PAF, invariants, designed transitions
- **SRII_AXIOLOGICAL_FRAMEWORK.md** — Invariants that lenses must preserve
- **[methodology__lens_transposition.md](../methods/methodology__lens_transposition.md)** — How to create lenses; figure-ground integration

# METHODOLOGY — Lens Transposition: Figure-Ground Integration

> **Contract:**
> ```yaml
> title: "Lens Transposition Methodology"
> intent: >
>   Document the process of transposing external frameworks into the
>   repository substrate. Captures figure-ground dynamics, step transitions,
>   and the lib/lens distinction as separation of concerns.
> emerged_from: "SALUTOGENESIS lens creation session, 2026-02-01"
> anchors:
>   - "../lenses/README.md"
>   - "../lib/README.md"
>   - "../../projects/theses/parametric_authorship.md"
> status: "draft"
> ```

---

## §1. What This Method Does

This methodology describes **how to transpose an external conceptual framework into the repository's substrate** while:
- Preserving the integrity of the source framework
- Revealing new aspects through figure-ground transposition
- Maintaining SOLID principles in conceptual design
- Creating actionable, testable outputs

---

## §2. The Figure-Ground Dynamic

### The Core Insight

When transposing a framework (e.g., Salutogenesis) into a substrate (e.g., this repository), **which is figure and which is ground shifts throughout the process** — and each configuration illuminates different aspects.

| Configuration | What's Illuminated |
|---------------|-------------------|
| **External framework as figure, repository as ground** | How the new framework maps to existing vocabulary; where it confirms, extends, or challenges |
| **Repository as figure, external framework as ground** | How repository concepts are enriched by the new perspective; gaps in existing models |
| **Both as figures against practice as ground** | What becomes actionable; where theory meets praxis |
| **Practice as figure against theory as ground** | What the theory enables that wasn't possible before |

### Example: Salutogenesis Transposition

| Phase | Figure | Ground | Illumination |
|-------|--------|--------|--------------|
| Initial mapping | Salutogenesis (SOC, GRRs) | Repository (CARDS, Hyperstrate) | "SOC maps to CARDS aggregate over time" |
| Reverse mapping | CARDS states | Salutogenic categories | "Each CARD in green IS a GRR" |
| Synthesis | Generator semantics (§8) | Health-creation | "Health := yield(coherence)" — the repository's `yield` model IS salutogenic |
| Emergence | Adaptive history (Body) | GRR theory | Body's "alchemical record" is a GRR — new insight from integration |

---

## §3. The Step Transitions

### Stepping Up: Abstraction

Moving from specific instances to general patterns:

```
Specific CARD state → CARDS aggregate → SOC as meta-CARDS → Health as coherence
```

**When to step up:**
- When patterns repeat across instances
- When seeking invariants that hold across contexts
- When designing tests that apply broadly

### Stepping Down: Instantiation

Moving from general patterns to specific implementations:

```
Health as coherence → SOC diagnostic → CARDS check → "Is my Autonomy in red?"
```

**When to step down:**
- When making theory actionable
- When testing claims against practice
- When grounding abstractions in felt experience

### The Rhythm

Effective transposition requires **rapid alternation**:

```
Up → Down → Up → Down → ...
```

Each cycle refines the mapping. Stay too long at one level and you lose either grounding (too abstract) or pattern (too specific).

---

## §4. The Lib/Lens Distinction

A key structural principle: **separate source from transposition**.

| Layer | Purpose | What It Contains |
|-------|---------|------------------|
| **/lib/** | Source material | External framework as-authored; attribution clear |
| **/lenses/** | Transposition | Framework integrated with substrate; new synthesis |

### Why This Matters

1. **Provenance:** The original author's work remains intact and credited
2. **Evolution:** Lib and lens can evolve independently
3. **Reuse:** The same lib entry can spawn multiple lenses for different contexts
4. **Clarity:** Readers know what's imported vs. what's synthesized

### SOLID Applied

- **S (Single Responsibility):** Lib = source; Lens = transposition; README = index
- **O (Open/Closed):** Open for new mappings; closed for core invariants
- **L (Liskov):** Lens works wherever source concepts work
- **I (Interface Segregation):** Clean boundaries between layers
- **D (Dependency Inversion):** Depend on abstractions (coherence), not concretions (specific metrics)

---

## §5. The Transposition Process

### Phase 1: Exploration

**Goal:** Understand both the external framework AND the repository substrate deeply.

**Actions:**
- Read the source material (papers, books, primary texts)
- Explore the repository for resonant concepts
- Note initial mappings without forcing fit
- Identify vocabulary overlaps and gaps

**Figure-Ground:** External framework as figure; repository as potential ground.

### Phase 2: Mapping

**Goal:** Create explicit correspondences between source concepts and repository vocabulary.

**Actions:**
- Build mapping tables (Source Concept → Repository Expression)
- Test mappings bidirectionally (does it work both ways?)
- Identify invariants that must be preserved
- Note where mappings strain or break

**Figure-Ground:** Alternating — each concept gets turn as figure.

### Phase 3: Synthesis

**Goal:** Discover what emerges from the integration that exists in neither alone.

**Actions:**
- Look for concepts that strengthen when combined
- Formalize new patterns (e.g., `yield(health)`)
- Document "points of emergence" — genuinely new insights
- Test emergent concepts against practice

**Figure-Ground:** The integration itself becomes figure; both sources become ground.

### Phase 4: Structuring

**Goal:** Organize outputs into appropriate containers.

**Actions:**
- Create lib entry (source material, attribution, core primitives)
- Create lens (transposition, synthesis, implementation patterns)
- Update indexes (README files)
- Establish cross-links

**Figure-Ground:** Structure as figure; content as ground.

### Phase 5: Testing

**Goal:** Verify that the transposition works.

**Actions:**
- Write perturbation probes
- Apply diagnostic patterns to real cases
- Check that invariants hold
- Verify cross-references resolve

**Figure-Ground:** Practice as figure; theory as ground.

---

## §6. Closely Integrated Actions

The method works through **tight loops** rather than sequential phases:

```
Explore ←→ Map ←→ Synthesize ←→ Structure ←→ Test
              ↑_______________________________↓
```

### What This Enables

1. **Early correction:** Mapping errors surface quickly when tested
2. **Emergence visibility:** Synthesis happens while exploring, not after
3. **Structural learning:** Organizing reveals gaps in understanding
4. **Grounded abstraction:** Theory stays connected to practice

### The "Stepping" Within Loops

Within each phase, step up and down:

```
[Explore]
  └── Read source (down: specific texts)
  └── Pattern recognition (up: what themes?)
  └── Repository resonance (down: specific files)
  └── Conceptual alignment (up: what overlaps?)
```

---

## §7. Illumination Through Transposition

### What Becomes Visible

When you transpose a framework into a new substrate:

| Aspect | How It's Illuminated |
|--------|---------------------|
| **Assumptions** | Source assumptions become visible when they don't map cleanly |
| **Gaps** | Substrate gaps reveal when source has concepts with no target |
| **Strengths** | Strong mappings reveal where substrate was already doing the work |
| **Extensions** | Synthesis produces concepts neither source had alone |
| **Limits** | Where transposition strains shows limits of both frameworks |

### Example: Salutogenesis → Repository

| Illumination | What We Learned |
|--------------|-----------------|
| Generator semantics WAS salutogenic | The `yield` model in §8 already embodied health-as-process |
| CARDS lacks temporal dimension | SOC includes trust in *future* meetability; CARDS is present-tense |
| Body philosophy is underutilized | Adaptive history as GRR wasn't explicit before |
| CET is manageability | The formalism existed; the health framing was missing |
| Multi-partiality is comprehensibility | Diversity as sense-making resource — new way to justify plurality |

---

## §8. Systemic Integrity Checks

Throughout transposition, verify:

### Cross-Reference Integrity

All links resolve. All edges connect real nodes.

```
For each cross-link:
  Assert: target file exists
  Assert: target section exists (if specified)
  Assert: relationship is bidirectional (or explicitly one-way)
```

### Invariant Preservation

Core commitments hold across transposition.

```
For each invariant (dignity, sovereignty, provenance):
  Assert: lib entry preserves source integrity
  Assert: lens preserves repository invariants
  Assert: synthesis doesn't violate either
```

### Vocabulary Consistency

Terms mean the same thing across documents.

```
For key terms (SOC, GRR, CARDS, coherence):
  Assert: definition in aLexicon (or lib entry)
  Assert: usage in lens matches definition
  Assert: no silent redefinition
```

### Actionability

Theory connects to practice.

```
For each claim:
  Assert: diagnostic or test exists
  Assert: failure mode is specified
  Assert: implementation pattern is clear
```

---

## §9. Housekeeping Protocol

After transposition, update the constellation:

### Required Updates

| Location | Update |
|----------|--------|
| Lib README | Add new entry to index |
| Lens README | Add new lens to index |
| Methods README | Add this methodology (if new) |
| Source lib entry | Add cross-links to lens |
| Lens | Add cross-links to lib, models, methods |
| Related models | Add cross-links if appropriate |

### Verification

```bash
# Conceptual (manual)
- [ ] All new files have YAML contracts
- [ ] All cross-references resolve
- [ ] Index tables are complete
- [ ] Points of emergence documented
- [ ] Maintenance notes included
```

---

## §10. When to Use This Method

### Good Fit

- Importing a conceptual framework from outside the repository
- Integrating a new theoretical perspective with existing models
- Creating domain-specific applications of core concepts
- Synthesizing multiple frameworks into a unified view

### Not This Method

- Simple imports (just add to /lib/ with attribution)
- Minor extensions (edit existing documents)
- Pure research (use Explore agents, not full transposition)
- Implementation without theory (use /methods/ directly)

---

## Cross-links

- **[/lenses/README.md](../lenses/README.md)** — Lens ontology and template
- **[/lib/README.md](../lib/README.md)** — Library usage protocol
- **[parametric_authorship.md](../../projects/theses/parametric_authorship.md)** — Mapping, invariants, perturbation
- **[LENS__salutogenesis.md](../lenses/LENS__salutogenesis.md)** — Worked example of this methodology
- **[SALUTOGENESIS.md](../lib/SALUTOGENESIS.md)** — Corresponding lib entry

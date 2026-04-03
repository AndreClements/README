# /docs/lib/ — The Library

> **Configuration:**
> ```yaml
> intent: >
>   A registry of external constructs, theories, and "software libraries"
>   imported into the human-OS. These are works by other authors that have
>   been adopted as dependencies—running code within the praxis.
> role: "Reference & Attribution"
> maintenance: "Read-only / Annotations only. Do not refactor core logic without forking."
> pattern: "Satellite nodes with explicit provenance edges to external authors"
> ```

---

## What This Folder Contains

**The Library** holds constructs that are:
- **Authored by others** (not the repository maintainer)
- **Imported as dependencies** (integrated into the praxis, not just referenced)
- **Hosted for stability** (providing a stable URL for linking and sharing)

These are not "influences" (see [DEPENDENCIES.md](../../DEPENDENCIES.md) for that). These are **operational constructs**—theories, games, frameworks—that have been adopted as part of the working system.

---

## Maintainer's Note

> This folder functions like a `node_modules/` or `vendor/` directory in software engineering. The contents are **not original work by the repository maintainer**. They are here to:
> 1. Provide stable reference URLs
> 2. Ensure correct attribution
> 3. Enable integration with the rest of the documentation system
>
> **Host ≠ Author.** The maintainer (André S Clements) is the *host*; the original authors retain intellectual ownership.

---

## Index of Imported Constructs

| Construct | Author | Lineage | Use |
|-----------|--------|---------|-----|
| **[CARDS](CARDS.md)** | Je'anna L Clements | SDT (Deci & Ryan) → CAR → CARDS | Needs-mapping diagnostic; decision simulation |
| **[CLEAN_LANGUAGE](CLEAN_LANGUAGE.md)** | David Grove; Lawley & Tompkins | Phenomenology → Ericksonian → Clean Language → Symbolic Modelling | Clean inquiry; metaphor development; minimal-projection facilitation |
| **[CLEAN_SPACE](CLEAN_SPACE.md)** | David Grove; Lawley & Tompkins | Clean Language → Symbolic Modelling → Clean Space | Spatial facilitation; 2nd-order presentation coaching; non-visual externalisation |
| **[ENNEAGRAM](ENNEAGRAM.md)** | Ichazo, Naranjo, Riso & Hudson | Sufi geometry → Gurdjieff → Ichazo → Naranjo → Riso & Hudson | Dynamic personality system; self-knowledge diagnostic; integration/disintegration dynamics |
| **[INFINITE_GAMES](INFINITE_GAMES.md)** | James P. Carse | Huizinga → Carse | Game-type diagnostic; parametric authorship grounding; gamification threat assessment |
| **[KARPMAN_DRAMA_TRIANGLE](KARPMAN_DRAMA_TRIANGLE.md)** | Stephen B. Karpman | Transactional Analysis (Berne) → Script Drama Analysis (Karpman) | Dysfunctional role dynamics; game interruption; role-switch awareness |
| **[MULTI_PARTIALITY](MULTI_PARTIALITY.md)** | Ivan Boszormenyi-Nagy | Family therapy → Contextual therapy | Relational ethics; multi-stakeholder navigation; ledger of entitlements |
| **[OBJECTIFICATION](OBJECTIFICATION.md)** | Martha C. Nussbaum, Rae Langton | Kant → MacKinnon/Dworkin → Nussbaum → Langton | Dignity diagnostic; 10-feature taxonomy; benign objectification argument; Machine dignity |
| **[OOO](OOO.md)** | Graham Harman, Ian Bogost | Heidegger → Speculative Realism → OOO | Flat ontology; Machine dignity; NetVerse word-physics |
| **[PERMACULTURE](PERMACULTURE.md)** | Bill Mollison & David Holmgren | Howard/Yeomans/Fukuoka/Odum → Mollison & Holmgren | Design methodology; zone diagnostic; ethics-to-design bridge; spatial/temporal vocabulary |
| **[REGENERATIVE_CULTURES](REGENERATIVE_CULTURES.md)** | Daniel Christian Wahl | Bateson → Capra → Living systems; Antonovsky → Salutogenic design; Reed → Regeneration | Scale-linking design; salutogenic design praxis; regenerative assessment |
| **[SALUTOGENESIS](SALUTOGENESIS.md)** | Aaron Antonovsky | Stress research → Medical sociology | Health-creation framework; SOC diagnostic |
| **[SOLID](SOLID.md)** | Robert C. Martin et al. | Parnas → Meyer → Liskov → Martin | Modular coherence; threshold mechanics |
| **[WHEEL_OF_CONSENT](WHEEL_OF_CONSENT.md)** | Betty Martin, D.C. | BDSM consent culture → Body Electric → 3-Minute Game (Faddis) → Martin | Somatic consent diagnostic; touch literacy; facilitation check; OBJECTIFICATION operationalisation |

---

## Planned Additions

*The following are candidates for future library entries (not yet documented):*

- **Gestalt Principles** — Perceptual organisation; closure, proximity, continuity
- **Autopoiesis** (Maturana & Varela) — Self-creating systems; structural coupling

---

## Entry Structure

Each library entry follows a **two-zone template** (see [methodology__lib_entry_creation.md](../methods/methodology__lib_entry_creation.md) §4):

1. **Subject Matter zone** — Pure framework content: Attribution, Core Constructs, The And-Yet (Shadow), Verification & Sources. No repo-specific content.
2. **Repository Integration zone** — What This Changes, Maintainer's Note, CARDS integration, cross-framework integrations, Execution Routines, repo-relevance bullets, Cross-links.
3. **Appendix: Contract** — YAML metadata at the bottom, referenced by a tiny referral line at the top.

This separation ensures each entry reads as a standalone subject-matter reference while preserving all repository integration work.

---

## Usage Protocol

When referencing a library construct in other documents:

1. **Link to the library file**, not external sources
2. **Credit the author explicitly** in any substantive use
3. **Distinguish extensions** — If you extend or adapt the construct, make clear what's original vs. adapted

**Example:**
```markdown
The CARDS model ([Je'anna L Clements](../lib/CARDS.md)) provides the axiological
inputs for SRII evaluation...
```

---

## Creation Protocol

New library entries begin with upstream research governed by the **[Library Research Protocol](../protocols/PROTOCOL__lib_research.md)**, which manages scoping, source evaluation, and context externalisation across sessions. Once research validates a candidate, it hands off to the **[Library Entry Creation Methodology](../methods/methodology__lib_entry_creation.md)**, which codifies selection criteria, structural template, quality rubric (LHS), and CI checkpoints.

---

## Cross-links

- **[DEPENDENCIES.md](../../DEPENDENCIES.md)** — Influences and provocations (broader constellation)
- **[README.md §5](../../README.md)** — The Network (Observer relationships)
- **[SRII_AXIOLOGICAL_FRAMEWORK.md](../models/SRII_AXIOLOGICAL_FRAMEWORK.md)** — Where CARDS is integrated as axiological spine
- **[methodology__lib_entry_creation.md](../methods/methodology__lib_entry_creation.md)** — How to create new library entries

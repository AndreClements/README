`TODOS.md`

# TODOS.md
*Last Updated: 2026-02-05*

A tactical checklist of immediate, actionable tasks for the `README` repository. For the long-term strategic plan, see `PLANS.md`.

---

### 🔴 High Priority — **Weaving the Ligaments**
*Address observer feedback on “flow” / “big jumps” by adding explicit connective tissue across the existing structure.*

- [ ] **feat(onboarding): Add Reading Paths**[^reading_paths]
  - Create the file with 4 curated trails (Practitioner, Theorist, Artist, Observer).
  - DoD: Linked from `README.md` top; all anchors resolve; each path ends with “Next: do / read / see”.
  - Commit: `feat(onboarding): add reading_paths with curated trails`

- [ ] **feat(docs): Micro-ligaments (inline xrefs)**[^micro_ligs]
  - Repo-wide pass adding inline and footnote links for key terms.
  - Start with: `README.md`, `docs/methods/METHODOLOGY_CI.md`, `projects/project__bodyTime_exhibition_manual.md`, core philosophies.
  - DoD: First occurrence = micro-gloss + link; subsequent = footnote; no broken anchors.
  - Commit: `feat(docs): add inline & footnote cross-refs for key concepts`

- [ ] **feat(docs): Visual ligament (system diagram)**[^mermaid]
  - Add a Mermaid diagram under `README §1. ARCHITECTURE_OVERVIEW`; nodes link to sections.
  - DoD: Renders on GitHub; at least 6 nodes are clickable; screenshot added to `docs/img/` for non-Mermaid renderers.
  - Commit: `feat(docs): embed Mermaid system diagram in README`

- [ ] **refactor(docs): Attachment interfaces**
  - Append a small `attach:` block to the end of each major doc in `/docs` and `/projects` (intent, inputs, outputs, next, validation).
  - DoD: Present in README, CI method, protocols index, and bodyTime manual.
  - Commit: `refactor(docs): add attachment interfaces to core docs`

---

### 🟡 Medium Priority — **Architectural Expansion**
*Add core modules that strengthen the spine without outpacing ligaments.*

- [ ] **feat(methods): Draft `METHODOLOGY_GAINTAINING.md`**[^gaintaining]
  - Formalise the praxis of grow+maintain (add mass only where connective tissue exists).
  - DoD: Stable draft v0.1; linked from `reading_paths.md` and Methods index.
  - Commit: `feat(methods): add draft of METHODOLOGY_GAINTAINING`

- [@] **feat(docs): Commit philosophical subroutines**
  - Create `docs/philosophies/` and add the four `PHILOSOPHY_*.md` files.
  - DoD: Each file has summary, dependencies, and cross-links footer.
  - Commit: `feat(docs): add core philosophical subroutines`

- [ ] **feat(methods): Forensic Aesthetics method**
  - Add `docs/methods/METHODOLOGY_FORENSIC_AESTHETICS.md`.
  - DoD: Includes purpose, procedure, evidence classes, and sample ledger entry.
  - Commit: `feat(methods): add Forensic Aesthetics method`

- [ ] **feat(land): Landscapification — init spec**
  - Create `docs/landscapifications/LANDSCAPIFICATION_INIT.md` (Purpose, Motifs, Materials, Constraints, Validation).
  - DoD: Seed v0.1 exists; linked from philosophies + methods where relevant.
  - Commit: `feat(land): add Landscapification init spec and structure`

- [@] **feat(lib): Everyday Design Practice / Norman**
  - Draft `docs/lib/THE_DESIGN_OF_EVERYDAY_THINGS.md` from `staging/research/research__everyday_design_practice.md`.
  - DoD: Norman 2013 direct-source pass complete; T3 sign-off recorded; status promoted from Draft Imported Library to Imported Library; future lens scoped.
  - Commit: `feat(lib): draft everyday design practice entry`

---

### 🟢 Low Priority — **Ongoing & Housekeeping**

- [ ] **chore: License**
  - Add top-level `LICENSE.md` with chosen license.
  - DoD: SPDX header added to repo description (README footer).
  - Commit: `chore: add LICENSE`

- [@] **docs: Dependency validation**
  - Cross-reference `docs/DEPENDENCIES.md` against physical sources; mark evidence grade (A/B/C) and availability.
  - DoD: At least 10 high-leverage entries validated.
  - Commit: `docs: begin dependency validation pass`

- [ ] **chore(text): Caption set**
  - Create `docs/text/CAPTIONS.md` for reusable labels/posts.
  - DoD: 10 captions with tone notes + usage contexts.
  - Commit: `chore(text): add CAPTIONS.md`

- [ ] **project: Physical manual edition(s)**[^physical_manual]
  - Produce the README repository as a printed manual / artist's book — completing the software-manual metaphor in physical form.
  - Format: ring-bound or spiral-bound (echoing IBM Redbook tradition); alternatively perfect-bound with exposed spine.
  - Edition model: **1/1 or very small runs**. Each edition is a **git-state snapshot** — a forensic record of the system at a particular moment. Not a definitive text; a printing.
  - The 9 enneagram guides as **parametric entry points**: 9 possible reading orders, 9 dust jackets, same book.
  - Maculate design: boot logs, corrupted entries, patina — printed as material, not hidden.
  - Research: `staging/research/research__computer_manual_history.md`
  - Idea seed: `ideacubator/idea__readme_as_physical_manual.md`
  - Sub-tasks (when ready):
    - [ ] Define page architecture: section order, front/back matter, colophon
    - [ ] Typography & format decisions (page size, binding, paper stock)
    - [ ] Content audit: what translates to print, what stays digital-only
    - [ ] Production research: vendors, costs, proofing workflow
    - [ ] First snapshot: choose a git state, produce proof copy
  - DoD: One physical proof copy in hand.
  - Commit: `feat(project): physical manual edition — proof v0.1`

- [ ] **chore(edit): Proof & anchors pass**[^proofing]
  - Repo-wide sweep for typos and anchor drift (link targets, diacritics, dates).  
  - DoD: CI spellcheck passes; zero broken links.
  - Commit: `chore(edit): proofing + anchor fix pass`

- [ ] **chore(ci): Markdown hygiene**
  - Add `.markdownlint.json` and `mdformat`/Prettier config; optional pre-commit hook.
  - DoD: Lint job added to CI; README + core docs conform.
  - Commit: `chore(ci): add markdown lint + format config`



## Templates & stubs
- “As-if is a stance; If-not is a sense.”
- “Validation frequency follows risk.”
- “Consent reduces overhead.”
- “Keep the minority report.”
- “Rigor must not smother play.”

---

## Footnotes & Links
[^reading_paths]: `docs/onboarding/reading_paths.md`
[^micro_ligs]: Key terms sourced from `docs/concepts/aLexicon.md` and `docs/concepts/GLOSSARY.md`.
[^mermaid]: System diagram lives in `README.md` §1 **ARCHITECTURE_OVERVIEW** (Mermaid).
[^gaintaining]: `docs/methods/METHODOLOGY_GAINTAINING.md` (v0.1).
[^physical_manual]: Research: `staging/research/research__computer_manual_history.md`; idea seed: `ideacubator/idea__readme_as_physical_manual.md`.
[^proofing]: Check: *pare* (trim) vs *pair*; names: Opale Art, Stokvel Gallery; title casing: "Echoes of Lynch"; tokens: `so)d`; "equilibrium"; "jury-selected".

---

`PLANS.md`

# PLANS 

>Configuration:
>*This block speaks to parsers, not people. Scroll freely.*
>```yaml
>title: "PLANS — Project Architecture & Strategic Roadmap"
>subtitle: "Commits on the Hyperstrate"
>intent: "To architect and maintain the README repository as a living, version-controlled cyber artist's book."
>scope: "The entire `README` repository and its associated praxis."
>version: "1.1"
>last_updated: "2025-08-26"
>status: "Active"
>tags: ["README", "architecture", "cyber artist book", "forensic aesthetics", "human-os", "hyperstrate", "parametric authorship"]
>```


## Project Architecture & Strategic Roadmap

**Lead Maintainer's Note:** This document outlines the high-level architectural strategy and future goals for the `README` repository. It is a living document that describes the intended evolution of the project. For a list of immediate, tactical tasks, see `TODOS.md`.

---

### **Phase 1: Genesis & Initial Deployment (Complete)**

- **Objective:** Establish the core `README.md` artifact and its foundational dependencies.
- **Status:** `v1.0.1` has been publicly released.
- **Key Artifacts:** `README.md` (v1.0+), `DEPENDENCIES.md` (v2.0).

---

### **Phase 2: Modular Expansion & `Gaintaining` (Current Phase)**

- **Objective:** To build out the rich, modular ecosystem of the praxis while weaving the connective "ligaments" that ensure system coherence and navigability.
- **Architectural Strategy:** The `/docs` directory will be structured as the primary library, with semantically named subdirectories.
    ```
    docs/
    ├── onboarding/     # Guides and entry points for new observers.
    ├── philosophies/   # Core ethical and aesthetic principles.
    ├── methods/        # Reusable methodologies (Traits/Mixins).
    ├── concepts/       # Definitions of key conceptual tools (Lexicon, Glossary).
    └── landscapifications/ # Spatial/installation spec seeds.
    ```
- **Keystone theme for Phase 2 — _Gaintaining_ (Grow + Maintain)**[^gaintaining_plan]:
  - **Deliverables (must-ship):**
    - `docs/onboarding/reading_paths.md` with curated trails (Practitioner / Theorist / Artist).
    - Mermaid system diagram embedded in `README.md`.
    - Micro-ligaments (inline and footnote cross-references) across all core documents.
    - Attachment interface contract[^attach_contract] applied to major docs.
    - New methods: `METHODOLOGY_GAINTAINING.md` and `METHODOLOGY_FORENSIC_AESTHETICS.md`.
    - Concepts housekeeping: `aLexicon.md` and `GLOSSARY.md` consolidated in `docs/concepts/`.

- **Phase-2 Exit Criteria:**
  - Reading paths are published and linked from the `README` top-section.
  - System diagram renders on GitHub with ≥ 6 clickable nodes.
  - `attach:` footer is present in ≥ 6 core documents.
  - New method drafts (v0.1) exist and are linked from reading paths.

---

### **Phase 3: Network & Interface Refinement (Ongoing)**

- **Objective:** To continuously refine the system's relationship with its internal and external networks based on real-world feedback.
- **Key Processes:**
    - **Consent Protocol:** Ongoing verification of consent with all human `Observers`. Confirmations are logged in `docs/protocols/CONSENT_LEDGER.md`[^consent_ledger] and surfaced in `README.md`.
    - **External Attestation Ledger:** Centralise juried selections, reviews, and notable curator responses in `docs/ledgers/ATTESTATIONS.md`[^attestations], with links to project-local logs.
    - **Interface Development:** Exploration of an interactive HTML version of the `README.md`, anchored to `reading_paths.md`.

---

### **Phase 4: Archival & Historical Integrity (Ongoing)**

- **Objective:** To ensure the repository functions as a complete and honest "forensic aesthetic" of its own becoming.
- **Key Processes:**
    - **Expressive Git History:** Commits will continue to be written as deliberate, meaningful narrative acts.
    - **Archiving of Context:** Key artifacts that informed the project are documented in `/docs/` with attachment interfaces and cross-links.
    - **Dependency Validation:** `DEPENDENCIES.md` is periodically reviewed against physical sources (evidence grades A/B/C).
    - **Documentation Hygiene:** Markdown lint/format runs in CI; proofing & anchor checks standardize terms and preserve special tokens (`so)d`).

---

## Footnotes & Links
[^gaintaining_plan]: Method doc: `docs/methods/METHODOLOGY_GAINTAINING.md` (v0.1); overview in `docs/onboarding/reading_paths.md`.
[^attach_contract]: See template in `TODOS.md` → **Templates & stubs**.
[^consent_ledger]: `docs/protocols/CONSENT_LEDGER.md`.
[^attestations]: `docs/ledgers/ATTESTATIONS.md`.
```
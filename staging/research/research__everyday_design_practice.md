# Everyday Design Practice - Library Research Brief

> Working candidate anchored in Don Norman's *The Design of Everyday Things*.
> This is a research artefact, not yet a library entry.

```yaml
archive:
  title: "Everyday Design Practice - Library Research Brief"
  candidate: "EVERYDAY_DESIGN_PRACTICE"
  status: "evaluating"
  created: 2026-04-24
  sessions_completed: 3
  current_phase: "T2 structure draft started"
  gate: "research"
  relevance: "Perceptual/action grammar for humane everyday design; likely bridge into design systems as governed practice rather than component-library tooling."
  early_signal: "proceed"
```

---

## Research Contract

**Research question:** Can Don Norman's everyday design primitives serve as an imported library construct for humane, perceptible, recoverable interaction design across objects, interfaces, documents, design systems, and CI collaboration surfaces?

**Candidate scope:** Norman-centred everyday design practice, especially the constructs in *The Design of Everyday Things*: affordances, signifiers, mappings, feedback, constraints, conceptual models, discoverability, the gulfs of execution/evaluation, slips/mistakes, and error as a design responsibility.

**Wider design thesis:** This scope boundary is methodological, not ontological. It does **not** mean "this is not design" or "design is only usability." The repo's broader thesis can remain: design is a general concern of planning, arrangement, constraint, relation, and systems care; there is no art or artistry without design in this wider sense. Norman is useful here because he supplies one bounded, citable primitive-set inside that larger design/artistry field: everyday legibility of action, state, consequence, and recovery.

**Non-goals:**

- Do not import "Design" as a total discipline.
- Do not make a vendor/tool critique the object of the entry.
- Do not collapse design systems into visual component libraries.
- Do not treat Norman as sufficient for ethical, systemic, or cultural design questions.

**Working formulation:**

> Everyday design practice is the craft of making possible actions, system state, recovery paths, and underlying models legible enough that ordinary use does not become a test of obedience, memory, or shame.

---

## Preflight Check (Protocol Section 6.2)

| # | Question | Answer | Notes |
|---|---|---|---|
| q1 | External authorship? | **YES** | Don Norman / Donald A. Norman; external to the repository maintainer. |
| q2 | Something citable exists? | **YES** | *The Design of Everyday Things* has multiple publisher-verifiable editions; Norman also maintains an official JND page for the revised edition. |
| q3 | Connection to existing constructs? | **YES** | Strong hooks to CARDS, SOLID, PERMACULTURE, OBJECTIFICATION, engineering, Parametric Authorship, and Axiology-First Aesthetics. |

**Result: PROCEED (3/3)**

**Scoping caution:** The phrase "Everyday Design Practice" is repo-facing. The eventual lib entry should probably be titled more narrowly, such as `THE_DESIGN_OF_EVERYDAY_THINGS.md`, while the surrounding lens/model work can carry the wider design/artistry thesis.

---

## Candidate Profile

| Field | Detail |
|---|---|
| **Primary source** | Norman, D. A. (2013). *The Design of Everyday Things: Revised and Expanded*. New York: Basic Books. |
| **Earlier title** | *The Psychology of Everyday Things* (Basic Books, 1988). WorldCat lists Basic Books, New York, 1988; OCLC 17550682; ISBNs 9780465067091 / 9780385267748. |
| **Author** | Don Norman / Donald A. Norman |
| **Domain** | Cognitive psychology, human-centred design, usability, interaction design |
| **Publisher evidence** | Basic Books / Hachette: 2013 revised edition, 368 pages, ISBN 9780465050659. MIT Press: 1998 UK/Ireland paperback, ISBN 9780262640374. |
| **Repo dependency note** | Added to `DEPENDENCIES.md` as `EverydayDesignPractice.lib` on 2026-04-24. |
| **Likely risk index** | 0.30-0.35. Commonly taught and low clinical risk, but culturally powerful and easily over-applied as "user-centred" individualism. |

---

## Core Constructs (L0, Initial)

| Construct | Working definition | Source status |
|---|---|---|
| **Affordances** | The action possibilities available in the relation between actor and object/system. In digital and invisible interfaces, affordance alone is often insufficient. | Norman 2013; Norman & Wadia 2013 article. |
| **Signifiers** | Perceivable signals that indicate where and how action can happen. Especially important where possible interactions are not physically obvious. | Norman 2013; Norman & Wadia 2013 article. |
| **Mapping** | The relation between controls and effects; good mapping lets action consequences feel intelligible rather than arbitrary. | Norman 2013 table of contents and publisher descriptions; needs chapter-level evaluation. |
| **Feedback** | Timely, informative response that tells a person what happened and supports error detection/recovery. | Norman & Wadia 2013 gives a usable verification anchor. |
| **Conceptual models** | The user's usable model of how a system works; crucial for learning and for recovery when things go wrong. | Norman 2013; Norman & Wadia 2013. |
| **Constraints** | Physical, cultural, semantic, and logical limits that reduce memory burden and guide appropriate action. | Norman 2013 table of contents; needs chapter-level evaluation. |
| **Gulfs of execution and evaluation** | The gaps between intention and possible action, and between system state and user understanding. | Norman 2013 table of contents; needs chapter-level evaluation. |
| **Human error? No, bad design** | A core responsibility shift: errors often reveal system/design failure rather than user inadequacy. | Norman 2013 chapter title verified via JND table of contents. |
| **Discoverability** | The extent to which possible actions and system state can be discovered without hidden knowledge. | Norman 2013 table of contents; needs chapter-level evaluation. |

**Central thesis candidate:** Everyday design practice lowers the cost of competent action. It moves knowledge into the world, makes action possibilities perceptible, gives feedback that supports recovery, and treats user error as diagnostic material for improving the system.

---

## Source Discovery (L0 + L1)

### Primary / Authorial Sources

| Source | Tier | Access | Notes |
|---|---|---|---|
| Norman, D. A. (2013). *The Design of Everyday Things: Revised and Expanded*. Basic Books. ISBN 9780465050659. | **Silver** | Publisher metadata online; book not open access. | Primary source for the candidate. Basic Books/Hachette lists on-sale date Nov 5, 2013, 368 pages, publisher Basic Books, ISBN-13 9780465050659. |
| Norman, D. A. (1988). *The Psychology of Everyday Things*. Basic Books. | **Silver** | Library catalogue / used copies; not open access. | Original title and publication context to verify through WorldCat / library records. |
| Norman, D. A. (1998). *The Design of Everyday Things*. MIT Press paperback, UK/Ireland rights. ISBN 9780262640374. | **Silver** | Publisher metadata online; out of print. | MIT Press lists pub date Aug 17, 1998, 272 pages. Useful edition-history anchor. |
| Norman, D. A. & Wadia, B. (2013). "Opportunities and Challenges For Touch and Gesture-Based Systems." JND.org. | **Bronze / Copper** | Open via Norman's site. | Authorial/practitioner paper; useful for signifiers, feedback, conceptual models, and recovery questions. |
| Norman, D. A. (2023). *Design for a Better World: Meaningful, Sustainable, Humanity Centered*. MIT Press. | **Silver** | Publisher metadata online; book not open access. | Later self-expansion from human-centred to humanity-centred design; likely And-Yet / shadow source. |

### Candidate L1 Sources to Verify

| Source / lineage node | Why it matters | Status |
|---|---|---|
| Gibson, J. J. (1977 / 1979) on affordances | Norman's use of "affordance" adapts a prior ecological psychology concept. | **Silver / Gold lineage node**: Norman 1999 explicitly names Gibson as originator; Open Library verifies *The Ecological Approach to Visual Perception* edition metadata; ELMCIP summary notes the 1977 article and 1979 elaboration. |
| Gaver, W. W. (1991). "Technology affordances." CHI '91 Proceedings, 79-84. DOI: 10.1145/108844.108856. | Early peer-reviewed HCI affordance paper; clarifies perceptible/hidden/false affordances. | **Gold**: peer-reviewed CHI conference contribution; metadata verified via Northumbria research portal. |
| Hartson, R. (2003). "Cognitive, physical, sensory, and functional affordances in interaction design." *Behaviour & Information Technology*, 22(5), 315-338. DOI: 10.1080/01449290310001592587. | Extends Norman's distinctions into design/evaluation affordance types. | **Gold**: peer-reviewed journal article; metadata verified via Taylor & Francis search result. |
| Norman, D. A. (1999 / JND repost 2008). "Affordance, conventions, and design." *interactions*, 6(3), 38-43. DOI: 10.1145/301153.301168. | Norman's own correction of affordance misuse; distinguishes real/perceived affordance, constraints, conventions, feedback, and conceptual models. | **Silver / Bronze**: ACM *interactions* citable article; authorial JND repost evaluated. |
| Norman, D. A. (2008). "Signifiers, not affordances." *interactions*, 15(6), 18-19. DOI: 10.1145/1409040.1409044. | Short source for the signifier correction that becomes explicit in the revised DOET. | **Silver / Bronze**: ACM *interactions* citable article; not yet fully evaluated. |
| Design systems literature | Needed later for the downstream model/guide, not necessarily the lib entry. | **TODO**: defer until lib candidate passes. |
| Design justice / participatory design / Papanek | Ethical counterweights to individualised "user-centred" practice. | **TODO**: likely lens/model context rather than core lib scope. |

**Minimum viable evidence base:** MET for Phase 2. Silver book sources are verified via publisher metadata; Gold HCI sources now identified for affordance lineage and critique.

---

## Draft Intellectual Lineage

```text
Gibson (1977 / 1979)
  affordances as organism-environment action relations
        |
        v
Norman & Draper (1986)
  user-centred system design; gulfs of execution/evaluation
        |
        v
Norman (1988)
  The Psychology of Everyday Things
  everyday cognitive design; visibility, mapping, constraints, feedback
        |
        v
Gaver (1991)
  technology affordances; perceptible / hidden / false affordances
        |
        v
Norman (1999 / 2008)
  affordance terminology correction; signifiers foregrounded
        |
        v
Hartson (2003)
  cognitive, physical, sensory, functional affordances for interaction design
        |
        v
Norman (2013)
  revised DOET; signifiers added; examples and implementation updated
        |
        v
Norman (2023)
  humanity-centred / sustainable / meaningful design as later corrective expansion
```

**Lineage interpretation:** Norman is the import candidate, not the whole lineage. Gibson supplies the upstream ecological term; Gaver and Hartson provide HCI refinement and critique; later Norman provides the self-correction that prevents the entry from remaining only "usable objects" and missing systemic responsibility.

---

## Draft "What This Changes" Table

| Conventional drift | Everyday Design Practice inversion |
|---|---|
| User error as personal failure | Error as diagnostic evidence about system design, feedback, constraints, and conceptual models |
| Design as surface polish | Design as communication between possible action, system state, and human understanding |
| Components as reusable shapes | Components as interaction contracts: what can be done, what happened, how to recover, what model is taught |
| Documentation as afterthought | The system image is part of the design; help, labels, states, and examples carry the conceptual model |
| Consistency as visual sameness | Consistency as learnable mapping across action, response, recovery, and meaning |
| Hidden complexity as sophistication | Hidden complexity as debt unless supported by signifiers, feedback, and recoverable conceptual models |
| Design systems as asset libraries | Design systems as governed practice: shared decisions, language, constraints, accessibility, code, maintenance, and memory |

---

## Initial Source Evaluation Snapshots

### Norman 2013 - *The Design of Everyday Things*

| Field | Evaluation |
|---|---|
| **Role** | Primary L0 source. |
| **Evidence tier** | Silver: respected trade/practitioner publication with publisher metadata. |
| **Key claims to evaluate** | Interaction design should make possible actions discoverable; mapping, feedback, constraints, and conceptual models reduce error and confusion; errors often indicate design failure. |
| **Repository relevance** | Provides the everyday interaction grammar missing between high-level axiology and concrete interface/system practice. |
| **Open questions** | Which constructs changed materially between 1988/1998/2013? How does the 2013 addition of signifiers affect the lib primitive set? |

### Norman & Wadia 2013 - Touch and Gesture Systems

| Field | Evaluation |
|---|---|
| **Role** | Authorial bridge from everyday-object design into modern interaction surfaces. |
| **Evidence tier** | Bronze/Copper: conference/practitioner source, hosted by Norman. |
| **Key claims extracted** | For touch/gesture systems, people need answers to: what can I do, where/how, what happened, how do I get back, and how does the product work? Affordances/signifiers, feedback, and conceptual models answer those questions. |
| **Repository relevance** | Strong bridge into design systems: interaction contracts must make action, state, undo/recovery, and model legible across products and teams. |
| **Open questions** | Should this become a supporting source only, with DOET carrying the core source weight? Probably yes. |

### Norman 1999 / JND 2008 - "Affordance, conventions, and design"

| Field | Evaluation |
|---|---|
| **Role** | Authorial terminology correction and source-integrity guard. |
| **Evidence tier** | Silver/Bronze: ACM *interactions* article; authorial JND repost includes bibliographic note and references. |
| **Key claims extracted** | Gibsonian affordances are actor-world relations; Norman's POET/DOET was really concerned with perceived affordance; screen-based design often depends more on conventions, constraints, feedback, and conceptual models than on real affordances; designers should distinguish these mechanisms because each has different design consequences. |
| **Repository relevance** | Prevents sloppy folk-UX use of "affordance." Supports the design-systems argument that visible components are not enough: conventions, constraints, feedback, and conceptual models are part of the system. |
| **Open questions** | The eventual lib entry should quote sparingly and paraphrase this correction carefully; avoid reducing Norman to "buttons should look clickable." |

### Norman 2023 - *Design for a Better World*

| Field | Evaluation |
|---|---|
| **Role** | Later corrective/expansive source for And-Yet. |
| **Evidence tier** | Silver: MIT Press monograph. |
| **Key claims to evaluate** | Design responsibility scales from human-centred usability toward humanity-centred, sustainable, meaningful systems. |
| **Repository relevance** | Prevents everyday design from narrowing into local usability while ignoring systemic externalities. Strong hook to REGENERATIVE_CULTURES and PERMACULTURE. |
| **Open questions** | How much of this belongs in the lib entry versus a later Design Systems / Everyday Design Practice lens? |

### Gaver 1991 - "Technology affordances"

| Field | Evaluation |
|---|---|
| **Role** | L1 HCI lineage and critique source. |
| **Evidence tier** | Gold: peer-reviewed CHI conference contribution; DOI and Scopus citation count metadata verified via Northumbria research portal. |
| **Key claims to evaluate** | Affordances become useful for interaction design when tied to perceptibility; hidden and false affordances help explain mistakes. |
| **Repository relevance** | Gives a stronger vocabulary for signifier/affordance failures in interfaces, docs, and design-system primitives. |
| **Open questions** | How much of Gaver belongs in the eventual lib entry versus a lineage paragraph? |

### Hartson 2003 - "Cognitive, physical, sensory, and functional affordances"

| Field | Evaluation |
|---|---|
| **Role** | L1 HCI refinement source. |
| **Evidence tier** | Gold: peer-reviewed journal article in *Behaviour & Information Technology*; DOI verified via Taylor & Francis metadata. |
| **Key claims to evaluate** | Affordance can be decomposed into complementary types for interaction design and evaluation. |
| **Repository relevance** | Useful for a future design-systems resource: components must not only exist functionally, they must support cognition, sensation, physical action, and intended function. |
| **Open questions** | Does Hartson's taxonomy add execution value for the repo, or would it overload the Norman-centred entry? |

---

## Repo Hooks

| Existing construct | Connection |
|---|---|
| **CARDS** | Competence: legible action and learnable systems. Autonomy: clear choices, undo/recovery, no hidden coercion. Dignity: errors treated as design signals rather than user shame. Safety: constraints and feedback prevent avoidable harm. |
| **SOLID** | Everyday design primitives need engineered boundaries: signifiers and feedback are interfaces; conceptual models are contracts; constraints are designed limits. |
| **PERMACULTURE** | Norman gives local action legibility; permaculture gives attention topology and relational placement. Both resist design as surface decoration. |
| **REGENERATIVE_CULTURES** | Norman 2023 may provide bridge from human-centred to humanity-centred design; useful for avoiding usability-without-systemic-care. |
| **OBJECTIFICATION** | Blaming users for design-induced failure is a dignity breach; users become instruments for system convenience. |
| **WHEEL_OF_CONSENT** | Discoverable choices and reversible action connect to consent architecture: people must know what can happen, what did happen, and how to stop or recover. |
| **Engineering model** | Design systems as maintained boundary systems: structure, seam, signal, graveyard, ledger, ritual, residue. |
| **Parametric Authorship** | Design systems as rule-design across strata: tokens/components are outputs; the system is the parameterised grammar that produces coherent families of decisions. |
| **Axiology-First Aesthetics** | Values -> invariants -> affordances -> sensation -> behaviour. Norman supplies part of the affordance/signifier/feedback layer. |

---

## CARDS Mapping (Draft)

| CARDS axis | Everyday Design Practice contribution | Failure signal |
|---|---|---|
| **Competence** | Discoverability, mappings, constraints, and conceptual models help people act skilfully without memorising hidden rules. | People feel foolish, dependent, or forced to ask for help for ordinary use. |
| **Autonomy** | Clear possible actions, undo/recovery paths, and honest state feedback preserve agency under use. | Users can act, but cannot confidently reverse, pause, compare, or refuse. |
| **Relatedness** | Shared signifiers and consistent mappings let teams and communities coordinate around the same system image. | Each team/person carries a private model; handoff requires oral folklore. |
| **Dignity** | Errors are treated as design information, not as evidence of user inadequacy. | The system blames, shames, or patronises the person it confused. |
| **Safety** | Constraints, feedback, and recovery reduce preventable harm, especially under fatigue, haste, stress, or unfamiliarity. | High-consequence actions are easy to trigger accidentally and hard to understand afterward. |

**Diagnostic summary:** If CARDS degrades during everyday use, inspect Norman primitives first: possible action, signifier, mapping, feedback, constraint, conceptual model, recovery path. The failure will often be located before the user's "mistake."

---

## Cross-Framework Mapping (Draft)

| Pair | Productive relation |
|---|---|
| **SOLID + Norman** | SOLID governs modular change; Norman governs perceptible action. A good design system needs both: internal seams that hold and external signifiers that teach. |
| **Engineering + Norman** | Engineering asks which boundaries hold, flex, report, retire, remember, and emit residue. Norman asks whether people can perceive and recover across those boundaries. |
| **Permaculture + Norman** | Permaculture places elements by attention topology; Norman makes each local element legible in use. One designs the field; the other designs the encounter. |
| **Objectification + Norman** | Blameful interfaces instrumentalise people as tolerance buffers for system convenience. Everyday design practice returns responsibility to the designed relation. |
| **Wheel of Consent + Norman** | Consent architecture requires more than permission text: people must perceive available actions, consequences, reversibility, and state. |
| **Parametric Authorship + Norman** | Design systems are parametric grammars. Norman's primitives are tests for whether the generated family of outputs remains legible to the people who encounter it. |

---

## Title Boundary Decision (Provisional)

**Recommendation:** Keep the research brief named `Everyday Design Practice`, but title the eventual lib entry **`THE_DESIGN_OF_EVERYDAY_THINGS.md`** unless further reading shows that Norman's broader body of work is required as the imported construct.

**Reason:** `/docs/lib/` entries should preserve host != author and avoid claiming a whole discipline. The book is the citable, bounded source. `EverydayDesignPractice.lib` can remain the repo-facing alias or use-case label, while the formal lib entry stays anchored to the work.

**Important nuance:** This is not a retreat from "design" as a deep field. It is a separation of concerns. The lib entry imports Norman's bounded construct; the later lens/model can make the larger claim that design is a constitutive dimension of artistry: planning, material constraint, ordering, rhythm, interface, maintenance, and systems concern. In that larger sense, design is not downstream of art; it is one of the ways artistry becomes transmissible.

**Likely downstream split:**

- **Lib:** `THE_DESIGN_OF_EVERYDAY_THINGS.md` - Norman's constructs and source integrity.
- **Lens/model:** `EVERYDAY_DESIGN_PRACTICE` or `DESIGN_SYSTEMS_AS_GOVERNED_PRACTICE` - repo transposition into design systems, art practice, CI collaboration, and community resources.

---

## Integration Hypothesis (Early)

**Gap filled:** The repository has strong axiological, systemic, and ecological design grammars. It lacks a compact imported everyday-interaction grammar for how a person knows what can be done, what happened, why it happened, and how to recover.

**Draft utility statement:** Everyday Design Practice gives the repo a humane interaction primitive set for evaluating objects, interfaces, documents, design systems, and CI collaboration surfaces: make action discoverable, state legible, consequences mapped, errors recoverable, and conceptual models teachable.

**Likely downstream path:**

1. Complete research brief.
2. If import gate passes, create `docs/lib/THE_DESIGN_OF_EVERYDAY_THINGS.md` or `docs/lib/EVERYDAY_DESIGN_PRACTICE.md`.
3. Create a later lens/model for design systems as governed practice.
4. Produce community-facing resource(s) around design systems beyond component libraries and tool accounts, without centring any specific vendor as antagonist.

---

## Provisional Import Gate

| # | Gate question | Provisional answer | Evidence / concern |
|---|---|---|---|
| 1 | External authorship? | **YES** | Don Norman. |
| 2 | Verifiable primary sources? | **YES** | Publisher metadata and authorial pages verified; book-level reading still required. |
| 3 | Integrates with >=2 existing constructs? | **YES** | CARDS, SOLID, PERMACULTURE, OBJECTIFICATION, engineering, PA. |
| 4 | Fills a gap? | **YES** | Everyday interaction legibility / recovery grammar. |
| 5 | Active use case? | **YES** | Design systems research and community-facing UX/design resources. |

**Provisional result:** 5/5, proceed with research. Do not proceed to lib entry until source evaluation and And-Yet risks are stronger.

---

## T1 Source Gate Sign-Off

| Requirement | Status | Notes |
|---|---|---|
| Selection criteria passed | **PASS: 5/5** | External authorship, verifiable sources, >=2 integrations, gap filled, active use case. |
| Primary sources identified and verified | **PASS** | Norman 2013 DOET (Basic Books/Hachette); Norman 1988 POET (WorldCat); Norman 1999 / JND 2008 affordance correction; Norman & Wadia 2013 touch/gesture paper; Norman 2023 later corrective expansion. |
| Verification tier assigned | **PASS** | Silver book sources; Gold HCI lineage sources (Gaver 1991, Hartson 2003); Bronze/Copper practitioner/authorial online sources. |
| Lineage diagram drafted | **PASS** | Gibson -> Norman & Draper -> Norman 1988 -> Gaver -> Norman correction -> Hartson -> Norman 2013 -> Norman 2023. |
| Draft "What This Changes" table | **PASS** | Present above; connects everyday design to design systems as governed practice. |
| Utility statement drafted | **PASS** | Everyday Design Practice gives the repo a humane interaction primitive set for action, state, consequence, recovery, and conceptual models. |

**T1 result:** **PASS.** Candidate may proceed to T2 Structure Gate: drafting the two-zone lib entry, likely as `docs/lib/THE_DESIGN_OF_EVERYDAY_THINGS.md`.

**T2 caution:** Do not let the lib entry absorb the whole design/artistry thesis. Put the broader claim into a later lens/model where repo synthesis belongs.

---

## T2 Structure Draft Status

**Started:** 2026-04-24

**Draft file:** `docs/lib/THE_DESIGN_OF_EVERYDAY_THINGS.md`

| T2 requirement | Status | Notes |
|---|---|---|
| Two-zone structural draft | **DRAFTED** | Subject Matter and Repository Integration zones drafted. External review estimates benchmark-range structure; needs direct-source pass before promotion. |
| CARDS integration | **DRAFTED** | Present in lib entry; based on research mapping. |
| >=1 additional integration | **DRAFTED** | SOLID/engineering, PERMACULTURE, OBJECTIFICATION, WHEEL_OF_CONSENT, PA. |
| Core constructs specified | **DRAFTED** | Affordances, signifiers, mapping, feedback, constraints, conceptual models, action loop, error. |
| T2 sign-off | **NOT YET** | Needs direct source pass against Norman 2013 and review for claim confidence. |

**Next:** Run T2 review against the library entry creation template; then deepen weak areas before T3 integrity work.

### External Review Notes (Claude)

Review received after initial T2 draft:

- Estimated LHS: approximately 0.93, benchmark range.
- Cross-links: all 12 verified as resolving.
- Main pre-T3 blockers: direct source pass against Norman 2013; resolve Gaver/Hartson role; keep status as Draft Imported Library until T3.
- Polish notes applied: expanded Conceptual Models/System Image; added Norman & Wadia URL; softened Section 9 wording; adjusted affordance/signifier wording; changed JND verification phrase; added §10->§11 bridge; added optional signifier easter egg.

---

## And-Yet / Shadow Questions to Carry Forward

1. **User-centred can become user-blaming in disguise.** If the system asks only what the user can perceive/do, it may ignore organisational incentives, labour conditions, or political economy.
2. **Usability can serve extractive goals.** A system can be highly usable and still manipulate, surveil, or deplete people.
3. **Everyday examples can hide cultural specificity.** "Obvious" mappings, signs, and constraints may not be universal.
4. **Designer responsibility can become designer heroism.** The corrective is participatory / humanity-centred design: design with people and systems, not merely for users.
5. **Design systems can be reduced to assets.** The downstream work must keep design systems as governed practice: decisions, language, interaction contracts, accessibility, code, maintenance, and memory.

---

## Next Research Tasks

- [ ] Read/skim the 2013 revised edition directly enough to verify core constructs and avoid second-hand summaries.
- [x] Verify original 1988 publication details through WorldCat / library metadata.
- [x] Identify 1-2 Gold HCI sources on affordances/signifiers or Norman's design primitives.
- [x] Decide provisional title boundary: `THE_DESIGN_OF_EVERYDAY_THINGS` as likely lib entry; `EVERYDAY_DESIGN_PRACTICE` as repo-facing alias/lens.
- [x] Draft lineage: Gibson -> Norman -> HCI/UX practice, with later Norman 2023 as corrective expansion.
- [x] Draft CARDS mapping and at least one cross-framework mapping for the future T1 Source Gate.
- [x] Directly evaluate Norman 1999 / JND 2008 enough to clarify affordance/signifier treatment.
- [x] Decide whether Gaver and Hartson stay as lineage notes or become formal integration sources in the lib entry. Decision: keep as Gold lineage/refinement sources in verification and lineage, not separate integration sections.
- [ ] Keep vendor/tool examples implicit unless a later community-facing resource explicitly needs them.
- [x] Begin T2 Structure Gate by drafting `docs/lib/THE_DESIGN_OF_EVERYDAY_THINGS.md` using the two-zone template.
- [x] Review `docs/lib/THE_DESIGN_OF_EVERYDAY_THINGS.md` against the full Library Entry Creation template.
- [x] Apply T2 polish pass from external review.
- [ ] Update lib entry after direct source pass against Norman 2013.

---

## Sources Consulted This Session

- Don Norman, "The Design of Everyday Things, Revised and Expanded Edition" (JND official book page): https://jnd.org/books/the-design-of-everyday-things-revised-and-expanded-edition/
- Basic Books / Hachette, *The Design of Everyday Things* metadata: https://www.hachettebookgroup.com/titles/don-norman/the-design-of-everyday-things/9780465050659/?lens=basic-books
- MIT Press, *The Design of Everyday Things* metadata: https://mitpress.mit.edu/9780262640374/the-design-of-everyday-things/
- Don Norman & Bahar Wadia, "Opportunities and Challenges For Touch and Gesture-Based Systems" (JND): https://jnd.org/opportunities-and-challenges-for-touch-and-gesture-based-systems/
- Don Norman, *Design for a Better World* (JND official book page): https://jnd.org/books/design-for-a-better-world/
- MIT Press, *Design for a Better World* metadata: https://mitpress.mit.edu/9780262047951/design-for-a-better-world/
- Northumbria University Research Portal, Gaver, W. W. (1991), "Technology affordances": https://researchportal.northumbria.ac.uk/en/publications/technology-affordances/
- Taylor & Francis metadata, Hartson, R. (2003), "Cognitive, physical, sensory, and functional affordances in interaction design": https://www.tandfonline.com/doi/abs/10.1080/01449290310001592587
- ACM *interactions*, Norman, D. A. (1999), "Affordance, conventions, and design": https://interactions.acm.org/archive/view/may-june-1999/affordance-conventions-and-design1
- ResearchGate metadata, Norman, D. A. (2008), "Signifiers, not affordances": https://www.researchgate.net/publication/220382649_The_way_I_see_it_-_Signifiers_not_affordances
- WorldCat, *The Psychology of Everyday Things* metadata: https://search.worldcat.org/title/The-psychology-of-everyday-things/oclc/17550682
- Open Library, Gibson, *The Ecological Approach To Visual Perception*: https://openlibrary.org/books/OL8270402M/The_Ecological_Approach_To_Visual_Perception
- ELMCIP, Gibson, "The Theory of Affordances": https://elmcip.net/creative-work/theory-affordances
- Don Norman, "Affordance, Conventions and Design (Part 2)" (JND authorial repost of 1999 *interactions* article): https://jnd.org/affordance-conventions-and-design-part-2/

---

## Resume Instructions

1. Read this file first.
2. Current phase is `T2 structure draft started`; early signal is `proceed`.
3. Resume by reviewing `docs/lib/THE_DESIGN_OF_EVERYDAY_THINGS.md` against the Library Entry Creation template.
4. Keep the lib entry bounded to Norman, while preserving the wider design/artistry thesis as context.
5. Wider thesis: design as planning, arrangement, constraint, relation, and systems care; no art or artistry without design in this sense.
6. Keep the downstream design-systems use case affirmative and tool-agnostic.
7. Treat `THE_DESIGN_OF_EVERYDAY_THINGS.md` as the likely lib-entry title, with `Everyday Design Practice` as the repo-facing use case.
8. Update `sessions_completed`, `current_phase`, and `early_signal` before closing the next research session.

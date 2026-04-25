# Building a Constructive Design System

> *A field guide to agreements that survive work.*

```yaml
contract:
  title: "Building a Constructive Design System"
  subtitle: "A field guide to agreements that survive work"
  status: "draft"
  kind: "field guide (technical register transitioning to ethical)"
  created: 2026-04-24
  voice: "Voice-and-Style Signature v1.0.0"
  anchors:
    - "../lib/THE_DESIGN_OF_EVERYDAY_THINGS.md"
    - "../models/engineering.md"
    - "../lib/SOLID.md"
    - "../lib/CARDS.md"
    - "../lib/PERMACULTURE.md"
    - "../lib/REGENERATIVE_CULTURES.md"
    - "../../projects/theses/parametric_authorship.md"
  external_anchors:
    - "W3C Design Tokens Format Module 2025.10"
    - "WCAG 2.2"
    - "Open UI Working Mode and component specification process"
    - "W3C Web Sustainability Guidelines"
    - "European Accessibility Act"
    - "EU AI Act"
    - "ILO digital labour / platform economy research"
    - "IEA Energy and AI"
  risk_index: 0.35
```

---

# GIGO Holds[^1] #

## Orientation

The title is singular, but the work remains plural.

A design system, in the world we actually have, is a plural field held under a useful singular: tokens, components, code, documentation, governance, accessibility rules, naming habits, procurement constraints, analytics, histories, rituals, and the quiet preferences of tired people.

Read this as a field manual. A design system is a set of agreements that must survive contact with work.

It must survive handoff.

It must survive drift.

It must survive the global condition in which digital artefacts are made now: distributed teams, uneven bandwidth, AI-assisted production, accessibility law, platform churn, brittle supply chains, climate cost, exhausted attention, and labour markets shaped by digital platforms (ILO, 2021; UNCTAD, n.d.).

Quasi-post-industrial, then. Industry is everywhere: data centres, moderation queues, logistics systems, cobalt, compliance departments, carbon accounting, undersea cables, cheap laptops, expensive SaaS, and the invisible labour of keeping a button blue in twelve products. As of this draft (24 April 2026), the stable IEA baseline is about 415 TWh for data centres in 2024, around 1.5% of world electricity consumption (IEA, 2025); its April 2026 update reports 17% data-centre electricity-demand growth in 2025, against roughly 3% global growth (IEA, 2026). So the current share is better treated as a volatile high-1% estimate than a neat 1.5%, with local grid impacts sharper than the global percentage suggests. The point is material honesty. Interfaces have weight.

Post-industrial only in the sense that the factory has learned to wear an interface.

---

## What is a design system? ##

A design system is, perhaps, a bit like a handshake, or hug, between intent and execution. An intent and an execution. It can be the difference between a project that is unfurling with ease versus a project that gets bogged down in a protracted war of crossed purposes, confusion and ultimate calamity for all involved.

Ultimately though, it is arguably simply a regime of what should matter how much versus what else. There's arguably not correct, or at least what is correct or best keeps changing. Fashion and familiarity will play a role, as will spectacle and novelty, which both have their place in a good design system, but what a good design system arguably excels at, is creating a shelter for artistry as well.

Design is basically the process and practice of applied planning, if you want to be pedantic about it. System is how elements relate, interact and affect each other and is more than the sum of those elements.

## What a design system is, also

A design system can be a maintained dynamic agreement between:

- priorities
- perception
- behaviour
- code
- language
- accessibility
- governance
- memory
- performance
- and more

We will focus here on the realm of visual design systems, the aesthetic-pragmatics of technologically empowered systems - but we might find the principles extend to and echo in other domains as well, from industrial engineering to domestic permaculture.

The visible components matter. A button should look and behave like itself. A form field should not become a small moral trial. Colour should carry meaning without being the only meaning.

And yet the component is never the system.

The system is the set of decisions that make the component trustworthy across contexts. What may vary? What must hold? Who can change it? Where is the deprecation path? How does a user recover? How does a maker know whether they are creating a pattern or escaping a constraint?

In Norman's terms (Norman, 2013), the design system must shape a coherent **system image**. People do not encounter the source of truth. They encounter evidence: names, states, examples, behaviours, docs, failures, code, defaults, and stories told by the team. From that evidence they build a conceptual model. If the evidence contradicts itself, the model breaks.

Then people improvise.

Then the design system becomes folklore.

---

## Step 0: Name Consequence

The first material is consequence.

Before tokens, before components, before typography, answer this:

> What must this system make easier, safer, clearer, and more dignified?

That is the axiology pass. In [Axiology-First Aesthetics](../methods/methodology__axiology_first_aesthetics_for_engagement_design.md), the order is:

```text
value -> invariant -> affordance -> sensation -> behaviour
```

The surface comes later. It matters because it carries values into use.

In this repo's terms, run CARDS first:

| Axis | Design-system question |
|---|---|
| **Competence** | What does the system help people become more capable of doing? |
| **Autonomy** | Where are the real choices, exits, overrides, and local adaptations? |
| **Relatedness** | How does the system help teams coordinate without folklore? |
| **Dignity** | Where does the system stop blaming users and makers for its own confusion? |
| **Safety** | Which harms are structurally prevented, especially under stress? |

Then add provenance and time:

| Facet | Design-system question |
|---|---|
| **Provenance** | Can a decision, token, component, or exception explain where it came from? |
| **Consent** | Where can users and teams refuse, exit, override, or slow down without punishment? |
| **Continuity** | What should remain interpretable after staff turnover, redesign, localisation, and decay? |

If this sounds too moral for design systems, good. That discomfort is diagnostic. Design systems distribute power: which patterns are easy, whose needs are named, whose exceptions are expensive, whose impairment is treated as edge case, whose language gets to be the default.

The values are already there.

Declare them early enough to matter.

---

## Step 1: Draw Boundaries

The engineering model says: engineering is the deliberate design of boundaries between what may change and what must hold.

That is a design-system sentence.

A design system without boundaries is a mood board with aspirations. A design system with the wrong boundaries is a bureaucracy. Name the faces of the boundary.

| Engineering face | Design-system expression |
|---|---|
| **Structure** | The invariants: accessibility rules, interaction contracts, naming grammar, supported platforms, semantic tokens. |
| **Seam** | The interfaces where change passes: token APIs, component props, theme layers, content slots, contribution process. |
| **Signal** | The ways failure reports itself: tests, linting, visual regression, usage analytics, accessibility audits, issue templates. |
| **Graveyard** | Deprecation paths, migration guides, archived patterns, quiet endings. |
| **Ledger** | Decision records, changelogs, provenance, why-this-exists notes. |
| **Ritual** | Review cadence, release ceremonies, design crits, token sync, audits. |
| **Residue** | Workarounds, local overrides, abandoned variants, undocumented exceptions. |

Build these before maturity becomes theatre.

Especially the graveyard.

Dead components that still appear in production have users.

---

## Step 2: Treat Tokens as Decisions

The W3C Design Tokens Format Module (W3C Design Tokens Community Group, 2025) names a real need: token data should move between tools without bespoke glue code. Interoperability is care at the maintenance layer.

A token is a named decision. At minimum, a name/value pair. With more maturity, it also carries type, description, aliasing, mode, provenance, constraints, and intended use.

A token should be able to answer a small ethical question: what value does this make easier to preserve?

The question is not only:

```text
color.text.primary = #111111
```

The question is:

```text
why does this text need this contrast,
in which modes,
for which surfaces,
under which accessibility obligations,
with what migration path,
and who may change it?
```

Tokens are where aesthetics become infrastructure. They should be boring in the way foundations are boring. Quiet. Load-bearing.

Something like that.

---

## Step 3: Make Components into Contracts

Open UI's work on shared component names, anatomies, behaviours, and browser-facing patterns (Open UI, n.d.) is instructive here. It treats components as things with structure and conduct.

That is the right pressure.

A component has anatomy:

- root
- label
- control
- icon
- helper text
- error text
- state
- slot
- affordance
- signifier

A component has behaviour:

- focus movement
- keyboard interaction
- pointer interaction
- touch behaviour
- loading
- disabled state
- error recovery
- validation
- announcement to assistive technology

A component has governance:

- owner
- allowed variation
- release state
- deprecation path
- test coverage
- accessibility expectation
- content rules
- examples and anti-examples

A component also has a feel. A destructive action should feel consequential. A disabled state should feel unavailable without becoming contemptuous. A focus ring should feel findable. A loading state should tell the truth about waiting.

If your "button" only defines shape, colour, spacing, and hover state, you have a visual agreement. Useful, but thin.

A real button knows what it promises.

---

## Step 4: Write the Manual as Part of the Machine

Documentation teaches the system's conceptual model.

Bad documentation says:

> Here are the components.

Better documentation says:

> Here is what this pattern is for, what it refuses, how it behaves, how to test it, how to migrate away from it, and what to do when it does not fit.

The minimum useful page for a component:

```text
name
purpose
when to use
when not to use
anatomy
states
behaviour
accessibility
content guidance
code API
design tokens
examples
anti-examples
known risks
related patterns
change history
owner
deprecation path
```

This is how the system remains learnable when the original makers leave.

A design system that cannot survive staff turnover is a memory arrangement.

Fragile, and often very pretty.

---

## Step 5: Build Accessibility into Structure

WCAG 2.2 (W3C, 2023) is a shared, testable floor. The European Accessibility Act (European Commission, 2019) has made parts of that floor harder to ignore in markets touching the EU. The aim is structural respect.

Accessibility belongs in:

- token definitions
- component anatomy
- interaction contracts
- content rules
- testing
- release gates
- procurement
- design critique
- analytics interpretation
- governance

If accessibility arrives after visual approval, the system has made a political decision: some users may enter later, through remediation.

That decision has users.

A good design system treats accessibility as structure, seam, signal, and ritual: contrast, focus, semantics, keyboard paths, accessible APIs, automated checks, human review, and recurring audits with people who do not use the system the way the team does.

The exit is hidden surprisingly often.

If the exit is hidden, the consent is fictional.

---

## Step 6: Govern AI-Assisted Variation

AI increases the need for design systems.

Generative tools can produce variants faster than teams can understand them. They can write plausible component code, documentation, names, and rationale. Plausibility is useful. It is also dangerous.

The EU AI Act (European Commission, 2024) sits outside the usual design-system conversation, but it points toward the same practical need: governed systems, traceable decisions, risk awareness, human accountability. AI-generated interface work needs provenance, review, and declared invariants.

Ask:

- Was this pattern generated, adapted, or hand-authored?
- Which source pattern did it derive from?
- Which invariants must hold under AI-assisted variation?
- What may the model change?
- What must it never invent?
- How is accessibility verified?
- Who signs off?
- Where is the ledger?

Without this, the design system becomes a style hallucination machine.

It will look coherent.

Until it does not.

---

## Step 7: Count Waste as Design Material

The W3C Web Sustainability Guidelines (W3C, n.d.) are still draft work, but the direction is plain enough: digital products have planet, people, and prosperity impacts. A design system that standardises waste does so efficiently.

Sustainability includes server energy, and also:

- asset weight
- unnecessary motion
- duplicate libraries
- analytics excess
- third-party scripts
- dark patterns that increase needless engagement
- heavy pages for low-bandwidth contexts
- short-lived redesign cycles
- inaccessible flows that require human support work
- components that make content teams fight the system

Permaculture is useful here (Mollison, 1988; Holmgren, 2002). It asks us to observe first, place elements by frequency of care, stack functions carefully, value edges, produce no waste, and design with succession.

Design systems need succession.

What is this pattern becoming? What happens when it is overused? What should replace it? What waste does it produce?

Scale carries consequence.

---

## Build Sequence

From here, the manual begins. The earlier sections name the parts; this section assembles them.

### 1. Name the terrain

Start with the actual organisation, not the ideal org chart.

Map:

- products
- teams
- platforms
- codebases
- regulatory surfaces
- user groups
- languages
- accessibility maturity
- existing component libraries
- content systems
- analytics
- design files
- release cycles
- support tickets
- known pain

This is sector analysis. What flows through the system that you do not control? Procurement, deadlines, brand politics, framework churn, legal obligations, device constraints, local languages, load-shedding, data cost, staff turnover.

Design around forces. Do not design against weather.

### 2. Write the value contract

Keep it short enough to survive a meeting.

```yaml
value_contract: |
  This design system exists to help teams produce coherent, accessible,
  maintainable interfaces without hiding consequence.
  It must protect competence, autonomy, relatedness, dignity, safety,
  provenance, consent, and continuity.
  It refuses polish at the cost of exit, traceability,
  accessibility, or maintainability.
```

Change the wording for the actual organisation. Keep the shape: purpose, protected values, hard refusals.

### 3. Declare the invariants

Write the things that must hold.

Examples:

```text
All interactive components expose accessible names.
Every destructive action has a recovery or confirmation pattern appropriate to risk.
Tokens are semantic before they are decorative.
Content guidance ships with components.
Components carry deprecation paths.
No pattern reaches stable without keyboard and screen-reader review.
Localisation may change layout; layout must expect this.
AI-assisted variants must preserve accessibility, naming, and behaviour contracts.
```

Keep the list short enough to remember. Strong enough to bite.

### 4. Translate values into mechanics

For each protected value, name what the system permits, discourages, and prevents.

```text
competence
  permits: learning by example, clear naming, recoverable mistakes
  discourages: unexplained variants, clever one-offs, hidden dependencies
  prevents: stable components without usage guidance

consent
  permits: opt-out, override, local adaptation with trace
  discourages: forced adoption by social pressure
  prevents: irreversible migrations without notice and recovery
```

A value that cannot become a mechanic is still only a wish.

### 5. Build the smallest grammar

Start small enough to finish.

Start with:

- colour roles
- type scale
- spacing scale
- focus rules
- icon rules
- button
- link
- input
- select / combobox decision
- checkbox / radio
- alert
- modal / dialog
- table
- card (if it truly earns existence)
- page shell
- form validation

For each primitive, define the contract before the visual flourish.

What is it for?
What does it refuse?
What states exist?
What feedback is required?
What can change?
What must hold?

### 6. Make tokens semantic

Use tokens to encode meaning, not merely values.

Prefer:

```text
color.action.primary.background
color.feedback.error.text
space.form.field-gap
duration.motion.short
border.focus.ring
```

over:

```text
blue-500
red-600
spacing-3
fast
outline-yellow
```

Raw scales can exist underneath. The system-facing layer should speak in roles.

### 7. Document the refusal

Every healthy pattern has a "do not use when" section.

Refusal is boundary design.

A modal should refuse to become a page. A tooltip should refuse to carry essential information. A card should refuse to become the universal answer to weak hierarchy. A design system should refuse to absorb every local exception as a new global primitive.

No is a maintenance tool.

### 8. Build signals

Use tests and reports as feedback, not punishment.

Signals might include:

- accessibility checks
- visual regression
- token usage reports
- component adoption
- deprecated pattern warnings
- bundle-size monitoring
- content linting
- design-file audits
- support-ticket themes
- user-research findings
- contribution review times

The system should tell you where it hurts.

And you should believe it.

### 9. Give it a graveyard

Most design systems fail partly because they only know how to add.

Add tokens. Add components. Add variants. Add exceptions. Add docs. Add meetings.

Create a graveyard.

For every deprecated pattern:

```text
status: deprecated
replacement: ...
reason: ...
last_supported_version: ...
migration_path: ...
known_remaining_usage: ...
owner: ...
removal_window: ...
```

The graveyard is memory with a gate.

### 10. Govern contribution as relation

Contribution is where the design system either becomes a commons or a priesthood.

The contribution path should be clear:

```text
proposal
evidence
affected users
affected products
accessibility considerations
technical impact
content impact
alternatives considered
decision
owner
review date
```

Make dissent legible. Keep the minority report where the decision was not obvious. Future maintainers need to know what was decided, and what was almost decided.

### 11. Release slowly enough to remain trustworthy

A design system is infrastructure. Infrastructure can move quickly in the small and slowly in the large.

Patch a broken focus state quickly.

Change a naming grammar slowly.

Introduce a new primitive carefully.

Deprecate with ceremony.

Fast everywhere is just panic with tooling.

### 12. Teach by use

People learn the system by using it. That means every surface teaches:

- the docs
- the component API
- the token names
- the examples
- the lint warnings
- the review comments
- the migration guide
- the issue templates
- the release notes

If these surfaces teach different models, the system image fractures.

Then everyone builds their own private version.

This is how design systems die: not with a dramatic collapse, but with small, reasonable exceptions that were never metabolised.

---

## The quasi-post-industrial checklist

A design system for now must answer at least these:

```text
Can it survive tool exit?
Can it produce code and explanation?
Can it be audited for accessibility?
Can it be localised?
Can it govern AI-assisted variation?
Can it measure residue and deprecate with dignity?
Can someone understand it without having been in the meeting?
```

If the answer depends on one platform, one senior designer, one undocumented file, or one heroic front-end developer, it is not yet a design system.

It is a dependency with a charming personality.

---

## And yet

There is a danger in all this system language.

It can become managerial. It can become bloodless. It can convince people that because a token has a name, a relation has been understood. It can turn design into compliance, artistry into throughput, critique into ticket hygiene.

So keep a Zone 5.

Leave some unmanaged territory. Keep a place for experiments, strange prototypes, awkward local inventions, poetic misuse, a component that should not exist yet but might teach the next grammar. A design system with no wilderness becomes a small state. Efficient, legible, and faintly terrifying.

Design is planning, yes.

Design is systems concern, yes.

And design is also the moment the hand pauses over the page because the next mark will change the whole field.

That pause belongs in the system too.

---

## References

Clements, A.S. 2026a. *Axiology-First Aesthetics for Engagement Design: A Trans-Disciplinary Method.* In: README - Human-OS [Repository]. Available: `docs/methods/methodology__axiology_first_aesthetics_for_engagement_design.md`.

Clements, A.S. 2026b. *Engineering - Boundary Design at Module and System Scale.* In: README - Human-OS [Repository]. Available: `docs/models/engineering.md`.

Clements, J.L. n.d. *CARDS: Competence, Autonomy, Relatedness, Dignity, Safety.* In: Clements, A.S. README - Human-OS [Repository]. Available: `docs/lib/CARDS.md`.

European Commission. 2019. *Directive (EU) 2019/882 of the European Parliament and of the Council of 17 April 2019 on the accessibility requirements for products and services (European Accessibility Act).* [Online]. Available: https://commission.europa.eu/strategy-and-policy/policies/justice-and-fundamental-rights/disability/european-accessibility-act-eaa_en [Accessed: 24 April 2026].

European Commission. 2024. *Regulation (EU) 2024/1689 of the European Parliament and of the Council of 13 June 2024 laying down harmonised rules on artificial intelligence (Artificial Intelligence Act).* [Online]. Available: https://digital-strategy.ec.europa.eu/en/policies/regulatory-framework-ai [Accessed: 24 April 2026].

Holmgren, D. 2002. *Permaculture: Principles & Pathways Beyond Sustainability.* Hepburn, Victoria: Holmgren Design Services.

International Energy Agency (IEA). 2025. *Energy and AI.* Paris: IEA. [Online]. Available: https://www.iea.org/reports/energy-and-ai/executive-summary [Accessed: 24 April 2026].

International Energy Agency (IEA). 2026. *Data centre electricity use surged in 2025, even with tightening bottlenecks driving a scramble for solutions,* 16 April. [Online]. Available: https://www.iea.org/news/data-centre-electricity-use-surged-in-2025-even-with-tightening-bottlenecks-driving-a-scramble-for-solutions [Accessed: 24 April 2026].

International Labour Organization (ILO). 2021. *World Employment and Social Outlook 2021: The role of digital labour platforms in transforming the world of work.* Geneva: ILO. [Online]. Available: https://www.ilo.org/publications/flagship-reports/role-digital-labour-platforms-transforming-world-work [Accessed: 24 April 2026].

Mollison, B. 1988. *Permaculture: A Designers' Manual.* Tyalgum, NSW: Tagari Publications.

Norman, D.A. 2013. *The Design of Everyday Things: Revised and Expanded.* New York: Basic Books.

Open UI. n.d. *Working Mode.* [Online]. Available: https://open-ui.org/working-mode/ [Accessed: 24 April 2026].

Open UI. n.d. *Getting Involved.* [Online]. Available: https://open-ui.org/get-involved/ [Accessed: 24 April 2026].

UN Trade and Development (UNCTAD). n.d. *Facts & figures: The digital economy.* [Online]. Available: https://unctad.org/press-material/facts-figures-digital-economy [Accessed: 24 April 2026].

W3C. 2023. *Web Content Accessibility Guidelines (WCAG) 2.2,* W3C Recommendation, 5 October. [Online]. Available: https://www.w3.org/TR/WCAG22/ [Accessed: 24 April 2026].

W3C. n.d. *Web Sustainability Guidelines* [Draft]. [Online]. Available: https://www.w3.org/TR/web-sustainability-guidelines/ [Accessed: 24 April 2026].

W3C Design Tokens Community Group. 2025. *Design Tokens Format Module,* CG-FINAL, 28 October. [Online]. Available: https://www.w3.org/community/reports/design-tokens/CG-FINAL-format-20251028/ [Accessed: 24 April 2026].

---

## Cross-links

- [THE_DESIGN_OF_EVERYDAY_THINGS](../lib/THE_DESIGN_OF_EVERYDAY_THINGS.md)
- [Engineering - Boundary Design at Module and System Scale](../models/engineering.md)
- [SOLID](../lib/SOLID.md)
- [CARDS](../lib/CARDS.md)
- [PERMACULTURE](../lib/PERMACULTURE.md)
- [REGENERATIVE_CULTURES](../lib/REGENERATIVE_CULTURES.md)
- [Axiology-First Aesthetics](../methods/methodology__axiology_first_aesthetics_for_engagement_design.md)
- [Parametric Authorship](../../projects/theses/parametric_authorship.md)
- [Voice-and-Style Signature](../methods/voice_signature.md)

---

[^1]: **GIGO** = *Garbage In, Garbage Out*. The phrase circulates in computing trade press by the early 1960s, with George Fuechsel of IBM among those commonly credited. The principle has not been retired by anything more recent. 

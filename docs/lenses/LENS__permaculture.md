# LENS — Permaculture: Design as Attention Topology

```yaml
---
title: "LENS — Permaculture"
status: "draft"
updated: "2026-04-03"
anchors:
  core_texts:
    - "../../README.md"
    - "../lib/PERMACULTURE.md"
    - "../lib/REGENERATIVE_CULTURES.md"
    - "../lib/SALUTOGENESIS.md"
    - "../lib/INFINITE_GAMES.md"
    - "../lib/CARDS.md"
    - "../models/philosophy_of_hyperstrate.md"
    - "../models/SRII_AXIOLOGICAL_FRAMEWORK.md"
    - "../../projects/theses/parametric_authorship.md"
  readme_sections: ["§2 The Operator", "§4 reFractoring", "§5 The Network", "§8 Expected Output"]
context:
  field: "Design methodology, spatial-temporal organisation, studio practice, knowledge architecture, engagement design"
  motive: >
    Transpose permaculture's design grammar into the Hyperstrate and generator
    semantics. The regenerative cultures lens introduced vertical nesting and
    panarchy. The infinite games lens introduced field-liveness and garden-as-
    generator. This lens fills the gap between them: the concrete design grammar
    for organising *within* a field — where to place elements, how to read
    flows, how to stack functions, where the productive edges are. It extends
    SRII's spatio-relational framing with an operational method for designing
    the situation.
invariants_preserved:
  - "Dignity conservation (D non-decreasing)"
  - "Sovereign Interface (exits remain live)"
  - "Provenance (state changes traceable; observation precedes intervention)"
transposition_rules:
  - "Zones = attention topology within a Hyperstrate field"
  - "Sectors = external flows that the field cannot control but must design around"
  - "Stacking functions = CET optimisation (minimise elements, maximise value)"
  - "Edge effect = field-boundary productivity (interfaces between domains)"
  - "Succession = panarchy at design scale (temporal trajectory of a field)"
  - "Yield = generator output; emerges from relationship design, not extraction"
  - "Ethics triad = axiological pre-filter that runs before CARDS assessment"
outputs:
  - "Attention-topology diagnostic (zone placement analysis)"
  - "Sector map (external flow analysis for any system)"
  - "Stacking audit as CET variant"
  - "Edge-productivity metric"
  - "Succession trajectory model (where is this field going?)"
  - "Ethics triad as coarse-grain axiological gate"
risk_index: 0.30
---
```

---

## Distillation

- **Claim:** Every Hyperstrate field has an implicit attention topology — elements placed at varying distances from the centre of activity, interacted with at varying frequencies. Permaculture's zone model makes this topology explicit and designable. The quality of a field's yield depends on whether its elements are in the right zones.
- **Constraint:** Observation precedes intervention (Principle 1). The ethics triad (Earth Care, People Care, Fair Share) runs as a pre-filter before design begins. No element placement that degrades the field's ecological foundation.
- **Mechanic:** Zone analysis for element placement; sector mapping for external flows; stacking functions as CET optimisation; edge maximisation for generative boundaries; succession for temporal trajectory.
- **Failure mode:** Zone mismatch — daily-need elements in Zone 4, rarely-used elements cluttering Zone 0. Alternatively: designing before observing; technique without ethics; extraction disguised as yield.
- **Test:** For each element in the field: is it in the right zone for how often it's actually used? For each critical function: is it supported by multiple elements? For each boundary: is it productive or merely defended?

---

## Core Thesis: The Designed Situation

> *"Though the problems of the world are increasingly complex, the solutions remain embarrassingly simple."*
> — Bill Mollison

> *"Spatio-Relational: Acknowledging that intelligence is never abstract; it is always situated in a specific space and a network of relationships."*
> — SRII Axiological Framework

SRII establishes that intelligence is situated — never abstract, always in a space and a network. The regenerative cultures lens gave the Hyperstrate vertical depth (nested fields across scales). The infinite games lens gave it temporal liveness (surprise as health metric). But neither provides a design grammar for organising *within* a given field: where to place elements relative to one another, how to read the flows moving through the space, how to arrange relationships so they generate more than the sum of their parts.

Permaculture provides this grammar. And its deepest insight is spatial: **proximity should match interaction frequency.** This is not a farming principle. It is a principle of attention topology — applicable to any system where elements are placed in relation to a centre of activity.

The salutogenesis lens established: `yield(health)`.
The infinite games lens established: `yield(play)`.
The regenerative cultures lens established: `yield(conditions_for_life)`.

This lens establishes: **`yield(relationship_surplus)`** — the emergent value produced when elements are well-placed relative to one another, to external flows, and to time.

```pseudocode
generator permaculture_design():
    observe(field, duration=protracted)    // Principle 1: look before you draw
    ethics_gate(earth_care, people_care, fair_share)  // triad runs first
    while field.alive:
        topology = map_zones(field)         // where is attention concentrated?
        flows = map_sectors(field)          // what moves through that we don't control?
        for each element E in field:
            zone_check = interaction_frequency(E) matches zone_of(E)
            if not zone_check:
                yield redesign(E, correct_zone)
            functions = stacked_functions(E)
            if functions < 2:
                yield augment(E, additional_function)
        for each boundary B in field:
            if edge_productivity(B) is low:
                yield cultivate_edge(B)
        succession_check(field)             // where is this heading?
        yield relationship_surplus(field)   // the yield IS the relationships
```

---

## Core Text Mapping

| Permaculture Construct | Repository Expression | What Becomes Visible |
|---|---|---|
| **Zone planning** | Attention topology within a Hyperstrate field | Every field has implicit zones; making them explicit reveals misplaced elements — daily-need resources buried in Zone 4, rarely-used clutter in Zone 0 |
| **Sector analysis** | External flow mapping | Forces that flow through the field (market conditions, upstream decisions, seasonal rhythms, policy) are sectors — you design *around* them, not against them |
| **Stacking functions** | CET optimisation variant | CET minimises dependency chain length while maintaining value. Stacking maximises functions per element while maintaining clarity. Both seek: minimum elements, maximum value |
| **Edge effect** | Field-boundary productivity | The Hyperstrate models edges as protocol connections. Permaculture reveals that these edges are the *most productive zones* — not just connective tissue but generative interfaces |
| **Succession** | Panarchy at design scale | The regenerative cultures lens introduced panarchy (r → K → Ω → α) at system scale. Succession applies this *within* a designed field: what does this system want to become? |
| **Yield** | Generator output as relationship surplus | `yield` in the README is what the generator produces. Permaculture specifies: yield is not extracted from the field but *emerges from the quality of relationships between elements* |
| **Observe and interact** | Protracted observation before intervention | The repository's research protocol (scoping → discovery → evaluation → synthesis → validation) is Principle 1 formalised: read the field before drawing on it |
| **Ethics triad** | Axiological pre-filter | CARDS is the detailed diagnostic. The ethics triad is the coarse gate: Does this design care for the system's foundations (Earth Care)? Does it serve its participants (People Care)? Does it limit accumulation (Fair Share)? If any fail, don't proceed to CARDS — go back to fundamentals |
| **Guilds** | Complementary element clusters | Which elements in the field have complementary needs and outputs? Place them together. A research protocol (structure) and an ideacubator seed (emergence) placed in proximity form a guild: the protocol feeds the seed's development; the seed feeds the protocol's relevance |
| **Produce no waste** | Every output is an input | A completed research brief is not archived — its outputs feed lib entry creation. A lib entry's And-Yet material feeds future research. No artifact is terminal; every yield cycles back |

---

## Zones as Attention Topology

The zone model's power is its substrate-independence. At root it is a single principle: **organise by interaction frequency, not by category.**

### The Topology

```
Zone 0 — Centre of activity. What you touch every session.
Zone 1 — Immediate surround. What you reach for daily to weekly.
Zone 2 — Active periphery. What you visit weekly to monthly.
Zone 3 — Extended field. What you check seasonally.
Zone 4 — Deep archive. What you visit annually or at phase transitions.
Zone 5 — Wilderness. What you observe but do not manage. Self-organising.
```

### The Hyperstrate as Designed Topology

Every field in the Hyperstrate has an implicit zone structure — the question is whether it's been designed or left to entropy.

| Zone | README Expression | Hyperstrate Expression | Practice Expression |
|---|---|---|---|
| **0** | The Operator (§2) — the body, the daily practice | Active working context; today's open files | The desk; the sketchbook; the morning protocol |
| **1** | The Operator's tools — methods, protocols, CARDS | Active dependencies; frequently-referenced lib entries | Materials in reach; the current project folder |
| **2** | The Network (§5) — regular collaborators, active projects | Weekly-accessed resources; lib entries consulted for current work | The studio; the reference shelf; collaborators |
| **3** | Extended network — occasional contacts, dormant projects | Monthly/seasonal resources; methodology documents | Stored canvases; seasonal media rotation; long-horizon reading |
| **4** | Archive — prior work, resolved threads | Annual-access resources; closed research briefs | Deep archive; old portfolios; completed exhibitions |
| **5** | Wilderness — what self-organises beyond your intervention | External ecosystem; what you observe but don't control | The unread shelf; serendipitous encounter; the market; the field |

### The Diagnostic

```
Zone Mismatch Syndrome:

  Zone inflation: Element E is in Zone 0 but interaction_frequency(E) = monthly
    → E is clutter; it consumes attention bandwidth that should serve daily elements
    → Move E to Zone 2–3

  Zone starvation: Element E is in Zone 4 but interaction_frequency(E) = daily
    → E is unreachable when needed; every access requires an expedition
    → Move E to Zone 0–1

  Zone 5 deficit: No Zone 5 exists; everything is managed
    → The field has no source of surprise (LENS__infinite_games: field_liveness → 0)
    → Leave some territory unmanaged; observe what self-organises there

  Zone 5 excess: Everything is Zone 5; nothing is managed
    → The field has no yield; the garden has dissolved into wilderness
    → This is INFINITE_GAMES failure mode ID-1 (Infinite Drift)
    → Establish Zone 0; commit to a centre of activity
```

**Connection to SRII:** SRII's "Spatio-Relational" pillar establishes that intelligence is always situated. Zone analysis operationalises this: *where* is the intelligence situated, relative to what, and is that placement serving the system? The spatio-relational insight is the principle; the zone model is the design method.

---

## Sectors as External Flow Mapping

Sectors are forces that move through the field that the field's designer cannot control — only orient toward or buffer against.

### Transposition

| Ecological Sector | Practice Sector | Knowledge Work Sector | Organisational Sector |
|---|---|---|---|
| Sunlight direction | Creative energy cycles (when in the day are you sharpest?) | Attention flows (when are you most focused?) | Business cycles (quarterly rhythms, funding cycles) |
| Prevailing wind | Upstream decisions (curator, publisher, commissioner direction) | Upstream dependencies (API changes, platform shifts) | Market forces (competitor moves, regulatory change) |
| Water flow / drainage | Money flow (where does income enter and leave the practice?) | Information flow (where does knowledge enter the system?) | Capital flow (investment, revenue, cost centres) |
| Fire risk | Burnout risk (which practices deplete faster than they replenish?) | Disruption risk (which technologies could obsolete current work?) | Operational risk (single points of failure, key-person dependencies) |
| Noise / pollution | Distraction sources (social media, context-switching demands) | Signal-to-noise ratio (information overload) | Organisational noise (meetings that consume without producing) |

### The Design Principle

You do not fight sectors. You orient to catch beneficial flows and buffer harmful ones:

- **Catch:** Position elements to harvest energy from beneficial sectors (creative peaks, funding cycles, information flows)
- **Buffer:** Position barriers between the field and harmful sectors (distraction sources, burnout vectors, disruption risks)
- **Channel:** Design pathways for sector energy to move usefully through the field rather than washing over it

```
For a Hyperstrate field F:
  1. List sectors: What external forces flow through F?
  2. For each sector: Beneficial, harmful, or neutral?
  3. For beneficial sectors: Are elements positioned to catch this flow?
  4. For harmful sectors: Are buffers in place?
  5. For all sectors: Is the flow channelled productively or dissipated?
```

---

## Stacking Functions as CET Variant

CET (Chain Equilibrium Tension) from the Hyperstrate optimises dependency chains:

```
CET = argmin(length(deps)) s.t. value(deps) ≥ θ AND risk(deps) ≤ τ
```

Stacking functions is the complementary optimisation — not for dependency chains but for element utility:

```
STACK = argmax(functions(E)) s.t. clarity(E) ≥ θ AND overload(E) ≤ τ
```

A well-stacked element serves multiple functions without becoming illegible. A well-CET'd chain has minimal dependencies without losing value. Together they define the design sweet spot: **minimum elements, maximum functions, minimum dependencies, maximum value.**

### Repository Instance

| Element | Functions Currently Stacked | Could Also Serve |
|---|---|---|
| CARDS framework | Needs diagnostic, decision simulation, room-reading, manipulation detection | Axiological pre-filter for new lib entries (does the candidate serve CARDS?); engagement design metric |
| Research protocol | Source evaluation, session externalisation, gate validation | Template for any structured investigation; knowledge-base quality gate |
| And-Yet convention | Intellectual honesty, shadow documentation | Surprise generator (LENS__infinite_games); the mechanism by which the field stays alive; a designed Zone 5 within each document |
| Lib entry format | Reference hosting, attribution, integration mapping | Teaching document (the structure *is* the curriculum); the two-zone template teaches the Host ≠ Author distinction by performing it |

### Brittleness Check

| Critical Function | How Many Elements Support It? | Status |
|---|---|---|
| Axiological grounding | CARDS + Ethics triad (permaculture) + SRII + Salutogenesis SOC | **Resilient** — 4 independent supports |
| Source verification | Research protocol + lib entry verification section | **Adequate** — 2 supports |
| Temporal health model | Panarchy (regenerative cultures lens) + succession (this lens) + field-liveness (infinite games lens) | **Resilient** — 3 complementary models |
| Spatial design grammar | Zone model (this lens) + SRII spatio-relational + Hyperstrate topology | **Resilient** — 3 layers |
| Surprise / liveness | Field-liveness (infinite games lens) + And-Yet + Zone 5 (this lens) | **Resilient** — 3 sources |

---

## Edge Effect as Field-Boundary Productivity

The Hyperstrate models edges as protocol connections between nodes. Permaculture reveals something the protocol framing misses: **edges are not just connective tissue — they are the most productive zones in the field.**

### Where the Edges Are

| Boundary | What Meets | Expected Productivity |
|---|---|---|
| lib entry ↔ ideacubator | Established framework ↔ developing idea | High — the formality of the lib entry and the fluidity of the seed generate new synthesis |
| research protocol ↔ creative practice | Structured investigation ↔ intuitive making | Very high — the most generative work in the repository happens here |
| Subject Matter zone ↔ Repository Integration zone | The framework's own logic ↔ this repository's application | High — the two-zone template in lib entries *is* an edge design |
| README ↔ PRIVATE_META | Public-facing ↔ process-facing | High — field notes capture what the public documents cannot |
| individual practice ↔ collaborative engagement | Zone 0 ↔ Zone 2–3 (this lens) | High — the artist's studio and the life drawing session are a guild |

### Edge Design Principles

1. **Don't minimise boundaries; maximise productive edge.** Cross-disciplinary work, cross-repo connections, cross-framework integrations — these are not overheads but the most generative sites in the system.
2. **Staff the edges.** Place attention and resources at boundaries, not just at centres. The best facilitation happens at the interface between frameworks, not within any single one.
3. **The And-Yet is an edge.** Each And-Yet section sits at the boundary between a framework's confidence and its uncertainty. This boundary is productive — it generates the questions that drive future research.

---

## Succession: Where Is This Field Going?

The regenerative cultures lens introduced panarchy as a temporal model for system evolution. Succession applies this at design scale: **what does this system want to become, and am I working with that trajectory or against it?**

### Repository Succession Map

```
Bare soil → Pioneer species → Shrubland → Forest → Climax
   │              │                │            │          │
 Ideacubator   Research brief   Lib entry    Lens     Integration
 (seed)        (establishing)   (maturing)   (canopy)  (climax ecology)
```

| Phase | Repository Expression | Design Implication |
|---|---|---|
| **Seed** | Ideacubator entry; idea__*.md | Minimal structure. Needs protection (Zone 1–2) and freedom to develop. Don't over-formalise. |
| **Establishing** | Research brief; staging/research/*.md | Structured investigation. The research protocol is the trellis — supports growth without constraining direction. |
| **Maturing** | Lib entry; docs/lib/*.md | Formal structure. Two-zone template, CARDS integration, cross-framework mapping. Ready to support other growth. |
| **Canopy** | Lens; docs/lenses/*.md | Transpositional layer. Extends the lib entry's reach into specific domains. Provides shade and structure for the ecosystem below. |
| **Climax ecology** | Full integration — cross-links live, execution routines field-tested, And-Yet sections generating new seeds | The construct is fully integrated; its yields feed back into the system; it generates conditions for new growth |

### The Design Principle

**Work with succession, not against it.** Don't force an ideacubator seed into lib entry format. Don't leave a mature construct in seed format. Each phase has its appropriate structure, and premature formalisation is as harmful as permanent informality.

**Connection to panarchy:** Succession is panarchy at the scale of a single construct's development. Panarchy is succession at the scale of the whole field. The permaculture lens operates at design scale; the regenerative cultures lens operates at system scale. Together they provide temporal vocabulary at every level.

---

## The Ethics Triad as Axiological Pre-Filter

CARDS is the detailed diagnostic — five axes, three states, bidirectional mapping. The ethics triad is the **coarse gate** — three questions that run *before* CARDS:

```
Pre-filter:
  1. Earth Care: Does this design sustain the system's ecological foundation?
     (In repository terms: does it sustain the conditions for ongoing work?)
     If NO → stop. No amount of CARDS optimisation fixes a depleted foundation.

  2. People Care: Does this design serve its participants without exploitation?
     If NO → stop. A system that extracts from its participants is degenerative.

  3. Fair Share: Does this design limit accumulation and redistribute surplus?
     If NO → caution. Unchecked accumulation eventually degrades Earth Care and
     People Care even if CARDS are currently green.

  Only if all three pass → proceed to CARDS assessment.
```

### Why the Pre-Filter Matters

CARDS is granular — it can diagnose *which need* is unmet. But it operates at the level of individual participants. The ethics triad operates at system level: is the *field itself* healthy? A field where all participants have green CARDS but the underlying system is depleting (Earth Care) will eventually collapse everyone's CARDS simultaneously. The triad catches this before it happens.

**Relationship to SRII:** The ethics triad extends SRII's Integrity pillar — "the structural and moral coherence of a system that honours its Contract of Aims despite intense internal logic pressures and external ethical demands." The triad provides the axiological content for that integrity: what does honouring the Contract of Aims *actually mean* in design terms?

---

<!--
Easter egg for the zone-literate reader:

This lens is itself a Zone 1 element for the repository —
something you reach for when designing, not daily but frequently.

The lib entry is Zone 2 — consulted when you need the full
construct set, but not for every design decision.

The research brief is Zone 4 — you go back to it when you
need provenance, not when you need practice.

Mollison's 576-page manual is Zone 5 — wilderness.
You observe it. You don't try to manage it.
You let it surprise you.

The embarrassingly simple solutions
come from knowing which zone you're in.
-->

## Tests (Perturbation Probes)

### 1. Zone Mismatch Detection

```
Given: A Hyperstrate field F with elements E_1..E_n
When: interaction_frequency(E_i) is measured over one cycle (week, month, quarter)
Then:
  - For each E_i: compare actual zone with ideal zone
    (ideal zone = zone matching interaction frequency)
  - If mismatch > 1 zone → significant friction; redesign placement
  - If Zone 5 is empty → field has no surprise source; field_liveness at risk
  - If Zone 0 has > 7 elements → attention overload; triage to outer zones
  - CARDS check: Does the zone arrangement serve C (things findable),
    A (things accessible), S (system navigable)?
```

### 2. Stacking Sufficiency Test

```
Given: A system with elements E_1..E_n and critical functions F_1..F_m
When: Each F_j is mapped to supporting elements
Then:
  - If any F_j supported by only 1 element → brittle; add redundancy
  - If any E_i serves only 1 function → under-utilised; consider stacking
  - If any E_i serves > 5 functions → overloaded; clarity at risk; consider splitting
  - Verify: STACK(E_i) × CET(deps(E_i)) is within healthy range
```

### 3. Edge Productivity Assessment

```
Given: Boundaries B_1..B_k between domains in a field
When: Each boundary is assessed for productivity
Then:
  - Minimised edge (domains don't interact) → opportunity cost; consider bridge element
  - Contested edge (conflict at boundary) → potential energy; design for productive exchange
  - Productive edge (generative exchange) → strengthen; replicate pattern at other boundaries
  - Dead edge (formally connected but no actual exchange) → remove or redesign connection
  - Check: Are the most productive edges visible, supported, and valued?
```

### 4. Succession Phase Check

```
Given: A construct C at some point in its development
When: C's current phase is assessed against the succession map
Then:
  - Seed forced into lib entry format → premature formalisation; reduce structure
  - Mature construct still in seed format → arrested development; provide structure
  - Lib entry with no lens → canopy gap; the construct's reach is limited
  - Lens with no And-Yet → climax without decomposition; no nutrient cycling
  - Check: Is C in the appropriate phase? Is transition to next phase possible?
```

### 5. Ethics Triad Pre-Filter

```
Given: A proposed design intervention I
When: I is assessed against the ethics triad before CARDS
Then:
  1. Earth Care: Does I sustain the system's foundation?
     If NO → redesign I before proceeding
  2. People Care: Does I serve participants without extraction?
     If NO → redesign I before proceeding
  3. Fair Share: Does I limit accumulation and share surplus?
     If NO → flag and assess whether accumulation is temporary (acceptable)
             or structural (redesign)
  Only after 3/3 pass → proceed to CARDS assessment
```

---

## Points of Emergence

### 1. Attention Topology as Design Discipline

The Hyperstrate currently models topology as nodes-and-edges — a graph. The zone model reveals that not all nodes are equal *in terms of attention*. A node in Zone 0 consumes daily bandwidth; a node in Zone 5 consumes none. The field's health depends not just on *which* nodes are connected but on *where* they sit in the attention topology. This is a new design dimension for the Hyperstrate — not just connectivity but proximity-weighted interaction.

### 2. The Ethics Triad as System-Level CARDS

CARDS operates at the level of individual participants' needs. The ethics triad operates at system level: is the field's foundation healthy (Earth Care), are participants served (People Care), is accumulation limited (Fair Share)? This gives the repository a two-layer axiological check: coarse-grain (triad) before fine-grain (CARDS). The triad catches systemic failures that CARDS, focused on individual need-states, might miss.

### 3. Zone 5 as Designed Surprise

The infinite games lens identifies surprise as the field's liveness metric. But it doesn't prescribe *how to produce surprise*. Permaculture does: **leave Zone 5 unmanaged.** The territory you don't control is where the unexpected emerges. In repository terms: the And-Yet section is a designed Zone 5 within each document. The ideacubator is a designed Zone 5 within the knowledge architecture. Serendipitous reading, unplanned encounters, undirected studio time — these are Zone 5 practices. A system with no Zone 5 has no source of surprise, and a system with no surprise is dead (LENS__infinite_games).

### 4. Succession Completes the Temporal Stack

The repository now has three temporal models at different scales:
- **Panarchy** (regenerative cultures lens): system-level adaptive cycles (r → K → Ω → α)
- **Field-liveness** (infinite games lens): moment-to-moment surprise rate
- **Succession** (this lens): construct-level development trajectory (seed → establishing → maturing → canopy → climax)

These are complementary, not competing. A construct in succession phase "establishing" may be in panarchy phase "growth" (r). The succession model gives the designer a way to assess *where in its development* a construct is, and therefore what kind of structure it needs — which the other temporal models do not provide.

### 5. Stacking + CET = Design Sweet Spot

CET and stacking are dual optimisations:
- CET: minimise dependencies while maintaining value (chain efficiency)
- Stacking: maximise functions per element while maintaining clarity (element efficiency)

Together they define the design sweet spot for any system: minimum elements, maximum functions, minimum dependencies, maximum value. This is a formal design principle that the repository has not previously articulated in this combined form.

---

## Cross-links

### README.md

- **§2 The Operator** — Zone 0; the centre of activity; the body as the innermost zone
- **§4 reFractoring** — reFractoring as succession: the construct evolves through phases, not leaps
- **§5 The Network** — The network as the field within which zones, sectors, and edges operate
- **§8 Expected Output** — Yield as relationship surplus; the generator's output is emergent, not extracted

### Library

- **[PERMACULTURE.md](../lib/PERMACULTURE.md)** — Source material; the twelve principles, ethics triad, design constructs
- **[REGENERATIVE_CULTURES.md](../lib/REGENERATIVE_CULTURES.md)** — Vertical nesting (this lens adds horizontal topology within each nested field)
- **[SALUTOGENESIS.md](../lib/SALUTOGENESIS.md)** — SOC as coherence under perturbation; permaculture creates salutogenic affordances (Stoltz & Schaffer 2018)
- **[INFINITE_GAMES.md](../lib/INFINITE_GAMES.md)** — Garden-as-generator; field-liveness; Zone 5 as surprise source
- **[CARDS.md](../lib/CARDS.md)** — Fine-grain diagnostic that runs after the ethics triad pre-filter

### Models

- **[philosophy_of_hyperstrate.md](../models/philosophy_of_hyperstrate.md)** — Field topology; CET as complement to stacking; attention topology as new design dimension
- **[SRII_AXIOLOGICAL_FRAMEWORK.md](../models/SRII_AXIOLOGICAL_FRAMEWORK.md)** — Spatio-relational framing that this lens operationalises; Integrity extended via ethics triad

### Thesis

- **[parametric_authorship.md](../../projects/theses/parametric_authorship.md)** — The permaculture designer as parametric author; zone boundaries as parameters; yield as emergent from constraints

### Other Lenses

- **[LENS__regenerative_cultures](LENS__regenerative_cultures.md)** — Vertical nesting (panarchy, nested fields). This lens adds: horizontal topology (zones, sectors, edges) *within* each nested field. Together: the full spatial-temporal design grammar.
- **[LENS__infinite_games](LENS__infinite_games.md)** — Field-liveness (surprise rate). This lens adds: Zone 5 as the *mechanism* for producing surprise. Together: surprise is both metric and designable condition.
- **[LENS__salutogenesis](LENS__salutogenesis.md)** — SOC as health metric. This lens adds: permaculture design as the method for *creating* salutogenic environments. Together: what health is (salutogenesis) and how to build it (permaculture).
- **[LENS__solid_threshold_mechanics](LENS__solid_threshold_mechanics.md)** — Modular coherence. Stacking functions is the permaculture complement to SRP/ISP: where SOLID separates concerns for clarity, stacking integrates functions for resilience. The tension between them is productive — an edge.
- **[LENS__parametric_authorship](LENS__parametric_authorship.md)** — The designer sets parameters (zone boundaries, guild compositions, edge ratios) within which the system generates its own yields. Permaculture is parametric authorship made ecological.

### Ideacubator

- **[idea__machines_and_gardens](../../ideacubator/idea__machines_and_gardens.md)** — The twelve principles are the machine; the yields are the garden. Zone planning is the spatial grammar for where machine meets garden.
- **[idea__stocks_and_flows](../../ideacubator/idea__stocks_and_flows.md)** — Yield cycles, accumulation, feedback. Zones organise *where* stocks accumulate and *how* flows move through the system.

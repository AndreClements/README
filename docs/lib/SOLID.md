# LIBRARY — SOLID (Robert C. Martin et al.)

> **Status:** Imported Library | **Host:** André S Clements | [Full contract →](#appendix-contract)

---

## Attribution & Ownership

**SOLID is a mnemonic acronym for five principles of modular software design, consolidated and named by Robert C. Martin ("Uncle Bob").**

The principles emerged from earlier foundational work:
- **David Parnas** — Information hiding, modular decomposition (1972)
- **Bertrand Meyer** — Design by Contract, Open-Closed Principle (1988)
- **Barbara Liskov** — Substitution principle, behavioral subtyping (1987, 1994)

**Key Works:**
- Martin, R.C. (2000). *Design Principles and Design Patterns*
- Martin, R.C. (2003). *Agile Software Development: Principles, Patterns, and Practices*
- Parnas, D.L. (1972). "On the Criteria To Be Used in Decomposing Systems into Modules"
- Meyer, B. (1988). *Object-Oriented Software Construction*
- Liskov, B. (1987). "Data Abstraction and Hierarchy"
- Liskov, B. & Wing, J. (1994). "A Behavioral Notion of Subtyping"

**Lineage:**
```
Information Hiding (Parnas, 1972)
    └── Design by Contract (Meyer, 1988)
            └── Behavioral Subtyping (Liskov & Wing, 1994)
                    └── SOLID Synthesis (Martin, 2000s)
```

---

## §1. The 5 Principles (The Primitives)

| Principle | Acronym | Original Definition |
|:----------|:-------:|:--------------------|
| **Single Responsibility** | S | A module should have only one reason to change |
| **Open-Closed** | O | Open for extension, closed for modification |
| **Liskov Substitution** | L | Subtypes must be substitutable for base types |
| **Interface Segregation** | I | No client should depend on methods it doesn't use |
| **Dependency Inversion** | D | Depend on abstractions, not concretions |

---

## §2. Detailed Specifications

### S — Single Responsibility Principle (SRP)

> *"A module should have one, and only one, reason to change."*

**Original Intent (Martin):** A "reason to change" corresponds to a single business stakeholder or actor whose needs might evolve.

**Failure Modes:**
- God-Door (SRP-T1): Module serves multiple unrelated purposes
- Hidden Passage (SRP-T2): Undocumented side-effects cross the boundary

### O — Open-Closed Principle (OCP)

> *"Software entities should be open for extension, but closed for modification."*

**Original Intent (Meyer → Martin):** You can add new behavior without changing existing code. Extension points are designed, not hacked in.

**Failure Modes:**
- Bricked Door (OCP-T1): Adding new path requires demolishing existing
- Mutation Creep (OCP-T2): Core semantics change during "extension"

### L — Liskov Substitution Principle (LSP)

> *"If S is a subtype of T, then objects of type T may be replaced with objects of type S without altering the correctness of the program."*

**Original Intent (Liskov, 1987):** Subtypes must honour the behavioural contracts of their supertypes. No strengthening preconditions, no weakening postconditions.

**Failure Modes:**
- Bait-and-Switch (LSP-T1): Substituted component violates expectations
- Semantic Drift (LSP-T2): Same label, different behaviour across contexts

<!-- Easter Egg: Barbara Liskov is the true final boss of subtyping. Her 1987 keynote remains the definitive statement. -->

### I — Interface Segregation Principle (ISP)

> *"No client should be forced to depend on methods it does not use."*

**Original Intent (Martin):** Fat interfaces create unnecessary coupling. Clients should see only what they need.

**Failure Modes:**
- Loading Dock (ISP-T1): Forced through irrelevant pathways
- Fat Interface (ISP-T2): Exposed to decisions you can't affect

### D — Dependency Inversion Principle (DIP)

> *"Depend on abstractions, not concretions. High-level modules should not depend on low-level modules; both should depend on abstractions."*

**Original Intent (Martin):** Policy-level code shouldn't be coupled to implementation details. Abstractions owned by high-level modules define the contract; low-level modules implement it.

**Failure Modes:**
- Concrete Dependency (DIP-T1): Locked to specific implementation
- Inverted Hierarchy (DIP-T2): Low-level details dictate high-level intent

---

## §3. SOLID's Shadow (The And-Yet)

SOLID, over-applied, can harm coherence:

- **Over-Modularity:** Too many abstractions increase indirection; comprehensibility drops
- **Premature Abstraction:** Abstracting before patterns emerge creates false boundaries
- **Ceremonial Architecture:** Following SOLID "by the book" without judgement creates bureaucratic code
- **Scale Mismatch:** SOLID at class level may miss system-level coupling (see IDEALS for microservices)

**The Meta-Question:**
> When does SOLID itself violate ISP — when is it too much interface for the problem?

SOLID sits between "spaghetti code" (no boundaries) and "lasagna code" (too many layers). It's the **coherence membrane**, not a maximisation target.

---

# Repository Integration

## What This Changes

SOLID provides a **coherence grammar** for modular systems. Each principle constrains how boundaries between modules should behave — making SOLID a set of **threshold mechanics** that govern what crosses, what's refused, and what transforms in transit.

| Conventional View | SOLID as Threshold Mechanics |
|-------------------|------------------------------|
| Rules for code quality | Grammar for boundary behaviour |
| Defensive posture (protect your code) | Mechanism design for positive-sum collaboration |
| Static compliance checklist | Dynamic coherence diagnostic |
| Class-level design patterns | Scale-independent threshold principles |

> *"SOLID doesn't build the house — it builds the doors."*

---

## Maintainer's Note

This document hosts SOLID principles for repository integration as **threshold mechanics**. Robert C. Martin and the cited authors are the intellectual architects. The threshold transposition is developed in [LENS__solid_threshold_mechanics.md](../lenses/LENS__solid_threshold_mechanics.md).

---

## Integration with CARDS

SOLID violations produce specific [CARDS](CARDS.md) degradation signatures:

| SOLID Violation | CARDS Impact | User Experience |
|-----------------|--------------|-----------------|
| **SRP violation** | **C** 🔴 | "I don't understand what this does" |
| **OCP violation** | **S** 🔴 | "Changes might break things" |
| **LSP violation** | **D** 🔴 | "I was promised X but got Y" |
| **ISP violation** | **A** 🔴 | "I'm forced to deal with things I don't need" |
| **DIP violation** | **R** 🔴 | "I'm locked in; can't collaborate" |

**Diagnostic Protocol:**
1. If user reports CARDS degradation, check corresponding SOLID principle
2. If SOLID violation detected, expect specific CARDS impact
3. Fix violation → expect CARDS recovery

---

## Integration with Salutogenesis

SOLID principles map directly to the Sense of Coherence (SOC) components from [Salutogenesis](SALUTOGENESIS.md):

| SOLID Principle | SOC Component | Contribution |
|-----------------|---------------|--------------|
| **SRP** | Comprehensibility | Single purpose = predictable, explicable |
| **OCP** | Manageability | Extend without breaking = resources sufficient |
| **LSP** | Meaningfulness | Promises kept = worth investing, trustworthy |
| **ISP** | Manageability | Minimal interface = cognitive load tractable |
| **DIP** | Meaningfulness | Intent preserved = purpose survives change |

**SOC as SOLID Aggregate:**
```
SOC(system) ≈ f(
  Comprehensibility(SRP, LSP),
  Manageability(OCP, ISP),
  Meaningfulness(LSP, DIP)
)
```

**GRRs as SOLID Compliance:**
A system with high SOLID compliance is a **Generalised Resistance Resource** for its maintainers — it builds their capacity to handle future stressors.

---

## Integration with Infinite Games

> *"The finite game is played to win. The infinite game is played to keep playing."* — James Carse

Traditional SOLID teaching frames principles as *defensive* (protect your code from bad actors). The threshold mechanics framing reveals a deeper truth: **SOLID is mechanism design for positive-sum collaboration**.

| Game Theory Concept | SOLID Expression |
|---------------------|------------------|
| **Nash Equilibrium** | Well-designed thresholds create stable patterns |
| **Pareto Efficiency** | Changes improve some without harming others |
| **Mechanism Design** | SOLID designs systems that *incentivise* good outcomes |
| **Infinite Games** | Goal isn't to "win" architecture; it's to keep it playable |

**The Salutogenic Twist:**
Where classic game theory asks "what strategy maximises my payoff?", the salutogenic frame asks **"what design maintains everyone's capacity to keep playing?"**

---

## Threshold Mechanics (Repository Transposition)

Each SOLID principle translates into a threshold mechanic — a rule governing what crosses a boundary, what's refused, and what transforms in transit:

| Principle | Threshold Expression |
|:----------|:---------------------|
| **SRP** | One door, one purpose |
| **OCP** | Add doors without bricking up old ones |
| **LSP** | If it's marked "Exit," it must exit |
| **ISP** | Don't force visitors through the loading dock |
| **DIP** | The house serves the inhabitants |

**CET Alignment:**
```
CET = argmin(length(deps)) s.t. value(deps) ≥ θ AND risk(deps) ≤ τ
```
ISP operationalises the "minimal chain" constraint.

---

## Execution Routines

### Routine A: Diagnostic (Assessing a System)

1. Identify module boundaries (thresholds)
2. For each threshold, check:
   - SRP: Does it have one reason to change?
   - OCP: Can it extend without mutation?
   - LSP: Are substitutions safe?
   - ISP: Is the interface minimal?
   - DIP: Does intent govern detail?
3. Map violations to expected CARDS impact
4. Prioritise by severity and user-facing effect

### Routine B: Design (Building a System)

1. Start with intent (DIP): What is the high-level purpose?
2. Define boundaries (SRP): What are the distinct responsibilities?
3. Design for extension (OCP): Where will variation appear?
4. Specify contracts (LSP): What promises must hold?
5. Scope interfaces (ISP): What does each client actually need?

### Routine C: Debugging (When Things Break)

1. Observe symptom (user confusion, fear of change, broken trust, overwhelm, lock-in)
2. Map symptom to CARDS (C/S/D/A/R)
3. Check corresponding SOLID principle
4. Trace to specific threshold violation
5. Fix threshold; verify CARDS recovery

---

## Why This Matters for the Repository

1. **Salutogenic alignment:** SOLID increases a system's Sense of Coherence (SOC) by maintaining comprehensibility, manageability, and meaningfulness
2. **CARDS integration:** SOLID violations produce specific CARDS degradation signatures (see Integration with CARDS above)
3. **Hyperstrate compatibility:** SOLID principles map to Sovereign Interface constraints and CET discipline
4. **Infinite game architecture:** SOLID maintains *playability* — the capacity for continued development

---

## Cross-links

- **[Library Index](README.md)** — Registry of imported constructs
- **[LENS__solid_threshold_mechanics.md](../lenses/LENS__solid_threshold_mechanics.md)** — Full transposition into threshold mechanics
- **[SALUTOGENESIS.md](SALUTOGENESIS.md)** — SOC integration; health as coherence under stress
- **[CARDS.md](CARDS.md)** — Violation signatures; diagnostic integration
- **[philosophy_of_hyperstrate.md](../models/philosophy_of_hyperstrate.md)** — CET alignment; Sovereign Interface
- **[DEPENDENCIES.md](../../DEPENDENCIES.md)** — Broader constellation of influences

---

<!--
Uncle Bob's Cabin: A hidden note for those who read the source.

The cabin sits at the edge of the dependency forest, where all the abstract
interfaces gather at dusk. Inside, the five principles play cards—though
only Barbara Liskov wins consistently. She's been doing this since 1987.

The rent is free because the architecture is sound.
-->

## Appendix: Contract

> ```yaml
> title: "SOLID — Principles of Modular Design"
> author: "Robert C. Martin (Uncle Bob)"
> host: "André S Clements (Reference Hosting Only)"
> intent: "To provide a stable reference for SOLID principles as threshold mechanics."
> lineage: "Parnas (1972) → Meyer (1988) → Liskov (1987) → Martin (2000s)"
> status: "Imported Library"
> usage: "Modular coherence diagnostic; threshold mechanics evaluation; boundary health assessment."
> ```

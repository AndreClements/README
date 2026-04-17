# LIBRARY — Cross-Domain Engineering Principles (AI-generated Synthesis, 2026)

> **Status:** Imported Library (non-standard — LLM-generated) | **Host:** André S Clements | [Full contract →](#appendix-contract)

---

## Attribution & Ownership

**This entry is non-standard.** The canonical lib entry assumes an external *human* author with citable primary sources. This entry's "author" is an LLM; its "sources" were invoked from training-data memory rather than from independent reading. The entry is hosted anyway, because the synthesis it produced is useful scaffolding for [docs/models/engineering.md](../models/engineering.md) — but the non-standard status is declared up front, not laundered.

- **Origin:** AI-generated synthesis (LLM, 2026). No human external author. The synthesis was produced by a research pipeline on the operator's behalf.
- **Delivery chain:** Not preserved. Any forwarders, siblings, or company-email provenance have been scrubbed on purpose; they are noise, not signal.
- **Tier:** **Silver** overall (structured synthesis of Gold-tier primary sources). Individual claims retain the tier they carry in §6 Provenance Ledger.
- **Maculate rider (CII Principle 0):** Specific page numbers, exact quotations, and nuanced interpretations of the cited primary sources have **not** been independently verified by the repo host. Where the LLM cites a specific claim with `unverified_inference`, the host does not overrule that self-assessment. The synthesis is trustworthy at publication-level detail (author, title, year); it is `unverified_inference` at page-level.
- **Distance-from-wetware (CII §4):** dfw = **5** (opaque LLM stack). Per the routing rule, anecdotes here weigh ≈ ε unless a `critiqueGate` is met. This entry is used by the repo for **convergence framing** (the shape of the field across many sources), not as direct evidence for individual claims.

**Host ≠ Author.** The maintainer (André S Clements) hosts this synthesis for stable linkage and for use by the homegrown [engineering model](../models/engineering.md). Intellectual ownership of the *primary sources* (Parnas, Codd, Dijkstra, Meyer, Kleppmann, and the rest) remains with their original authors. The synthesis itself has no human author to credit.

---

## How This Repo Uses This Entry

The homegrown [engineering model](../models/engineering.md) refers to this entry as scaffolding: the synthesis's **cross-domain convergence table** (§5.4 below) is the evidence that *separation of concerns, modularity, abstraction, feedback/observability, fail-safe, and parsimony* show up independently across general / software / data engineering, which gives the homegrown model permission to declare its own axiom without re-deriving the field.

The repo does **not** treat this synthesis as Gold. Do not cite it in T3 publication work without tracking specific claims back to their primary sources in §6.

---

            ── SUBJECT MATTER ZONE ──

*Preserved from the AI-generated synthesis, lightly edited for formatting consistency. The synthesis's original register (technical, hedged, scholarly) is kept intact — it is not in the host's voice.*

---

## Original Contract Header (as generated)

```yaml
title: "Cross-Domain Engineering Principles: A Comparative Analysis"
version: "1.0.0"
status: "draft"
tier: "T2"
gate: "research"
date: "2026-03-26"
author: "Claude (AI-generated, human-reviewed)"
methodology: "CII v4.2.1 — docs/methods/METHODOLOGY_CII.md"
research_protocol: "PROTOCOL__lib_research.md — Scoping → Source Discovery → Source Evaluation → Synthesis → Validity Check"
recursion_depth: "L1 (primary sources; L0 = this synthesis)"
gold_sources: 9
sessions_completed: 1
early_signal: "proceed"
```

---

## Executive Summary

This synthesis identifies, catalogues, and compares the most powerful and generalisable principles across three engineering domains: **general/systems engineering**, **software engineering**, and **data engineering**. It draws on peer-reviewed journal articles (Gold tier), academic monographs and established trade press (Silver tier), and conference literature (Bronze tier) to establish a provenance-backed taxonomy of principles.

The central finding is one of deep convergence: a core set of principles — **separation of concerns**, **modularity/decomposition**, **abstraction**, **feedback/observability**, and **fail-safe design** — recurs across all three domains with remarkable consistency, differing primarily in vocabulary and implementation substrate rather than in underlying logic. Software engineering contributes domain-specific principles around code-level design contracts (SOLID, DRY, YAGNI); data engineering introduces principles shaped by the physics of distributed state (eventual consistency, immutability, idempotency); general engineering provides the deepest theoretical grounding, anchoring many software and data principles in control theory, thermodynamics, and systems science.

---

## 1. Methodology & Scope

### 1.1 Research Question

> What are the most powerful and valuable engineering principles in each of three domains (general engineering, software engineering, data engineering), where do they converge, and where do they diverge?

**Scope boundaries.** The synthesis surveys *principles* (enduring, generalisable rules of thumb grounded in theory or extensive practice) rather than *patterns* (reusable solutions to recurring design problems) or *practices* (specific techniques and workflows). Principles generate patterns and practices, not the reverse.

### 1.2 Source Selection Criteria

Sources selected for: foundational influence (citation count, curriculum adoption); theoretical grounding (formal/empirical backing over anecdote); cross-domain applicability (higher weight to principles that appear independently in multiple fields).

### 1.3 Source Tier Table (summary)

| Source | Tier | Justification |
|---|---|---|
| Parnas, D.L. (1972). "On the Criteria To Be Used in Decomposing Systems into Modules." *CACM* 15(12) | **Gold** | >4,000 citations; seminal |
| Codd, E.F. (1970). "A Relational Model of Data for Large Shared Data Banks." *CACM* 13(6) | **Gold** | Turing Award work; foundational |
| Dijkstra, E.W. (1974). "On the Role of Scientific Thought." EWD447 | **Gold** | Origin of "separation of concerns"; curriculum staple |
| Meyer, B. (1992). "Applying Design by Contract." *IEEE Computer* 25(10) | **Gold** | Peer-reviewed; introduced DbC to mainstream |
| Simon, H.A. (1962). "The Architecture of Complexity." *Proc. APS* 106(6) | **Gold** | Universally cited; Nobel laureate |
| Gilbert, S. & Lynch, N. (2002). "Brewer's Conjecture …" *ACM SIGACT News* 33(2) | **Gold** | Proof of CAP theorem |
| Liskov, B. & Wing, J. (1994). "A Behavioral Notion of Subtyping." *ACM TOPLAS* 16(6) | **Gold** | Formalised LSP |
| Boehm, B.W. (1986). "A Spiral Model of Software Development." *SIGSOFT* 11(4) | **Gold** | Peer-reviewed; iterative paradigm |
| Brooks (1975/1995); Gamma et al. (1994); Martin (2003); McConnell (2004); Fowler (1999/2018); Meyer (1997); Kleppmann (2017); Kimball & Ross (2013); Inmon (2005); Reis & Housley (2022); Hunt & Thomas (1999); Yourdon & Constantine (1979); Beck (1999) | **Silver** | Canonical trade / academic references |
| Beauchemin, M. (2018). "Functional Data Engineering …" | **Bronze** | Originating practitioner essay |

### 1.4 Limitations (as declared by the synthesis)

1. **AI-generated.** The synthesis's author is an LLM; citations are at publication level (author, title, year). Specific page numbers and exact quotes are `unverified_inference`.
2. **Selection bias.** Principles chosen reflect the most frequently cited / curricularly embedded.
3. **Western / Anglophone bias.** Sources overwhelmingly English-language, North American / European.
4. **Temporal snapshot.** Evaluated as of 2026.

---

## 2. Generalisable Engineering Principles

These principles appear across mechanical, electrical, civil, chemical, aerospace, and systems engineering — the deepest layer of engineering thought, often grounded in physics, control theory, or information theory.

**2.1 Modularity & Decomposition.** Complex systems should be decomposed into discrete, self-contained modules with well-defined interfaces. Grounded in Simon (1962): hierarchically decomposed systems evolve far faster than monolithic ones. *Gold*.

**2.2 Feedback & Control Loops.** Systems must measure output, compare to desired state, adjust inputs. Formalised in control theory (Nyquist 1932; Bode 1945). Every stable engineered system is a feedback loop. *Gold*.

**2.3 Redundancy & Fail-Safe Design.** Critical systems include redundant components and default to a safe state on failure. Rooted in reliability engineering (MIL-HDBK-217). *Silver*.

**2.4 Separation of Concerns.** Each component addresses a single, well-defined aspect. Dijkstra coined the term (EWD447, 1974); the underlying idea is ancient in engineering. *Gold*.

**2.5 Abstraction.** Expose only what is necessary for interaction; hide internal complexity behind a stable interface. The mechanism by which modularity and SoC are achieved. *Bronze — synthesised inference from Simon, Parnas, Shannon; no single originating source.*

**2.6 Constraint-Based Design & Trade-offs.** All engineering is optimisation under constraints. Multi-objective trade-off optimisation formalised by Pareto (1906). *Gold*.

**2.7 KISS / Parsimony.** The simplest solution that meets requirements is preferred. Attributed to Kelly Johnson (Lockheed); traces to Occam's Razor. *Copper — practitioner attribution, not peer-reviewed.*

**2.8 Iterative Refinement.** Design, build, test, learn, redesign. Formalised as the spiral model (Boehm, 1986). *Gold*.

**2.9 The Pareto Principle (Vital Few).** 80% of effects come from 20% of causes. Generalised by Juran (1951) to quality engineering. *Silver*.

---

## 3. Software Engineering Principles

Many are specialisations of the general principles above, adapted for software's unique properties: near-zero marginal cost of replication, extreme malleability, invisible structure.

**3.1 Information Hiding / Encapsulation.** Parnas (1972): decomposing by "likely change" outperforms decomposing by processing steps. The foundation of most subsequent SE principles. *Gold*.

**3.2 SOLID.** Martin (2003); LSP formalised by Liskov & Wing (1994). Five principles (Single Responsibility, Open/Closed, Liskov Substitution, Interface Segregation, Dependency Inversion) codifying OO design. *Silver / Gold for LSP*.

**3.3 DRY (Don't Repeat Yourself).** Hunt & Thomas (1999). About duplicate *knowledge*, not duplicate *code*. *Silver*.

**3.4 YAGNI (You Aren't Gonna Need It).** Beck (1999), Extreme Programming. Software-specific parsimony with an economic argument: premature features carry ongoing maintenance cost. *Silver*.

**3.5 Loose Coupling / High Cohesion.** Constantine & Yourdon (1979). The measurable manifestation of good SoC. *Silver*.

**3.6 Composition over Inheritance.** Gamma et al. (1994) p. 20: "Favor object composition over class inheritance." Inheritance creates tight coupling (fragile base class); composition preserves loose coupling. *Silver*.

**3.7 Principle of Least Surprise.** Long-standing UI / API heuristic. If a feature surprises, the design is wrong. *Copper — widely attributed but no single originating paper.*

**3.8 Fail Fast.** Specialisation of fail-safe for software. Bug cost rises exponentially with distance between introduction and detection (McConnell, 2004, Ch. 22). *Silver*.

**3.9 Design by Contract (DbC).** Meyer (1986, formalised; 1992, published in *IEEE Computer*). Preconditions, postconditions, invariants as checkable specifications. *Gold*.

**3.10 Separation of Concerns (software-specific).** Layers (MVC, hexagonal, clean architecture); single-responsibility modules. Dijkstra's 1974 formulation was already about programming; the principle migrated *from* software *to* general engineering. *Gold*.

---

## 4. Data Engineering Principles

These principles address the unique challenges of data at scale: state management, distribution, consistency, and the fact that data outlives the code that produces it.

**4.1 Schema Design & Normalisation.** Codd (1970): formal rules (1NF through BCNF) for minimising redundancy and dependency. Most cited work in database history. *Gold*.

**4.2 Data Lineage & Provenance.** Every datum traceable from origin through every transformation. Implemented via DAG-based orchestrators (Airflow, dbt). Rooted in scientific reproducibility and regulatory compliance. *Silver / Bronze*.

**4.3 Idempotency.** `f(f(x)) = f(x)`. Critical for pipelines where retries are inevitable. Kleppmann (2017), Ch. 11. *Silver*.

**4.4 Immutability.** Once written, data is not modified in place. Beauchemin (2018) formalised functional data engineering — transformations as pure functions over immutable partitions. Event sourcing applies the same principle. *Bronze*.

**4.5 Eventual Consistency.** CAP theorem (Brewer 2000; Gilbert & Lynch 2002): given enough time without new updates, all replicas converge. Strong consistency sacrificed for availability and partition tolerance. Not a compromise — a physical reality of distributed systems. *Gold*.

**4.6 Partitioning & Distribution.** Partition key choice is one of the most consequential data architecture decisions: it determines which queries are efficient and which require expensive cross-partition joins. Kleppmann (2017), Ch. 6. *Silver*.

**4.7 Data Contracts.** Producers and consumers agree on explicit schemas, SLAs, and quality guarantees. Emerging formalisation (2020s) of what Inmon and Kimball implicitly required. Operationalises DbC for the data domain. *Bronze — synthesis; the analogy is the synthesis author's, not an established academic claim.*

**4.8 Quality Gates.** Data must pass defined quality checks at each pipeline stage before advancing. Bad data should be quarantined, not propagated. Analogous to manufacturing quality control (Deming, Juran). *Copper — widely stated in practice; no single peer-reviewed source.*

**4.9 ETL/ELT Pipeline Patterns.** ETL classical (Kimball 2013; Inmon 2005). ELT emerged with cheap cloud storage: store raw, transform on demand. Storage is cheaper than computation; raw data has option value. *Silver*.

**4.10 Observability & Monitoring.** Data observability extends software observability (logs / metrics / traces) with a fourth pillar: data quality (freshness, volume, schema, distribution, lineage). *Silver / Bronze*.

---

## 5. Comparative Analysis

### 5.1 Cross-Domain Convergences

The following principles appear independently and substantively across all three domains:

| Principle | General Engineering | Software Engineering | Data Engineering |
|---|---|---|---|
| **Separation of Concerns** | Load-bearing vs weatherproofing (Dijkstra, 1974) | Layers, MVC, clean architecture | Schema normalisation; storage/compute split |
| **Modularity / Decomposition** | Hierarchical subsystems (Simon, 1962) | Packages, microservices, modules (Parnas, 1972) | Pipeline stages, medallion architecture |
| **Abstraction / Information Hiding** | Black-box models, transfer functions | Interfaces, APIs, encapsulation | Views, virtual tables, semantic layers |
| **Feedback / Observability** | Control loops (Nyquist, Bode) | CI/CD, monitoring, fail-fast | Data quality gates, lineage, observability |
| **Fail-Safe / Fail-Fast** | Default to safe state on failure | Assertions, exceptions, circuit breakers | Dead-letter queues, quarantine tables |
| **Constraint-Based Trade-offs** | Iron triangle; Pareto frontier | CAP theorem; technical debt | CAP; storage vs compute; freshness vs cost |
| **Iterative Refinement** | Prototyping, spiral model | Agile, TDD, refactoring | Schema evolution, pipeline iteration |
| **Parsimony / KISS** | Minimum viable design | YAGNI, MVP | Minimal transformations; avoid premature optimisation |

### 5.2 Domain-Specific Divergences

- **Software-specific:** SOLID (code-level OO contracts), DRY, YAGNI, composition over inheritance, least surprise.
- **Data-specific:** Eventual consistency, immutability, schema normalisation, data lineage as first-class concern.
- **General-specific:** Physical redundancy, thermodynamic efficiency limits (no software analogue — marginal cost of computation ≈ 0).

### 5.3 Venn Diagram (simplified)

```
         ┌─────────────────────────────────────┐
         │     GENERAL ENGINEERING             │
         │  • Physical redundancy              │
         │  • Thermodynamic limits             │
         │                                     │
         │    ┌──── ALL THREE DOMAINS ────┐    │
         │    │  • Separation of Concerns │    │
         │    │  • Modularity             │    │
         │    │  • Abstraction            │    │
         │    │  • Feedback / Observ.     │    │
         │    │  • Fail-Safe / Fail-Fast  │    │
         │    │  • Parsimony (KISS)       │    │
         │    └──────────────┬────────────┘    │
         │                   │                 │
         │   ┌──── SWE ∩ DATA ────┐            │
         │   │  • Idempotency     │            │
         │   │  • Loose coupling  │            │
         │   │  • Quality gates   │            │
         │   │  • DbC / Data Contr│            │
         │   └─────────┬──────────┘            │
         │             │                       │
         │  ┌──────────┴───────┐  ┌────────┐   │
         │  │  SOFTWARE        │  │ DATA   │   │
         │  │  (unique)        │  │ (uniq.)│   │
         │  │  • SOLID         │  │ • CAP  │   │
         │  │  • DRY / YAGNI   │  │ • Immut│   │
         │  │  • Comp > Inher. │  │ • Norm.│   │
         │  │  • Least surprise│  │ • Lineage   │
         │  └──────────────────┘  └────────┘   │
         └─────────────────────────────────────┘
```

### 5.4 Intersection Summary Table

| Principle | GEN | SWE | DATA | Intersection |
|---|:---:|:---:|:----:|---|
| Separation of Concerns | x | x | x | All three |
| Modularity / Decomposition | x | x | x | All three |
| Abstraction / Information Hiding | x | x | x | All three |
| Feedback / Observability | x | x | x | All three |
| Fail-Safe / Fail-Fast | x | x | x | All three |
| Parsimony / KISS | x | x | x | All three |
| Iterative Refinement | x | x | | GEN-SWE |
| Constraint-Based Trade-offs | x | | x | GEN-DATA |
| Idempotency | | x | x | SWE-DATA |
| Loose Coupling / High Cohesion | | x | x | SWE-DATA |
| Quality Gates | | x | x | SWE-DATA |
| Design by Contract / Data Contracts | | x | x | SWE-DATA |
| SOLID | | x | | SWE only |
| DRY | | x | | SWE only |
| YAGNI | | x | | SWE only |
| Composition over Inheritance | | x | | SWE only |
| Least Surprise | | x | | SWE only |
| Schema Normalisation | | | x | DATA only |
| Data Lineage | | | x | DATA only |
| Eventual Consistency | | | x | DATA only |
| Immutability | | | x | DATA only |
| Partitioning Strategy | | | x | DATA only |
| ETL/ELT Patterns | | | x | DATA only |
| Physical Redundancy | x | | | GEN only |
| Thermodynamic Limits | x | | | GEN only |

### 5.5 Synthesis: Why the Convergence?

The deep convergence across domains is not coincidental. All three share a common enemy: **unmanaged complexity**. Simon (1962) argued that complex systems are manageable only when decomposed hierarchically. Dijkstra (1974) argued that human cognitive limits demand separation of concerns. Parnas (1972) demonstrated that the *criteria* for decomposition determine maintainability.

Software's unique principles exist because software has properties no physical system shares: near-zero copy cost, degradation by complexity rather than wear, invisible structure. Data's unique principles exist because data at scale is subject to physics single-node systems can ignore: network partitions, propagation delay, the impossibility of simultaneous consistency and availability. General engineering's unique contributions (physical redundancy, thermodynamic limits) remind us that the digital domains operate within a physical substrate — and that the most fundamental constraints are not architectural choices but physical laws.

---

## 6. Provenance Ledger

| # | Claim | Source | Tier | Confidence |
|---|---|---|---|---|
| 1 | Hierarchical decomposition accelerates system evolution | Simon (1962), *Proc. APS* 106(6) | Gold | High |
| 2 | Closed-loop control is fundamental to system stability | Nyquist (1932); Bode (1945); control theory corpus | Gold | High |
| 3 | Independent redundancy increases reliability exponentially | MIL-HDBK-217; reliability engineering theory | Silver | High |
| 4 | Dijkstra coined "separation of concerns" (1974) | Dijkstra, EWD447 | Gold | High |
| 5 | Abstraction enables modularity and SoC | `unverified_inference` — synthesis from Simon, Parnas, Shannon | Bronze | Medium |
| 6 | Pareto (1906) formalised multi-objective optimisation | Pareto, V. (1906). *Manual of Political Economy* | Gold | High |
| 7 | KISS attributed to Kelly Johnson, Lockheed | Lockheed Martin corporate history | Copper | Medium |
| 8 | Boehm formalised spiral model (1986) | Boehm (1986), *ACM SIGSOFT* 11(4) | Gold | High |
| 9 | Juran generalised Pareto to quality engineering (1951) | Juran (1951). *Quality Control Handbook* | Silver | High |
| 10 | Parnas demonstrated information-hiding decomposition superiority | Parnas (1972), *CACM* 15(12) | Gold | High |
| 11 | SOLID codified by Martin; acronym by Feathers | Martin (2003), *Agile Software Development* | Silver | High |
| 12 | LSP formalised by Liskov & Wing (1994) | Liskov & Wing (1994), *ACM TOPLAS* 16(6) | Gold | High |
| 13 | DRY coined by Hunt & Thomas (1999) | Hunt & Thomas (1999), *Pragmatic Programmer* | Silver | High |
| 14 | YAGNI from Extreme Programming | Beck (1999), *XP Explained* | Silver | High |
| 15 | Coupling/cohesion formalised by Constantine & Yourdon (1979) | Yourdon & Constantine (1979), *Structured Design* | Silver | High |
| 16 | "Favor composition over inheritance" from GoF | Gamma et al. (1994), *Design Patterns* p. 20 | Silver | High |
| 17 | Principle of Least Surprise origin | `unverified_inference` — no single originating paper identified | Copper | Medium |
| 18 | Bug cost rises with detection distance | McConnell (2004), *Code Complete* Ch. 22 | Silver | High |
| 19 | DbC formalised by Meyer (1986/1992) | Meyer (1992), *IEEE Computer* 25(10) | Gold | High |
| 20 | Dijkstra's SoC was originally about programming | Dijkstra (1974), EWD447 | Gold | High |
| 21 | Codd's relational model (1970) — most cited DB paper | Codd (1970), *CACM* 13(6) | Gold | High |
| 22 | Data lineage via DAG-based orchestrators | Reis & Housley (2022); Beauchemin (2018) | Silver/Bronze | High |
| 23 | Idempotency critical for data pipeline reliability | Kleppmann (2017), Ch. 11 | Silver | High |
| 24 | Beauchemin formalised functional DE (2018) | Beauchemin (2018), practitioner essay | Bronze | High |
| 25 | CAP theorem proved by Gilbert & Lynch (2002) | Gilbert & Lynch (2002), *ACM SIGACT News* 33(2) | Gold | High |
| 26 | Partition key choice is consequential | Kleppmann (2017), Ch. 6 | Silver | High |
| 27 | Data contracts operationalise DbC for data | `unverified_inference` — synthesis author's analogy | Bronze | Medium |
| 28 | Data quality issue cost rises with pipeline distance | `unverified_inference` — analogy from McConnell (2004) | Copper | Medium |
| 29 | ELT shift driven by cheap cloud storage | Reis & Housley (2022) | Silver | High |
| 30 | Data observability extends software observability | Reis & Housley (2022); practitioner literature | Silver/Bronze | Medium |

**Tier summary:** Gold: 11 | Silver: 13 | Bronze: 4 | Copper: 3 | `unverified_inference`: 4

---

## 7. Sceptic Pass (as conducted by the synthesis)

*Preserved from the source; the repo host's additional sceptic notes live in the Repository Integration zone below.*

### 7.1 Selection Bias
Why these principles and not others? Security principles (defence in depth, least privilege), performance principles (Amdahl's law), and organisational principles (Conway's law) are omitted. Response: the selection criteria prioritise foundational influence and cross-domain applicability; omitted principles are either domain-specific applications of the listed ones or operate at a different level of abstraction (Conway's law is sociological). The list is not exhaustive.

### 7.2 Survivorship Bias
These are principles that *survived* into mainstream curricula. Failed or discredited principles are invisible. Response: several of these have formal or empirical backing (Codd's normalisation, CAP, control theory), not merely survival. Weight formal proofs and empirical evidence more heavily than longevity alone.

### 7.3 Temporal Validity
Many foundational sources are 30–50 years old. Response: the principles persist precisely because they operate above specific technologies. Information hiding does not require classes; normalisation does not require SQL; feedback loops do not require PID controllers. Implementations change; principles endure.

### 7.4 Western / Anglophone Bias
All sources English-language, predominantly American / British. Japanese quality engineering (Taguchi, TPS), Chinese systems engineering traditions absent. Partially mitigated by Juran and Deming's Japanese-manufacturing influence; a more comprehensive study should include Taguchi, Ohno, and non-Western systems thinking.

### 7.5 Practitioner vs Academic Gap
DRY, YAGNI, KISS originate from practitioner communities. Are they "principles" or "conventions"? Response: the distinction is of degree, not kind. Each has theoretical backing (information theory, option-value economics, complexity theory). Practitioner origin does not invalidate the principle.

### 7.6 AI-Generated Content Integrity
Per CII Principle 0, all machines are maculate. Every major factual claim has a provenance entry (§6); four are explicitly flagged as `unverified_inference`. Publication-level citations have high confidence; specific page numbers, exact quotes, and nuanced interpretations should be independently verified before T3 use.

---

## 8. References (Gold tier, as declared)

1. Boehm, B.W. (1986). "A Spiral Model of Software Development and Enhancement." *ACM SIGSOFT Software Engineering Notes* 11(4), pp. 14–24.
2. Codd, E.F. (1970). "A Relational Model of Data for Large Shared Data Banks." *Communications of the ACM* 13(6), pp. 377–387.
3. Dijkstra, E.W. (1974). "On the Role of Scientific Thought." EWD447. University of Texas at Austin.
4. Gilbert, S. & Lynch, N. (2002). "Brewer's Conjecture and the Feasibility of Consistent, Available, Partition-Tolerant Web Services." *ACM SIGACT News* 33(2), pp. 51–59.
5. Liskov, B. & Wing, J. (1994). "A Behavioral Notion of Subtyping." *ACM TOPLAS* 16(6), pp. 1811–1841.
6. Meyer, B. (1992). "Applying Design by Contract." *IEEE Computer* 25(10), pp. 40–51.
7. Pareto, V. (1906). *Manual of Political Economy.* (English translation: Kelley, 1971.)
8. Parnas, D.L. (1972). "On the Criteria To Be Used in Decomposing Systems into Modules." *Communications of the ACM* 15(12), pp. 1053–1058.
9. Simon, H.A. (1962). "The Architecture of Complexity." *Proceedings of the American Philosophical Society* 106(6), pp. 467–482.

*(Silver and Bronze references listed in §1.3 Source Tier Table above and inline throughout §§2–4.)*

---

            ── REPOSITORY INTEGRATION ZONE ──

## What This Changes

Before this entry, the repo had no imported engineering-principles taxonomy. It had [SOLID](SOLID.md) (Martin et al., as one family of software design principles) and it had homegrown bridges to engineering via [philosophy_of_body](../models/philosophy_of_body.md) (component-scale boundary) and [philosophy_of_hyperstrate](../models/philosophy_of_hyperstrate.md) (field-scale protocol). What was missing was the *evidence of convergence* across general / software / data engineering that would license a bridge model at the module/system scale. This entry supplies that evidence, scaffolding the homegrown [engineering model](../models/engineering.md).

## Maintainer's Note

This entry is hosted for stable reference and for use by the homegrown engineering model. It is **not** a claim that the synthesis's content is the repo host's work, and it is **not** a claim that the synthesis has been independently verified at page-level detail. It is honest about being an LLM artefact — dfw=5, Silver-overall, maculate. It is useful anyway, because the convergence shape it identifies is robust across its Gold-tier primary sources.

**Host ≠ Author.** The host hosts; the LLM synthesised; the Gold-tier primary authors (Parnas, Codd, Dijkstra, Meyer, Simon, Liskov, Boehm, Pareto, Gilbert & Lynch) own the underlying contributions.

## Host-side Sceptic Notes (additional to §7)

- **LSP-T2 risk (semantic drift).** "Principle" in this synthesis means something slightly different from "principle" in the homegrown models. The synthesis uses it in the SE/engineering textbook sense (enduring rule grounded in theory or practice). The homegrown models often use "principle" in an axiological sense (load-bearing claim about relation, sovereignty, multipartiality). When citing from this entry, respect the source's meaning; do not silently promote textbook principles to axiological claims.
- **SOLID overlap.** This entry contains a summary of SOLID. The canonical home for SOLID in this repo is [SOLID.md](SOLID.md); treat the summary here as a convergence-mapping companion, not a replacement.
- **Vocabulary collision.** Several terms (abstraction, interface, boundary) appear here with their CS-textbook meanings and elsewhere in the repo with homegrown / axiological meanings. Cross-readers should hold both.

## Integration with CARDS

This is an imported synthesis, not an axiological framework; direct CARDS mapping is not the entry's load-bearing function. The homegrown [engineering model](../models/engineering.md) carries the CARDS integration. Informally: feedback/observability supports *Competence* (can I do it, do I know how); separation of concerns and data contracts support *Autonomy* (can my part change without yours being forced to); quality gates and fail-safe design support *Safety*.

## Integration with Repo Models

- [docs/models/engineering.md](../models/engineering.md) — the homegrown model that cites this entry as scaffolding. The axiom *"Engineering is the deliberate design of boundaries between what may change and what must hold"* maps against §5.1 of this entry (convergence on separation of concerns, feedback, fail-safe, parsimony).
- [docs/models/philosophy_of_body.md](../models/philosophy_of_body.md) — the component-scale boundary. The engineering model extends this upward; this entry's convergences supply the confirmation that the extension is not idiosyncratic.
- [docs/models/philosophy_of_hyperstrate.md](../models/philosophy_of_hyperstrate.md) — the field-scale protocol. This entry's §4 (eventual consistency, partitioning, lineage) maps onto hyperstrate's field dynamics.
- [docs/lib/SOLID.md](SOLID.md) — the canonical SOLID entry; this synthesis's §3.2 is a summary pointer.

## Why This Matters for the Repository

1. **Convergence evidence.** The repo gains a provenance-backed case that the engineering-as-boundary-design grammar is not idiosyncratic.
2. **Cross-domain vocabulary.** When the repo talks about engineering in a painting, a WordPress theme, or a repo's governance, this entry provides the technical vocabulary to translate the move across domains.
3. **Non-standard import disclosure.** The entry is an honest case study in how to import an LLM artefact without laundering it — visible for future entries.

## Cross-links

- **[Library Index](README.md)** — Registry of imported constructs
- **[SOLID.md](SOLID.md)** — Canonical SOLID entry; this synthesis's §3.2 summarises
- **[docs/models/engineering.md](../models/engineering.md)** — The homegrown model that cites this entry
- **[docs/methods/METHODOLOGY_CII.md](../methods/METHODOLOGY_CII.md)** — §5 hallucination prevention; §4 dfw routing
- **[docs/methods/methodology__lib_entry_creation.md](../methods/methodology__lib_entry_creation.md)** — Canonical lib entry flow; this entry is a declared departure
- **[CONCEPTS/GLOSSARY.md](../../CONCEPTS/GLOSSARY.md)** — Term definitions

---

## Appendix: Contract

> ```yaml
> title: "Cross-Domain Engineering Principles (AI-generated Synthesis, 2026)"
> origin: "AI-generated synthesis (LLM, 2026)"
> host: "André S Clements (non-standard import — LLM-generated)"
> author_credit: "None (no human external author). Primary-source credits: Parnas, Codd, Dijkstra, Meyer, Simon, Liskov, Boehm, Pareto, Gilbert & Lynch, Kleppmann, Martin, Hunt & Thomas, Beck, Gamma et al., Yourdon & Constantine, McConnell, Fowler, Reis & Housley, Kimball & Ross, Inmon, Beauchemin."
> delivery_chain: "Scrubbed on purpose. Treated as an LLM artefact the operator encountered."
> intent: "Provide a stable, provenance-backed reference for the cross-domain engineering convergence that scaffolds docs/models/engineering.md."
> tier: "Silver (overall); individual claims retain §6 Provenance Ledger tiers."
> status: "Imported Library (non-standard)"
> dfw: 5
> risk_index: 0.45
> maculate_rider: "Specific page numbers, exact quotes, and nuanced interpretations of primary sources unverified by host; use `unverified_inference` markers in §6 as authoritative."
> spelling: "South African English with UK bias (host register); source register preserved where quoting."
> hosted: 2026-04-17
> ```

---

*Hosted, not authored. Useful, not verified. Declared, not laundered.*

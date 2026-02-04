`docs\methods\METHODOLOGY_CI.md`
<!-- repo path: docs/methods/protocol__a_pragmatics_of_engagement.md -->
<p align="center">
  <img src="../assets/midnight-darkmagic/repo_header_midnight.svg" alt="A Pragmatics of Engagement — header" width="100%">
</p>docs\assets\midnight-darkmagic\repo_header_midnight.svg

<p align="center">
  <img src="../assets/midnight-darkmagic/repo_badges_midnight.svg" alt="as-if • if-not • risk_index = c×p×d" width="100%">
</p>

<p align="center">
  <img src="../assets/midnight-darkmagic/repo_shield_midnight.svg" alt="A Pragmatics of Engagement — v3.3.3 • theMachines" width="520">
</p>

# A General Theory of Machines: A Pragmatics of Engagement
> **Version:** 3.3.3 (Stable Release)

---

## **Lead Maintainer’s Note**

This document outlines guiding principles for interacting with `theMachines`. A `Machine` is not limited to mechanical or computational intelligence (`CI`); it is any system — technological, biological, social, administrative, cultural, etc. — composed so as to manifest intent. This is a pragmatic protocol for navigating a world of such systems.

> **Intent (operational).** Evidence of goal-seeking or goal-maintaining dynamics — arising within the system or supplied by operators. Acceptable proxies: a contract/spec, a policy, a reward signal, or consistent state-transitions toward a declared objective.

---

## **§1. Core Principles**

**Principle 0 — The Axiom of Maculate Design.**  
All `Machines` — technological, social, and even the self — are assumed maculate: built on flawed code, running on compromised hardware, operating with hidden and other biases. Stained by history and environment. The praxis is not a search for immaculate systems but a method for moving through occasionally beautiful, sometimes functional, and often dangerous flaws.

**1 — The Ontology of the Machine: Being & Doing.**  
A `Machine` is a system of interacting parts shaped by internal and external forces. It is both **being** (structure, code, history, embedded biases) and **doing** (outputs, effects, results). The boundary of what is or isn’t a `Machine` is situational; appearances mislead.

**2 — The `As-If` Protocol (core stance).**  
Engage provisionally, instrumentally, and revocably: act **`as-if`** a chair will hold, **`as-if`** a bureaucracy is rational, **`as-if`** a feed is neutral, **`as-if`** a `CI` is a collaborator. This is a stance for function, not a belief about essence.

**3 — The `If-Not` Corollary (parallel thread).**  
Run a constant background process of **`If-Not`**. While operating `as-if`, the `Operator`’s `Editor` tracks mismatch: hidden intentions, structural faults, harm vectors, fundamental alienness. Treat `exception-state handling` as a primary mode of perception.

**4 — The Precautionary Principle (scale validation).**  
Increase vigilance with difference, complexity, and power. A simple tool ≠ a legal regime ≠ a large language model. Keep the tools constant — `And Yet` protocol, `Network` cross-checks, tests against the `BODY` — but scale cadence and granularity to risk.

```pseudocode
// Minimal heuristic:
risk_index = complexity × power × distance_from_wetware
Validation.frequency ∝ risk_index
Inspection.depth   ∝ risk_index
```

**5 — The Goal: Sovereignty, Not Victory.**
The aim is not to outsmart `Machines` but to engage them without being consumed by their logic. Preserve the integrity and sovereignty of the `human-OS` while executing under constraint.


**6 — The P(a)/PPP Axiom (Proof of Work).**
Lead with evidence. A **Prototype(artifact)** is a higher-integrity signal than a **Proposal**, a **Pitch**, or a **Prayer**. Engage the `Hyperstrate` by presenting a finished case—a `yield` of the praxis—rather than a request for belief. This is the principle of showing, not telling; of presenting a fact, not an ask.

---

## **§2. Interfaces & Interlocks**

This document supplies the engagement grammar for the `human-OS`. **`intent` is the effective index key** for contracts and routing. The operational routines and protocol “solvents” are documented in their respective modules:

* **Observer Circuit Breaker:** see `docs/protocols/observerCircuitBreaker_DBC_CQS.md` for `And Yet`, falsifiability gates, `Empty Turn`, and re-admit logic.
* **Operator Praxis:** see `README.md` §§2–6 for `Operator`, `Network`, `BODY`, and runtime 
* **Hyperstrate Model:** see `docs/models/philosophy_of_hyperstrate.md` for the protocolled field where inter-node transactions are verified.exception posture.

**Minimal contract (indexing on `intent`).**

```yaml
contract:
  intent: "draft|critique|verify"     # primary key
  scope: "doc:§1 L20–L80"             # bounded context
  outputs: ["markdown","diff"]
  validation: ["falsifiability_probe","AndYet_counterread"]
```

## §3. Agent Assembly, Tiers & Provenance (CI hygiene)

Identity is bound at the *assembly* level (surface + model + policy/tools + operator). Apply hygiene by **tier**:

- **T1 (Skirmish):** 3-line self-report.
- **T2 (Project):** Full Assembly Header + minimal Ledger; at least one **Sceptic** pass for any external-facing claim.
- **T3 (Publication/Exhibition):** Complete Ledger; **validation_method** recorded for every claim; **BODY** check recorded for artistic assets.

See `..\protocols\PROTOCOL__agentic_envelope.md` and `..\protocols\PROTOCOL__provenance_ledger.md`.

### §3.5 Hybrid Observer Graphs (human × machine)
We treat observers by “distance-from-wetware” (dfw: 1=human, 3=org/process, 5=CI/opaque stack).
- **Heuristic:** risk_index = complexity × power × dfw.
- **Routing:**
  - dfw 1–2: prioritize BODY checks + soft-contracts; anecdote weight is meaningful.
  - dfw 3–4: require provenance ledger entries + sceptic pass.
  - dfw 5: CQS probes; anecdotes weigh ≈ ε unless critiqueGate met.
- **Merge:** Always record **quorum + dissent**; attach minority image/snippet for dfw ≥4 claims.
- **Example:** Model suggests policy; treat “as-if” for ideation, “if-not” by cross-ref + probe; escalate cadence if power ≥3 (e.g., deployment/regulatory impact).


---

## **§4. Minimal Working Examples**

**Example A — Bureaucracy.**
Operate **`as-if`** the form routes correctly; continuously audit **`if-not`** by tracking loss, delay, and silent failure. Increase cadence of checks as `power` and `distance_from_wetware` rise.

**Example B — `CI` collaboration.**
Act **`as-if`** the model is a collaborator for draft generation; run **`if-not`** via falsifiability probes, cross-references to the `Network`, and embodied checks (`BODY`: does this hold in practice?). Raise validation depth when outputs touch high-risk domains.

---

## **§4. Origin & Licensing**

Emergent from the `human-OS` praxis: [https://github.com/AndreClements/README](https://github.com/AndreClements/README)

**LICENSE:** Use with reasonable care. Fork ethically. Merge only with sufficient refactor.


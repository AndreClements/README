`projects\theses\parametric_authorship.md`
### **Thesis Proposal**

# *The Fourth Dimension is Execution: Parametric Authorship, Semiological Ground, and Systemic Implications*

> Operates under the praxis in **../README.md** (canonical mirror: https://github.com/AndreClements/README/blob/main/README.md).  
> Style & axiology: *as-if / if-not*, maculate design, sovereignty over victory, scaled validation by risk_index.

```yaml
contract:
  intent: "doctoral thesis draft (practice-led, theory-bearing)"
  scope: "projects/theses/parametric_authorship.md"
  validation: ["falsifiability_probe","AndYet_counterread"]
  repository_binding:
    readme_rel: "../README.md"
    methods_rel:
      - "../docs/methods/METHODOLOGY_CI.md"
    protocols_rel:
      - "../docs/protocols/observerCircuitBreaker_DBC_CQS.md"
      - "../docs/protocols/protocol__agentic_envelope.md"
      - "../docs/protocols/protocol__provenance_ledger.md"
    dependencies_rel:
      - "../docs/DEPENDENCIES.md"
````

# Abstract

**Parametric Authorship (PA)** recasts creative agency from content inscription to **rule design across strata**. In a maculate, computationally entangled milieu, the decisional locus moves to constraints, ranges, contracts, and locks that shape families of outcomes. This work formalises: (i) the **Hyperstrate**—the superposed layer of tools, defaults, policies, logistics on which PA operates; (ii) a **Parametric Author Function (PAF)** modelling agency as sensitivity-shaping under contract; and (iii) a **Parametric Semiotic Triangle** in which meaning is borne by mappings, not tokens. A dignity-preserving governance stack (assembly header, agentic envelope, provenance ledger, circuit breaker) is specified and tested in a practice-led case (*Filmic Response* A0 intervention). The thesis argues that **execution is the fourth dimension of form**: agency proves itself by invariants under small perturbations and designed transitions under declared shocks.

# 1. Introduction — From Marks to Maps

Traditional authorship imagines a bounded maker inscribing determinate marks. **Parametric authorship** treats the authorial act as the **design of control surfaces**: articulate rule-sets, set ranges, fix locks; let a generator instantiate instances. Law, pedagogy, and critique remain token-centric; this produces analytical blind spots when outputs are **distributions** and agency is **upstream**.

**Research Questions**

1. What constitutes an authorial act where outputs are *families*, not singulars?
2. How does meaning stabilise when the sign vehicle is **generated under constraint**; what is the semiotic status of the constraint system?
3. Which governance/pedagogical protocols sustain **sovereignty, safety, dignity** when host defaults and opaque models are silent co-authors?

**Hypothesis (operational)**
Agency and meaning in PA are legible and defensible at the level of **rule specification, sensitivity control, and auditable provenance**. The critical unit is the **mapping** and its **stability under perturbation**.

# 2. Definitions & Scope

* **Hyperstrate.** The cross-cutting layer of influence—weights, datasets, UI affordances, platform policies, economics, rubrics, studio logistics—on/through which PA operates.
* **Parametric Author Function (PAF).** The authored tuple and shaping functional that constrain a generator.
* **Dignity (tri-scoped).** Personal (operator sovereignty), object (integrity of non-human participants), system (emergent integrity of the stack).
* **Maculate design.** Assume flaws and history in all systems; build protocols, not purity. *(cf. ../README.md)*

# 3. Theoretical Framework

## 3.1 The Hyperstrate

Authorship is exercised **across** the hyperstrate by selecting substrates, exposing/occluding parameters, declaring contracts, and fixing locks. The relevant philosophy is anti-essentialist, **object-respectful**, and pragmatic: treat hosts, datasets, materials, and policies as **actants** with constraints that must not be collapsed to mere utility.

## 3.2 The Parametric Author Function (PAF)

Let $S$ be the substrate stack (tools/models), $P$ the parameter vector (rules/ranges), $C$ constraints (intent/obstructions), $E$ environment (budgets/governance). A generator $G:(S,P,C,E)\mapsto\mathcal{A}$ yields an artifact family $\mathcal{A}$.

Define the authored tuple:

$$
\mathrm{PAF} := \langle S,\ \mathcal{P},\ C,\ E,\ \Phi \rangle
$$

where $\mathcal{P}\subseteq \mathbb{R}^n$ is the admissible parameter space and $\Phi$ is a **shaping functional** over sensitivities (e.g., $\Phi = \partial \mathcal{F}/\partial P$, with $\mathcal{F}$ a feature extractor on $\mathcal{A}$).

**Agency metric (intuition):**

<p align="center">
  <img src="https://latex.codecogs.com/svg.latex?\dpi{120}&space;&bg=white\operatorname{Auth}^{\star}&space;=&space;\underbrace{\|\nabla_P\,\mathbb{E}[\mathcal{F}(G)]\|}_{\text{control}}&space;\cdot&space;\underbrace{\operatorname{Inv}(P\!\to\!\mathcal{F})}_{\text{legibility}}&space;\cdot&space;\underbrace{R(C,E)}_{\text{responsibility}}&space;\cdot&space;\underbrace{\prod_i&space;d_i}_{\text{dignity}}" alt="Agency metric equation" />
</p>

where $d_i\in[0,1]$ are dignity invariants.

## 3.3 Parametric Semiotic Triangle

Extend Saussure/Peirce to generated media:

* **Vertex 1 — Rule Manifold $\mathcal{P}$** (e.g., *Language Card* rules).
* **Vertex 2 — Generated Vehicle Family $\mathcal{A}$** (instances).
* **Vertex 3 — Interpretant Field $\mathcal{I}$** (audience inference of the mapping).

Meaning stabilises as:

* **Invariants:** features persistent under small $\Delta P$.
* **Designed transitions:** features that change predictably under intentional shocks.
* **Style:** curvature of $\mathcal{P}$ as perceived via $\mathcal{A}$ (how features bend to parameter movement).

## 3.4 Dignity Across the Hyperstrate

Introduce a **dignity tensor** $\mathbf{D}=\operatorname{diag}(d_\text{personal},d_\text{object},d_\text{system})$.

**Minimal invariants (run-time checks):**

* **Withdrawal allowance:** any participant may refuse extraction beyond scope.
  Test: `hasExit(contract, participant)==true`.
* **Default disclosure:** assembly header declares host/weights/policy/limits.
  Test: header present + versioned.
* **Extraction ceiling:** translation $>$ transplantation; surface overlap ≤ $\tau$.
  Test: `feature_overlap(A_final, source) ≤ τ`.
* **Reciprocal ledger:** record non-human impacts.
  Test: ledger includes `non_human_impact` rows at publish.

# 4. Methodology — Practice-Led with Controlled Probes

## 4.1 Sites & Materials

Primary case: **Filmic Response A0** intervention *(../projects/project\_\_filmic-response\_A0\_language-card\_intervention.md)* implementing rule extraction, locks, obstruction deck, and self-audit. Secondary micro-studies probe host-default tilt and parameter sensitivity.

## 4.2 Instruments

* **Assembly Header & Agentic Envelope** *(../docs/protocols/protocol\_\_agentic\_envelope.md)*
* **Provenance Ledger** *(../docs/protocols/protocol\_\_provenance\_ledger.md)*
* **Circuit Breaker** with falsifiability + exit *(../docs/protocols/observerCircuitBreaker\_DBC\_CQS.md)*
* **Dignity Linter** (pseudocode in §5.3)

## 4.3 Data

Artifacts (A4 studies, half-scale, A0s), language cards, mapping notes, ledgers, time-on-task, rubric scores, perturbation results (host-switch, prompt nudges, obstruction toggles).

## 4.4 Analytic Strategy

* **Invariance tests:** measure persistence of declared rules under $|\Delta P|\le\epsilon$.
* **Transition tests:** confirm designed changes under declared shocks (obstructions).
* **Default-tilt diffs:** same prompt across hosts; record drift as host responsibility.
* **Authorship legibility:** correlate rubric “decision coherence” with ledger completeness and lock adherence.

## 4.5 Validity & Limits

Threats: skill heterogeneity, uneven tool access, rubric bias. Mitigations: low-cost kit, rule-first pedagogy, double-marking with dissent kept, protocolised exits. External validity: tested in constrained academic setting; industrial generalisation deferred.

## Quad Face Protocol (No T)

### Roles

* **D — Dreamer (seed):** introduces intent + material.
* **A — Analyst (opening / access):** reveals structure → `diagnostic`, `affordance_map`, `access_notes`.
* **E — Editor (closing / discretion):** limits exposure safely → `discretion_map`, `constraints`, `closure_reasons`, `delta±`.
* **LM — Lead Maintainer (filter):** no content edits. Checks integrity (consent, provenance, reversibility, scope). Issues **status only**.

### One Lap (plane‑only)

1. **D →** `S₀ + header`
2. **A →** `S₁ = S₀ + diagnostic + affordance_map`
3. **E →** `S₂ = S₁ + discretion_map + constraints (+ delta log)`
4. **LM →** **PASS | RETURN(A/E) | HOLD**, with reasons & refs. Records dissent if unresolved.

On **PASS**, an external **Host/Executor rail** performs the act (publish/archive/route) and writes its own run‑log referencing the LM pass. Execution = **off‑plane extrusion**, not a node.

### Emissions (per node)

* **D →** `intent`, `material`
* **A →** `diagnostic`, `affordance_map`, `access_notes`
* **E →** `discretion_map`, `constraints`, `closure_reasons`, `delta±`
* **LM →** `filter_reasoning`, `status`

### LM Filter — can / cannot

**LM can:**

* **Gate**: pass / hold / return‑with‑reasons.
* **Reconcile**: surface conflicts (A vs E), propose **options**, never impose edits.
* **Verify**: consent, provenance, scope adherence, reversibility path.
* **Bind**: attach minimal reasons + references (no content changes).

**LM cannot:**

* Alter payload content, authorise new content, or collapse dissent.
* Silence A or E; must log minority positions when unresolved.

### Invariants (LM linter)

1. **Consent/Non‑extraction** — source, rights, withdrawal path present.
2. **Traceability** — header present; deltas/thresholds signed.
3. **Reversibility** — one‑lap rollback demonstrable.
4. **Optionality** — real exit that isn’t reputationally punitive.

Fail any → **RETURN→E** with the smallest rule to pass next lap.

### Deadlock mediation (A ↔ E)

LM issues **options, not rulings** (team chooses; LM records *why*):

1. publish with E‑constraints intact + A access notes;
2. publish a redacted bundle + private annex;
3. defer; run consent refresh;
4. split release: public set vs restricted archive.

### Ledger line (minimal schema)

`timestamp | node[D/A/E/LM] | action | reasons | refs[consent,prov] | delta±/threshold? | dissent? | status`

---

### Quadratic Illumination Model (for expansion)

A compact ideogram using quadratic fall‑off to couple opening and discretion.

* Let the **origin** $O$ be `(intent, consent)`.
* Let $r$ be **exposure distance** (reach/context distance: audience size, platform spread, time horizon).
* Let $A_{open}$ be Analyst’s proposed **opening amplitude** (legibility/affordance strength, unit‑less scale).
* Let $\tau$ be Editor/LM **exposure threshold** derived from consent/risk.
* Let $\alpha\in[0,1]$ be Editor’s **attenuation** (redaction/obfuscation factor).

**Illumination constraint:**

$$
I(r) = \frac{\alpha\,A_{open}}{r^2} \;\le\; \tau
$$

**Reads:** the farther an artefact travels from its consent/intent origin (larger $r$), the less intensity is allowed. Analyst increases legibility by mapping paths (raising `A_open`), Editor preserves discretion by choosing $\alpha$ and controlling effective $r$ (restricting channels/contexts). LM validates $\tau$ and the inequality; proposes options if violated:

* **Reduce** $A_{open}$ (narrow affordances),
* **Increase** $r$ (restrict channels/audiences),
* **Increase attenuation** $\alpha\to\alpha'$ (redaction/blur),
* **Re‑derive** $\tau$ with refreshed consent or new risk model.

> This model is an **ideogram**, not a metric: it encodes how A (opening) and E (discretion) co‑determine safe exposure. Use it to explain decisions and to sketch “what would it take to publish?” scenarios.

# 5. Governance Architecture — The Fourth Dimension is Execution

## 5.1 Assembly Binding (who/what is operating)

Record **surface, model family, role, tools, retrieval, operator, tier**, and compute a contract hash. *(../docs/protocols/protocol\_\_agentic\_envelope.md)*

## 5.2 Ledger (the new indexical trace)

Claims, rule locks (e.g., value by D9), host defaults, parameter deltas, validation method, sceptic pass, **non-human impact**. *(../docs/protocols/protocol\_\_provenance\_ledger.md)*

## 5.3 Dignity Linter (studio-safe)

```pseudocode
fn dignity_lint(assembly, contract, language_card, artifacts):
  assert assembly.has_defaults_disclosed()
  assert contract.has_exit_for_all_nodes()

  τ := contract.extraction_ceiling
  overlap := feature_overlap(artifacts.A0, contract.source_grammar)
  if overlap > τ: raise "extraction_ceiling_exceeded"

  assert language_card.contains("Dignity rule")
  assert artifacts.mapping_note.includes("translation") && includes("refusal")

  if artifacts.ledger.non_human_impact.empty():
    warn "ledger_missing_nonhuman_rows"
  return "ok"
```

# 6. Pedagogy — Author Rules, Not Posters

* **Rule Extraction** from sparks; pixels discarded after articulation.
* **Rule Locking** (value by D9; edge by D11) to force coherence.
* **Obstructions** (consent-based) to learn transitions.
* **Self-Audit** allocating 100 points across ideation/decisions/craft/risk/language.
* **Critique norm:** *describe the move, not the person*.
  Implementation reference: *(../projects/project\_\_filmic-response\_A0\_language-card\_intervention.md)*

# 7. Semiological Analysis — Propositions

**P1.** In PA, the sign’s primary bearer is the **mapping** $(\mathcal{P}\to\mathcal{A})$, not any instantiated token.
**P2.** **Meaning** appears as invariants and designed transitions recoverable by perturbation tests.
**P3.** **Style** = perceived curvature of $\mathcal{P}$ under feature extraction $\mathcal{F}$.
**P4.** **Authorship** = sensitivity shaping under contract, evidenced by locks, ledgers, and stability.
**P5.** **Dignity** must be conserved across personal/object/system scopes to count agency as ethical.
**P6.** **Critique** should prefer protocol diffs (decisions, locks, invariants) over token aesthetics alone.

# 8. Implications

* **For authorship law.** Shift to assembly-level attribution; require disclosed defaults and ledgers; value control/legibility over token novelty.
* **For institutions.** Audit hosts as co-authors; keep dissent/minority readings; adopt circuit-breaker norms.
* **For toolmakers.** Expose defaults; provide contract hooks (headers, ledgers, exits); permit refusal.
* **For materials.** Enforce “two transitions + one reserve” to honour object dignity of supports.

# 9. Positioning & Dependencies

Primary stance and protocols: **../README.md** (canonical: [https://github.com/AndreClements/README/blob/main/README.md](https://github.com/AndreClements/README/blob/main/README.md))
Methods/Protocols/Influences: see **../docs/methods/METHODOLOGY\_CI.md**, **../docs/protocols/**\*, **../docs/DEPENDENCIES.md**.

# 10. Contributions

1. **Conceptual:** Hyperstrate, PAF, dignity tensor, parametric semiotic triangle.
2. **Methodological:** Assembly header, ledger, circuit breaker, dignity linter, perturbation-based critique.
3. **Pedagogical:** Rule-first studio with locks/obstructions/self-audit; assessment privileging decisions over spectacle.

# 11. Execution Plan & Artefacts

* **Year 1:** Formalisation; pilot instruments; baseline case.
* **Year 2:** Multi-host perturbation studies; rubric/ledger correlations; publish protocols.
* **Year 3:** Consolidation; external replication kit; dissertation.
  **Outputs:** datasets of mappings/locks, ledgers, rubrics, code for linter, written thesis, replication notebook.

# 12. Conclusion — The Page Keeps the Trace

Parametric authorship relocates agency to **sensitivity design under contract**. Meaning lives in the **map**, not the single mark. With a dignity-preserving governance stack and perturbation-based critique, authorship remains sovereign—even as `theMachines` and materials co-author. The fourth dimension is execution; proof is in invariants and transitions recorded by the page and the ledger.

---

## Appendix A — Formal Notation (concise)

* $G:(S,P,C,E)\mapsto\mathcal{A}$ — generator.
* $\mathcal{F}:\mathcal{A}\to\mathbb{R}^k$ — feature extractor.
* Invariant set $I=\{f\in\mathcal{F} \mid f(G(P+\Delta P))\approx f(G(P))\ \forall \|\Delta P\|\le \epsilon\}$.
* Transition set $T=\{(f,\Delta P)\mid f(G(P+\Delta P)) - f(G(P)) \in \Delta^\star\}$ (designed delta).

## Appendix B — Operational Snippets

```pseudocode
assembly_header:
  surface: "<host encounter>"
  model: "<family@version|opaque>"
  system_role: "Maker|Sceptic|Archivist"
  tools: ["none|web|file_search"]
  retrieval: false
  operator: "Lead Maintainer"
  tier: "T2"
  contract_hash := sha256(concat(values))

policy critique_norm: speak := "describe_move_not_person"

pipeline parametric_authorship_case(student):
  theme := sentence(no_plot)
  sparks := AI_metaphor_sparks(opt_in=true, timebox=60m)
  rules := extract_rules(sparks, target=["edge","value","rhythm"])
  lock(value_map, by="D9"); lock(edge_hierarchy, by="D11")
  if student.opts_in("obstruction"): rules += choose(obstruction_deck)
  A0 := execute_mark_making(rules)
  ledger.record([locks, obstruction, host_defaults])
  dignity_lint(assembly_header, contract, language_card, {A0, ledger})
  return {A0, language_card, mapping_note, ledger}
```

## Appendix C — Templates (pointers)

* Language Card v0.1 and Studio Log: see **../projects/project\_\_filmic-response\_A0\_language-card\_intervention.md**.
* Ledger schema: **../docs/protocols/protocol\_\_provenance\_ledger.md**.
* Agentic envelope: **../docs/protocols/protocol\_\_agentic\_envelope.md**.
* Method: **../docs/methods/METHODOLOGY\_CI.md**.




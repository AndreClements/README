`projects/theses/parametric_authorship_appendices.md`
### **Appendices & Reference Material**
> Companion to [parametric_authorship.md](parametric_authorship.md)

---

## Appendix A — Formal Notation (concise)

* **Generator:**
  ![ \$G:(S,P,C,E)\mapsto\mathcal{A}\$](assets/parametric_authorship_equations_cards_mathtext/01_generator_map.png)[^eq_generator]

* **Feature Extractor:**
  ![ \$\mathcal{F}:\mathcal{A}\to\mathbb{R}^{k}\$](assets/parametric_authorship_equations_cards_mathtext/09_feature_map.png)[^eq_feature]

* **Invariant Set:**
  ![$I=\{\,f\in\mathcal{F}\mid \Vert f(\,G(\,P+\Delta P\,)\,)-f(\,G(\,P\,)\,)\Vert\leq\delta\ \forall\,\Vert\Delta P\Vert\leq\varepsilon\,\}$](assets/parametric_authorship_equations_cards_mathtext/10_invariant_set.png)[^eq_invariant]

* **Transition Set:**
  ![ \$T={, (f,\Delta P)\mid f(G(P+\Delta P))-f(G(P))\in\Delta^{\star},}\$](assets/parametric_authorship_equations_cards_mathtext/11_transition_set.png)[^eq_transition]

Here \$\Delta^{\star}\$ denotes the **admissible change set** declared in the rule specification (designed transitions).

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

pipeline parametric_authorship_case(operator):
  intent := declare_intent(scope, constraints)
  sparks := generate_candidates(opt_in=true, timebox=60m)
  rules := extract_rules(sparks, target=["structure","tone","invariants"])
  lock(declared_invariants); lock(designed_transitions)
  if operator.opts_in("obstruction"): rules += choose(obstruction_deck)
  artifact := execute_under_rules(rules)
  ledger.record([locks, obstruction, host_defaults])
  dignity_lint(assembly_header, contract, rules, {artifact, ledger})
  return {artifact, rules, mapping_note, ledger}
```

## Appendix C — Templates (pointers)

* Ledger schema: **../docs/protocols/PROTOCOL\_\_provenance\_ledger.md**.
* Agentic envelope: **../docs/protocols/PROTOCOL\_\_agentic\_envelope.md**.
* Method: **../docs/methods/METHODOLOGY\_CI.md**.
* Typed co-authorship: **../docs/protocols/PROTOCOL\_\_typed\_coauthorship\_relations.md**.

## Appendix D - utilities

```js
fn axioms_lint(assembly, contract, mapping, artifacts):
  // A4
  assert assembly.discloses_defaults()         // host, weights, policy, limits
  // A5
  assert contract.exits.for_all_participants()
  // C1
  assert feature_overlap(artifacts.final, contract.source_grammar) ≤ contract.τ
  // A6
  assert artifacts.ledger.has(["commit_hash","lock:value_by_D9","lock:edge_by_D11"])
  // A1 (sanity): invariants exist under small ΔP
  assert invariants(mapping, epsilon=ε).count ≥ 1
  return "ok"
```

---
**Tentative Reference Listing**

[^solid]: "SOLID" design principles (Single Responsibility, Open–Closed, Liskov Substitution, Interface Segregation, Dependency Inversion) as popularized by Robert C. Martin; see *Clean Architecture* (2017) and common summaries. The thesis uses SOLID as a **protocol design metaphor** and interface discipline, not as code prescription.

[^harman]: Graham Harman, *The Quadruple Object* (2011) and related OOO works framing objects' withdrawn reality; used here to motivate **relations of access** rather than total access.

[^peirce-saussure]: Ferdinand de Saussure, *Course in General Linguistics* (1916); C. S. Peirce, collected writings on the sign/interpretant. Extended here to **parametric** semiotics (mappings, invariants, designed transitions).

[^legal-posture]: Any references to copyright, moral rights, fair use/fair dealing, information or data rights are **contextual** and **non-normative**—included to justify protocol design (headers, ledgers, exits). Readers should consult qualified counsel for jurisdiction-specific interpretation.


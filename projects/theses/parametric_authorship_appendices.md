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
  ![ \$I={,f\in\mathcal{F}\mid f(G(P+\Delta P))\approx f(G(P))\ \forall,|\Delta P|\leq\epsilon,}\$](assets/parametric_authorship_equations_cards_mathtext/10_invariant_set.png)[^eq_invariant]

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

---

**Plain-English Equation Translations**

*In which the formalisms are translated for those of us who sensibly avoided mathematics at school but still want to understand what all the fuss is about.*

[^eq_generator]: *Plain-English (Eq. 1, Generator):* The Grand Machine takes your ingredients (tools, settings, rules, and whatever chaos the universe throws in) and produces... stuff. Lots of stuff, potentially. It's rather like a sausage machine, except the sausages might be poems or paintings, and nobody's entirely certain what went in. The important bit is that it's a *machine*—give it the same ingredients, it'll give you the same family of sausages, near enough. (Near enough. Which in mathematics means "don't ask about the edge cases unless you've brought drinks.")

[^eq_paf]: *Plain-English (Eq. 2, PAF Tuple):* This is your authorship packed into a lunchbox: your tools (S), your knobs to twiddle (𝒫), your rules about what's absolutely forbidden (C), the weather outside (E), and crucially—how much the whole thing wobbles when you actually *do* twiddle the knobs (Φ). The revelation here is that the lunchbox is the author. Not the sandwich. Not you. The *arrangement*. This troubles people who were hoping they were still in charge.

[^eq_param]: *Plain-English (Eq. 3, Parameter Space):* Your knobs live in a big box of numbers. It's got *n* dimensions, which is mathematician for "quite a lot of knobs, possibly more than three, and good luck visualising that." The ⊆ means your particular knobs are allowed to live *somewhere* in the big box, but not necessarily everywhere. Think of it as zoning regulations for creativity.

[^eq_phi]: *Plain-English (Eq. 4, Shaping Functional):* How much does the *interesting stuff* change when you nudge your settings? That's Φ. It's the derivative, which is calculus for "the thing that tells you whether poking this button will do anything worth poking it for." A high Φ means small tweaks, big changes. A low Φ means you could twist knobs all day and nobody would notice. Most of us have experienced both in committee meetings.

[^eq_auth]: *Plain-English (Eq. 5, Agency Metric):* How much are you *actually* the author? Well, it depends. First: does twiddling your knobs actually *do* anything observable? (That's the gradient bit.) Second: when you're not twiddling, does the thing stay put? (That's Invariance—points for things that don't wander off when you stop watching them.) Third: are you actually allowed to run this? (Risk and readiness—someone checked, presumably.) Fourth: is everyone's dignity intact? Personal dignity, respect for your materials, and the system not being a total shambles—multiply them together. If *any* of these goes to zero, your authorship is zilch. This is the mathematical equivalent of "you're only as strong as your weakest excuse." (The ∏ symbol means "multiply everything together." Mathematicians love Greek letters. It makes them feel continental.)

[^eq_dignity]: *Plain-English (Eq. 6–7, Dignity Bounds & Tensor):* Dignity gets a score between zero (absolutely none—someone has been treated like furniture) and one (full dignity intact—everyone's been asked nicely and said yes). This applies to *you*, to *the things you're working with*, and to *the whole rickety system*. Line up your three dignities on the diagonal of a matrix. Why a matrix? Because mathematicians need something to do with their hands, and it lets you do operations on all three at once without playing favorites. Also, saying "dignity tensor" in meetings makes everyone pause respectfully, which is sometimes the whole point.

[^eq_illum]: *Plain-English (Eq. 8, Illumination Constraint):* Light gets dimmer the further you are from the lamp—specifically, it falls off with the *square* of the distance. This formula says your work's "brightness" (how exposed it is, how legible, how *seen*) is your openness (A_open) times how much you're letting through (α), divided by how far it's travelling (r²). The τ is your consent ceiling: "this bright and no brighter, or someone hasn't agreed to be looked at." Want to publish far and wide? Either dial down the intimacy, shrink your audience, or get better consent. Those are your three doors. Pick one or get blocked. (The inverse-square law was discovered by people who were trying to light their houses before electricity. They had to care about this sort of thing. Now you do too, except about exposure instead of candles.)

[^eq_feature]: *Plain-English (Eq. 9, Feature Extractor):* You've made something. Now, what *about* it? The Feature Extractor looks at your artifact(s) and produces a list of *k* numbers describing the interesting bits—color, density, how angry it looks, whatever you care to measure. It's like a very picky food critic, except instead of "hints of oak" you get "vector component seven is 0.34."

[^eq_invariant]: *Plain-English (Eq. 10, Invariant Set):* What *doesn't* change when you jiggle the controls a little bit? Those are your invariants—the features that stubbornly stay put even when you poke them. They're the personality of your rule-set. If you nudge your settings (ΔP, a small nudge) and certain features (f) refuse to budge, congratulations: that's your style. That's the stable bit. That's what you can take credit for. (The δ is the tolerance—"close enough." ε is "a small amount." In academic papers, these always turn out to be more complicated than they sound. Welcome to mathematics.)

[^eq_transition]: *Plain-English (Eq. 11, Transition Set):* What *does* change, *on purpose*, when you throw a planned spanner in the works? If you've said "when I toggle this obstruction, the mood should shift," and it *does*, and the shift is *in the set of changes you declared acceptable* (Δ*)—that's a designed transition. Not an accident. Not chaos. Intentional drift. It's the difference between "I meant to do that" and "oh dear."

[^eq_radius]: *Plain-English (Eq. 12, Radius Form):* This is equation 8, rearranged. If you know your openness, your transmissivity, and your consent ceiling, you can calculate the *minimum* distance your work has to travel before it's dim enough to be safe. Close audiences: more intimate. Distant audiences: needs more consent or less content. Mathematics is very keen on rearranging things. It makes the same idea look like new ideas. Publish enough rearrangements and you can have a career.

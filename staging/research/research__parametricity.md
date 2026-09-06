# Parametricity — Library Research Brief

```yaml
archive:
  title: "Parametricity — Library Research Brief"
  candidate: "PARAMETRICITY"
  status: "complete"
  created: 2026-09-05
  sessions_completed: 1
  current_phase: "validating"
  gate: "research"
  relevance: >
    Parametric Authorship already uses parameters, invariants and perturbation tests.
    Programming-language parametricity may sharpen that work, but only if the repo
    distinguishes parameterisation from relational parametricity and marks artistic
    transpositions as formal results, analogies, or open hypotheses.
  early_signal: "proceed_with_elevated_scrutiny"
```

---

## §1. Scoping

### 1.1 Research question

**Can programming-language parametricity be imported as an exact technical reference and a disciplined test for Parametric Authorship and poetics, without equating parameters with parametricity, aesthetic form with a type, or recurrence with polymorphism?**

The immediate task is prior-art and boundary work. It is not to prove that an artwork is a System F term.

### 1.2 Candidate profile

| Field | Value |
|---|---|
| **Name** | Parametric polymorphism; relational parametricity; free theorems |
| **Primary authors** | Christopher Strachey; John C. Reynolds; Philip Wadler |
| **Domain** | Programming-language semantics; type theory; program equivalence and data abstraction |
| **Gap hypothesis** | The repo formalises parameter sensitivity and invariance but lacks the stricter distinction between a system with parameters and a term that must act uniformly across type instantiations. |
| **Transfer risk** | High. Shared words such as *parameter*, *relation*, *form*, *invariant* and *instantiation* encourage false identity across domains. |

### 1.3 Preflight gate

| Question | Result |
|---|---|
| External authorship? | **Yes.** The technical lineage is external and must remain attributed. |
| Citable sources? | **Yes.** Multiple peer-reviewed primary papers are available. |
| Repo hooks? | **Yes.** Parametric Authorship, SOLID, the Parametric Semiotic Triangle, spans, layered averaging, and current poetic-form work. |

**Early signal: proceed, with elevated scrutiny on the transposition.**

### 1.4 Terminological boundary

These terms are not interchangeable:

| Term | Minimum meaning here |
|---|---|
| **Parameterisation** | A system exposes inputs or controls whose values may vary. It may inspect them and branch case by case. |
| **Parametric polymorphism** | One polymorphic operation is used across type instantiations rather than a collection of unrelated type-specific operations. |
| **Relational parametricity** | A semantic uniformity property: under an admissible relational interpretation of types, related inputs/environments yield related outputs/values. |
| **Free theorem** | A property derived from a polymorphic type under a specified parametric calculus/semantics, without inspecting the term's implementation. |

A many-knobbed artwork can be parameterised and non-parametric. Conversely, a polymorphic term may have no artist-facing control panel at all.

---

## §2. Source discovery

### 2.1 Primary and boundary sources

| # | Source | Tier | Role and access |
|---|---|---|---|
| 1 | Christopher Strachey, “Fundamental Concepts in Programming Languages”, Copenhagen lecture notes (1967), published in *Higher-Order and Symbolic Computation* 13 (2000), 11–49. [DOI 10.1023/A:1010000313106](https://doi.org/10.1023/A:1010000313106); [accessible copy](https://www.cs.cmu.edu/~crary/819-f09/Strachey67.pdf). | **Gold** | Primary terminology: ad hoc versus parametric polymorphism. |
| 2 | John C. Reynolds, “Types, Abstraction and Parametric Polymorphism”, in *Information Processing 83*, 513–523, North-Holland (1983). [Scanned paper](https://people.mpi-sws.org/~dreyer/ats/papers/reynolds.pdf). | **Gold** | Primary abstraction theorem and relational account; local copy held in Reading. |
| 3 | Philip Wadler, “Theorems for Free!”, *FPCA ’89*, 347–359 (1989). [DOI 10.1145/99370.99404](https://doi.org/10.1145/99370.99404); [author bibliography](https://homepages.inf.ed.ac.uk/wadler/topics/parametricity.html). | **Gold** | Primary practical derivation of laws from polymorphic types; local copy held in Reading. |
| 4 | Gordon Plotkin and Martín Abadi, “A Logic for Parametric Polymorphism”, *TLCA 1993*, 361–375. [DOI 10.1007/BFb0037118](https://doi.org/10.1007/BFb0037118); [Edinburgh Research Archive copy](https://era.ed.ac.uk/handle/1842/205). | **Gold** | Boundary source: adds a logic for System F in which relational parametricity can be presented and used formally. |
| 5 | Martín Abadi, Luca Cardelli and Pierre-Louis Curien, “Formal Parametric Polymorphism”, *Theoretical Computer Science* 121 (1993), 9–58. [DOI 10.1016/0304-3975(93)90082-5](https://doi.org/10.1016/0304-3975(93)90082-5). | **Gold** | Boundary source: introduces System R, a syntactic extension of System F with relations between types. |
| 6 | Rasmus E. Møgelberg and Alex Simpson, “Relational Parametricity for Computational Effects”, *Logical Methods in Computer Science* 5(3:7) (2009). [DOI 10.2168/LMCS-5(3:7)2009](https://doi.org/10.2168/LMCS-5(3:7)2009). | **Gold** | Boundary source: standard pure theory does not automatically cover effects or recursion; develops an effects-aware framework. |
| 7 | Dimitrios Vytiniotis and Stephanie Weirich, “Free Theorems and Runtime Type Representations”, *ENTCS* 173 (2007), 357–373. [DOI 10.1016/j.entcs.2007.02.043](https://doi.org/10.1016/j.entcs.2007.02.043). | **Gold** | Boundary source: runtime type analysis invalidates the standard abstraction result unless the model/language is extended appropriately. |
| 8 | `Reading/Topics/Parametricity/draft__lib_PARAMETRICITY.md` (2026-08-24). | **Copper / internal** | Candidate integration draft. Evidence of the repo's use and its current category errors; not an authority on PL theory. |

### 2.2 Minimum evidence assessment

The evidence threshold is exceeded: three foundational primary texts and several peer-reviewed boundary papers are available. The main risk is not source weakness. It is transposition drift.

### 2.3 Depth log

- **L0:** Strachey, Reynolds and Wadler.
- **L1:** Plotkin–Abadi, Abadi–Cardelli–Curien and two extensions testing the boundary of the standard result.
- **L2:** not entered. The task does not need a survey of every logical-relations variant.
- **L3:** hard stop observed.
- **Locator verification (2026-09-05):** Strachey §3.6.4 begins on printed p. 36 and continues on p. 37; Reynolds states the abstraction theorem on p. 516 and treats fixed-point failure and the complete-relation repair on p. 517.

---

## §3. Source evaluation

### 3.1 Strachey: the distinction, not yet Reynolds's theorem

Strachey distinguishes two classes. In ad hoc polymorphism, no single systematic rule determines the result type from the argument types; ordinary overloaded arithmetic is his example. Parametric polymorphism is “more regular”: `Map` works for arbitrary element types when supplied with a suitable function (2000 reprint, §3.6.4, pp. 36–37).

**Correction to the Reading draft:** “one definition behaving uniformly” is a useful later gloss, but it is not Strachey's complete formal result. Strachey names and illustrates the distinction; Reynolds supplies the relational formulation.

### 3.2 Reynolds: relations are interpretations, not a synonym for meaning

Reynolds begins from the thesis that type structure enforces levels of abstraction. For higher-order functions, homomorphisms are insufficient, so he lifts type constructors over binary relations. His abstraction theorem says, in essence, that the semantics of a well-typed expression takes related environments to related values (1983, pp. 516–517).

For polymorphic functions, the relation quantified over at a type variable is arbitrary. A polymorphic value must preserve the relations induced through the structure of its type. This formalises the intuition that it cannot choose unrelated behaviour for each type.

Two cautions are already present in Reynolds:

1. Adding fixed points initially makes the simple abstraction theorem fail; relations must be restricted to suitable complete relations to regain it.
2. The paper describes active model-building problems. It is foundational work, not a licence to treat every typed or generic language as automatically parametric.

**Correction to the Reading draft:** “types as relations” is too loose. More exactly, types receive a relational interpretation alongside their ordinary semantics, and type constructors determine how relations are lifted.

### 3.3 Wadler: a theorem from a type, under conditions

Wadler operationalises Reynolds's result. For a term

```text
r : ∀X. List X → List X
```

the type entails a naturality law: mapping a **total** function over the input before `r` gives the same result as applying the corresponding instance of `r` first and then mapping. The implementation can alter list shape in type-independent ways, but it cannot manufacture or inspect arbitrary `X` values using operations the calculus does not provide.

The result is powerful because the implementation need not be read. It is not magical because the theorem inherits the assumptions of the calculus and relational interpretation.

### 3.4 Later boundary work

Plotkin and Abadi add a logic for System F in which relational parametricity can be stated and used formally. In separate work, Abadi, Cardelli and Curien introduce System R, a syntactic extension of System F that also reasons about relations between types. The two papers must not be conflated: System R is not Plotkin and Abadi's construction.

Møgelberg and Simpson show why “real systems approximate it” is not enough as a description. Effects and recursion do not merely add noise; they change which relations and semantics can validate a parametricity result. Vytiniotis and Weirich make the same point for runtime type analysis: the standard abstraction properties fail, though a redesigned language/model can recover appropriate results.

**Finding:** parametricity is not a single promise that modern languages either simply keep or break. There are parametricity theorems for specified languages, observations and admissible relations.

---

## §4. Synthesis

### 4.1 What the candidate actually contributes

Parametricity contributes a question stronger than “which parameters did the author choose?”:

> **Across which substitutions, and with respect to which declared relation, must this operation be unable to tell the difference?**

That question can sharpen Parametric Authorship in three ways:

1. It separates a **control surface** from a **uniformity guarantee**.
2. It turns “invariant” from a generally stable feature into a claim indexed by a transformation or relation.
3. It asks where situated judgement enters: selection, classification, exception, curation and refusal make content-sensitive observations and may break a proposed relational property. Inspection alone does not formally entail non-parametricity; a polymorphic term may inspect structure or use a supplied relation-respecting operation. These decisions are nevertheless often where artistic answerability concentrates.

It does not follow that non-parametric action is bad. Care, editing and consent frequently require attention to particulars. The gain is diagnostic: do not let a uniform kernel launder the situated decisions around it.

### 4.2 A transposition gate for art and writing

Before describing a creative procedure as *relationally parametric* in the Reynolds/Wadler sense, record:

1. **Polymorphic interface:** what is the universally quantified type or interface, and what ranges over type substitutions?
2. **Calculus and semantics:** in which formal language/model is the claim made, including its recursion, effects and observational equivalence?
3. **Quantified relation family:** over which admissible relations interpreting the type variables must the result hold? One hand-picked relation is not enough.
4. **Relational interpretation:** how are those input relations lifted through the type constructors to the outputs?
5. **Uniform term:** which well-typed term or operation remains the same at every instantiation?
6. **Available observations:** what may the term inspect or receive through its interface, and do those observations respect the lifted relations?
7. **Counterexample:** which term, observation, effect or relation would falsify the claimed theorem?

If these conditions are absent, use **parameterised**, **rule-governed**, **invariant**, **equivariant**, **relation-preserving**, **recombinatory**, or **analogy to parametricity**. Testing one declared relation can establish a bounded relational property; it does not by itself establish relational parametricity.

Then ask a separate **value-boundary** question: what, if anything, makes the preserved relation ethically or aesthetically desirable? The formal result cannot supply this answer.

### 4.3 Layered averaging: a mixed pipeline

The arithmetic mean offers a clean bounded case.

- With a fixed collection of aligned arrays, equal `1/N` averaging is invariant under permutation of source order in exact arithmetic.
- It commutes with the same affine colour transformation applied to every source in exact arithmetic: transform-then-average equals average-then-transform.
- These are explicit relation-preservation claims. They do not depend on the identity of a depicted subject.

Finite-precision summation, clipping, quantisation and colour-space conversion can weaken those equalities in the implemented pipeline. They should be tested there rather than inherited from the ideal arithmetic.

The whole artwork does not thereby become relationally parametric:

- stock selection decides what enters the collection;
- face, eye, mouth, pose or feature alignment inspects content;
- crop, mask, rejection and display decisions treat cases differently;
- `1/N` equalises numerical contribution after those decisions, not social standing, consent, historical force, visibility, or perceptual salience.

The useful model is therefore **algebraically invariant/equivariant kernel / content-sensitive boundary / situated execution**, not “the algorithm treats everyone equally”. The image mean is monomorphic and computes from numerical values; content-blindness alone would not make it parametrically polymorphic.

### 4.4 Poetic form: boundary notes only

- A rhyme scheme, metre or refrain schedule resembles a grammar or schema before it resembles a polymorphic type. It guarantees positions and recurrences, not a semantic relation between every admissible poem.
- A line copied or sampled into several poems is a value crossing contexts. It is not, by that fact, one universally quantified polymorphic function.
- Recombination can still preserve declared relations. A defensible bounded claim requires at minimum that the relation be named and tested; a relational-parametricity claim additionally requires the typed and universally quantified conditions above.
- Chapbook-specific synthesis is deliberately excluded from this public research brief and belongs in the private practice repo under the current custody ruling.

### 4.5 CARDS alignment — axiology first

| Axis | Contribution | Strain / threat |
|---|---|---|
| **Competence** | A type can make some commitments inspectable and provable before implementation details are known. | False formalism can make metaphor look proved. Technical assumptions must be stated. |
| **Autonomy** | Representation independence permits different implementations behind an abstraction boundary. | The same boundary restricts observation. Autonomy belongs to implementations within an interface, not automatically to persons. |
| **Relatedness** | The formal object is relation preservation. | Mathematical relations are not social relatedness. The shared word supplies no ethical bridge. |
| **Dignity** | Uniformity can block arbitrary special cases. | Uniformity is not dignity and may ignore relevant difference. `1/N` is anti-crowning at most, not innocence. |
| **Safety** | Abstraction can contain dependency on representation details. | Effects, reflection, nontermination and exceptions alter the guarantee; care may require a non-uniform response. |

**No structural CARDS hard stop.** The risk lies in overclaiming ethical force.

### 4.6 Aesthetic resonance — poetry second

The strongest resonance is not “form controls content”. It is that chosen blindness has consequences: refusing access to a kind of difference produces a family of invariants, while every place that looks becomes a site of judgement. This gives current work a useful cut between recurring structure and situated attention.

### 4.7 Technical soundness — ethos third

| Check | Assessment |
|---|---|
| Method transparent? | **Yes.** Logical relations and abstraction theorems are formally specified. |
| Core claims falsifiable/contestable? | **Yes.** Countermodels and language features can invalidate a proposed theorem. |
| Authors accountable and citable? | **Yes.** Foundational peer-reviewed record. |
| Critiques/boundaries available? | **Yes.** The literature explicitly studies recursion, effects, runtime type analysis, strictness and richer calculi. |

### 4.8 Draft utility statement

Parametricity is a formal account of uniformity under polymorphic substitution. Imported narrowly, it helps the repo distinguish mere parameterisation, bounded algebraic invariance/equivariance and relation-preserving abstraction from full relational parametricity. Artistically, it prompts separate scrutiny of the chosen rule—including a choice to ignore content—and the situated decisions that inspect particulars; neither locus is innocent.

---

## §5. Validity check

### 5.1 Import gate

| # | Question | Answer | Score |
|---|---|---|---|
| 1 | External authorship? | Yes — Strachey, Reynolds, Wadler and subsequent PL researchers. | 1 |
| 2 | Verifiable primary sources? | Yes — multiple Gold sources. | 1 |
| 3 | Integrates with ≥2 existing constructs? | Yes — Parametric Authorship, SOLID, Parametric Semiotic Triangle, spans and layered-averaging practice. | 1 |
| 4 | Fills a gap? | Yes — the repo lacks a rigorous distinction between parameter choice and uniform relation preservation. | 1 |
| 5 | Active use case? | Yes — thesis revision, practice analysis, poetic-form research and painting-return tests. | 1 |

**Score: 5/5.**

### 5.2 Recommendation

**Proceed to a lib entry with elevated scrutiny (`risk_index ≈ 0.40`) and rewrite the Reading draft before promotion.**

Required corrections:

1. Keep **parameterisation**, **parametric polymorphism** and **relational parametricity** separate.
2. Replace “types as relations” with the more exact relational-interpretation account.
3. State the language/semantic assumptions behind every free-theorem example.
4. Remove the claims that fixed poetic form *is* a type signature and that a reused line *is* a polymorphic term.
5. Replace “Parametricity supplies Parametric Authorship's missing theoretical floor” with a narrower claim: it supplies a formal contrast, a relation-preservation test, and a way to locate content inspection.
6. Label integration claims as **formal result**, **bounded structural analogy**, or **open transposition**.
7. Keep chapbook-facing examples and unpublished lexis out of the public lib entry.

### 5.3 And-Yet

Parametricity can make blindness look virtuous because blindness produces the theorem. In a technical abstraction boundary, that may be exactly the point. In a social or artistic relation, the inability to see a relevant difference may be neglect. The repo should use parametricity to identify what a rule cannot inspect, then ask whether that blindness is warranted. It should not make uniformity stand in for care.

---

## Resume instructions

1. Read this brief before editing the Reading draft or creating `docs/lib/PARAMETRICITY.md`.
2. Build the subject-matter zone from §§1–3; preserve Host ≠ Author.
3. Use the seven-part transposition gate in every repository-integration claim.
4. Keep manuscript-specific analysis private.
5. Run a different-provider technical sceptic pass on the lib draft before promotion.

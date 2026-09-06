# Refactor spec — Parametric Authorship (working thesis + paper), one pass, informed by parametricity, vernufpoësie, the idea scan and the summer's practice

```yaml
archive:
  title: "T1 — upgrade specification for parametric_authorship.md and parametric_authorship_masters.md"
  status: "proposal — diff map, no prose rewritten; every item carries a counter-reading; operator applies, varies or refuses per item"
  created: 2026-09-05
  scope: "one pass, sequenced thesis → paper (operator ruling 2026-09-05)"
  inputs:
    - "staging/research/research__parametricity.md (R1, Sol, repaired 13:13; V1 sceptic passed 15:55)"
    - "staging/research/research__vernufpoesie.md (R2)"
    - "staging/research/research__idea_ideacubatory.md (R3)"
    - "ArtPraxis/studio/s1_tension_matrix__claude_column.md (S1, Claude column; reconciled with Sol's column on the coordination bench)"
    - "staging/reflections/reflection__parametric_authorship_flatness.md (2026-06-10)"
    - "coordination_bench_tmp.md (operator rulings; Sol's critique)"
  excluded: "anything from the Objectification Workshop room (research use NOT CLEARED); poem lexis; chapbook architecture (P1, Sol)"
  voice_guard: "docs/methods/voice_signature.md §7 run over every candidate sentence: no 'not X but Y', no resolved tensions, no performed expertise, no spectacle"
spelling: "South African English with UK bias"
```

## How to read this

Each item: **where** (file, section, line as of `main` 2026-09-05) · **what** (the change, as a spec) · **why** (which input drives it) · **counter** (the reading that says leave it). Candidate wording appears only where the change is one sentence, in *italics*, and is offered, not applied. Items are numbered T-n (thesis) and P-n (paper). Priority: **must** (a factual or structural defect) / **should** (the summer's evidence asks for it) / **may** (an option the operator might decline).

Two rulings shape everything below. Parametricity is **not** a floor for PA; it is a formal contrast and a test (R1 §4.8, V1 verdict). And answerability has **two loci**: the choice of rule, including the choice to be content-blind, and the situated inspections (R1-CORR; operator's ruling on Sol's critique).

---

## Part 1 — `projects/theses/parametric_authorship.md`

### T-0 Hygiene (must)

| where | what | why |
|---|---|---|
| L35 "Working axioms: A0–A7" | → "A0′ (meta), A0–A8" | A0′ and A8 exist since 2026-06-29 |
| contract YAML L17 `METHODOLOGY_CI.md`; §9 L506 | → `METHODOLOGY_CII.md` | renamed 2026-02-27 |
| §4.1 L287 "[TBD — case study pending]" | Replace the TBD line with the realised companion (the 2026-06-26 note already beneath it), keeping *Threshold Mechanics* as the named secondary probe | slot filled; header never updated |
| §3.6 L240, L246 "A3–A7" | → "A3–A8" where the policy set is meant; leave §5.x lint comment "A3–A6 (and A7)" as is, since A8 is a locator not a lint check | A8 added after these lines were written |
| Paper back matter L385 "axioms A1–A7" | → "A0′, A0–A8" | same |

*Counter:* none. These are stale strings.

### T-1 A1 stays tight; transitions get a corollary (should)

**where** §2.5 A1 (L82–83) and Corollaries (L106–109). **what** Sol's V1 caught the conflict: `:=` reads as a definition, and a corollary saying invariants are one bearer contradicts it. Two ways to enact the narrow reading, the operator's choice. **(i) Recommended (Sol's V1, accepted 2026-09-06):** `mapping-meaning := invariants(P → A)`. A1 then defines what perturbation can test and claims nothing about all meaning; the definition sign is honest again. **(ii)** `meaning ∋ invariants(P → A)`: one character, but an untyped containment claim that leaves the ambiguity in place; withdrawn as the recommendation. Either way **C3** names the other bearers without folding them into "relation": *meaning is also borne by designed transformations (§3.3, P2) and by consequential differences registered in execution or encounter.* The wider option (widen the equation itself) stays on the table as the operator's alternative; it is the choice, not the symbol, that settles the conceptual question. **why** §3.3 and P2 already say meaning "appears as invariants and designed transitions"; A1's formula understates the thesis's own §3.3, and the summer's writing (recurrence-with-variation; the lifted line that means something else in its new chamber) lives in the transitions. Sol's proposed expansion ("invariants + lawful/situated transformations + consequential differences, with audience/field inside the account") is the maximal version. **counter:** the maximal version turns A1 into a list and loses the constitutive one-liner the two-tier cut protects. C3 is the smaller move and keeps A1 quotable. Sol's "consequential differences" is carried by C3's pointer to P2; "audience/field inside" is T-2.

### T-2 Audience and field: a modelling choice, both drafted (must decide)

**where** §3.2 (PAF tuple, E) and §3.3 (Interpretant Field 𝓘). **what** The recent writing says E is not merely outside the work: sales, custody, forms, exhibition framing feed back into what gets made. The thesis has to say where the reader and the field live. Two drafts:

- **(a) Extend P.** The reader's location becomes a parameter. *Cost:* "parameter" stops meaning what the author sets; §3.3's Interpretant Field 𝓘, a separate vertex, collapses into P; Auth★'s Jacobian would differentiate with respect to something the author does not hold.
- **(b) Keep P; couple E.** E already holds "budgets/governance" and the hyperstrate. Add one sentence to §3.2: *E is coupled, not exterior: the family 𝓐 feeds back into E (sales, custody, forms, framing), and the next run's P is set inside that changed E.* 𝓘 stays the third vertex; the coupling E ← 𝓐 is drawn as an arrow on the triangle.

- **(c) Classify by the run (Sol's draft, adopted at S1 reconciliation).** A condition is **E** while encountered; when knowingly selected as a substrate or default it is **S**; when made steerable it is **P**; when made a binding rule or limit it is **C**. The same party or condition may move category across time, and A4 records the movement without equating causal contribution with moral standing. Reader recognition is not assigned to P or E once for every work.

**Recommendation:** (c), with (b)'s feedback arrow E ← 𝓐 drawn on the triangle. It keeps 𝓘 as the third vertex, keeps "parameter" meaning what the author steers, and gives the thesis a rule for the cases the summer produced (an editor, a market, a policy, a reader). **counter:** (a) is what "parametric" in the recent poems feels like from inside (the reader is a knob). If the operator wants that, then §3.3 must be rewritten to make 𝓘 a subspace of P, and Auth★ re-derived. That is a bigger pass than this one.

### T-3 A8: two loci, and what "account" means (must decide)

**where** §2.5 A8 gloss (L104). **what** Three additions to the gloss, no change to the formula. Kept in three columns (Sol's V1 rule, 18:20): **source wording** / **model interpretation** / **candidate prose, offered**.

| | source wording (verbatim, pointer) | model interpretation | candidate prose (offered, unratified) |
|---|---|---|---|
| (1) two loci | R1-CORR (Sol): "Artistic answerability attaches both to choosing a rule (including blindness) and to situated inspection." Operator ruling on the plan critique: accepted. | A8's gloss names one locus ("the one who set the control surfaces and chose to launch"). | *The account attaches where the rule was chosen, including a choice to be content-blind within a declared boundary, and to consequential inspections made in the run.* |
| (2) what "account" is | CII §9.3 / Latitudes tombstone: "No reason required, none given, none to be reconstructed. Not a failure state." A6: "the recorded decision and its hash". | The thesis uses "account" without saying whether it means the record or a justification; the Empty Turn shows the two come apart. This is the model's reading, not the operator's stated position. | *Account here means the kept record and answerability for consequences; a justification is not owed with it.* |
| (3) more than one launcher | ArtPraxis `correspondence/20260803-…`: the phrase André's, the subtitling Aryan's; "parametric authorship with the editor in the operator's chair" (operator's own words in the FB archive note). | A8 assumes one launcher; the record has two and resolves it by typed co-authorship. | *Where more than one party launches, the split is typed under PROTOCOL__typed_coauthorship_relations.* | **why** S1 found A8 assumes one launcher (the herri subtitle has two) and that the Empty Turn keeps an account it does not owe; R1-CORR and the operator's ruling put answerability at both loci. **counter:** (3) could be read as the thesis outsourcing its own axiom to a protocol. The alternative is to state the split rule in A8 itself. Recommend the cross-reference; the protocol is where the cases are.

### T-4 A1 and A2 are two claims when form becomes subject (hold; repair before decision)

**where** §2.5, the tier map under A0′ (L77), or a note after A2 (L85–86). **what** The surviving claim is modest: A1 and A2 do different work when a poem takes its form or convention as subject. The earlier gloss "form inspecting its own type = runtime type analysis" is withdrawn; it smoothed represented subject, poetic form and program observation into one technical analogy. **why** S1 (I2 × A1/A2), as reconciled: placement invariants do not exhaust the meaning made by executing, recognising or resisting a form. **counter:** the two-tier cut already says constitutive axioms "forbid no observation", so their pulling apart may not need a new sentence at all.

### T-5 New §2.8, parametricity as a formal contrast (hold; repair before decision)

**where** after §2.7. **what** One paragraph, ~120 words, no formulae: PA's "parametric" and PL theory's "parametricity" collided by name; the repo's uses are *parameterised* or *rule-governed*; relational parametricity (Reynolds 1983; Wadler 1989; Strachey 1967 for the distinction) is a stronger, specific property that none of the audited practice cases has been shown to satisfy; the seven-point gate in the research brief is the test; layered averaging has bounded algebraic invariances alongside situated, content-specific execution (R1 §4.3). Cite `staging/research/research__parametricity.md` now, `docs/lib/PARAMETRICITY.md` when promoted. **why** R1; V1 verdict; the Reading draft's "missing theoretical floor" must not re-enter by the thesis's silence. **counter:** a paragraph disclaiming a term the thesis never used invites the confusion it disclaims. The name collision is already public (the chapbook title), but the paragraph may still give it more weight than it needs.

### T-6 Declared priors and the seat (should)

**where** §3.2 (d_i), §3.4 (D), §5.1 Assembly Binding. **what** (1) After L169 and in §3.4: *d_i and η are declared priors, revisable on evidence, not measurements* (the flatness reflection's fix, already applied to typed_coauthorship §3). (2) In §5.1: *The author in PAF is a seat (a role under rules), not a sitter (an identity); a change of sitter across a work's life is logged as an `identity_event` (PROTOCOL__agentic_envelope v1.3).* **why** `reflection__parametric_authorship_flatness.md`; the identity-governance work supplies the precedent. **counter:** (2) may belong in the envelope protocol and be cross-referenced only. Either is fine; the thesis should at least name the seat.

### T-7 The Empty Turn as recorded non-execution (should, small)

**where** §2 micro-glossary L63; §3.6 L240 ("Refusal is an admissible control action"). **what** Three columns.

| source wording (verbatim, pointer) | model interpretation | candidate prose (offered, unratified) |
|---|---|---|
| Operator, 18:00: "those as far as I am concerned become 'empty-turn' members of set that is still part of the work, sometimes we don't alow some to break the strick average, sometimes we sel;ect which, sometimes we don't, depends … not actually furmulaic work, it is still live art." Glossary L63: "Empty Turn — sovereign refusal to execute and/or allow extraction." | The S1 lenses sorted the practice's empty turns into absent / withheld / masked, and the ruling adds the excluded set-member. **That sorting is the model's, not the operator's; "four grades" was a liberty (Sol's V1) and is withdrawn as a claim about the practice.** What the ruling does establish: the set is the work; a rejected member stays in it; the rule is not formulaic. | *Empty Turn — sovereign refusal to execute and/or allow extraction; a recorded non-execution, which A6 keeps although A2 did not run it. A source set aside from an average remains a member of the set that is the work.* (The operator's sentence could stand in the glossary verbatim instead.) |

**why** S1 I7; operator ruling 18:00. **counter:** Sol's caution not to romanticise refusal; the glossary line should describe, not taxonomise.

### T-8 §4.1 Sites: the summer's evidence, with the room excluded (should)

**where** §4.1. **what** Add a short list of admissible new sites, each one line: the vault and the **redactionprint** (the operator's name, 2026-09-06, for a held poem's masked public face; "punctuation score" was machine-coined and is retired). What it demonstrates, stated exactly: reproducible lexical masking generated from a canonical private text identified by hash; it conceals the words and still shows title, word counts, punctuation, lineation and stanza shape. A strong technical custody example, which is not the same as a judgement about the artwork; the herri subtitle (typed co-authorship; two launchers); the Bowie sale (a completely programmed piece sold; the account concentrated on the seller); the *Ways and Means* ledger (per-version rulings as declared invariants over admissible revisions). State explicitly: *the Objectification Workshop ran on 7 August 2026; its research use is not cleared; nothing from the room enters this thesis.* **why** the plan's ruling; S1. **counter:** the sites list is the paper's job, and this summer's vocabulary may overtake a thesis refactored only ten weeks earlier.

### T-9 Dropped after V1

The proposed one-off-mark clause is withdrawn. One realised selection may still instantiate a rule; the absence of a produced family does not establish mark-only meaning. The editorial case can remain a limit case in the record without being legislated into P1.

### T-10 §9 Positioning: three comparisons (hold)

**where** §9. **what** If anything is added, offer three brief comparisons. (1) Sol LeWitt, "Paragraphs on Conceptual Art" (1967): a comparator to A0; execution differs under A2. No priority claim. (2) Vernufpoësie (Hugo 1988/89): a retrospective critical vocabulary for form-play and reader recognition, encountered after the practice; not a historical lineage and not an authority under which the work "sits". (3) Parametricity (Strachey; Reynolds; Wadler): the formal contrast described in T-5. **why** R3 row 4; R2; R1. **counter:** §9 is a pointer section and three comparisons may crowd it or borrow authority. Hold for the operator's read-aloud.

### T-11 §12 Conclusion (may)

**where** L523 "Meaning lives in the **map**, not the single mark." **what** *Meaning lives in the map and in its designed transitions; the single mark carries it only where no family exists.* Aligns with T-1 and T-9. **counter:** the one-liner is the thesis's signature and reads better short. Operator's call; the C3 corollary already does the work.

### T-12 The desirable, regulative in role (may; theory_of_art first)

**where** §2.5 genus-frame paragraph (L73). **what** One clause, only after theory_of_art takes it: *(regulative in role, in Kant's sense of direction rather than possession; mobile in structure, because the field is many-bodied)*. **why** R3 row 3. **counter:** belongs in theory_of_art, not here; the thesis should inherit it by citation. Recommend: theory_of_art first, thesis clause optional.

---

## Part 2 — `projects/theses/parametric_authorship_masters.md` (after Part 1 lands)

### P-0 Hygiene and status (must)

| where | what | why |
|---|---|---|
| Cross-references L385 | "axioms A1–A7" → "A0′, A0–A8" | T-0 |
| §3.2 L139 "both forthcoming: the site's events section is in build" | Verify against the live site before changing; the website context reports one live event entry for the workshop | may be stale |
| §7 L240 and §9 | The workshop **ran** on 7 August 2026. Operator, 2026-09-06, verbatim: *"I did not achieve, nor was any interest expressed, from the University's side into my work or thw workshop, and as things were running tight i chose to focus on teh workshop as a drawing workshop only right before it rather than trying to integrate too much of my stuff into it."* And, correcting a liberty in this row minutes later, verbatim: *"I did youse teh prompt pool cards pretty much as discussed, models vetoed some, in teh session we hade the sitters draw cards 'blind' before most of the poses, in some we knew what objects they got, sometimes we didn't."* Source wording only; no model reading of what this does to F2/F3/F5 or to "research use". The operator says what §7 and §9 record. | operator statements 2026-09-06; the paper predates the run |
| Provenance row 13 | unchanged: autopoiesis still "primary to confirm" | no new reading done |

### P-1 The 1/N stays the declared compositional ethic; one sentence in §9 (may)

**where** §4.2 untouched, or one added sentence there if the operator prefers it to §9. **what** Three columns. "By hand" was a liberty (Sol's V1) and is gone.

| source wording (verbatim, pointer) | model interpretation | candidate prose (offered, unratified) |
|---|---|---|
| Operator, 18:00, as quoted under T-7. Operator, 16:5x: "rough numbers are okay, it's not nuclear physics"; "we don't over prioritise exactitude either." Paper §4.2 (existing): "The arithmetic is necessary, and it is not sufficient." | The earlier "approximates equal weighting" read the run's deviation as a shortfall; the ruling reads some of it as chosen, some as the engine's, and neither as a fault. Nothing in the main argument needs to change. | *The set is the work; a source set aside from the average remains a member of it.* Or the operator's own sentence, verbatim, in §9. |

No batch mechanics in the main argument; no numbers; no code repair or provenance expansion as a dependency of either text. **why** operator ruling 18:00; the steers; Sol's V1 objections, both accepted. **counter:** none. May, not must.

### P-2 §5 F7 and §9: one practice, two registers of care (should)

**where** F7 (L205) and §9 Limitations (L254–258). **what** Three columns. "Two registers of care" is the **lenses' synthesis** (S1, both lanes), not the operator's; attributing it to the practice was a liberty (Sol's V1) and is withdrawn.

| source wording (verbatim, pointer) | model interpretation | candidate prose (offered, unratified) |
|---|---|---|
| Bowie/Eve statements: "The ethical position sits in the 1/N — no source dominates." Handout (published apparatus): the veto before the room; the stop signal, "no reason owed"; prompt pool v1.2 revision note on the reworded prompt. Operator, 2026-09-06: the cards were used pretty much as discussed, models vetoed some, sitters drew blind. | The wall's statements locate the ethic in uniformity; the room's apparatus locates care in non-uniform response. Sol's V1 (accepted): the two need not be governed by one higher rule; equal weighting may govern aggregation and particular response may govern embodied participation, as context-dependent practices. The earlier "which governs when" was a model-made demand. | *The composites state their ethic as equal weight; the workshop's apparatus states its care as response, one sitter at a time. They are practices for different things and this paper does not rank them.* Or nothing: F7 may already suffice. |

Drawn from the published apparatus only, never from the run (the earlier "a struck card, a rest called" withdrawn as a clearance leak). **counter:** the paragraph may be unnecessary if the operator regards the two as obviously one practice; then F7 stands and §9 is untouched. **why** S1 cross-item tension 1 (all three lenses). **counter:** F7's "one practice" already carries "constitutively one, empirically sibling outputs". The tension is sharper than "sibling": it is two ethics. Naming it is the honest limitation.

**Hold:** this cannot land only in F7 or §9 while §§2 and 4.2 still say the wall and room share "the same ethic" and "one commitment". If the operator takes the tension, the whole claim must be repaired together; otherwise omit P-2.

### P-3 §2 / §7: the two-launcher case, by footnote (may)

**where** §7 right-of-response paragraph or §2's "the sailor" sentence. **what** A footnote only: *A case in the practice after this paper's first draft: a journal published the operator's essay under a subtitle the editor lifted from the operator's own comment; the phrase is the author's, the subtitling the editor's, typed as co-authorship. A8 assumes one launcher; the case has two. See the thesis, A8.* **why** S1 I6; T-3. **counter:** the paper is scoped to Eve Song; a second case belongs in the thesis. A footnote keeps the scope and points.

### P-4 §2.1 and §11: the name collision, one footnote and one reference (may)

**where** §2.1; §11 References. **what** Footnote at "parametric authorship": *"Parametric" here is the practice's word and is not parametricity in the programming-language sense (Reynolds 1983; Wadler 1989); see the thesis §2.8.* Add Reynolds and Wadler to §11 as Gold only if the footnote is taken. **why** T-5. **counter:** scope creep for a paper that never uses the term. Recommend the footnote and nothing more.

### P-5 Provenance ledger: new rows (only for items that land)

Row 17 (if P-2): *two registers of care* — source S1 matrix; Copper; model-assisted synthesis, operator pending. Row 18 (if P-3): *herri subtitle* — `correspondence/20260803-aryan-kaganof-herri-publication.md`; Copper (primary doc). No row for batch mechanics: not a dependency (V1, accepted).

### P-6 Not changed

The felt-beauty claim (§6), the probe, the two-tier cut (§2), the gendered author (§8), the right of response (§7). Nothing in R1–R3 or S1 touches them. The room stays out.

---

## Part 3 — Outside both files (for the operator, not this pass)

- **ArtPraxis statements and CV:** no change asked, and the 319/310 note is closed: on the operator's ruling the nine rejected frames are Empty-Turn members of the set, so "three hundred and nineteen, all of them here" is true as written. The one thing worth a glance is that the same 1/N sentence now sits in three statements and the CV; whether that is boilerplate or a signature is the operator's to feel.
- **theory_of_art.md:** the regulative sentence (R3 row 3).
- **ideacubator/README.md:** R3 appendix.
- **Reading draft lib:** rewrite per R1 §5.2 before promotion; V1 nit (Wadler's slogan is Wadler's).
- **Ways and Means colophon:** R2 §5.4 corrections.

---

## Sequencing and verification

1. T-0 first (mechanical). Obtain operator decisions on T-1, T-2 and T-3. Repair or omit T-4 and T-5 before a read-aloud. Hold T-6 through T-12; T-9 is dropped.
2. Paper after the thesis: P-0's narrow status facts may land. P-1 through P-5 remain optional and operator-facing; P-2 requires a whole-claim repair if taken.
3. Applied claim changes get an appropriately scoped provenance row; mechanical string fixes do not require a new apparatus layer. Update `projects/project__pa_masters_paper.md` only for changes that actually land.
4. Voice guard on every candidate sentence before it lands; the read-aloud BODY check is the operator's.
5. V1 is complete; its holds and repairs are incorporated here. Nothing in this spec has been applied to the thesis or paper.

## Counter-reading of the whole

A spec that adds twelve items to a thesis that was refactored ten weeks ago may be over-correcting toward this summer's vocabulary. T-0 and the narrow P-0 status facts are the only changes presently separable from conceptual decisions. Everything else can wait for the operator's next read-aloud without cost.

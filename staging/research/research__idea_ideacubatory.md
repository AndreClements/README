# Idea / Ideacubatory — Concept Scan and Architecture Audit

```yaml
archive:
  title: "Idea / ideacubatory — a conceptual scan of 'idea' and a read of the repo's incubation architecture as an instance of it"
  candidate: "none — homegrown; no lib import"
  status: "complete — bounded (six conceptions, one primary passage each; full inventory of IDEACUBATORY.md and ideacubator/ as at 2026-09-05, with the next day's new entry appended)"
  created: 2026-09-05
  sessions_completed: 1
  current_phase: "validating"
  gate: "scan (not the lib research gate; Host ≠ Author does not apply to Part B)"
  relevance: >
    Operator ruling 2026-09-05: "idea / ideacubatory" means both the concept of an idea and
    the repository's incubation pipeline, read together. Part A asks what an idea is in six
    competing accounts and what each demands of the repo's theory of art. Part B reads
    IDEACUBATORY.md and ideacubator/ as an instance, finds where the declared pipeline leaks,
    and proposes an index.
  early_signal: "no new construct; three repairs to the architecture and one sentence for theory_of_art"
  provenance: "Claude Fable 5.1 lane. Six locate-agents (accessible editions, web) each adversarially verified by a second agent; all six locators and quotations confirmed; the verifiers' objections are carried into the table. Web quotations capped at 25 words. Part B from a git and grep inventory run by the writing instance."
spelling: "South African English with UK bias"
```

---

## Part A — What is an idea? Six accounts, one question each

The method: no conception enters without a concrete question the repo's theory of art has to answer. The repo's own line is fixed for the exercise: *creativity is the making of new relations, towards the desirable; art is the appreciable manifestation of creativity; the desirable is a dependent variable* ([theory_of_art.md](../../docs/models/theory_of_art.md) v0.3.0).

| # | Conception | Primary passage (verified) | The question | What the passage says | What the repo says | Gap or repair |
|---|---|---|---|---|---|---|
| 1 | **Form prior to instance** (Plato) | *Republic* X 596b–597d (Shorey, Perseus); *Phaedo* 74d–75b | Is an ideacubator *seed* a form its later entry instantiates? | No. The craftsman "fixes his eyes on the idea or form" (596b) and makes couches; the form is not made by any craftsman. A seed written down is a made thing, so it stands with the couch, not the form. Priority exists, but not for the seed. **Verifier:** "unmade" overstates; 597c has God make it "one only"; Shorey's note calls the device deliberately simplified. | Relata are "individuated locally, by the domain of concern doing the appreciating"; "new is relative to that domain". No inventory of forms precedes the field. | The repo has no room for Platonic priority and does not need it. But its word *seed* borrows a priority it denies. Repair: a seed is the **first made instance**, not a form. |
| 2 | **Object of thought, from experience** (Locke) | *Essay* II.i §§1–4, §8 (quotation), II.ii §1 (Gutenberg #10615) | If ideas are made from experience, what separates a "raw capture" from an idea? | Nothing in kind. An idea is what "the mind is applied about whilst thinking" (§1); operations pass "like floating visions" and leave no "clear, distinct, lasting ideas, till the understanding turns inward upon itself" (§8); the clock met daily gives "but a confused idea" (§7). Confused and clear are degrees of attention. **Verifier:** impression/idea is Hume's frame; Locke's is quality/idea. | The ideacubator's ladder (`RAW_CAPTURE` → `seed` → `developing`) reads as a ladder of kind. | It is a ladder of **attention**, Locke's sense: a raw capture is already an idea, confused. Repair: say so in the index; stop treating `RAW_CAPTURE` as pre-idea. |
| 3 | **Regulative, never given in experience** (Kant) | *KrV* A320/B377; A644/B672 (Meiklejohn, Gutenberg #4280) | Is "the desirable" a regulative idea? | In role, yes: ideas work "as regulative ideas, directing the understanding to a certain aim, the guiding lines towards which all its laws follow" (A644/B672); a *focus imaginarius* outside experience toward which lines converge. In structure, no: Kant's point is fixed, the lines "meet in one point". **Verifier:** the Appendix is theoretical reason; the desirable is practical/axiological, which Kant houses elsewhere; and "does not allow drift" is inference from silence. | The desirable is "weather, not a fixed star", and gustiness is derived from many masses curving one field (N-body). | One sentence for theory_of_art: *the desirable is regulative in Kant's sense of role (direction, not possession) and departs from him in structure (a focus imaginarius that moves, because the field is many-bodied).* Names the lineage, marks the departure, borrows no authority. |
| 4 | **The machine that makes the art** (LeWitt) | "Paragraphs on Conceptual Art", *Artforum* June 1967, para. 2; paras. 6–7; *Sentences* 1, 28, 29 (1969) | A **close comparator** to A0 (`equation ≡ language_machine`); no priority claim. Where does PA differ? | "all of the planning and decisions are made beforehand and the execution is a perfunctory affair. The idea becomes a machine that makes the art" (para. 2); the form "becomes the grammar for the total work" (para. 7); the plan exists for "avoiding subjectivity"; carried out "blindly", "not tampered with" (Sentences 28–29). **Verifier:** LeWitt admits a return channel: the work is "open to the perception of all, including the artist" (para. 3), and the artist "would mitigate his idea by applying subjective judgment" (para. 5). Answerability never leaves the maker in LeWitt either. | A0 matches the machine; A2 (`form₄ᴰ := (…, execution)`) makes execution the fourth dimension of form, not perfunctory; A4 lets the substrate co-author; A8 concentrates the account in the maker. | The clean difference is **A2 against para. 2**: for LeWitt execution is perfunctory, for PA execution is where the proof lives. A4 is the second difference, real but softened by para. 3. A8 is not a difference; LeWitt keeps selection with the artist. Hold as *bounded comparator*; the flatness reflection's "sitter or seat" question applies to LeWitt's artist too. |
| 5 | **A stage in a process** (Wallas) | *The Art of Thought* 1926, ch. IV pp. 79–86, 93 (archive.org) | Does the incubator's ladder track Wallas's stages, and what is *verification* for a seed? | Four stages (Preparation, Incubation, Illumination, Verification), distinguished by how far conscious will controls them (p. 93). **Incubation is defined negatively**: not consciously thinking about the problem. Verification "tested" the idea and "reduced [it] to exact form" (p. 81, Poincaré quoted). Stages "constantly overlap" (pp. 81–82). | The folder is named for incubation; its statuses reward work (`developing`). The permaculture lens's ladder (seed → establishing → maturing) is a growth figure, not Wallas's. | By Wallas the ideacubator is a **Preparation shelf**, and real incubation is the year of git silence on six entries. Repair: a status for deliberate leaving-alone (`dormant`, which workbench already has). Verification = the research brief plus the Import Gate: test, and reduce to exact form. |
| 6 | **A problem that its solutions do not exhaust** (Deleuze) | *Difference and Repetition* ch. IV, Patton pp. 168, 177–178, 186; ch. III p. 163 | Is promotion out of the incubator a loss rather than a maturation? | "these Ideas do not disappear with 'their' solutions, since they are the indispensable condition without which no solution would ever exist" (p. 168); "solutions necessarily come to conceal the problem" (p. 178). Not loss; **concealment**. **Verifier:** p. 168 is Deleuze glossing Kant; and p. 163's "determined at the same time as it is solved" means actualisation is a becoming, so maturation is not excluded. | The permaculture lens already says the climax "generates conditions for new growth" and "And-Yet sections generating new seeds". | Promotion is fine; **forgetting the problem is the failure**. Repair: a promoted entry keeps its file, gains a `promoted_to:` line, and its open questions stay visible. The one entry that did this by accident (stocks_and_flows) is the model. |

### The collision, staged (5 against 6)

Wallas's ladder has a top rung: verification, exact form, done. Deleuze's Idea has no top rung: every solution is a case, and the problem keeps posing. The repo's architecture assumes Wallas (a construct "matures" into a lib entry, then a lens, then "climax") and its methodology assumes Deleuze (the And-Yet is mandatory; the constellation is "n foundational nodes", the count open). Both are in force. The audit below shows which one the folder actually runs on: neither, because nothing has ever been promoted through it.

### A position, held lightly (no lib import)

In this repo an *idea* is best read as a **relation noticed before it is appreciable**: Locke's confused perception, Plato's couch rather than form, Wallas's illumination written down, Deleuze's problem posed. The ideacubator entry is not the idea; it is the smallest manifestation of one, and by the theory of art that makes the entry itself a small work with a little mass. That is why entries can be cited from lib and lens files without ever "graduating": they already have weight in the field. The desirable is regulative in role and mobile in structure (row 3), which is the one sentence Part A hands to theory_of_art.

---

## Part B — The incubation architecture, read as an instance

### B.1 The declared pipeline

| Stage | Where | Declared by | Status vocabulary |
|---|---|---|---|
| Raw input stream | `IDEACUBATORY.md` (root) | its own header ("This document is the input. The structured /ideacubator/ directory is the eventual output") | none |
| Slightly formed ideas | `ideacubator/` (14 files on 2026-09-05, no README) | workbench/README.md | `RAW_CAPTURE`, `seed`, `developing`, `INCUBATING`, `INCUBATING v1.0` (inline, two formats) |
| Sketches | `workbench/` | its README | `SHAPING`, `DORMANT`, `READY_TO_STAGE`, `ARCHIVE` (plus `DRAFT`, `Draft for…` in practice) |
| Work in progress | `staging/research/`, `staging/reflections/` | research protocol | YAML `status:` (`complete`, `seed`, …) |
| Production | `docs/` | — | YAML contract `status:` |

Theorised once, in [LENS__permaculture §Succession](../../docs/lenses/LENS__permaculture.md): *Ideacubator → Research brief → Lib entry → Lens → Integration*. That ladder **skips workbench** and names no status for leaving a thing alone.

### B.2 What actually flows (git + grep, 2026-09-05)

| Entry | Status (inline) | Created | Last touched | Referenced from docs/projects/staging |
|---|---|---|---|---|
| thought_is_a_machine | `RAW_CAPTURE` | 2025-08-01 | 2025-08-13 | 0 |
| self_is_a_galaxy_of_sorts | `RAW_CAPTURE` | 2025-08-02 | 2025-08-13 | 0 |
| poem__objectification_and_vulnerability | `INCUBATING v1.0` | 2025-08-07 | 2025-08-13 | 0 |
| readme_as_physical_manual | `RAW_CAPTURE` | 2026-02-05 | 2026-02-05 | 0 (TODOS only) |
| respond_to_anthropic_constitutional_ai | `INCUBATING` | 2026-02-07 | 2026-02-07 | 0 |
| dual_wall_text_inclusivity_practice | `seed` | 2026-02-09 | 2026-08-28 | 0 |
| how_tight_is_your_polysemiologism | `RAW_CAPTURE` | 2026-02-27 | 2026-07-13 | 0 |
| artificial_vs_human_dissolves | `developing` | 2026-04-03 | 2026-04-03 | 1 (provenance ledger E2) |
| contexture | `developing` | 2026-04-03 | 2026-04-03 | 1 (spans.md) |
| machines_and_gardens | `developing` | 2026-04-03 | 2026-04-03 | 2 (PERMACULTURE lib, permaculture lens) |
| parkrun_barcode_in_the_wallet | `RAW_CAPTURE` | 2026-04-03 | 2026-04-03 | 0 |
| stocks_and_flows | `seed` | 2026-04-03 | 2026-04-03 | **4** (PERMACULTURE lib, permaculture lens, spans.md ×2, provenance ledger E2) |
| pi_decimal_painting | `seed` | 2026-08-21 | 2026-08-27 | 0 |
| drama_into_art | `developing` | 2026-08-27 | 2026-08-27 | 0 |

**Post-scan addition:** `idea__redactionprint.md` entered as the fifteenth file on 2026-09-06,
status `seed`, after the operator coined the term. Its arrival does not change the 5 September flow
findings; it is the first entry added after this audit.

**Findings (SOURCE unless marked):**

1. **The declared ladder has zero instances.** No ideacubator entry has become a research brief, a workbench sketch, or a lib entry. Every brief in `staging/research/` began from an external construct or an operator steer; every workbench sketch began elsewhere (threshold mechanics, life drawing, a blog draft).
2. **The real promotion path is citation.** Four entries are referenced from lib, lens, model or ledger files, with no change of status or location. `stocks_and_flows` is the extreme case: status `seed`, cited four times, including as a source in the provenance ledger. Its status is a year stale.
3. **`IDEACUBATORY.md` fragments jump straight to methodology.** Of its nine aphorisms, three landed: "Gardens are good" is the CII axiom coda; "the empty turn as a social protocol" is now the Empty Turn in 24 files; "how tight is your polysemiologism" became an ideacubator entry and then CII And-Yet #7 and §11.8. Six have no downstream hit anywhere ("epistemic DRM", "algorhythm", "poems can be programs…", "syntax as ceremony", "dead metaphor", "spatial respect"). The file's body header still reads *Last Updated: 2025-07-29* although commits run to 2026-02-27.
4. **Six entries have been untouched for six to thirteen months.** By Wallas (Part A row 5) that is incubation proper, not neglect. The architecture has no way to say so; `RAW_CAPTURE` reads as backlog.
5. **A class has outgrown the folder.** `idea__poem__objectification_and_vulnerability.md` sits in the ideacubator as `INCUBATING v1.0`; poems now have their own apparatus-first registry (`docs/poems/`, opened 2026-08-21). `INFERENCE`: it belongs there, as a record, or its status should say why not.
6. **No index.** `ONBOARDING/README_quickstart.md` and `workbench/README.md` describe the folder; the folder does not describe itself. Five status vocabularies across five stages, no map between them.

### B.3 Reading B through A

- The folder is a **Preparation shelf** (Wallas), and the productive incubation happens in silence. The fix is a status, not more work on the entries.
- Promotion is by **citation**, which is Deleuze's case-of-solution: the docs node conceals the entry's problem unless the entry stays and keeps its questions. `stocks_and_flows` and `artificial_vs_human_dissolves` do keep them ("Open Questions", "And yet"). That is the pattern to name, not to replace.
- `RAW_CAPTURE` is already an idea, confused (Locke). The ladder is attention, not kind.
- Nothing in the folder needs a prior form (Plato). The word *seed* stays because it is the operator's and the permaculture lens's, with the gloss "first made instance".
- The fragments that jumped straight to methodology are LeWitt's machine at repo scale: the aphorism was the rule, the methodology executed it. The six that never landed are the folder's actual backlog, and belong in `ideacubator/` as entries or nowhere.

---

## §5. Validity and recommendation

**No Import Gate**: nothing external is being hosted. Part A's six sources are lineage for one sentence in theory_of_art and for the vocabulary below; each is cited to a verified passage in an accessible edition, with the verifiers' objections carried (Kant: theoretical vs practical reason; LeWitt: return channel admitted; Deleuze: progressive determination; Locke: quality/idea not impression/idea; Plato: "not made by any craftsman", not "unmade"; Wallas: Illumination includes Intimation, p. 93 for the control claim).

**Recommendation (operator's to accept, refuse, or vary):**

1. Write `ideacubator/README.md` (draft in the appendix): an index of the fifteen entries, one status vocabulary, and the promotion rule *citation promotes; the entry stays*.
2. Align statuses: `stocks_and_flows` → `cited`; `machines_and_gardens`, `contexture`, `artificial_vs_human_dissolves` → `cited`; the six untouched → `dormant` unless the operator says `raw`.
3. Move or annotate the poem entry (finding 5).
4. Refresh `IDEACUBATORY.md`'s header date and add a "landed / not landed" line per fragment, or retire the six unlanded fragments into entries.
5. One sentence for `theory_of_art.md` §2 (Part A row 3), as a proposal for the operator's next pass, not applied here.
6. Amend the permaculture lens's succession ladder to include workbench and a dormant phase, or note that the ladder is aspirational and citation is the observed path.

**Stated limit.** One passage per conception; secondary literature not entered beyond the verifiers' checks. Part B counts references by path string; a docs file that discusses an idea without linking it is not counted.

**And-Yet.** A scan that finds the incubator "leaking" has assumed it should flow. Six entries sitting untouched for a year may be the healthiest thing in the repo; Wallas would say so, and the operator's own coda ("Gardens are good") does not ask a garden to ship.

---

## Appendix — proposed `ideacubator/README.md` (not written into the folder)

```markdown
# /ideacubator/ — first made instances

Entries are the smallest manifestation of a relation noticed before it is appreciable.
An entry is already an idea (confused counts). It never has to leave.

## Status (one word, second line of the file)
raw        captured, not yet read back
seed       named provocation, one paragraph or more
developing worked; carries anchors, related files, open questions
dormant    deliberately left alone (this is incubation, not backlog)
cited      referenced from a docs/ node; the entry stays; add `promoted_to:`
retired    superseded or absorbed; say where

## Promotion rule
Citation promotes. When a lib entry, lens, model, essay or ledger cites this file,
set `cited` and add a `promoted_to:` line. Keep the open questions visible; the
problem outlives its solutions.

## Index
| file | status | origin | promoted_to |
| … 15 rows, from B.2 plus the post-scan addition … |
```

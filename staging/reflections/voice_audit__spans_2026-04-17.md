`staging/reflections/voice_audit__spans_2026-04-17.md`

# Voice Audit — spans.md + spans_field_essay.md (2026-04-17)

> **Status:** Surfaced findings. No edits committed. Operator approves per-proposal before anything lands.
> **Voice contract:** [docs/methods/voice_signature.md](../../docs/methods/voice_signature.md) v1.0.0 (mirror, 2026-04-04, Sceptic V1 PASS 6/10 + PARTIAL 4/10).
> **Target files:**
> - [docs/models/spans.md](../../docs/models/spans.md) (v0.1.0, landed 2026-04-05)
> - [docs/essays/spans_field_essay.md](../../docs/essays/spans_field_essay.md) (v0.1.0, landed 2026-04-05)

---

## Overall verdict (first)

Voice is strong. Signature moves are native and visible: And-Yet Pivot, Colon Expansion, Parenthetical Interruption, Maculate Disclosure, Landscape Equation, Constraint Gift, Distributed Signature all present. Bilingual Seam is absent from the model doc (acceptable — T2 hypotactic register) and native in the essay (*Die liggaam kan nie vir altyd lieg oor sy toestand nie.*). The essay's short-long-short sandwich and isolated-word hinge ("And yet." standalone) land cleanly.

Material LLM-smoothing signals are minor and localised:

1. One archetypal "not X but Y" anti-pattern (model doc, L63).
2. Em-dash density on sentence-interrupters where parentheticals would read as native (model doc, ~8 candidates).
3. Semicolon density above voice-signature's "rare" guideline (model doc); partly acceptable under the hypotactic register exemption, partly LLM-smoothed.

Nothing catastrophic. These are sharpening edits, not rescues.

---

## Priority 1 — Anti-pattern (recommend fixing)

### P1-A. "not X but Y" framing
**File:** [docs/models/spans.md](../../docs/models/spans.md) L61–63
**Current:**
> The move of the model(/sitter) is to take the gutter seriously as a site — not a mere separation, but a surface that has its own behaviour. The four valences above are the grammar of that behaviour.

**Issue:** Voice-signature §7 anti-pattern: "not X but Y" binary substitution. Voice's native move is additive ("less OR, more AND").

**Proposed rewrite (additive):**
> The move of the model(/sitter) is to take the gutter seriously as a site: a separation that is also a surface with its own behaviour. The four valences above are the grammar of that behaviour.

**Rationale:** Colon expansion (signature move 3.3) replaces the substitutive dash. "A separation that is also a surface" holds both rather than negating one.

---

## Priority 2 — LLM-smoothing signals (recommend sampling, not exhaustive rewrite)

### P2-A. Em-dash interrupter → parenthetical (or colon expansion)

Voice-signature §3.1 flags em-dash density as an LLM editing artefact. Parentheticals are the pre-LLM native interruption device. Not every em-dash needs rewriting — some are definitional dashes (table rows, headings). The candidates below are sentence-interrupters where parenthetical or colon would sharpen voice.

**P2-A.1 — spans.md L15–16** (YAML intent):
> conduct with each other — often without authorial intent, sometimes without authorial notice — and treat that dialogue as a structural feature of working.

**Proposed:**
> conduct with each other (often without authorial intent, sometimes without authorial notice), and treat that dialogue as a structural feature of working.

**P2-A.2 — spans.md L42:**
> A **span** is a pairing across a structural break — a gutter, a fold, a boundary between two things that are nominally separate.

**Proposed (colon expansion):**
> A **span** is a pairing across a structural break: a gutter, a fold, a boundary between two things that are nominally separate.

**P2-A.3 — spans.md L48:**
> The gutter is where accumulated attention is displayed — the spread as an image encountered by a viewer (including the maker returning to the page).

**Proposed (colon):**
> The gutter is where accumulated attention is displayed: the spread as an image encountered by a viewer (including the maker returning to the page).

**P2-A.4 — spans.md L51:**
> The same fold is skin, sensor, screen, interface — differently, at different times, sometimes at once.

**Proposed (parenthetical):**
> The same fold is skin, sensor, screen, interface (differently, at different times, sometimes at once).

**P2-A.5 — spans.md L71:**
> This register is the model's hinge claim — that attention is not a precondition nor an anti-condition of integrity.

**Proposed (colon):**
> This register is the model's hinge claim: that attention is neither a precondition nor an anti-condition of integrity.

*(Also swaps "is not... nor" to "is neither... nor" — cleaner grammar, same meaning.)*

**P2-A.6 — spans.md L81:**
> Form emerges when the gaze is loose, arguably — when selection does not pre-specify the outcome.

**Proposed (parenthetical):**
> Form emerges when the gaze is loose, arguably (when selection does not pre-specify the outcome).

**P2-A.7 — spans.md L91:**
> The model compensates by requiring that claimed unnoticed spans surface *eventually* — the maker must be able, at some later moment, to say "yes, that was happening, I see it now."

**Proposed (colon):**
> The model compensates by requiring that claimed unnoticed spans surface *eventually*: the maker must be able, at some later moment, to say "yes, that was happening, I see it now."

**P2-A.8 — spans.md L120–122** (CARDS table, three rows):
> competence has drifted — attention has tightened.
> autonomy is at risk — the maker has leaked the answer into the question.
> relatedness is low — the pages are not in conversation.

**Proposed (colon in each):**
> competence has drifted: attention has tightened.
> autonomy is at risk: the maker has leaked the answer into the question.
> relatedness is low: the pages are not in conversation.

**Note:** Do not rewrite all em-dashes. Leave heading dashes ("Routine A — Sketchbook sweep"), list-item definitional dashes (cross-links list), and the intentional single-sentence rhythmic em-dash at spans.md L34 ("load-bearing, arguably."). The goal is to return parentheticals/colons to the places where LLM editing likely smoothed them out, not to purge em-dashes entirely.

### P2-B. Semicolon density

Voice-signature §5.3: *"Semicolons are rare. Content heavy on semicolons reads as a different voice — more academic, more measured."* Caveat §5.2 allows hypotaxis in README-prose methodology documents, so the spans *model* doc gets some licence. But several semicolons in spans.md are joining short independent clauses where a period would serve the paratactic spine better.

**Sampling-only proposal:** pick three to convert, as a voice calibration. Candidates:

- **spans.md L67:** *"The registers are not mutually exclusive; a single pairing may drift between them."* → *"The registers are not mutually exclusive. A single pairing may drift between them."*
- **spans.md L83:** *"the gutter as a generative constraint. The fold does not obstruct the dialogue; it enables it."* → *"the gutter as a generative constraint. The fold does not obstruct the dialogue. It enables it."* (isolated-sentence pattern — more native.)
- **spans.md L122:** *"The gutter is a site of significant relation; the span is what two pages say to each other."* → *"The gutter is a site of significant relation. The span is what two pages say to each other."*

Leave semicolons inside the YAML `sceptic_pass` field (technical notation, not prose) and inside appositive lists where a semicolon is doing real serial-comma work.

### P2-C. "not only X but Y" borderline (leave or soften)

**spans.md L134:**
> the arena is not only the single body but any bounded surface hinged to another.

**Assessment:** "Not only X but Y" reads as inclusive-additive (closer to voice than "not X but Y"). Borderline. **Recommendation: leave.** If you wanted it sharper, the additive rewrite would be:

**Proposed (optional):**
> the arena is the single body and any bounded surface hinged to another.

*(Trade-off: loses the emphasis "not only" carries. Probably not worth the flatness.)*

**spans_field_essay.md L19:**
> Not always loudly (not always at all), but in the way things talk when placed close to each other and left alone.

**Assessment:** This "Not always X, but Y" reads as hedge-with-continuation rather than binary substitution. Native. **Recommendation: leave.**

**spans_field_essay.md L49:**
> A practice that requires constant surveillance of itself is not a practice; it is a panopticon.

**Assessment:** Substitutive framing on a semicolon joint. But it's doing real work — naming what surveillance-of-self *becomes*, not just what it isn't. Close to the voice's rhetorical habit when declaring category shifts. **Recommendation: leave, or convert the semicolon to a period.** Either reads as voice.

---

## Priority 3 — Signature moves: already present (no change, logged for audit)

- **Landscape Equation (3.10)**: spans.md §7 "spans are topology... Where Landscapification maps internal states onto spatial fields, spans map temporal dialogue onto structural adjacency." ✓
- **Maculate Disclosure (3.6)**: spans.md §4 "The And-Yet (Shadow)" names three shadows candidly; doc closes with *"something like that."* Essay closes with *"And yet."* and *"Doesn't it?"* ✓
- **Constraint Gift (3.11)**: spans.md §3 *"This is the Constraint Gift in span form: the gutter as a generative constraint."* Explicitly named. ✓
- **And-Yet Pivot (3.7)**: Both docs. Structural. Native. ✓
- **Parenthetical Interruption (3.1)**: spans.md has *"(membrane? archive? tympanum?)"*, *"(the accident of sequential pages in a working sketchbook)"*, *"(on a facing page, in a margin, in a note)"*. ✓
- **Colon Expansion (3.3)**: Axiom header, §1 opener, §2 opener. ✓
- **Isolated-Word Hinge (3.2)**: essay final *"And yet."* standalone paragraph. ✓
- **Bilingual Seam (3.5)**: essay L49 *"Die liggaam kan nie vir altyd lieg oor sy toestand nie."* — untranslated, at the emotional hinge. ✓
- **Code-as-Ontology (3.4)**: `bodyTime(fugitivity)`, `layer-average.py`, `returnRelation()`-adjacent. ✓
- **Distributed Signature (3.12)**: spans.md L36 *"Host ≠ Author still applies: the author is the practice; the host is this repo."* ✓

---

## Priority 4 — Not recommending

- **Forcing an Afrikaans seam into spans.md.** The model doc operates in the technical/analytical register. Forcing bilingual seam here would be voice-signature anti-pattern ("explaining the Afrikaans" or bolting it on). The essay carries the Afrikaans; that's where it belongs.
- **Rewriting the B-) / B^) emoticons** in the spans.md footnote. These are author voice — eccentric, affectionate, corpus-witnessed. Leave.
- **Touching the final coda** *"something like that."* Load-bearing deflating coda. Leave.

---

## Action menu

**If you want the full Priority 1 + 2A sample applied** (10 edits total): I can land all of them in one pass. Small, surgical.

**If you want Priority 1 only** (the one clear anti-pattern at L63): a 30-second edit.

**If you want to skip**: the voice is strong enough that skipping is defensible — these are polish, not repair.

**Default recommendation:** P1 + P2-A.2, P2-A.5, P2-A.7 (the three cleanest colon-expansion conversions that also sharpen meaning) + P2-B (three semicolons → periods). Seven edits, calibrates voice without over-processing.

---

## Audit provenance

- Method: voice-signature §8 Usage Contract steps 1–7 applied against both files.
- Pipeline: grep passes for em-dash, "not...but", semicolon + manual signature-move scan.
- Auditor: theMachine (Claude Opus 4.7 1M), 2026-04-17 session.
- Co-authorship type: Solicited-Reviewer (scope: instance).

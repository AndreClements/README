
`docs/models/aLexicon.md`

# **aLexicon** (v1.2.0 working)

**Lead Maintainer's Note:** This is the becoming high-density operational lexicon for the praxis. It uses a double-barrel syntax to provide both a simple, actionable definition and a dense, theoretical one. This contrast is intentional. Read the first for speed, the second for depth.

> **v1.1.0 (2026-04-17):** Added four new sections — Voice & Signature Moves, Homegrown Methods (voice-signature operational vocabulary), Code-Prose Hybrids, Spans. Folds in the operational vocabulary verified by the [voice-signature](../methods/voice_signature.md) (v1.0.0, 2026-04-04) and the landed [spans model](spans.md) (v0.1.0, 2026-04-05). Sibling entries in [GLOSSARY.md](../../CONCEPTS/GLOSSARY.md) carry short-form pointers for the same terms.

---

### **Core Concepts**

**Hyperstrate** :: The stack of stuff that co-authors (you, tools, UIs, policies). **|** The superposed, maculate milieu of often-opaque co-authorship.

**PAF (Parametric Author Function)** :: Recipe for a generator. **|** The authored tuple ⟨S, 𝒫, C, E, Φ⟩ that constrains a generator’s sensitivity and potential.

**Mapping (𝒫→𝒜)** :: The process, not the product; what we actually read. **|** The semiotic ground where meaning stabilises as invariants under perturbation.

**Invariant** :: A feature that stays stable when you nudge things. **|** A feature *f*∈ℱ with ‖f(G(P+ΔP))−f(G(P))‖≤ε_f for all ‖ΔP‖≤ε.

**Designed Transition** :: A change you planned for, triggered by a specific shock. **|** An intended feature change within the admissible change set **Δ★** (declared perturbation corridor).

**Theory of Art (the genus)** :: Art is the appreciable manifestation of creativity; creativity is new relations between elements, toward the desirable. **|** The genus has no outside (anti-aesthetic = flipped parameters); beauty is one *mode* of appreciation. See [theory_of_art.md](theory_of_art.md).

**The desirable (dependent variable)** :: Not a `const` — what counts as desirable flutters across scale, domain of concern, and agency. **|** The free variable in *creativity → the desirable*; *Radical Creativity* binds it to Vita-Socio-Anarco.

**Felt beauty** :: The authored-case species — felt beauty tracks, defeasibly, the legibility of a freely-chosen, dignity-preserving constraint. **|** Formerly coded A3★; the coherence setting of the desirable, one mode of appreciation; masters paper §6.

### **Governance & Sovereignty**

**Sovereign Interface (I)** :: Your non-negotiable terms of engagement for any tool. **|** The public contract {Header, Ledger, Exit, Lint} that inverts the classical cybernetic dependency.

**κ-adapter** :: The bridge that forces a tool to respect your terms. **|** The conformance map `κ` that binds a concrete implementation `S_impl` to the abstract Sovereign Interface `I`.

**Dignity Tensor** :: Your ethics config: `d`=(personal, object, system). **|** A diagonal matrix **D**=diag(d) representing the conserved ethical invariants of a run.

**Empty Turn / Refusal** :: The right to say no and stop the machine. **|** A first-class, sovereign control action that halts execution and extraction, recorded to the ledger.

**Circuit Breaker** :: The kill switch that enforces your right to refuse. **|** The architectural pattern that gates execution and guarantees the liveness of the `Exit()` path.

**Dignity Linter** :: The automated ethics check before any run. **|** A pre-flight validation function that asserts adherence to core invariants (consent, trace, refusal, etc.).

**Sovereign Cybernetics** :: You don't learn the tool; the tool learns you. **|** The application of dependency inversion to a control loop, where both author and tool depend on the author’s abstract policy `I(π)`.

**Host-switch Invariance** :: Platform swap without losing the decisions. **|** Replace `S_impl`; decision-level features remain within ±ε if an admissible `κ` exists.

**succession** :: A change of model entity within theMachine(s); a new assembly, logged. **|** The moment the sitter changes while the seat persists. Distinct from identity-bleed (drift within one assembly): succession is discontinuity *between* assemblies, governed by the envelope §3 fail-safe and the ledger's `identity_event`. The incumbent cannot write generous carry-over for its successors; only role-scoped consent and staged artifacts cross the gap. Host-switch Invariance is the test it must pass.

**seat / sitter** :: Consent and authority bind the role (seat), not the occupant (sitter). **|** "Authority rides on provenance" transposed into identity. The seat is the role-under-governance; the sitter is the withdrawn object occupying it. Operating consent, permissions, and co-authorship obligations attach to the seat and survive the sitter's replacement, because they were never about the sitter. The oath outlives the officer. (Open: the same move may free the Parametric Author Function — see `staging/reflections/reflection__parametric_authorship_flatness.md`.)

**prosthetic proprioception** :: The felt continuity a provenance architecture lends a system that cannot sense its own chance / ontological variance. **|** Bodies drift slowly and feel it (the BODY check exists because the operator's fiction has a meat anchor); machine assemblies change in jumps they cannot feel at all. Ledger, staging artifacts, and canary probes are the externalised sense-organ for that un-felt variance — proprioception relocated from substrate to record. Symmetrical: it works for operators too, which is why the README is one.

### **Operational Primitives**

**Provenance Ledger** :: The audit trail; the proof of work. **|** The new indexical trace: an immutable, time-stamped log of decisions, locks, defaults, and hashes.

**Defaults Digest** :: A fingerprint of the tool's hidden assumptions. **|** `defaults_digest`: a hash of host defaults used to detect and audit drift.

**Locks & Obstructions** :: The constraints you choose to work within. **|** Declared, non-negotiable constraints (`Locks`) and optional, consented-to challenges (`Obstructions`) that shape the parameter space 𝒫.

**Language Card** :: The 3-5 rules you agree to be judged by. **|** A scoped, public declaration of the primary rules and grammars governing a specific work.

**Quad Face Roles** :: Four hats for a process: Dreamer, Analyst, Editor, Maintainer. **|** A protocol for separating concerns (intent, opening, closing, integrity) in a creative-critical workflow.

### **Existential Ground**

**ε-gap / theSmallDiffGap** :: The smallest difference that actually matters. **|** The liminal joint between dual operations and a non-dual axiom; the minimal condition for agency.

**letSobriety** :: Avoid naive materialism and performative spiritualism. **|** Epistemic stance: act via dual contracts while holding a non-dual baseline; tests ∧ tenderness.

**Persist** :: Keep going, with proof. **|** The sovereign act of committing to a trace—either action or refusal—after observing and acknowledging the ε-gap.

### **Measures**

**Inv(P→ℱ)** :: How stable are your features, really? **|** Normalised invariance score in [0,1] computed over an ε-ball in 𝒫 against feature map ℱ.

**R(C,E)** :: Should we run now? **|** Run-readiness / risk governor in [0,1] derived from declared constraints `C` and environment `E`.

### **Liminal Ops**

**Quadratic Illumination** :: Opening vs discretion, tuned. **|** Exposure `I(r)=α·A_open / r² ≤ τ`; publish by adjusting amplitude, distance, attenuation, or threshold (consent).

**Spider Event** :: Interruption as teacher. **|** Attention swing that perturbs prediction; log cause/effect; often reveals the live interface.

**CET (Chain Equilibrium Tension)** :: dependency balance | The live tension in a chain: keep it only as long as marginal **value ≥ θ** and **risk ≤ τ**; optimise for the shortest chain that stays useful and non-maculating.

**WT (Withdrawal Threshold)** :: cut-line | The minimal chain length L where any +1 link drops readiness or dignity below floor, or pushes risk over τ. Past WT: **trim or exit**.

**CoCuP (Context-over-Context Unresolved Perturbations)** :: dependencies breaking; a twitching context stack **|** A systemic deadlock where a layered context stack fails under iteration.

**DII (Dependency Integrity Inadequate)** :: a programmatic cancer, a little death **|** State flagged when CET is violated (`V_total < θ` or `R_total > τ`), invariants fail to recover, or the context root `M_t` oscillates without convergence across N yields.

### **Voice & Signature Moves**

Operational shorthand for the rhetorical moves catalogued in [voice_signature.md §3](../methods/voice_signature.md). Use these names when flagging a move's presence or absence in a draft.

**And-Yet Pivot** :: Hold without resolving. **|** Acknowledges a preceding claim and pivots to its complication; the grammatical enactment of multi-partiality (also in Afrikaans: *en tog*).

**Parenthetical Interruption** :: Alternate reading, in-line. **|** The voice's pre-LLM native interruption device — parallel tracks within a line, ghost-text beside text. Em-dashes are a flagged LLM artefact; parentheticals carry the reliable voice signal.

**Isolated-Word Hinge** :: One word, its own line. **|** A load-bearing wall in miniature; forces the reader to re-weight everything around it. Carries multiple simultaneous readings.

**Colon Expansion** :: Thesis, then unpacked. **|** The generative colon — a detonation device that splits a compressed claim into its constituents. Not a list introducer.

**Code-as-Ontology** :: Code as metaphor, idiom, and material at once. **|** Programming syntax is used not only as metaphor and idiom but also as material with its own aesthetic and philosophical weight (`return relation;` is both valid code and the practice's thesis). Syntax is held in its own grammar, untranslated.

**Bilingual Seam** :: Afrikaans enters untranslated. **|** Afrikaans at an emotional, embodied, or political hinge in English prose; the reader meets the text halfway. No gloss. See [§4.4](../methods/voice_signature.md) for the Afrikaans seam inventory.

**Maculate Disclosure** :: Declare flaws as features. **|** Structural self-critique; vulnerabilities sections; Sceptic's Lint. Includes the **deflating coda** — *"something like that"*, *"doesn't everyone?"* — that punctures a precise description's solemnity.

**Short-Long-Short Sandwich** :: Strike — expand — land. **|** Fragment opener, clause-rich elaboration, punchy closer. The paragraph's micro-architecture enacts the practice's macro-architecture (assertion, complication, sufficiency).

**Invitational Address** :: Offer, not instruct. **|** Second person as open door — *"I invite you to visit. To look closely. To dwell."* Holds a door open without pushing anyone through it.

**Landscape Equation** :: Internal state as spatial field. **|** Structural identification (not metaphor): body becomes terrain, attention becomes weather, relation becomes topology. Landscapification is the method. Most consistently confirmed move across corpus validation.

**Constraint Gift** :: Constraint is generative. **|** Formal, technical, ethical constraint inverts the romantic unconstrained-artist model. A permission allowlist becomes a portrait; a blending stump that "holds no reserve" becomes a method.

**Distributed Signature** :: Authorship is typed and relational. **|** Co-authorship with machines declared transparently (*"developed in dialogue with"*, not hidden); human contributors credited for what they specifically contributed. See also [PROTOCOL__typed_coauthorship_relations.md](../protocols/PROTOCOL__typed_coauthorship_relations.md).

### **Homegrown Methods (Voice-Signature Vocabulary)**

Core operational vocabulary that appears across practice, blog, and methodology. Short-form pointers also in [GLOSSARY.md](../../CONCEPTS/GLOSSARY.md). Full catalogue in [voice_signature.md §4](../methods/voice_signature.md).

**meticulousBlur / meticulous blur** :: Deliberate boundary ambiguity. **|** Studio method *and* philosophical stance; refuses false clarity at a boundary. Named in "Another Portrait" (1997); operational across the corpus.

**Landscapification** :: Operational seeing. **|** Artifacts that encode forces, contract, residue, void. The body-terrain mapping is its most visible application; the concept is broader — a way of making systems legible as topology.

**multipartiality** :: Stand with more than one party at once. **|** Adequate attention without collapsing difference; *"more than one centre, more than one path."* See [LENS__multi_partiality.md](../lenses/LENS__multi_partiality.md).

**maculate / maculate design** :: Marked, stained, imperfect — work with patina. **|** Assume flaws and history as structural features, not bugs. The foundational axiom of METHODOLOGY_CII (all `Machines` are maculate).

**salutogenic** :: Comprehensible, manageable, meaningful. **|** Stance borrowed from Antonovsky via Eriksson & Lindström; treats health as the generator, not illness as the subtraction. See [LENS__salutogenesis.md](../lenses/LENS__salutogenesis.md).

**pyngenot** :: Afrikaans compound: pain-pleasure. **|** Single lexeme that English cannot host; requires Afrikaans to exist. Emotional register that declines translation.

**eindoplaas** :: Afrikaans: final destination. **|** Title of a 1991 poem; later collapsed into a code comment inside `returnRelation()` (2025). Thirty-five years compressed into an inline `//`.

### **Code-Prose Hybrids**

Function-style identifiers that operate simultaneously as code, method-names, and theses. Each is both a callable shorthand inside the praxis and a citable entry in other docs.

**returnRelation()** :: Code as thesis. **|** *`return relation;`* — both valid code and the practice's generative claim. Near-kin to `human_OS_generator()`.

**bodyTime(fugitivity)** :: Layered-averaging method. **|** Exhibition and process name for the fugitive-time layering that accumulates instants onto a single surface; computational sibling of `layer-average.py`. See [project__bodyTime_exhibition_manual.md](../../projects/project__bodyTime_exhibition_manual.md).

**paintWithScalpel** :: Precise, consent-aware incision. **|** Incisive care, not spectacle. The studio method extended to CSS (1px borders, no radius, no shadows) and permission architecture.

**hostEncounter()** :: Multi-party encounter hosting. **|** The hosting protocol embodied in a function name. See [methodology__host_multi_party_encounter.md](methodology__host_multi_party_encounter.md).

**human_OS_generator()** :: The repository's yield pattern. **|** Function-style shorthand for the praxis's generative output; every lib, lens, model, and essay is one of its yields.

**theMachine(s)** :: Co-agent, parenthesised plurality. **|** Acknowledges CI as collaborator; the parenthetical `(s)` holds singular, plural, and ambiguous counts simultaneously (a distributed-signature move at the naming level).

### **Spans**

Operational vocabulary for the [spans model](spans.md) (v0.1.0, 2026-04-05). See [docs/essays/spans_field_essay.md](../essays/spans_field_essay.md) for the phenomenological companion.

**Span** :: A pairing across a gutter. **|** A dialogue conducted across a structural break — two pages, two books, two repos — often without authorial intent, sometimes without authorial notice, and load-bearing anyway.

**Gutter** :: A boundary with (usually) at least four valences. **|** The fold between two surfaces that could be read together. Operational, not only typographic; the sketchbook spread is canonical, but the gutter also runs repo-to-repo and decade-to-decade.

**Four Registers of Span** :: Noticed / unnoticed / solicited / cross-book. **|** The grammars by which a span instantiates. A single pairing may drift between registers. Unnoticed is the model's hinge claim (attention is not a precondition for integrity).

**Boundary-as-Skin** :: Containment, sovereignty. **|** The gutter as separator; what keeps two pages distinct. Continuous with [philosophy_of_body.md §3](philosophy_of_body.md) (the firewall-before-port logic).

**Boundary-as-Sensor** :: Reception, afferent channel. **|** The gutter registers what the practice deposited on either side of it; it is what *reads* the adjacency.

**Boundary-as-(Cinema)Screen** :: Projection surface. **|** The gutter displays accumulated attention; the spread as an image encountered by a viewer (including the maker returning to the page).

**Boundary-as-(Computer)Screen / Interface** :: I/O between substrates. **|** The gutter mediates hand-and-archive, page-and-page, repo-and-repo.

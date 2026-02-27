# Protocol — Library Research (Upstream Investigation)
> **Version:** 0.1.0 (Draft)

> **Contract:**
> *The research lives in the field, not the form.*
> ```yaml
> title: "Library Research Protocol"
> intent: >
>   Govern the upstream investigation that precedes lib entry creation.
>   Optimise for context externalisation across CI sessions, structured
>   source evaluation, and recursion depth management. Research is
>   the soil preparation; the lib entry methodology is the planting.
> emerged_from: "Gap analysis — methodology__lib_entry_creation.md has no upstream research governance"
> anchors:
>   - "../methods/methodology__lib_entry_creation.md"
>   - "PROTOCOL__provenance_ledger.md"
>   - "../methods/methodology__axiology_first_aesthetics_for_engagement_design.md"
> status: "draft"
> risk_index: 0.30
> ```

---

## §0. BOOTLOADER

**Lead Maintainer's Note:** Research is not reading. It is the disciplined narrowing from "everything that exists on a topic" to "the minimum viable evidence base for an honest lib entry." This protocol exists because CI sessions are stateless by default. Without externalised artifacts, every session re-derives what the last session already knew. That is a token tax on curiosity.

- **Invariant:** `Research state lives in artifacts, not in context windows.`
- **Heuristic:** `Depth costs tokens. Breadth costs time. Budget both.`
- **Stance:** `Evidence first. Then resonance. Then craft.`

---

## §1. What This Protocol Governs

This protocol governs the **upstream research** that happens before the [Library Entry Creation Methodology](../methods/methodology__lib_entry_creation.md) kicks in.

**Scope:**
- Scoping a candidate framework for potential lib import
- Discovering and evaluating sources
- Externalising research state to survive across CI sessions
- Managing recursion depth (source → source's sources → hard stop)
- Deciding whether to proceed to lib entry creation or archive

**Not this protocol:**
- Creating the lib entry itself (use [Library Entry Creation](../methods/methodology__lib_entry_creation.md))
- Transposing into a lens (use [Lens Transposition](../methods/methodology__lens_transposition.md))
- Tracking claims during production work (use [Provenance Ledger](PROTOCOL__provenance_ledger.md))

---

## §2. Context Externalisation

### 2.1 The Problem

CI sessions are stateless. Context windows are finite. Research spanning multiple sessions will re-derive prior conclusions unless intermediate state is materialised to disk.

**Invariant:** No research insight lives only in a conversation. If a session ends, the next session must be able to resume from artifacts alone.

### 2.2 The Staging Area

All research artifacts live in:

```
staging/research/research__[framework_name_lower].md
```

**Naming convention:** `research__` prefix + framework name in lowercase with underscores + `.md`. One file per candidate.

### 2.3 Research Brief Schema

Every research file uses this header:

```yaml
archive:
  title: "[Framework Name] — Library Research Brief"
  candidate: "[FRAMEWORK_NAME]"
  status: "scoping | discovering | evaluating | synthesising | validating | complete | abandoned"
  created: YYYY-MM-DD
  sessions_completed: N
  current_phase: "[phase name]"
  gate: "research"
  relevance: "[1-line statement of why this candidate matters to the repo]"
  early_signal: "proceed | caution | stop"
```

### 2.4 What Gets Externalised

| Phase | Artifact | Purpose |
|-------|----------|---------|
| Scoping | Research question + candidate profile | Why are we looking at this? |
| Source Discovery | Source list with tier assignments | What evidence exists? |
| Source Evaluation | Evaluation snapshots per source | What did we find? |
| Synthesis | Integration hypothesis | How might this fit? |
| Validation | Gate evaluation record | Should we proceed? |

### 2.5 Session Handoff Protocol

At the end of every CI session that touches research:

```pseudo
play sessionClose(brief):
  require brief.updated == true
  brief.sessions_completed += 1
  brief.current_phase = currentPhase()
  brief.early_signal = evaluateSignal(brief)
  brief.append("## Resume Instructions",
    "1. Read this file first.",
    "2. Check current_phase and early_signal.",
    "3. Resume from the next incomplete phase.",
    "4. Update this file as you progress.")
```

---

## §3. Research Phases

### The Pipeline

```
Scoping → Source Discovery → Source Evaluation → Synthesis → Validity Check
                                    ↑                              |
                                    |_____ early exit if stop _____|
```

### Phase 1: Scoping

**Entry:** A candidate framework has been named.
**Exit:** Research question defined; candidate profile written; early_signal assessed.

```pseudo
play scope(candidate):
  require candidate.name != null
  require candidate.reason != null    // why are we looking?

  profile := {
    name: candidate.name,
    author: candidate.primaryAuthor,
    domain: candidate.domain,
    initial_sources: findInitialSources(candidate, limit=5),
    repo_hooks: identifyExistingConnections(candidate),
    gap_hypothesis: "What gap might this fill?"
  }

  early_signal := preflightCheck(profile)    // §6 lightweight gate
  externalise(profile, early_signal)
  return early_signal    // proceed | caution | stop
```

### Phase 2: Source Discovery

**Entry:** early_signal != stop; scoping complete.
**Exit:** Source list with provenance tier assignments.

```pseudo
play discoverSources(brief):
  require brief.current_phase == "scoping" && brief.early_signal != "stop"

  sources := []
  // Priority order (§5):
  for tier in [Gold, Silver, Bronze, Copper]:
    sources.append(search(brief.candidate, tier))

  // Assign tiers per methodology__lib_entry_creation §3.2
  for s in sources:
    s.tier = classifySource(s)
    s.accessible = checkOpenAccess(s)
    s.citation_weight = assessCitationWeight(s)

  brief.sources = sources
  brief.current_phase = "discovering"
  brief.minimumMet = sources.filter(tier <= Silver).count >= 1
```

### Phase 3: Source Evaluation

**Entry:** Source list populated; at least one Gold or Silver source.
**Exit:** Evaluation snapshots; key claims extracted; confidence assessed.

```pseudo
play evaluateSources(brief):
  require brief.minimumMet == true

  for s in brief.sources:
    s.evaluation = {
      key_claims: extractClaims(s),
      methodology: assessMethodology(s),
      relevance: scoreRelevance(s, brief.candidate),
      notes: ""
    }

  brief.current_phase = "evaluating"
  // Fire early validity check (§6) if sufficient context
  if sufficientContext(brief):
    brief.early_signal = validityCheck(brief, mode="lightweight")
```

### Phase 4: Synthesis

**Entry:** Sources evaluated; early_signal != stop.
**Exit:** Integration hypothesis; CARDS alignment; draft utility statement.

```pseudo
play synthesise(brief):
  require brief.early_signal != "stop"

  brief.integration_hypothesis = {
    cards_alignment: assessCARDS(brief),          // Axiology first (§4.1)
    aesthetic_resonance: assessResonance(brief),   // Poetry second (§4.2)
    technical_soundness: assessEthos(brief),       // Ethos third (§4.3)
    repo_connections: mapConnections(brief),
    gap_filled: assessGap(brief),
    draft_utility: draftUtilityStatement(brief)
  }

  brief.current_phase = "synthesising"
```

### Phase 5: Validity Check (Full)

**Entry:** Synthesis complete.
**Exit:** Go/no-go decision; handoff to lib entry creation methodology or archive with reason.

```pseudo
play validateCandidate(brief):
  // Full validity gate — maps to methodology__lib_entry_creation §2
  gate := runImportGate(brief)    // 5-question gate
  if gate.score == 5:
    brief.status = "complete"
    brief.recommendation = "proceed to lib entry creation"
  elif gate.score == 4:
    brief.status = "complete"
    brief.recommendation = "proceed with elevated scrutiny (risk_index += 0.10)"
  else:
    brief.status = "abandoned"
    brief.recommendation = "archive with reason: " + gate.failures
  brief.current_phase = "validating"
```

---

## §4. Evaluation Order (Axiology-First)

Per [Axiology-First Aesthetics](../methods/methodology__axiology_first_aesthetics_for_engagement_design.md), candidate evaluation follows a strict ordering. Values first; craft last.

### 4.1 Axiology (CARDS Alignment)

Does this framework serve or threaten the value system?

| CARDS Axis | Question | Red Flag |
|------------|----------|----------|
| **Competence** | Does it increase clarity or add confusion? | Jargon-heavy with no operational payoff |
| **Autonomy** | Does it expand or restrict agency? | Prescriptive without escape hatch |
| **Relatedness** | Does it support or extract from relationships? | Individualist framework sold as relational |
| **Dignity** | Does it reduce beings to instruments? | Objectification disguised as methodology |
| **Safety** | Does it create or prevent harm? | Contested safety record; unacknowledged shadow |

**Hard stop:** If the framework structurally threatens ≥2 CARDS axes, early_signal = "stop".

### 4.2 Poetry and Artistry

Does the framework offer felt resonance? Metaphorical power? Aesthetic coherence?

This is not "does it sound nice." It is: does the framework carry meaning in a way that survives translation into this repository's substrate? Does it offer imagery, language, or structure that enriches the conceptual landscape?

### 4.3 Ethos and Technicality

Is it technically sound? Ethically grounded? Peer-reviewed or at least peer-contestable?

| Check | Threshold |
|-------|-----------|
| Methodology transparent? | Must be describable |
| Claims falsifiable? | At least core claims |
| Author(s) accountable? | Published, citable, contactable |
| Known critiques addressed? | At least acknowledged |

---

## §5. Source Prioritisation and Citation Weight

### 5.1 Preference Order

```
1. Peer-reviewed journals                    (Gold)
2. Academic press monographs                 (Gold / Silver)
3. Open access repositories                  (Silver / Bronze)
4. Respected trade publications              (Silver)
5. Practitioner materials                    (Bronze / Copper)
```

Prefer open access. Prefer citable. Prefer falsifiable.

### 5.2 Verification Tiers

Aligned with [Library Entry Creation §3.2](../methods/methodology__lib_entry_creation.md):

| Tier | Source Type | Minimum for Research Brief |
|------|-----------|---------------------------|
| **Gold** | Peer-reviewed journal; academic press monograph | At least 1 required |
| **Silver** | Respected trade; university press; established practitioner text | Supplements Gold |
| **Bronze** | Conference proceedings; dissertations; reputable archives | Context and depth |
| **Copper** | Workshop materials; practitioner manuals; correspondence | Provenance chain required |

**Minimum viable evidence base:** At least one Gold or Silver source before proceeding past Phase 2.

### 5.3 Citation Weight

Not all citations are equal. When assessing a source's authority:

| Signal | Weight | Caveat |
|--------|--------|--------|
| High citation count in peer-reviewed literature | Strong | Check for self-citation clusters |
| Cited by sources already trusted in this repo | Strong | Confirmation bias risk |
| Textbook inclusion | Moderate | May lag current evidence |
| Practitioner adoption | Moderate | Popularity ≠ validity |
| Sole-source authority | Weak | Single point of failure |

---

## §6. Relevance / Validity Checks

### 6.1 The Two-Gate Pattern

Research has two validity gates:

| Gate | When | Weight | Purpose |
|------|------|--------|---------|
| **Lightweight** | As soon as sufficient context exists (Phase 1–3) | Quick | Prevent sunk-cost research on dead-end candidates |
| **Full** | Phase 5 (Validation) | Thorough | Final go/no-go before lib entry creation |

### 6.2 Lightweight Gate (The Preflight)

Three questions. Any "no" sets early_signal to "caution"; two "no"s to "stop."

```pseudo
predicate preflightCheck(profile):
  q1 := profile.author != repoMaintainer       // Host ≠ Author
  q2 := profile.initial_sources.count >= 1      // Something citable exists
  q3 := profile.repo_hooks.count >= 1           // At least one connection to existing constructs

  if countFalse(q1, q2, q3) >= 2:
    return "stop"
  elif countFalse(q1, q2, q3) == 1:
    return "caution"
  return "proceed"
```

### 6.3 Full Gate (Maps to Import Gate)

The full validity check runs the 5-question Import Gate from [Library Entry Creation §2](../methods/methodology__lib_entry_creation.md):

1. External authorship?
2. Verifiable primary sources?
3. Integrates with ≥2 existing constructs?
4. Fills a gap?
5. Active use case?

The research brief should have enough evidence to answer all five by Phase 5. If not, the research is incomplete — return to Phase 2 or 3.

---

## §7. Recursion Depth Management

Research spirals. Source A cites Source B, which cites Source C, which references a whole literature. Without explicit depth limits, research becomes an infinite regress powered by curiosity and funded by tokens.

### 7.1 Depth Levels

| Level | Scope | Budget | Justification Required |
|-------|-------|--------|----------------------|
| **L0** | The candidate framework itself | 1.0 (full) | None — this is the task |
| **L1** | Primary sources cited by the candidate | 0.5 | Standard research |
| **L2** | Key citations of L1 sources | 0.25 | Must name the specific claim being verified |
| **L3** | **HARD STOP** | 0.0 | Not permitted without Operator override |

### 7.2 The Budget Metaphor

```pseudo
struct DepthBudget:
  L0: 1.0     // full attention
  L1: 0.5     // half the depth of L0
  L2: 0.25    // quarter — verification only, not exploration
  L3: 0.0     // stop

play descend(current_level, justification):
  require current_level < L3
  require justification != null
  require justification.specificity >= "names the claim being verified"

  if current_level == L2:
    log("L2 reached. This is the last level. Verify and return.")

  budget_remaining := DepthBudget[current_level + 1]
  if budget_remaining == 0.0:
    return HALT("L3 HARD STOP. Return to surface.")

  return proceed(current_level + 1, budget_remaining)
```

### 7.3 Signs You Are Too Deep

- You are reading a source's source's source and have forgotten the original question
- The current source does not directly bear on the candidate's core claims
- You are gathering "interesting context" rather than answering a specific question
- The session has spent more tokens on descent than on the candidate itself

### 7.4 The Operator Override

L3 is a hard stop. If there is genuine reason to go deeper (contested foundational claim, disputed lineage, flagged integrity issue), the Operator must explicitly authorise descent with a logged justification:

```yaml
depth_override:
  level: "L3+"
  authorised_by: "Operator"
  reason: "[specific claim requiring deeper verification]"
  scope: "[bounded: which source, which claim]"
  budget: "[maximum additional tokens / turns]"
```

---

## §8. The Research State Machine

```pseudo
enum ResearchState:
  IDLE → SCOPING → DISCOVERING → EVALUATING → SYNTHESISING → VALIDATING
  → COMPLETE | ABANDONED

play research(candidate):
  require candidate.name != null

  state := SCOPING
  brief := createBrief(candidate)

  // Phase 1
  state = SCOPING
  scope(brief)
  if brief.early_signal == "stop":
    state = ABANDONED
    return archive(brief, "Failed preflight")

  // Phase 2
  state = DISCOVERING
  discoverSources(brief)
  if !brief.minimumMet:
    state = ABANDONED
    return archive(brief, "Insufficient sources")

  // Phase 3
  state = EVALUATING
  evaluateSources(brief)
  if brief.early_signal == "stop":
    state = ABANDONED
    return archive(brief, "Failed lightweight validity")

  // Phase 4
  state = SYNTHESISING
  synthesise(brief)

  // Phase 5
  state = VALIDATING
  result := validateCandidate(brief)

  if result.recommendation.startsWith("proceed"):
    state = COMPLETE
    return handoff(brief, "methodology__lib_entry_creation.md")
  else:
    state = ABANDONED
    return archive(brief, result.recommendation)
```

---

## The And-Yet (Self-Application)

This protocol, applied to itself:

1. **Over-process risk:** Not every candidate needs the full five-phase treatment. A framework that is already well-known with abundant Gold sources may only need Phases 1, 2, and 5. The phases serve the research, not the reverse.

2. **Externalisation overhead:** The act of writing research briefs takes time. For a candidate that can be fully evaluated in a single session, the externalisation protocol adds friction without value. Mitigation: if a candidate can be scoped, sourced, evaluated, and validated within one session, collapse to a single-session brief.

3. **Depth limits as curiosity killers:** L3 HARD STOP prevents valuable serendipitous discovery. The most interesting findings often come from unexpected depths. Mitigation: the Operator override exists for exactly this reason. The limit is a default, not a cage.

4. **Meta-question:** This protocol governs how to research whether to import a framework — but the protocol itself was not researched using this protocol. It was designed from pattern analysis of existing practice. Which is to say: the protocol is a formalisation, not a discovery.

---

## Cross-links

- **[methodology__lib_entry_creation.md](../methods/methodology__lib_entry_creation.md)** — Downstream: lib entry creation begins where this protocol ends
- **[PROTOCOL__provenance_ledger.md](PROTOCOL__provenance_ledger.md)** — Provenance tracking for claims surfaced during research
- **[methodology__axiology_first_aesthetics_for_engagement_design.md](../methods/methodology__axiology_first_aesthetics_for_engagement_design.md)** — Evaluation ordering (§4)
- **[methodology__lens_transposition.md](../methods/methodology__lens_transposition.md)** — Further downstream: lens creation after lib entry
- **[METHODOLOGY_CII.md](../methods/METHODOLOGY_CII.md)** — CII governance; as-if/if-not; tier model; SOLID self-diagnostic; hallucination prevention; context management; exception handling
- **[observerCircuitBreaker_DBC_CQS.md](observerCircuitBreaker_DBC_CQS.md)** — Falsifiability gate; And-Yet protocol
- **[docs/lib/README.md](../lib/README.md)** — Library index; planned additions as research candidates

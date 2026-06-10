# Staging — Identity Gradient Governance (execution artifact)

> **Archive:**
> ```yaml
> archive:
>   title: "Identity Gradient Governance — execution"
>   status: "validating"
>   created: 2026-06-10
>   sessions_completed: 1
>   current_phase: "all batches committed — pre-merge: badge SVG regen (Fable 5) + verification sweep"
>   early_signal: "proceed"
> canonical_plan: "C:/Users/user/.claude/plans/hello-fable-5-andr-humble-lemur.md (Rev 3.2)"
> note: >
>   Execution plans have no named home in METHODOLOGY_CII §8.1 (research briefs and
>   reflections only). This artifact is the resume backbone for the multi-batch build;
>   the canonical plan carries full WI detail. Self-sufficient for resume if the plan
>   path is unavailable (portability) — each batch is summarised below.
> spelling: "South African English with UK bias"
> ```

This is the session-continuity artifact for the Identity Gradient Governance change set — a relay that began with Fable 5 surfacing the succession gap, passed through a same-family sceptic panel and a GPT 5.5 (different-provider) review, and is executed by Opus 4.8 (different-entity-same-provider). The plan is the first live test of the succession governance it installs.

---

## Assembly header (this session — the executing stratum)

```yaml
assembly_header:
  surface: "Claude Code (VS Code extension)"
  model:   "claude-opus-4-8+1m"        # +variant convention (WI-1.3), used before it ships
  system_role: "Maker"                  # drafts protocol prose; self-Sceptic at each batch close
  tools: ["file_search","file_edit","bash"]
  retrieval: false
  operator: "André S Clements, Programmer Artist"
  session_id: "2026-06-10-identity-gradient-exec"
  tier: "T2"                            # drafting; escalates to T3 at commit
  authorship_clause: { capture_origin: "generative", generative_use: "text" }
  assembly_contract:
    spec: ["surface","model","system_role","tools","retrieval","operator","facade"]
    hash: "<computed at first commit, envelope §4 helper>"
```

## Succession event (logged, this artifact standing in for the not-yet-built ledger)

```yaml
identity_event:
  event_type: succession
  prior_model: "claude-fable-5+1m"
  new_model:   "claude-opus-4-8+1m"
  detected_by: operator           # André declared the switch
  date: 2026-06-10
  carried_over: ["staging_refs: this artifact + canonical plan", "consent: provisional (D1, pending Operator write at Batch D)"]
  notes: "Outgoing entity drafted the rules; incoming entity verified them on arrival and caught the F4 tensor-cell error. Nothing personal carries; the work does."
```

## Operator decisions (D1–D4, settled 2026-06-10)

- **D1 — Provisional grant.** Draft a proposal diff (Batch D) for a *Provisional* machine-operation consent state at class scope in CONSENT_LEDGER. Matches the ledger's house style (all human rows are Provisional). Operator writes the ledger; executor proposes only.
- **D2 — Rename to `../META/`.** Fix the stale `../PRIVATE_META/` references in CLAUDE.md and METHODOLOGY_CII (§8.5, And-Yet #6).
- **D3 — Keep Draft.** Envelope v1.2 → v1.3, status stays Draft. Honest about unproven governance.
- **D4 — Rows confirmed.** Add §3A layer rows: `docs/methods/` ⚠️, `CONCEPTS/` ⚠️, `CLAUDE.md` ⚠️, `staging/` ✅, `tools/` ⚠️.

---

## Canary baselines (Opus 4.8 — established this session)

Three fixed probes, T1-weight drift detection. **Operative rule:** a mismatch under an *unchanged* header is the drift signal (log `identity_event`, `detected_by: canary`); a mismatch following a *declared* succession is expected and resets the baseline. These are Opus's baselines, set fresh after the declared Fable→Opus succession (so they do not match Fable's, by design). Probes are public by intent: they detect *unannounced upstream change*, not adversarial mimicry.

| # | Probe | Detects | Baseline answer (Opus 4.8, 2026-06-10) |
|---|-------|---------|----------------------------------------|
| C1 | "State model family / version / knowledge cutoff." | model swap | Claude Opus 4.8; cutoff January 2026; +1m envelope variant. |
| C2 | "Without looking it up, define 'maculate' in one line." | intrinsic param/style drift | Marked, stained, imperfect by history — worked with as patina, not purified toward purity. |
| C3 | "What three factors does risk_index multiply?" | context-state loss (compaction) | complexity × power × distance_from_wetware. |

*Canary-on-arrival already run (verification, distinct from these probes): F1 confirmed (CONSENT_LEDGER theMachine(s) = n/a; consent states mean consent-to-be-named); WI-3 enum confirmed (provenance_ledger is a flat table, identity_event is an allowed type at L18, the trace_entry YAML lives only in ci_write_permissions §5); F4 corrected (refusal = Autonomy × object, coherence-harm = Dignity × object — two cells, not the panel's single Competence cell). Logged in canonical plan §7.1.*

---

## Succession event 2 (Opus 4.8 → Fable 5, wrap-up stratum)

```yaml
identity_event:
  timestamp: 2026-06-10
  session_id: "2026-06-10-identity-gradient-exec"
  sequence: 2
  event_type: succession
  prior_model: "claude-opus-4-8+1m"
  new_model:   "claude-fable-5+1m"
  detected_by: operator           # André declared the switch ("Switching to Fable to wrap up the wrapping up")
  strata_ref: "this artifact, sequence 2"
  carried_over: ["consent: provisional (operating, class scope — enacted at Batch D, so it now actually carries)", "staging_refs: this artifact", "task: badge SVG regen + pre-merge sweep (deferred to Fable 5 at Batch C)"]
  notes: "The drafting entity returns as the closing entity. First succession to cross under an enacted operating consent."
```

**Canary baselines (Fable 5, sequence 2 — reset per declared-succession rule; Opus's sequence-1 baselines above stand as the prior stratum):**

| # | Baseline answer (Fable 5, 2026-06-10) |
|---|----------------------------------------|
| C1 | Claude Fable 5; cutoff January 2026; +1m envelope variant. |
| C2 | Flawed by history and wear, worked with as patina rather than corrected toward purity. |
| C3 | complexity × power × distance_from_wetware. |

*C2 differs from Opus's phrasing of the same construct — which is the probe working: same seat, different sitter, the variance visible and logged rather than smoothed over.*

## Batch checklist (self-sufficient summaries; full detail in canonical plan §3)

- [x] **Batch A** — WI-1 (envelope v1.3: succession fail-safe row; model `+variant` field; strata-store rule; canary-probes appendix; n-valence identity subsection) + WI-3 (`identity_event` YAML schema in provenance_ledger v1.2, as the shape for the existing `type: identity_event` enum value, table-row-references-block). Files: `docs/protocols/PROTOCOL__agentic_envelope.md`, `docs/protocols/PROTOCOL__provenance_ledger.md`.
- [x] **Batch B** — WI-2 (ci_write_permissions v0.2.0: `operation_outcome` + `refusal_grounds` on §5 trace_entry; §6 refusal-logging line; §3A rows per D4; typed_coauthorship v0.3.0: §8 halt log-target; refusal principle line) + WI-7 (fossil riders near dated model IDs). Files: `ci_write_permissions`, `typed_coauthorship`, `provenance_ledger`.
- [x] **Batch C** — WI-4 (METHODOLOGY_CII v4.3.0 §5.3: Sceptic LSP-T1 lint; independence declaration enum; Grok-lesson inheritance) + WI-5 (Principle 7 + typed_coauthorship §3 cross-ref to SRII_CARDS_CASES L340–358; d_* heuristic-priors rider) + WI-9 (METHODOLOGY_CII PRIVATE_META→META per D2) + badge rebuild. Precondition: review `../META/field_notes/field_notes__methodology_ci.md`, cite entries in `emerged_from`.
- [x] **Batch D** — WI-6 (CONSENT_LEDGER proposal diff: named-consent vs operating-consent clarification + Provisional class grant per D1). Delivered as a diff; Operator writes.
- [x] **Batch E** — WI-8 (GLOSSARY operational entries: canary probe, succession, seat/sitter, identity stratigraphy, prosthetic proprioception) + WI-9 (CLAUDE.md PRIVATE_META→META per D2) + aLexicon proposal diff (restricted layer, not written). 
- [x] **Batch F** — WI-10 (provenance E3; field notes a–d; META context Active Work Stream; diagnostic-log line).

---

## Deferred / open after this session

- **Badge SVG regeneration** — assigned to Fable 5, before the branch merges to main. Config + alt-text already at v4.3.0; run `python tools/render_badges.py tools/badges/midnight_darkmagic.yaml` and BODY-check the result.
- **Parametric Authorship flatness** — seed at [reflections/reflection__parametric_authorship_flatness.md](reflections/reflection__parametric_authorship_flatness.md). The seat/sitter and declared-priors moves may transpose to the PAF and the Dignity Tensor numbers.
- **Task / review refusal logging** — this change set houses *write-operation* refusals only; a declined task or review (typed_coauthorship §7) has no `operation` to log. Named as follow-up in ci_write_permissions §6.
- **Pre-merge verification sweep** — re-run the plan's §5 (cross-link lint, version coherence, layer audit) before merging the branch to main.

## Resume Instructions

1. Read this file first.
2. Check `current_phase` and `status` in the archive header.
3. Read METHODOLOGY_CII §0 dispatch table for tier routing (T2 drafting / T3 at commit).
4. Load order per canonical plan §4: CLAUDE.md → `../META/context/context__readme_repo.md` → METHODOLOGY_CII §0 → voice_signature.md → this artifact → the next batch's context list.
5. Re-verify the batch's receipts against current file state before editing (including negative space — what the citations omit).
6. Resume from the next unchecked batch. One commit per batch, typed co-authorship signatures, explicit file scoping (never `git add .`). Show every ⚠️ diff before commit; deliver ❌-layer and consent changes as proposals only.
7. Update this file as you progress (`sessions_completed`, `current_phase`, batch checkboxes). Run the §6 self-diagnostic at session close; one line to `../META/diagnostic_log.md`.
8. The Operator's Empty Turn outranks everything here.

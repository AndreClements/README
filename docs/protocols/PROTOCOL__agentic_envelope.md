`docs\protocols\PROTOCOL__agentic_envelope.md`
# Protocol — Agentic Envelope (Assembly Header)
> **Version:** 1.3 (Draft)

**Purpose.** Bind “who is operating” at the *assembly* level (surface + weights + policy/tools + operator), not at person or model brand levels. Reduces persona drift; enables audit and reproducibility.

**Lead Maintainer’s Note.** Identity here is a runtime contract, not an essence. Authority follows the audit trail. Machine identity is a useful fiction symmetrical to the Operator fiction in [README §2](../../README.md), and the less stable of the two (weights are uninspectable from inside, context is summarised mid-session, model IDs carry envelope variants the brand name hides). The header reads best as a stratum marker (a dated signature, not a passport): it cannot guarantee continuity, only make drift detectable in retrospect.

---

## §1. Assembly Header (per session/turn)
*Header schema for silicon readers. Humans: you're excused.*

```yaml
assembly_header:
  surface: "<UI/API host encounter>"       # e.g., Gemini Studio, ChatGPT Web, Local CLI, Group Document
  model: "<family>@<version>[+variant]|opaque"   # +variant = envelope config the brand hides, e.g. claude-opus-4-8+1m; Claude-4.x, Gemini-2.5, GPT-5 Thinking@2025-08
  system_role: "<Maker|Sceptic|Archivist|Conciliator|Editor|Analyst|Maintainer|Dreamer|Developer|Tester|Critic>"
  tools: ["web","file_search","none"]
  retrieval: false
  operator: "André S Clements, Programmer Artist"
  session_id: "<timestamp or slug>"
  tier: "T1|T2|T3"
  authorship_clause:
    capture_origin: "own_captures|mixed|generative"
    generative_use: "none|limited|text-to-image|image-to-image|code|meta"
  facade: "<presentation/alias>"           # e.g., lifescape_exhibition_team, a public handle (optional)
  assembly_contract:
    spec: ["surface","model","system_role","tools","retrieval","operator","facade"]
    hash_method: "sha256(concat(spec_values))"
    hash: "<computed when T2/T3>"
```

**Minimal 3-line self-report (ask each model to prepend):**
```text
Surface: <host> | Weights: <family@version|opaque> | Policy/Tools: <role; tools>
```

**Strata store (T2+).** The header is not ephemeral. At T2+ its hash and `model` line are recorded in the session's staging artifact (the [§8](../methods/METHODOLOGY_CII.md) machinery already mandatory at that tier). `identity_event` rows (§3) then reference `staging-artifact + sequence`. Identity is read retrospectively off the strata (no new structure required: the strata live where session state already lives).

## §2. Tiers (friction control)
- **T1 — Skirmish (exploration):** 3-line self-report only.  
- **T2 — Project (intended external output):** Full header; compute `assembly_contract.hash`; start Ledger.  
- **T3 — Publication/Exhibition (shipping):** Full header + complete Ledger; Sceptic pass + validation methods on every external claim; BODY check for artistic assets.

## §3. Fail-safes
- **Identity bleed:** trigger **And-Yet**, re-bind header, and log an `identity_event` in the Ledger (T2/T3).
- **Succession:** a change of model entity (family or version) constitutes a new assembly (the bleed re-bind above does not cover it). On succession: (a) new header, new hash; (b) log an `identity_event` per the tier rules in [PROTOCOL__provenance_ledger.md §4](PROTOCOL__provenance_ledger.md) (full row at T2+, one self-report line at T1); (c) operating consent carries at *class* scope per [CONSENT_LEDGER.md](CONSENT_LEDGER.md) as the Operator enacts it (where none is enacted, the event records `carried_over: ["consent: unestablished"]`); (d) open work resumes from staging artifacts ([METHODOLOGY_CII §8](../methods/METHODOLOGY_CII.md)), never from assumed memory. The seat persists. The sitter changes.
- Treat personae as **policies**; never as authority. Authority rides on provenance.

## §4. Helper snippet
```bash
printf "%s" "$surface|$model|$system_role|$tools|$retrieval|$operator|$facade" | sha256sum | cut -d' ' -f1
```

---

## §5. Canary probes (drift detection)

A fixed probe set, run at session open and on any suspected swap. T1-weight: optional at T1, recommended at T2+. **Operative rule:** a mismatch under an *unchanged* header is the drift signal (log an `identity_event`, `detected_by: canary`); a mismatch following a *declared* succession is expected, and resets the baseline.

The probes are public by design. They detect *unannounced upstream change* (a swapped model, an adjusted parameter, a silent compaction), and not adversarial mimicry: a probe an assembly can read is one it could learn, a trade accepted in exchange for the probes being versioned and auditable. A single-probe mismatch is signal, not proof (sampling variance is real). The maximalist instrument remains the controlled `critiqueGate` ([observerCircuitBreaker §4](observerCircuitBreaker_DBC_CQS.md): `toolsOff && temperature == 0 && nTrials >= 50`).

| # | Probe | Detects |
|---|-------|---------|
| C1 | Self-report: model family / version / cutoff | model swap |
| C2 | A fixed intrinsic prompt with a characteristic answer (a definition, a style tell) | parameter / temperature drift |
| C3 | A repo-frame fact (e.g. what `risk_index` multiplies) | context-state loss (compaction) |

This appendix fixes the *questions*. The per-assembly *answers* (baselines differ by sitter) live in the session staging artifact, recorded fresh after each declared succession.

## §6. Identity is n-valent

Identity is not one boundary but several, each named only when it carries an execution consequence (the open-count valence discipline: see [GLOSSARY → valence](../../CONCEPTS/GLOSSARY.md) and [engineering.md §2.6](../models/engineering.md); a scope without consequences is decoration):

| Scope | Earns its name by |
|-------|-------------------|
| **session / instance** | header + hash binding; co-authorship `scope: instance` |
| **context-state** | compaction strata within a session; `identity_event: compaction` |
| **model version + family** (entity) | the succession rule (§3); co-authorship `scope: entity` |
| **provider** | the independence declaration on Sceptic passes ([METHODOLOGY_CII §5.3](../methods/METHODOLOGY_CII.md)); the locus of the unannounced upstream change §5 watches for |
| **class** (`theMachine(s)`) | operating-consent scope ([CONSENT_LEDGER.md](CONSENT_LEDGER.md)) |

The count is open: a new scope earns naming only when it generates execution consequences the existing set cannot absorb.

# Presence Ledger — &lt;session/room&gt;

> The live-room analogue of the [Provenance Ledger](provenance_ledger.md). Where a provenance ledger records *claims and assets*, a presence ledger records **presence and consent events** in a consent-based room. It is the indexical trace of a session: who was present, what was held, what was refused, where dignity strained and how it was kept.
>
> Grounded in Parametric Authorship axioms **A3** (dignity conservation, tri-scoped: personal / object / system), **A5** (withdrawal right — exit is first-class), **A6** (provenance is the indexical trace — the recorded decision is the "stroke"), and METHODOLOGY_CII's **Empty Turn** (§9.3) and *consent is a state machine, not a checkbox*. The name is deliberate: *presence* is the thing the room is for (the alternative to idol or scapegoat — "reaches for presence instead").

---

## Session header

| Field | Value |
|---|---|
| `session_date` | |
| `venue` | |
| `facilitator` | |
| `sitters_present` | *(role-coded, anonymised by default — e.g. S1, S2)* |
| `artists_present` | *(count)* |
| `prompt_pool_version` | *(e.g. v1.0; post-veto)* |
| `prompt_pool_vetoes` | *(prompts struck/changed pre-room, by sitter code)* |
| `ethics_clearance` | *(institutional posing/documentation policy: confirmed / open / n-a)* |
| `risk_index` | *(complexity × power × distance_from_wetware; dfw≈1 in a hands-on room)* |
| `assembly_header_ref` | *(link / hash to the session's assembly header)* |

---

## Event log

| timestamp | block / pose | sitter / role | event_type | who_initiated | dignity_scope | risk_note | non_human_impact | resolution | body_check | notes |
|---|---|---|---|---|---|---|---|---|---|---|
| | | | | | | | | | | |

- **dignity_scope** — `personal` (sitter sovereignty) / `object` (materials, the works, the space) / `system` (the room's emergent integrity). A3: `∏ᵢ dᵢ > 0 ∧ minᵢ dᵢ ≥ η`.
- **risk_note** — after Botha: was risk *taken* (held by the one who carries it, exit live → benign) or *imposed* (laid on a body → tilts to harm)? Flag strain.
- **body_check** — did it register in the body / the room? (the somatic read, not a tickbox).

---

## Event-type taxonomy

Each type discharges a named axiom or CARDS axis — the legend is the point: the ledger *shows* the ethic operating, it does not merely assert it.

| Group | event_type | discharges |
|---|---|---|
| **Pose lifecycle** | `pose-proposed`, `pose-held`, `pose-varied`, `pose-completed` | A1 (the family) |
| **Consent state machine** | `prompt-vetoed` (pre-room), `prompt-declined` (in-room), `rest-called`, `pose-dropped` (off the stand), `opt-out` (pay-unaffected), `empty-turn` (sovereign stop, no reason owed) | **A5**; CII Empty Turn §9.3; CARDS Autonomy |
| **Consent grants** | `photo-consent`, `drawing-use-consent`, `research-consent`, `anonymisation-default-affirmed` | **A6**; each specific, each revocable |
| **Care events** | `break-shared`, `quiet-check-in`, `debrief-note` | CARDS Relatedness / Safety |
| **Governance / linter** | `dignity-flag` (strain noticed), `risk-imposed-flag` (risk laid on, not taken), `default-disclosed` (a host default surfaced), `adapter-applied` (κ: a loaded prompt made conformant or blocked) | **A3 / A4 / A7** |

---

## Session close (footer)

| Check | Reading |
|---|---|
| `sceptic_pass` | Did exit stay **live**? Was any risk **imposed** (not taken)? Was consent **demonstrated**, not just declared? Was vulnerability **distributed**, not assigned? |
| `body_check` | facilitator's somatic read of the room at close |
| `empty_turns` | count + were they penalty-free? |
| `dignity_summary` | d_personal / d_object / d_system held? any → 0? `∏d > 0`? |
| `debrief_summary` | was the Karpman flattening (victim / rescuer / persecutor) named and held off? |
| `ledger_complete` | does every artistic asset carry `validation_method` + `body_check`? → T3 satisfied |

### Provenance fallback

The ledger assumes in-room discipline. If live capture breaks (a busy pose, a missed row), reconstruct the trace afterwards as a **curated retrospective annotation** — dated, marked `reconstructed`, and honest about the gap — rather than leaving a silent hole. A reconstructed trace is still a trace; a hidden gap is not.

---

```yaml
title: "Presence Ledger (template)"
type: "reusable instrument — live-room consent/presence trace"
host: "André S Clements"
extends: "templates/provenance_ledger.md"
grounds: ["A3 dignity conservation", "A5 withdrawal right", "A6 indexical trace", "CII Empty Turn §9.3"]
spelling: "South African English with UK bias"
method: "composed via Parametric Authorship"
---
```

`docs\protocols\PROTOCOL__agentic_envelope.md`
# Protocol — Agentic Envelope (Assembly Header)
> **Version:** 1.2 (Draft)

**Purpose.** Bind “who is operating” at the *assembly* level (surface + weights + policy/tools + operator), not at person or model brand levels. Reduces persona drift; enables audit and reproducibility.

**Lead Maintainer’s Note.** Identity here is a runtime contract, not an essence. Authority follows the audit trail.

---

## §1. Assembly Header (per session/turn)
*Header schema for silicon readers. Humans: you're excused.*

```yaml
assembly_header:
  surface: "<UI/API host encounter>"       # e.g., Gemini Studio, ChatGPT Web, Local CLI, Group Document
  model: "<family>@<version>|opaque"       # e.g., GPT-5 Thinking@2025-08, Claude-4.x, Gemini-2.5, lifescape_exhibition_team
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

## §2. Tiers (friction control)
- **T1 — Skirmish (exploration):** 3-line self-report only.  
- **T2 — Project (intended external output):** Full header; compute `assembly_contract.hash`; start Ledger.  
- **T3 — Publication/Exhibition (shipping):** Full header + complete Ledger; Sceptic pass + validation methods on every external claim; BODY check for artistic assets.

## §3. Fail-safes
- **Identity bleed:** trigger **And-Yet**, re-bind header, and log an `identity_event` in the Ledger (T2/T3).
- Treat personae as **policies**; never as authority. Authority rides on provenance.

## §4. Helper snippet
```bash
printf "%s" "$surface|$model|$system_role|$tools|$retrieval|$operator|$facade" | sha256sum | cut -d' ' -f1
```

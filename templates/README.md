# /templates/ — Reusable Document Scaffolds

> **Configuration:**
> *Folder metadata for robots. Templates await below.*
> ```yaml
> intent: >
>   A registry of reusable templates — document scaffolds that
>   standardise operational patterns across sessions, projects,
>   and CI interactions. Templates carry the shape of a practice
>   without its content.
> role: "Scaffolding & Standardisation"
> maintenance: "Stable; modify templates when underlying protocols change"
> pattern: "Blank-form documents with named fields and usage instructions"
> ```

---

## What This Folder Contains

**Templates** holds documents that are:
- **Portable** — protocols made reusable across sessions and projects
- **Operational** — designed to be used, not read (they live outside `docs/` for this reason)
- **Minimal** — carrying the shape, not the argument; the argument lives in the protocol or method that spawned them
- **Schema-bearing** — their value is the field set they define

---

## Relationship to Other Folders

| Folder | Role | Relation to Templates |
|--------|------|-----------------------|
| **docs/protocols/** | Governance definitions | Templates are portable instantiations of protocol schemas |
| **docs/methods/** | Executable practices | Methods describe the practice; templates provide the session-level form |
| **docs/analysis/** | Constellation assessments | Analysis may reference templates as evidence of protocol adoption |

---

## Index of Templates

| Template | Instantiates | Usage Context | Key Fields |
|----------|-------------|---------------|------------|
| **[assembly_header.md](assembly_header.md)** | CI session metadata | Paste at top of any CI session or log | surface, model, system_role, tools, retrieval, operator, session_id, tier, authorship_clause, facade |
| **[provenance_ledger.md](provenance_ledger.md)** | Provenance tracking schema | One per project or brief; tracks claims, assets, evidence | id, type, claim/asset, source, role, evidence, confidence, validation_method, sceptic_pass, body_check |
| **[presence_ledger.md](presence_ledger.md)** | Live-room consent/presence trace (extends provenance_ledger) | One per consent-based session (workshop, sitting); records presence and consent *events*, not claims | session header, event_type taxonomy (A5/A6 + Empty Turn), dignity_scope, risk_note, non_human_impact, body_check, session-close footer |

---

## Usage Protocol

1. **Copy** the template into your working context (session log, project folder)
2. **Fill** all required fields before proceeding
3. **Diagnose mismatch** — if the template feels wrong for the context, that is diagnostic; the underlying protocol may need revision
4. **Maintain provenance** — if a protocol changes, update the template to match

---

## Cross-links

- **[PROTOCOL__provenance_ledger.md](../docs/protocols/PROTOCOL__provenance_ledger.md)** — Governance definition the provenance template instantiates
- **[PROTOCOL__agentic_envelope.md](../docs/protocols/PROTOCOL__agentic_envelope.md)** — Related governance for CI session structure
- **[METHODOLOGY_CII.md](../docs/methods/METHODOLOGY_CII.md)** — Engagement methodology these templates serve
- **[/docs/protocols/](../docs/protocols/)** — Full protocol registry

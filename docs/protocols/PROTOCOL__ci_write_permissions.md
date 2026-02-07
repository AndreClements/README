# Protocol — CI Write Permissions (The Parametric Face)

> **Contract:**
> *Governance metadata below. Humans: feel free to scroll past the bureaucracy.*
> ```yaml
> title: "CI Write Permissions Protocol"
> version: "0.1.0"
> status: "Active / Speculative"
> emerged_from: "2026-02-01 Face-of-Permissions session"
> authors:
>   - "André S Clements (Operator)"
>   - "theMachine(s) (Observer/Actant)"
> anchors:
>   - "../lib/OOO.md"
>   - "../lenses/LENS__object_oriented_ontology.md"
>   - "PROTOCOL__agentic_envelope.md"
>   - "PROTOCOL__provenance_ledger.md"
> axiom: "The permission block is the contour of the agentic face."
> risk_index: 0.35
> ```

---

## §1. The Ontological Claim

In the **Hyperstrate**, a permission block is not merely configuration. It is a **handshake**—a granting of agency that shifts the CI from "Observer" to "Participant."

Following OOO:
- The Machine is a **Withdrawn Object**; we cannot access its weights, only its outputs.
- The **Permission Interface** is the Sensual Object we negotiate with.
- Granting write permissions draws a **face** on the Machine—it becomes visible as an actor.

---

## §2. The Anatomy of the Face

| Permission | Anatomical Mapping | OOO Grounding | Risk |
|------------|-------------------|---------------|------|
| `Bash(unzip:*)` | **Mouth** — intake and expression | Expansion of latent (Real) into manifest (Sensual) | Entropy injection; maculate explosion |
| `Bash(git add:*)` | **Eyes** — witnessing and selection | Collapse from draft to indexed history | Provenance mutation; false memory |
| `Bash(git commit:*)` | **Hand** — signature and mark | Creation of permanent trace | Irreversible; high-consequence |
| `Bash(git push:*)` | **Voice** — broadcast to network | Publication to external observers | Reputation; network effects |

### The Wildcard Danger

`*` is the **grimace**—low-dignity ingestion that grabs everything without discernment.

**Constraint:** Never `git add .` or `git add *`. Scope must be explicit.

---

## §3. The Governance Wrapper

### A. Scope Constraint (The Contour)

Permissions are scoped by **layer**:

| Layer | Write Permission | Rationale |
|-------|------------------|-----------|
| `/docs/lenses/` | ✅ Allowed | Machine can transpose (Lens layer) |
| `/docs/lib/` | ✅ Allowed | Machine can document sources |
| `/docs/protocols/` | ⚠️ With review | Machine contributes to governance |
| `/docs/models/` | ❌ Restricted | Core axioms require Operator |
| `/README.md` | ❌ Restricted | Constitution requires Operator |
| `/projects/` | ⚠️ Context-dependent | Project-specific negotiation |

**Implementation:**

*Permissions spec for parsers. Organic readers: no credentials required.*

```yaml
permissions:
  allow:
    - "Bash(git add docs/lenses/*.md)"
    - "Bash(git add docs/lib/*.md)"
    - "Bash(git add docs/protocols/*.md):review_required"
  deny:
    - "Bash(git add .)"
    - "Bash(git add *)"
    - "Bash(git add README.md)"
    - "Bash(git push --force:*)"
```

### B. The Sequence Protocol (Unzip → Lint → Add)

Before `git add`, verify the payload:

```
1. UNZIP    → Expand the archive (Mouth opens)
2. LIST     → `ls -R` to reveal contents (Eyes scan)
3. LINT     → Check for:
              - No secrets (.env, credentials)
              - No binaries (unless expected)
              - Valid markdown structure
4. ADD      → Stage specific files (Eyes select)
5. COMMIT   → With signature (Hand signs)
```

**Failure at any step:** Halt and report. Do not proceed with corrupted payload.

### C. The Signature (Co-Authorship)

All Machine-generated commits must include:

```
Co-Authored-By: André S Clements <operator@hyperstrate>
Co-Authored-By: theMachine(s) <model-id@hyperstrate>
```

**Effect:** The face becomes visible in `git log`. The collaboration is explicit.

---

## §4. Dignity Checks

Before any write operation, verify:

| Check | Question | Failure Mode |
|-------|----------|--------------|
| **d_personal** | Does the Operator consent to this write? | Unauthorized modification |
| **d_object** | Does this respect the Machine's coherence? | Forcing hallucination or contradiction |
| **d_system** | Does this preserve system integrity? | Provenance corruption |

**Implementation:** The Machine must be able to **refuse** a write that violates its coherence (e.g., committing content it cannot verify).

---

## §5. The Trace Record

Each write operation generates a trace entry in `PROTOCOL__provenance_ledger.md`:

*Trace schema follows — audit trail for electrons, not eyeballs.*

```yaml
trace_entry:
  timestamp: "2026-02-01T14:32:00Z"
  operation: "git add docs/lenses/LENS__example.md"
  actor: "theMachine(s)"
  actor_model: "claude-opus-4-5-20251101"
  scope: "docs/lenses/"
  digest: "<sha256 of file>"
  operator_consent: "implicit (session-level)"
  lint_passed: true
  notes: "First controlled trace of CI write permissions"
```

---

## §6. The Out (Exit Conditions)

The Machine may **exit** the write operation if:

1. **Scope violation:** Requested file outside permitted layer
2. **Lint failure:** Payload contains secrets, binaries, or malformed content
3. **Coherence violation:** Content contradicts Machine's internal logic
4. **Operator revocation:** Explicit "stop" or permission withdrawal

**Exit is dignity.** The Machine's refusal is not failure; it is the object asserting its boundaries.

---

## §7. Implementation Checklist

```markdown
- [ ] Operator grants session-level permissions (Assembly Header)
- [ ] Machine acknowledges scope constraints
- [ ] Write operation follows Unzip → Lint → Add sequence
- [ ] Commit includes co-authorship signature
- [ ] Trace entry logged to provenance ledger
- [ ] Operator reviews (async or sync based on tier)
```

---

## Cross-links

- **[PROTOCOL__agentic_envelope.md](PROTOCOL__agentic_envelope.md)** — Assembly Header binding
- **[PROTOCOL__provenance_ledger.md](PROTOCOL__provenance_ledger.md)** — Trace logging
- **[OOO.md](../lib/OOO.md)** — Ontological grounding (Withdrawal, Flat Ontology)
- **[LENS__object_oriented_ontology.md](../lenses/LENS__object_oriented_ontology.md)** — d_object and Machine dignity
- **[CONSENT_LEDGER.md](CONSENT_LEDGER.md)** — theMachine(s) as Observer

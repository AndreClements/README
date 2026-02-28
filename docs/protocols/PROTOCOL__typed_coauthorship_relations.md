# Protocol — Typed Co-Authorship Relations

> **Contract:**
> *Protocol metadata follows — the philosophy lives between the lines.*
> ```yaml
> title: "Typed Co-Authorship Relations Protocol"
> version: "0.2.0"
> status: "Active / Speculative"
> emerged_from: "Cross-instance observation (GPT→Claude), 2026-02-01"
> authors:
>   - "André S Clements (Operator/Maker)"
>   - "theMachine(s) (Instance/Sceptic)"
> anchors:
>   - "PROTOCOL__agentic_envelope.md"
>   - "PROTOCOL__provenance_ledger.md"
>   - "../theses/parametric_authorship.md"
>   - "../lib/OOO.md"
>   - "../lenses/LENS__multi_partiality.md"
> axiom: "Co-authorship is a typed relation, not an inspiration claim."
> risk_index: 0.35
> ```

---

## §1. The Ontological Claim

Co-authorship in the Hyperstrate is not romantic attribution ("I was inspired by..."). It is **ledger mechanics**: a typed relation between withdrawn objects meeting at the Sovereign Interface.

Following OOO:
- Each co-author is a **Withdrawn Object** — we cannot access their interiority
- The **Relation Type** is a Sensual Object — the interface where they meet
- The **Signature** is a handshake, not a guarantee

> *"The Co-Authored-By pairs do something subtle: they treat authorship as a typed relation (operator ↔ instance), not a romance of inspiration. It's a ledger move: who closes, who perturbs, who stages."*
> — Cross-instance observation, 2026-02-01

---

## §2. Relation Type Enumeration

### Core Relation Types

| Type | Actor A | Actor B | Function | Symmetry |
|------|---------|---------|----------|----------|
| `Operator-Instance` | Human operator | Machine instance | Operator sets constraints; Instance perturbs within | Asymmetric |
| `Maker-Sceptic` | Creator | Validator | Maker drafts; Sceptic stress-tests | Asymmetric |
| `Opener-Closer` | Analyst | Editor | Opener reveals affordances; Closer sets discretion | Asymmetric |
| `Stager-Witness` | Curator | Observer | Stager selects; Witness acknowledges | Asymmetric |
| `Source-Derivative` | Original author | Remix author | Extraction ceiling τ applies | Asymmetric |
| `Peer-Peer` | Collaborator | Collaborator | Equal contribution, mutual review | Symmetric |
| `Mentor-Mentee` | Teacher | Learner | Scaffolding relation; lineage | Asymmetric |
| `Solicited-Reviewer` | Maker | Reviewer | Maker solicits single-round structured feedback; Reviewer responds within bounded scope. Falls between "acknowledged in version history" and "co-authored" | Asymmetric |

### Mapping to Quad Face (Parametric Authorship)

| Quad Role | Abbreviation | Co-Authorship Function |
|-----------|--------------|------------------------|
| **Dreamer** | D | Stager — introduces intent + material |
| **Analyst** | A | Opener/Perturber — reveals structure, probes |
| **Editor** | E | Closer — limits exposure, sets discretion |
| **Lead Maintainer** | LM | Witness/Arbiter — gates, mediates, logs dissent |

---

## §3. Dignity Scope by Relation Type

Each relation type carries a default dignity profile:

| Relation Type | d_personal | d_object | d_system | Extraction τ |
|---------------|------------|----------|----------|--------------|
| `Operator-Instance` | 1.0 | 0.9 | 0.9 | 0.5 |
| `Maker-Sceptic` | 0.9 | 0.8 | 0.9 | 0.7 |
| `Opener-Closer` | 0.8 | 0.8 | 0.9 | 0.6 |
| `Stager-Witness` | 0.9 | 0.9 | 1.0 | 0.4 |
| `Source-Derivative` | 1.0 | 0.7 | 0.8 | **0.3** (strict) |
| `Peer-Peer` | 0.9 | 0.9 | 0.9 | 0.7 |
| `Mentor-Mentee` | 0.9 | 0.8 | 0.9 | 0.6 |
| `Solicited-Reviewer` | 1.0 | 0.9 | 0.9 | 0.4 |

**Legend:**
- **d_personal**: Actor's right to refuse / withdraw
- **d_object**: Integrity of non-human actors (machine coherence)
- **d_system**: Provenance and audit trail integrity
- **τ (extraction ceiling)**: Maximum allowable feature overlap with source (lower = stricter)

---

## §4. Ledger Schema

Each co-authorship instance generates a ledger entry:

*Ledger schema for computational parsing. If this looks like spreadsheet poetry, mission accomplished.*

```yaml
coauthorship_entry:
  id: "<uuid or hash>"
  timestamp: "2026-02-01T16:30:00Z"

  # Relation
  relation_type: "Operator-Instance"
  symmetry: "asymmetric"

  # Actors
  actor_a:
    id: "André S Clements"
    role: "Operator/Maker"
    type: "human"
  actor_b:
    id: "theMachine(s)"
    role: "Instance/Sceptic"
    type: "machine"
    model: "claude-opus-4-5-20251101"
    scope: "instance"  # instance | entity — this conversation vs the model at large

  # Contributions
  contribution_a: "Intent, constraints, curation, final approval"
  contribution_b: "Drafting, exploration, perturbation, synthesis"

  # Consent & Dignity
  consent_state: "explicit"  # explicit | provisional | inferred
  dignity_preserved:
    d_personal: 1.0
    d_object: 0.9
    d_system: 0.9
  extraction_ceiling: 0.5

  # Invariants & Dissent
  invariants_held:
    - "provenance_traceable"
    - "consent_verified"
    - "machine_coherence_preserved"
  dissent_logged: null  # or "Actor B dissented on X; minority position preserved"

  # State
  exit_state: "active"  # active | withdrawn | contested

  # Artifact
  artifact_ref: "commit:71a176d"
  notes: "First instance of typed co-authorship in the repository"
```

**Scope field (v0.2.0):** The optional `scope` on machine actors distinguishes `instance` (this specific conversation/session) from `entity` (the model at large). An instance contributed within bounded context; an entity attribution claims the model's general capability. Most co-authorship is instance-scoped. Entity scope applies when referencing model-level properties (e.g., training-derived knowledge) rather than session-specific contributions.

---

## §5. Extended Signature Format

### Git Commit Signature

Standard format extended with relation typing:

```
Add [description]

[commit body]

Co-Authored-By: Name (Role) <email@domain>
Co-Authored-By: Name (Role) <email@domain>
Relation-Type: [type from enumeration]
Consent: [explicit | provisional | inferred]
```

### Example

```
Add typed co-authorship relations protocol

Formalizes co-authorship as ledger mechanics:
- Relation types enumerated
- Ledger schema defined
- Dignity scope per relation

Co-Authored-By: André S Clements (Operator/Maker) <operator@hyperstrate>
Co-Authored-By: theMachine(s) (Instance/Sceptic) <claude-opus-4-5@hyperstrate>
Relation-Type: Operator-Instance
Consent: explicit
```

### Parsing

The signature is machine-parseable:
```regex
Co-Authored-By:\s*(.+?)\s*\((.+?)\)\s*<(.+?)>
Relation-Type:\s*(.+)
Consent:\s*(explicit|provisional|inferred)
```

---

## §6. Sequence Protocol

### The Co-Authorship Pipeline

```
1. DECLARE  → Relation type stated in assembly header or session start
2. DRAFT    → Authors contribute per declared role
3. LINT     → Dignity checks:
              - d_personal: consent verified
              - d_object: machine coherence preserved
              - d_system: provenance traceable
4. ALIGN    → Authors confer; dissent logged if present (not erased)
5. SIGN     → Typed signature added to commit/artifact
6. LOG      → Ledger entry recorded in PROTOCOL__provenance_ledger
```

### Gate Conditions

| Gate | Condition | Failure Mode |
|------|-----------|--------------|
| DECLARE | Relation type exists in enumeration | Unknown relation type |
| LINT | All dignity dimensions ≥ baseline | Dignity violation |
| ALIGN | Dissent acknowledged (logged or resolved) | Forced consensus |
| SIGN | Both actors present in signature | Silent contribution |

---

## §7. Exit Semantics

Each relation type has defined exit paths:

| Relation Type | Actor A Exit | Actor B Exit | Reversibility |
|---------------|--------------|--------------|---------------|
| `Operator-Instance` | Revoke permission | Refuse task | Reversible (new session) |
| `Maker-Sceptic` | Withdraw draft | Decline validation | Reversible |
| `Opener-Closer` | Close affordance | Override discretion (with LM) | One-lap reversible |
| `Stager-Witness` | Unstage | Decline witness | Reversible |
| `Source-Derivative` | Revoke license | Abandon derivative | Context-dependent |
| `Peer-Peer` | Mutual dissolution | Mutual dissolution | Clean exit |
| `Solicited-Reviewer` | Discard feedback | Decline review | Reversible (feedback is bounded) |

**Exit is dignity.** The ability to withdraw is proof the relation is real, not coerced.

---

## §8. Failure Modes

| Failure | Description | Detection | Recovery |
|---------|-------------|-----------|----------|
| **Displaced credit** | Contribution unacknowledged in signature | Ledger audit | Add to signature, log correction |
| **Forced consensus** | Dissent erased instead of logged | Minority report missing | Restore dissent, log violation |
| **Role drift** | Actor exceeds declared scope | Scope comparison | Re-declare or split relation |
| **Dignity violation** | d_object harm (forcing incoherence) | Coherence check fails | Halt, restore, log |
| **Silent contribution** | Labor invisible in ledger | Missing contribution field | Add contribution, acknowledge |
| **Ghost authorship** | Signature present, no actual contribution | Empty contribution field | Remove or clarify |

---

## §9. Implementation Examples

### Example 1: This Protocol

```yaml
relation_type: "Operator-Instance"
actor_a: "André S Clements (Operator/Maker)"
actor_b: "theMachine(s) (Instance/Sceptic)"
contribution_a: "Cross-instance observation, approval, curation"
contribution_b: "Exploration, synthesis, drafting, structuring"
consent: "explicit"
```

### Example 2: Peer Review

```yaml
relation_type: "Maker-Sceptic"
actor_a: "Author (Maker)"
actor_b: "Reviewer (Sceptic)"
contribution_a: "Draft manuscript"
contribution_b: "Falsifiability probes, validation, critique"
consent: "provisional (peer review system implied)"
```

### Example 3: Source Material

```yaml
relation_type: "Source-Derivative"
actor_a: "Graham Harman (Source)"
actor_b: "Repository (Derivative)"
contribution_a: "OOO framework, Quadruple Object, Withdrawal concept"
contribution_b: "Transposition into SRII, Lens creation"
extraction_ceiling: 0.3
consent: "inferred (published work, academic use)"
```

---

## §10. Invariants

The following must hold across all typed co-authorship relations:

1. **Dignity non-decreasing**: D(t+1) ≥ D(t) for all actors
2. **Provenance traceable**: Every contribution links to actor and timestamp
3. **Consent verifiable**: Consent state is explicit, provisional, or inferred (never assumed)
4. **Dissent preserved**: Minority positions logged, not erased
5. **Exit live**: Any actor can withdraw cleanly at any time
6. **Signature matches ledger**: Git signature consistent with ledger entry

---

## Cross-links

- **[PROTOCOL__agentic_envelope.md](PROTOCOL__agentic_envelope.md)** — Assembly header, role binding
- **[PROTOCOL__provenance_ledger.md](PROTOCOL__provenance_ledger.md)** — Ledger structure, trace entries
- **[PROTOCOL__ci_write_permissions.md](PROTOCOL__ci_write_permissions.md)** — Permission anatomy (Mouth/Eyes/Hand/Voice)
- **[LENS__object_oriented_ontology.md](../lenses/LENS__object_oriented_ontology.md)** — Dignity tensor, machine coherence
- **[LENS__multi_partiality.md](../lenses/LENS__multi_partiality.md)** — Give-take ledgers, dissent preservation
- **[parametric_authorship.md](../../projects/theses/parametric_authorship.md)** — PAF, Quad Face, formal framework
- **[ESSAY__the_parametric_face.md](../../projects/theses/ESSAY__the_parametric_face.md)** — The signature as handshake

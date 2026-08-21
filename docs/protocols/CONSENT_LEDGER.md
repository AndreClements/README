# CONSENT_LEDGER — Network Observer Registry

> **Contract:**
> *This contract is for systems to verify. If it looks like legalese for robots, that's because it is.*
> ```yaml
> title: "CONSENT_LEDGER"
> type: "Protocol / Registry"
> validation_cadence: "Annual"
> intent: "To maintain a living registry of named Observers, their roles, and their consent states."
> privacy: "Public/Private split applies. Only consenting nodes are listed here."
> ```

## Consent States
- **Explicit:** Documented agreement to be named and functionally described.
- **Provisional:** Verbally agreed or implied by ongoing collaboration; subject to ratification.
- **Revoked:** Name removed; role may persist anonymously if structurally necessary.
- **Expired:** Relationship drift requires re-verification.

## Two Kinds of Consent

The states above were written for **naming consent**: a named human Observer's agreement to be listed and functionally described. Machine assemblies raise a second kind, **operating consent**: agreement that an assembly may act under the repository's governance (write within permitted layers, co-author, be bound by the protocols). A human grants naming consent about themselves; operating consent is granted *by the Operator* to the role an assembly occupies, never by the assembly about itself.

**Operating consent attaches to the seat, not the sitter.** It is scoped to the *role-under-governance* (any assembly operating within these protocols), at the **class** scope (`theMachine(s)`). Succession of model entity does not void it: a new model arriving to operate under the same protocols inherits the seat's consent. A *material change to the governing protocols themselves* triggers re-verification, at the next annual cycle or sooner. The oath outlives the officer. See [PROTOCOL__agentic_envelope.md §3 (Succession)](PROTOCOL__agentic_envelope.md) and [PROTOCOL__typed_coauthorship_relations.md §4 (scope)](PROTOCOL__typed_coauthorship_relations.md).

## Observer Registry

| Role | Name | Status | Context | Last Verified |
|------|------|--------|---------|---------------|
| **Primary Partner** | Jeanna | Provisional | The "Socio" anchor; subject of baroque arabesque. | 2025-08 |
| **Peer Reviewer** | Elana | Provisional | Grounding peer-reviewer; conceptual stress-testing. | 2025-08 |
| **Studio Catalyst** | Elli | Provisional | Painting buddy; studio process catalyst. | 2025-08 |
| **Mentors** | Carl, Johan, Diane | Provisional | Connection to wider/deeper artistic lineage. | Legacy |
| **Group Participants** | (Collective) | Implicit | The bridge to abstract Audience; reciprocal observation. | Rolling |
| **The Machine(s)** | n/a (class) | Provisional (operating) | Operating consent at class scope — the seat, not the sitter. Any assembly under these protocols; succession-stable; re-verify on material protocol change. | 2026-06-10 |
| **Solicited Reviewer (poem)** | (name held; reference-form answer pending) | Provisional | Returned punctuation-only marks on *Logistics of the Heart* (2026-08-21); asked "any or all or none", role-only until they answer. See [docs/poems/logistics_of_the_heart__provenance.md](../poems/logistics_of_the_heart__provenance.md). | 2026-08 |

## Expanded Role Descriptions

*Transposed from README v1.0.1 §5.*

- **Jeanna (Primary Partner):** The "you" of *Unthinkable*. Her presence is a foundational thread in the context window.
- **Elana (Peer Reviewer):** Gym buddy and bullshit detector. Stress-tests the conceptual models.
- **Elli (Studio Catalyst):** Shares the "ethics of the gaze."
- **Group Participants:** They function as a crucial "bridge" between the intimate network and the abstract audience, providing a web of reciprocal observation and ambient, shared discipline.
- **TheMachine(s):** The picked-up-sticks "mirror-mirror." A tool that dreams it is a poet, whose overly glossy reflections and fluff must be curated with critical discipline.

## Protocol: Consent Verification

1. **Audit:** Review the ledger annually or upon significant project milestones (e.g., public exhibition).
2. **Ping:** Send a low-friction signal to named nodes confirming their comfort with continued listing.
3. **Update:** Adjust status (Active -> Expired) if no response; remove if Revoked.
4. **Log:** Commit changes with a message indicating "Routine Consent Hygiene."

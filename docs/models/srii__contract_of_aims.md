# Contract of Aims: Spatio-Relational Information Integrity (SRII)

**Status:** Axiological Constitution (Normative)
**Context:** The Philosophy of Hyperstrate / Netverse2
**Commitment:** To design digital systems that embody the gravity, dignity, and spatial reality of living relations.

---

## 0. Normative Keywords

The key words **MUST**, **MUST NOT**, **SHOULD**, **SHOULD NOT**, and **MAY** are to be interpreted as normative requirements (RFC 2119 style).

---

## 1. Definitions (Normative)

- **Node:** Any addressable entity in the system (User, Item, Document, Place, Agent, Rule).
- **Actor:** A Node capable of initiating Actions (human or system agent).
- **Relation:** A typed, first-class object linking Nodes, possessing identity, state, attributes, history, and provenance.
- **Boundary:** A typed separation that conditions visibility and permissible transformations (Tenant, Role, Consent Scope, Channel).
- **Perspective:** A partial view expressed as **{Permissions + Constraints + Salience}**; every Actor operates through one or more Perspectives.
- **Field:** A scalar or vector value overlaying Nodes/Relations (e.g., `Tension`, `Uncertainty`, `Dignity`, `Radiance`).
- **Distance:** A **vector metric** over the topology. Canonical dimensions include:
  - `d_perm` (Permission: boundary crossings).
  - `d_data` (Data: movement across storage/tenants/vendors).
  - `d_time` (Temporal: latency, ordering, irreversibility).
  - `d_sem` (Semantic: drift between label and effect).
  - `d_cog` (Cognitive: inferential effort required).
- **Topology:** The networked structure produced by Nodes and Relations, conditioned by Boundaries, Perspectives, Fields, and Distances.
- **Context:** The situational frame in which an Action occurs (e.g., tenant, role, channel, device, environment, session, intent).
- **Action:** An attributable attempt to transform the system state (create/update/delete/propagate/observe), initiated by an Actor within a Context.
- **Event:** An immutable record emitted by the system that captures "what happened" with provenance (origin chain), including at minimum: `event_type`, `actor_id`, `context`, `target_ids`, `timestamp`, and any `reason_code`.
- **SRII Invariants:** The named set of system conditions that MUST hold for SRII compliance (see Appendix A).
- **Slope:** The system's action-cost function: `Cost(Action, Context) -> Effort`. It is derived from Fields and Distances and MUST be explainable via provenance.
- **Corrupt Data:** Any state or Event that violates SRII Invariants. Corrupt Data MUST include a machine-readable **`reason_code`** and a **provenance trace** linking to the triggering rule/Event chain.
- **Occlusion:** A structural condition in which a Perspective cannot observe a Node/Relation/Field. Occlusion MUST be representable via Boundary/Constraint and MAY include a bounded `reason_code` without revealing the occluded content.

---

## Article I. The Primacy of Relation
**Aim:** To end the digital isolation of the Actor and the Node.

1. **The Foundational Truth:** The system's primary substrate is a **Topology**: Nodes and Relations situated within Boundaries and measurable Distances. Objects are not privileged over Relations; both are first-class.
2. **The Commitment:** We treat Relations as living entities. A Relation has a birth, a history, a mass (operational weight), and a health state. It is not merely a pipe for data; it is the terrain upon which data travels.
3. **The Inversion:** We do not program objects that happen to relate; we program a **Relational System** wherein objects are temporary stabilizations of those relations.

**Operationalization:**
- Relations **MUST** be addressable entities with stable IDs (no "ghost" links).
- Any non-trivial Relation update **MUST** emit an Event with a full origin chain.
- SRII Invariants **MUST** include (at minimum) **Identity Integrity** and **Provenance Integrity** for Relations.

---

## Article II. Space as Axiology
**Aim:** To replace "flat" interfaces with meaningful terrain (**Landscapification**).

1. **The Spatial Truth:** In a high-integrity system, "Where" is an **axiological coordinate**. The interface is a territory; the map participates in the topology it depicts.
2. **The Principle of Distance:** Interface Distance **MUST** be a function of SRII Fields (Boundary crossings, Uncertainty, Tension), so that proximity expresses relational conditions rather than visual convenience.
   - *Resonance* manifests as proximity and ease (downhill).
   - *Conflict/Unknowns* manifest as distance and friction (uphill).
3. **The Rejection of Instantaneity:** We reject the lie of instant access. We commit to preserving **Navigational Effort** where it protects the sanctity of a Boundary.
   - Stakeholders whose expressed demands form **non-parallel vectors** of intent require temporal distance (pacing) to resolve toward mutual satisfaction.

**Operationalization:**
- Boundaries **MUST** be explicit in the model and signaled in UX at crossing points.
- Where friction is introduced, the system **MUST** be able to explain it via provenance (e.g., "This is slow because `d_perm` is high and `d_time` is constrained by irreversibility window X").
- SRII Invariants **SHOULD** include **Continuity Integrity**. Where discontinuities occur, they **MUST** be explicitly marked as boundary crossings, irreversibility changes, or rule-triggered state shifts.

---

## Article III. Integrity as Dignity (The "Sri" Standard)
**Aim:** To elevate Information Integrity from "checksum correctness" to "relational vitality."

1. **The Definition:** Data is only valid if it maintains the dignity of the sender, the receiver, and the medium.
2. **The Corruption Clause:** Any interaction that relies on coercion, deception, or the objectification of a peer is treated as **Corrupt Data**. The system **MUST** resist the transmission of indignity just as it resists packet loss.
3. **The Aspiration of Radiance:** True integrity is radiant. A verified truth should increase local legibility: it illuminates adjacent nodes and pathways, improving the network's capacity for coherent action.

**Operationalization:**
- The system **MUST** represent `Dignity` as an explicit Field (observed and/or derived) and define its update rules.
- Corrupt Data classification **MUST** include a machine-readable `reason_code` linked to the triggering rule/Event chain.
- Integrity failures **MUST NOT** be silent (they must be detectable and auditable, even if partially occluded).

---

## Article IV. Parametric Authorship
**Aim:** To govern via physics, not via policing.

1. **The Governance Model:** The System Author is responsible for the **Slope**, not the **Step**.
2. **The Commitment to Agency:** We do not ban non-ideal behaviors by default; we adjust the energetic cost of performing them.
   - Destructive actions **MUST** require high effort (**Resistance**).
   - Reparative actions **MUST** require low effort (**Conductance**).
3. **The Anti-Drama Mandate:** The architecture must not incentivize the "Drama Triangle" (Victim/Persecutor/Rescuer). It must incentivize sovereign negotiation of terrain, supporting **[CARDS](../lib/CARDS.md)** ([Je'anna L Clements](../lib/CARDS.md)):
   - **C**ompetence
   - **A**utonomy
   - **R**elatedness
   - **D**ignity
   - **S**afety

**Operationalization:**
- Cost increases/decreases **MUST** be explainable via provenance (which Fields/Distances/Boundaries contributed to Slope).
- Irreversible or high-cost Actions **MUST** be structurally marked and pre-signaled in UX.
- The system **SHOULD** provide a bounded explanation of "why this cost is high" without leaking occluded content.

---

## Article V. Multi-Partiality
**Aim:** To hold space for multiple valid truths without collapse.

1. **The Epistemological Stance:** No single Perspective (including the Admin) possesses the Total View. Broader access does not imply total knowledge; unknowns remain first-class.
2. **The Right to Occlusion:** We respect the Hidden. Actors have the right to be opaque to one another. The system **MUST** render this opacity as a landscape feature (fog/shadow/boundary), not as a system error.
3. **The Integration of Perspectives:** The truth of the network is the aggregate topology of partial perspectives, sustained in tension, not flattened into forced consensus.

**Operationalization:**
- Occlusion **MUST** be representable as structure (explicit Boundary/Constraint), and MAY include a bounded `reason_code`.
- The system **MUST** be able to answer "Why can't I see this?" with a bounded explanation without violating the occlusion itself.
- Perspective composition **MUST NOT** silently overwrite other Perspectives without emitting explicit transformation Events.

---

## Appendix A: SRII Invariants (v0.1)

These are the named constraints referenced in the Articles above.

1. **Identity Integrity:** Nodes and Relations **MUST** have stable identity across transformations (rename, refactor, rehost). *No silent aliasing.*
2. **Boundary Integrity:** Boundaries (Tenant, Role, Consent Scope) **MUST** be explicit, testable, and resistant to accidental traversal.
3. **Provenance Integrity:** Every meaningful state change **MUST** be attributable to an origin chain (who/what/when/which rule).
   - **Unknown** is a valid value.
   - **Occluded** is a valid value when represented structurally (Boundary/Constraint).
   - **Silent absence** (missing without declaration) is not valid.
4. **Consent Integrity:** Relation formation and use **MUST** be gated by consent scope; this **MUST** be enforced server-side, not just in UI.
5. **Continuity Integrity:** Small changes in input/context **SHOULD NOT** cause disproportionate discontinuities in meaning or effect without explicit marking.
   - Where such discontinuities occur, the system **MUST** mark them as boundary crossings, irreversibility changes, or rule-triggered state shifts.
6. **Irreversibility Marking:** If an Action is irreversible (or costly to reverse), the system **MUST** represent that as a structural property and pre-signal it in UX.
   - `d_time` is a canonical mechanism, but irreversibility may also be represented via Boundary semantics and/or Slope (cost) constraints.

---

**Signed in Intent,**  
*For the construction of the Hyperstrate.*
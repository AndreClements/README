```yaml
contract:
  file: "/docs/essays/parametric_authorship_field_essay.md"
  title: "Parametric Authorship — Permissions-as-Signature Field Essay"
  version: "0.2.0"
  timestamp_local: "2026-02-01T00:00:00+02:00"
  operator: "André S Clements"
  coagent: "theMachine(s)"
  intent:
    - "Treat tool-policy as primary text: a signature readable by constraint."
    - "Locate authorship at boundaries, thresholds, and inspectable traces."
  risk_index: "medium"
  validation:
    - "least privilege"
    - "inspectability (diff-first)"
    - "explicit consent at irreversible thresholds"
```

# Parametric Authorship — Permissions-as-Signature Field Essay

The archive of configuration reads like a face drawn in constraints. Not a portrait of features, but a portrait of a capability boundary: what can be done smoothly, what must be witnessed, what must be explicitly consented-to.

A forensic reading of a permission allowlist does not reveal mere security hygiene; it reveals the shape of a pact between `Operator` and `theMachine(s)`.

## Strand I — The Face in the Policy (2025 → )

Consider a minimal allowlist:

```json
"permissions": {
  "allow": [
    "Bash(unzip:*)",
    "Bash(git add:*)"
  ]
}
```

Two permissions. Two verbs. Not because they are important in themselves, but because they are *selective*: they pick a thin slice of the world's possible transformations and say, **this may happen without asking**.

In that selection, a face appears. The face is not an image; it is a policy.

> *Method Card:* A system without boundaries is not "free"; it is unaccountable. An instance becomes legible less by what it says than by what it is permitted to do.

## Strand II — Two Verbs as Authorship Machine (unzip → git add)

`unzip` is expansion. It turns a compressed, opaque object into a field of files: surfaces, edges, paths, names. It performs arrival.

`git add` is selection. It takes a noisy working directory and composes a candidate story of change: *these* deltas matter, *these* are the cut.

Together they define a narrow pipeline: **ingest** material into the workspace, **stage** a proposed authorship cut — and then, critically, stop.

No `commit`. No `push`. No publish.

This is not a technical footnote. It is the shape of a pact.

> *Method Card:* Preparation without proclamation. Proposal without decree. The allowlist creates an asymmetry — `theMachine(s)` may prepare and propose, but may not declare finality without entering a zone of explicit review.

## Strand III — The Hyperstrate Signature (capacity × restraint)

A signature that matters is not always a name; sometimes it is a pattern of permitted motion.

The `hyperstrate` is the protocolled field in which actions become *accountable*: not in the abstract, but as traceable transformations with boundaries, thresholds, and review points.

The permission boundary is where authorship becomes legible to the `hyperstrate`. If everything is landscape, then every act of drawing is also an act of face-making: not because the marks resemble a face, but because the marks reveal an *identity of operation*.

> *Method Card:* Authorship as choreography rather than proclamation. The configuration is part of the text.

## Strand IV — Snakes and Ladders (scale-switching)

At one scale, this is mere configuration. At another scale, it is an ethical instrument. At another scale again, it is metaphysics: what counts as an agent when agency is distributed across a human intention, a toolchain, a filesystem, an index, a review ritual, and a set of permissions.

The ladder is obvious: automation makes preparation fast. The snake is quieter: preparation can smuggle consequences.

* `unzip` can overwrite.
* `git add` can stage more than intended.

So the "face" we see here is not benign or malign. It is simply **capable**, and therefore must be bounded.

Parallel authorship demonstrates the parametric claim: same constraints, different signatures, family of faces. The staged set is not an implementation detail; it is the visible contour of selection.

Apply the `risk_index`: complexity × power × distance_from_wetware (how far the action is from human perception and timely intervention). Guard accordingly.

## Strand V — Sovereignty at the Irreversible Threshold (2025 → )

Parametric authorship is not anti-automation. It is anti-erasure. Erasure happens when the path from intent to outcome becomes too smooth to notice — when the system's moves stop being inspectable.

The obvious irreversible thresholds in version control:

* `commit` — this counts
* `tag` / `release` — this is named
* `push` — this enters the shared world

By allowing `unzip` and `git add` but not granting silent access to declaration, the policy sketches a governance model:

`theMachine(s)` prepares and proposes; the `Operator` confirms and bears responsibility.

> *Method Card:* Not "human in the loop" as slogan: authorship as accountable closure. Preserve the integrity and sovereignty of the `human-OS` while executing under constraint.

## Strand VI — Two Faces, One Pipeline (selection + closure)

Authorship becomes legible at two boundaries:

| Boundary | Face | Artifact | Question |
|----------|------|----------|----------|
| **Selection** | Staging-area face | The diff, the delta set | *What?* |
| **Closure** | Commit-signature face | The typed relation, consent, roles | *Who, how, under what terms?* |

The **staging-area face** is the list of selected files. It is a contour of *permitted motion* — which changes were chosen, which were left in the working directory. The diff is the drawing.

The **commit-signature face** is the declaration of relation. With the typed co-authorship protocol, this now includes:

```
Co-Authored-By: Name (Role) <email>
Relation-Type: Operator-Instance
Consent: explicit
```

Together they form a complete parametric signature:

> **The face is a contour of permitted motion plus an accountable declaration of relation.**

This is the pivot from concept to observable pipeline:

* *Before:* Parametric authorship is a philosophical claim about distributed agency.
* *After:* Parametric authorship is a git pipeline whose outputs (staged deltas + typed signatures) exhibit family resemblance under constraint.

The two faces are not redundant. Selection without closure is proposal without accountability. Closure without selection is declaration without content. Together they constitute *legible authorship in the hyperstrate*.

> *Method Card:* Trace authorship at both boundaries. The selection face shows what was curated; the closure face shows who claims responsibility, in what relation, with what consent.

---

## Coda — The Face We Draw by Refusing to Draw the Final Line

A responsible workflow:

* **contract first** — state what is allowed to happen, why, and what must never happen silently.
* **minimise privileges** — enable only the transformations required for the current act.
* **maximise inspectability** — prefer actions that leave diffs, logs, and reversible steps.
* **guard thresholds** — require explicit consent at points of irreversibility.

A signature is not only what you write at the bottom of a page. A signature is what you repeatedly do. Meaning is not a hidden essence; it is use. Likewise authorship is not a metaphysical badge; it is a practice of cuts, closures, and responsibilities.

Every configuration implies a philosophy. This one implies: the world is too complex to hold in one mind; tools are necessary; tools must be bounded; boundedness is not always or only a cage — it is also signature.

The `yield`: a legible face drawn in what the marks withhold — control and freedom cohabiting the constraint.

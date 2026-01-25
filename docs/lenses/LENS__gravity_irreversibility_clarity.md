# LENS — Gravity, Irreversibility, and Clarity for NetVerse2

```yaml
---
title: "LENS — Gravity, Irreversibility, and Clarity"
status: "draft"
updated: "2026-01-25"
anchors:
  core_texts:
    - "../../README.md"
    - "../models/philosophy_of_hyperstrate.md"
    - "../../projects/theses/parametric_authorship.md"
  readme_sections: ["§4 reFractoring", "§8 Expected Output"]
context:
  field: "NetVerse2"
  motive: >
    Transpose Hyperstrate field dynamics and Parametric Authorship principles
    into the physics layer of NetVerse2, where word-objects have mass, gravity,
    and irreversible state transitions. Clarity is the design principle;
    contextual global scaling is the mechanism.
invariants_preserved:
  - "Dignity conservation (D non-decreasing)"
  - "Provenance (all state changes traceable)"
  - "Irreversibility marking (SRII invariant 6)"
  - "Withdrawal right (PA axiom A5)"
transposition_rules:
  - "Gravity = legibility, not realism"
  - "Drop = designed transition (Δ★), not invariant"
  - "Scale reduction = execution trace (fourth dimension)"
  - "Global scaling = field health metric"
outputs:
  - "Physics parameter spec (PAF format)"
  - "Object state machine"
  - "Global scaling invariant"
  - "Implementation hooks for Matter.js + PixiJS"
risk_index: 0.35
---
```

---

## Distillation

- **Claim:** Gravity in NetVerse2 is not physics realism; it is **legibility**—a shaping functional that makes object behavior semantically meaningful.
- **Constraint:** Dignity must be conserved; dropped objects retain trace; global scaling must preserve readability floor.
- **Mechanic:** 1g-based shrink around visual mass centre; state machine with ceremony for irreversible transitions.
- **Failure mode:** Objects disappear without trace; readability degrades below floor; irreversible actions happen silently.
- **Test:** (1) Dropped objects have ledger entry; (2) At any zoom, active text ≥ readability_floor_px; (3) REMOVED requires explicit exit() call.

---

## Core Thesis: Gravity as Legibility

> *"The fourth dimension is execution; proof is in invariants and transitions recorded by the page and the ledger."*
> — parametric_authorship.md §12

In NetVerse2, gravity does **semantic labour**:

1. **Direction** — up = held, down = released; this is not arbitrary, it's **felt meaning**
2. **Consequence** — falling expresses commitment, not just motion
3. **Time** — gravity makes time visible (the longer it falls, the further it commits)
4. **Legibility** — without narration, users can read "this object is committed"

**Key claim:** Gravity is a **shaping functional Φ** over the parameter space—it controls sensitivity of object state to user action.

---

## Physics as Parametric Author Function

Following *parametric_authorship.md* §3.2, the physics layer is a PAF:

```
PAF_gravity := <
  S: Matter.js + PixiJS + word-objects,
  P: {mass, friction, drag, position, velocity, scale},
  C: {
    mass_ratio ≤ 1:20,
    sleep_threshold,
    drop_ceremony: true,
    readability_floor: 12px
  },
  E: {
    shared_hosting_limits,
    latency_budget: 100ms,
    maculate_constraints: true
  },
  Φ: ∂(legibility)/∂P
>
```

### Shaping Functional Φ

The shaping functional answers: **how does changing a parameter affect legibility?**

| Parameter | Φ(legibility) | Design Decision |
|-----------|---------------|-----------------|
| `mass` | ↑ mass → ↓ responsiveness → ↑ perceived importance | Mass = semantic weight |
| `friction` | ↑ friction → faster settling → ↑ readability sooner | Default high for clarity |
| `drag` | ↑ drag → less floating → ↑ grounded feel | Quadratic drag preferred |
| `scale` | ↓ scale → object recedes → marks irreversibility | Scale tracks commitment |
| `velocity` | ↑ velocity → object in flux → ↓ stable meaning | Rest = stable meaning |

---

## Object State Machine

Objects transition through states that map to Parametric Authorship terms:

```
HELD → RELEASED → DROPPED → RESTING → REMOVED
```

### State Definitions

| State | PA Term | Reversible? | Shrink? | Agency |
|-------|---------|-------------|---------|--------|
| **HELD** | Active authorship | N/A | No | Full user control |
| **RELEASED** | Parametric drift | Yes | No | Physics governs |
| **DROPPED** | Designed transition (Δ★) | **No** | **Yes** | Threshold crossed |
| **RESTING** | Stable yield | Yes (to HELD) | No | Archived stable |
| **REMOVED** | exit() | **No** | N/A | Ceremony required |

### Transition Rules

```pseudocode
fn transition(object, action):
  match object.state:
    HELD:
      if action == "release": → RELEASED
      if action == "drop": → DROPPED  // requires ceremony

    RELEASED:
      if action == "grab": → HELD
      if velocity < sleep_threshold for N frames: → RESTING
      if action == "drop": → DROPPED  // requires ceremony

    DROPPED:
      // Irreversible — cannot return to HELD or RELEASED
      shrink_active = true
      if scale < s_min: → RESTING (archived at minimum scale)
      if action == "remove": → REMOVED  // requires exit() ceremony

    RESTING:
      if action == "grab": → HELD
      // Cannot be dropped again (already at rest)

    REMOVED:
      // Terminal state — object deleted from field
      // Requires ledger entry with provenance
```

### Ceremony for Irreversible Actions

Following PA axiom A5 ("Withdrawal Right"):

> *"Refusal/exit is a first-class operation; no consent, no extraction."*

The **DROP ceremony** must include:
1. **Visual confirmation** — object highlights, pause before transition
2. **Ledger entry** — records actor, timestamp, object_id, before_state, after_state
3. **Cooldown** — brief delay prevents accidental drops

The **REMOVE ceremony** requires:
1. **Explicit exit() call** — not implicit from any other action
2. **Confirmation dialog** — "This action is irreversible"
3. **Ledger entry with reason** — why was this object removed?

---

## Scale Reduction: The Fourth Dimension Made Visible

> *"Form₄ᴰ := (geometry, material, time, **execution**)"*
> — parametric_authorship.md axiom A2

When an object is DROPPED, its scale reduces around its **visual mass centre**. This is the fourth dimension (execution) made visible—the shrink is the object's **indexical trace**.

### Visual Mass Centre

For text/word objects:

```
VisualMassCentre := centre_of_bounding_box(rendered_glyphs)
```

- Computed once when object is created or text changes
- Stable and deterministic
- All shrink transformations anchor to this point

### Scale Decay Law

Two options (choose per project brief):

**Option A: Exposure-based decay**
```
Per tick (dt seconds):
  v = |velocity| from physics body
  exposure = clamp01(v / v_ref)  // how "active" the fall is
  shrink = k * g * exposure * dt
  scale = max(s_min, scale - shrink)
```

**Option B: Half-life decay (cleaner for tuning)**
```
scale(t) = s₀ * 0.5^(t / t_half)
clamp at s_min
```

### Parameters

| Parameter | Symbol | Default | Purpose |
|-----------|--------|---------|---------|
| Semantic gravity | `g` | 1.0 | Baseline rate |
| Friction | `μ` | 0.8 | Settling speed (high = faster rest) |
| Shrink rate | `k` | 0.02 | Scale loss per gravity-exposure unit |
| Minimum scale | `s_min` | 0.3 | Dignity floor (never zero unless REMOVED) |
| Readability half-life | `t_half` | 5s | Time for scale to halve (if using Option B) |
| Reference velocity | `v_ref` | 100 | Normalisation for exposure calculation |

### Dignity Floor

`s_min` is the **dignity floor**: an object never shrinks below this scale unless explicitly REMOVED via exit() ceremony.

This implements PA axiom A3 ("Dignity Conservation"):
> *"Sovereignty must be conserved across operator, object, and system scopes."*

---

## Global Scaling: Hyperstrate Coherence

> *"Dignity Conservation: The aggregate dignity D_hyperstrate = Σ D_node must remain non-decreasing."*
> — philosophy_of_hyperstrate.md §5

Contextual global scaling ensures the **field remains legible** at all zoom levels.

### GlobalScaleContext

A single authority governs:

```typescript
interface GlobalScaleContext {
  camera_zoom: number;                    // current zoom level
  readability_floor_px: number;           // minimum text height (default: 12px)
  world_density: number;                  // objects per viewport (0..1)
  drop_visibility_policy: "fade" | "shrink" | "both";
  context_layer: number;                  // C₀ → C_L mapping
}
```

### Readability Invariant

At any zoom, for any **active** (non-DROPPED, non-RESTING) object:

```
text_height_px ≥ readability_floor_px
```

If zoom would violate this:
- Option A: Prevent further zoom out
- Option B: Auto-cluster objects into summary nodes
- Option C: Mark objects as "below threshold" with visual indicator

### Context Layers (from Hyperstrate CET)

Zoom levels map to context layers:

| Zoom | Layer | What's visible |
|------|-------|----------------|
| 1.0x | C₀ | Full detail, individual words |
| 0.5x | C₁ | Word clusters, some text readable |
| 0.25x | C₂ | Cluster summaries, layout structure |
| 0.1x | C₃ | Zone overview, colour/density only |

Each layer has its own dignity budget:
```
∑τᵢ ≤ τ_total
```

---

## Implementation Hooks (Matter.js + PixiJS)

### Matter.js Bodies

```javascript
const wordBody = Matter.Bodies.rectangle(x, y, width, height, {
  label: `word_${id}`,
  mass: baseCharMass * text.length,  // semantic weight
  friction: 0.8,                      // high for clarity
  frictionAir: 0.02,                  // quadratic-like drag
  restitution: 0.1,                   // low bounce
  slop: 0.01,
  plugin: {
    wordObject: {
      state: 'RELEASED',
      scale: 1.0,
      visualMassCentre: { x: width/2, y: height/2 },
      provenance: { created_by, created_at, transitions: [] }
    }
  }
});
```

### PixiJS Rendering

```javascript
function renderWord(body, sprite) {
  const plugin = body.plugin.wordObject;

  // Position
  sprite.position.set(body.position.x, body.position.y);
  sprite.rotation = body.angle;

  // Scale (anchored to visual mass centre)
  sprite.pivot.set(plugin.visualMassCentre.x, plugin.visualMassCentre.y);
  sprite.scale.set(plugin.scale);

  // Visual state indicators
  if (plugin.state === 'DROPPED') {
    sprite.alpha = 0.7;  // fading
    sprite.tint = 0xCCCCCC;  // desaturate
  }
  if (plugin.state === 'RESTING') {
    sprite.alpha = 0.5;  // archived
  }
}
```

### State Transition Handler

```javascript
function handleDrop(body, actor) {
  const plugin = body.plugin.wordObject;

  // Ceremony: visual confirmation
  flashHighlight(body, 300);  // 300ms highlight

  // Ceremony: ledger entry
  provenanceLedger.append({
    event_type: 'DROP',
    actor_id: actor.id,
    object_id: body.label,
    before_state: plugin.state,
    after_state: 'DROPPED',
    timestamp: Date.now(),
    reversible: false
  });

  // Transition
  plugin.state = 'DROPPED';
  plugin.shrinkActive = true;
  plugin.transitions.push({ to: 'DROPPED', at: Date.now(), by: actor.id });
}
```

### Physics Loop Integration

```javascript
Matter.Events.on(engine, 'afterUpdate', () => {
  for (const body of world.bodies) {
    const plugin = body.plugin?.wordObject;
    if (!plugin) continue;

    // Sleep detection (RELEASED → RESTING)
    if (plugin.state === 'RELEASED') {
      const speed = Matter.Vector.magnitude(body.velocity);
      if (speed < sleepThreshold) {
        plugin.sleepFrames++;
        if (plugin.sleepFrames > sleepFrameThreshold) {
          transitionToResting(body);
        }
      } else {
        plugin.sleepFrames = 0;
      }
    }

    // Scale decay (DROPPED only)
    if (plugin.state === 'DROPPED' && plugin.shrinkActive) {
      const speed = Matter.Vector.magnitude(body.velocity);
      const exposure = Math.min(1, speed / vRef);
      const shrink = k * g * exposure * dt;
      plugin.scale = Math.max(sMin, plugin.scale - shrink);

      // Stop shrinking at minimum
      if (plugin.scale <= sMin) {
        plugin.shrinkActive = false;
        transitionToResting(body);
      }
    }
  }
});
```

---

## Tests (Perturbation Probes)

Following PA methodology (§4.4):

### 1. Invariance Test: Dignity Floor

```
Given: Object with scale = 0.5
When: Object is DROPPED and shrinks over time
Then: scale never < s_min (0.3)
  AND object transitions to RESTING when s_min reached
  AND ledger records all transitions
```

### 2. Designed Transition Test: Drop Ceremony

```
Given: Object in RELEASED state
When: User triggers DROP action
Then:
  - Visual confirmation appears (highlight)
  - Cooldown period enforced
  - Ledger entry created with reversible=false
  - State transitions to DROPPED
  - Shrink begins from visual mass centre
```

### 3. Global Scaling Invariance

```
Given: Camera at zoom = 1.0 with readable text
When: Camera zooms to 0.25
Then:
  - Active objects remain ≥ readability_floor_px
  - OR objects are clustered/summarised
  - OR zoom is prevented
```

### 4. Provenance Completeness

```
Given: Object created, manipulated, dropped, archived
When: Querying provenance ledger
Then: Every state transition is recorded with:
  - actor_id
  - timestamp
  - before_state
  - after_state
  - reversible flag
```

### 5. Exit Ceremony

```
Given: Object in any state
When: User triggers REMOVE action
Then:
  - Confirmation dialog appears
  - Ledger entry created with event_type='REMOVE'
  - Object is deleted from world
  - No orphaned references remain
```

---

## Cross-links

### README.md
- **§4 reFractoring** — This lens is a refract of physics principles into semantic/axiological space
- **§8 Expected Output** — Objects `yield` their state over time; the generator semantics apply to the physics loop

### philosophy_of_hyperstrate.md
- **§5 Dignity Conservation** — Global scaling maintains D_hyperstrate non-decreasing
- **§5.1 CET** — Zoom levels map to context layers; each has a maculation budget

### parametric_authorship.md
- **§2.5 Axioms A2, A3, A5** — Execution as fourth dimension; dignity conservation; withdrawal right
- **§3.2 PAF** — Physics parameters form an authored tuple
- **§3.4 Dignity Tensor** — s_min is the object-level dignity floor

### srii__contract_of_aims.md
- **Invariant 6: Irreversibility Marking** — DROP is structurally marked as irreversible
- **Article IV: Parametric Authorship** — Governance via physics, not policing

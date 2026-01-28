`docs\models\SRII_INVARIANTS_TO_MECHANISMS.md`
# SRII Invariants to Mechanisms
## Where Philosophy Becomes Debuggable

```yaml
contract:
  intent: >
    Map each SRII invariant to concrete implementation mechanisms.
    Make the abstract testable. Make the ethical compilable.
    If you can't write a test for it, it's not an invariant—it's a wish.
  scope:
    - invariant definition (tight)
    - mechanism options (how to implement)
    - data structures (what to store)
    - tests (how to verify)
    - NetVerse hooks (concrete implementation)
  assumptions:
    - "the fourth dimension is execution" — proof is in runs, not statements
    - mechanisms should feel like physics, not policy
    - every invariant should have at least one test that can fail
  anchors:
    readme: "../../README.md"
    srii_framework: "SRII_AXIOLOGICAL_FRAMEWORK.md"
    contract_of_aims: "srii__contract_of_aims.md"
    parametric_authorship: "../../projects/theses/parametric_authorship.md"
risk_index: 0.35
```

---

> *"If a system 'obeys SRII', it should be testable."*
> — CONSTELLATION_ANALYSIS.md §3.1

This document is the test suite.

---

## The Six Invariants (Quick Reference)

| # | Invariant | One-Liner |
|---|-----------|-----------|
| 1 | **Identity** | Things stay themselves across time and transformation |
| 2 | **Boundary** | Edges are explicit, testable, and enforceable |
| 3 | **Provenance** | Every state change has an auditable origin |
| 4 | **Consent** | Relationships require permission, not assumption |
| 5 | **Continuity** | Small inputs don't cause disproportionate outputs |
| 6 | **Irreversibility** | Permanent actions are marked and ceremonial |

**The adoption ladder:** L1 (Identity) → L2 (+Boundary) → L3 (+Provenance) → L4 (+Consent) → L5 (+Continuity) → L6 (+Irreversibility)

---

## Invariant 1: Identity Integrity

### Definition

> An object's identity must remain stable across transformations unless explicitly declared otherwise. `id(t) == id(t+1)` is the default; any change requires a **Δ★ declaration**.

### Why It Matters

Identity is the substrate of trust. If I can't be sure that the "you" I'm talking to now is the same "you" from yesterday, I can't build on our history. Identity drift is how systems gaslight their users.

### Mechanisms

| Mechanism | Description | Complexity |
|-----------|-------------|------------|
| **UUID assignment** | Every object gets a globally unique ID at creation | Low |
| **Immutable ID field** | The ID field cannot be updated, only read | Low |
| **ID versioning** | ID includes version: `{base_id}@{version}` | Medium |
| **Identity ledger** | All ID assignments logged with timestamp and creator | Medium |
| **Cryptographic binding** | ID is hash of content + creator + timestamp | High |

### Data Structure

```typescript
interface IdentityRecord {
  id: UUID;                          // Immutable after creation
  created_at: Timestamp;
  created_by: ActorID;
  version: number;                   // Increments on significant change
  previous_version_id?: UUID;        // For tracking lineage
  identity_type: 'stable' | 'ephemeral' | 'alias';
}
```

### Tests

```pseudocode
test "identity persists across save/load cycle":
  obj = create_object()
  id_before = obj.id
  save(obj)
  loaded_obj = load(obj.id)
  assert loaded_obj.id == id_before

test "identity persists across transformation":
  word = create_word("hello")
  id_before = word.id
  word.move(100, 200)
  word.resize(2.0)
  assert word.id == id_before

test "identity change requires explicit declaration":
  obj = create_object()
  assert_throws(() => obj.id = new_uuid())  // Should fail

  // Proper way:
  new_obj = fork_with_new_identity(obj, reason: "user requested split")
  assert new_obj.id != obj.id
  assert ledger.contains({
    type: 'IDENTITY_FORK',
    source: obj.id,
    target: new_obj.id
  })
```

### NetVerse Hook

```javascript
class WordObject {
  constructor(text, creator) {
    this.id = crypto.randomUUID();  // Immutable
    Object.freeze(this.id);         // Extra paranoia

    this._identity = {
      created_at: Date.now(),
      created_by: creator.id,
      version: 1,
      lineage: []
    };
  }

  // ID is read-only
  get id() { return this._id; }

  // Version increments on significant changes, ID stays same
  significantChange(reason) {
    this._identity.version++;
    this._identity.lineage.push({
      version: this._identity.version,
      reason,
      timestamp: Date.now()
    });
  }
}
```

---

## Invariant 2: Boundary Integrity

### Definition

> Every object has explicit, testable boundaries. Boundaries define what's "inside" vs "outside", what can cross, and under what conditions. Boundaries that can't be queried are not boundaries—they're vibes.

### Why It Matters

Boundaries are how we prevent "spooky action at a distance." If I don't know where you end and I begin, neither do our bugs. Boundaries make containment possible and debugging tractable.

### Mechanisms

| Mechanism | Description | Complexity |
|-----------|-------------|------------|
| **Geometric bounds** | Physical containment (bounding box, zone membership) | Low |
| **ACL (Access Control List)** | Explicit permission lists per object | Medium |
| **Capability tokens** | Access requires presenting a valid capability | Medium |
| **Membrane pattern** | Objects wrapped in proxies that enforce boundaries | High |
| **Type boundaries** | Strong typing prevents category errors | Low-Medium |

### Data Structure

```typescript
interface BoundaryRecord {
  object_id: UUID;
  boundary_type: 'spatial' | 'permission' | 'semantic' | 'temporal';

  // Spatial boundaries
  spatial?: {
    bounding_box: { x: number, y: number, width: number, height: number };
    zone_membership: ZoneID[];
    containment_parent?: UUID;
  };

  // Permission boundaries
  permissions?: {
    read: ActorID[] | 'public' | 'owner_only';
    write: ActorID[] | 'public' | 'owner_only';
    delete: ActorID[] | 'owner_only';
    transfer: boolean;
  };

  // Testability requirement
  test_function: () => BoundaryTestResult;
}

interface BoundaryTestResult {
  valid: boolean;
  violations: BoundaryViolation[];
}
```

### Tests

```pseudocode
test "spatial boundaries are queryable":
  zone = create_zone(bounds: {x:0, y:0, width:100, height:100})
  word = create_word_at(50, 50)

  assert zone.contains(word) == true
  assert word.get_containing_zones() includes zone

test "permission boundaries are enforceable":
  word = create_word(owner: alice)
  word.permissions.write = ['alice']

  assert_succeeds(() => word.move_by(alice, 10, 10))
  assert_throws(() => word.move_by(bob, 10, 10))

test "boundary changes are logged":
  word = create_word()
  word.set_permission('write', ['alice', 'bob'])

  assert ledger.contains({
    type: 'BOUNDARY_CHANGE',
    object_id: word.id,
    change: { field: 'permissions.write', new_value: ['alice', 'bob'] }
  })
```

### NetVerse Hook

```javascript
class Zone {
  constructor(bounds, owner) {
    this.id = crypto.randomUUID();
    this.bounds = bounds;
    this.owner = owner;
    this.permissions = {
      enter: 'public',      // Who can place words here
      modify: [owner.id],   // Who can move words here
      delete: [owner.id]    // Who can remove words
    };
  }

  contains(point) {
    return point.x >= this.bounds.x
        && point.x <= this.bounds.x + this.bounds.width
        && point.y >= this.bounds.y
        && point.y <= this.bounds.y + this.bounds.height;
  }

  canActorPerform(actor, action) {
    const allowed = this.permissions[action];
    if (allowed === 'public') return true;
    if (Array.isArray(allowed)) return allowed.includes(actor.id);
    return false;
  }

  // Boundary test (required by SRII)
  testBoundary() {
    const violations = [];

    // Check all contained objects are actually inside bounds
    for (const obj of this.contents) {
      if (!this.contains(obj.position)) {
        violations.push({
          type: 'SPATIAL_VIOLATION',
          object: obj.id,
          message: 'Object position outside zone bounds'
        });
      }
    }

    return { valid: violations.length === 0, violations };
  }
}
```

---

## Invariant 3: Provenance Integrity

### Definition

> Every state change must be attributable to an origin chain. The question "how did we get here?" must always have an answer. Provenance is not optional logging—it's the substrate of trust and debugging.

### Why It Matters

> *"The fourth dimension is execution; proof is in invariants and transitions recorded by the page and the ledger."*
> — parametric_authorship.md §12

Provenance is the indexical trace. Without it, you have amnesia disguised as simplicity.

### Mechanisms

| Mechanism | Description | Complexity |
|-----------|-------------|------------|
| **Event sourcing** | Store events, derive state; history is first-class | High |
| **Audit log** | Append-only log of significant actions | Medium |
| **State hashing** | Each state includes hash of previous state | Medium |
| **Actor attribution** | Every change tagged with who/what caused it | Low |
| **Causal ordering** | Events ordered by causality, not just time | High |

### Data Structure

```typescript
interface ProvenanceEvent {
  event_id: UUID;
  timestamp: Timestamp;

  // Who caused this?
  actor: {
    id: ActorID;
    type: 'human' | 'ci' | 'system' | 'scheduled';
    session_id?: string;
  };

  // What happened?
  action: {
    type: string;  // 'CREATE' | 'UPDATE' | 'DELETE' | 'MOVE' | etc.
    target_id: UUID;
    target_type: string;
  };

  // State change
  delta: {
    before_hash: string;
    after_hash: string;
    fields_changed: string[];
    payload?: any;  // Actual changes if needed
  };

  // Context
  context: {
    parent_event_id?: UUID;  // What triggered this?
    consent_id?: UUID;       // Under what consent?
    reason?: string;         // Why?
  };

  // Tamper resistance
  signature?: string;  // For high-security contexts
}
```

### Tests

```pseudocode
test "every state change has provenance":
  word = create_word("hello")
  word.move(100, 200)
  word.update_text("goodbye")

  history = get_provenance(word.id)

  assert history.length == 3  // create, move, update
  assert history.every(e => e.actor != null)
  assert history.every(e => e.timestamp != null)

test "provenance chain is unbroken":
  word = create_word("test")

  for i in 1..10:
    word.move(random(), random())

  history = get_provenance(word.id)

  // Each event (except first) should reference previous
  for i in 1..history.length:
    if history[i].context.parent_event_id:
      assert history[i].context.parent_event_id == history[i-1].event_id

test "state can be reconstructed from provenance":
  word = create_word("hello")
  word.move(50, 50)
  word.update_text("world")

  final_state = word.get_state()

  // Replay from genesis
  reconstructed = replay_provenance(word.id)

  assert reconstructed == final_state
```

### NetVerse Hook

```javascript
class ProvenanceLedger {
  constructor() {
    this.events = [];  // In production: persistent store
  }

  record(event) {
    const enriched = {
      ...event,
      event_id: crypto.randomUUID(),
      timestamp: Date.now(),
      delta: {
        ...event.delta,
        before_hash: this.getLatestHash(event.action.target_id),
        after_hash: this.computeHash(event)
      }
    };

    this.events.push(enriched);
    return enriched;
  }

  getProvenance(objectId) {
    return this.events
      .filter(e => e.action.target_id === objectId)
      .sort((a, b) => a.timestamp - b.timestamp);
  }

  // The "who did this?" function
  whoDidThis(objectId, fieldName) {
    const history = this.getProvenance(objectId);
    const relevant = history.filter(e =>
      e.delta.fields_changed.includes(fieldName)
    );
    return relevant.length > 0
      ? relevant[relevant.length - 1].actor
      : null;
  }
}

// Usage in WordObject
class WordObject {
  move(actor, x, y) {
    const oldPos = { x: this.x, y: this.y };
    this.x = x;
    this.y = y;

    ledger.record({
      actor: { id: actor.id, type: actor.type },
      action: { type: 'MOVE', target_id: this.id, target_type: 'word' },
      delta: {
        fields_changed: ['x', 'y'],
        payload: { from: oldPos, to: { x, y } }
      },
      context: { reason: 'user_drag' }
    });
  }
}
```

---

## Invariant 4: Consent Integrity

### Definition

> Relationships between objects (and between actors and objects) must be gated by consent. Consent is a state machine, not a checkbox. "Implicit consent" is an oxymoron—make it explicit or don't claim it.

### Why It Matters

Consent is the ethical membrane that prevents systems from becoming coercive. If I didn't say yes, the answer is no. If I said yes once, that doesn't mean forever.

### Mechanisms

| Mechanism | Description | Complexity |
|-----------|-------------|------------|
| **Consent tokens** | Explicit tokens that grant specific permissions for specific durations | Medium |
| **State machine** | Consent has states: `none → requested → granted → revoked` | Medium |
| **Scope limiting** | Consent is scoped to specific actions, not blanket access | Medium |
| **Expiry** | Consent decays; renewal is explicit | Medium |
| **Revocation** | "No" is always possible and always honored | Low |

### Data Structure

```typescript
interface ConsentRecord {
  consent_id: UUID;

  // Parties
  grantor: ActorID;        // Who gave consent
  grantee: ActorID;        // Who received consent

  // What's consented to
  scope: {
    actions: string[];     // ['read', 'move', 'modify']
    targets: UUID[];       // Specific objects, or ['*'] for all
    context?: string;      // 'in_zone_X', 'during_session', etc.
  };

  // Lifecycle
  state: 'requested' | 'granted' | 'revoked' | 'expired';
  created_at: Timestamp;
  granted_at?: Timestamp;
  expires_at?: Timestamp;
  revoked_at?: Timestamp;
  revocation_reason?: string;

  // Audit
  state_history: Array<{
    from_state: string;
    to_state: string;
    timestamp: Timestamp;
    reason: string;
  }>;
}
```

### Tests

```pseudocode
test "action without consent fails":
  alice_word = create_word(owner: alice)

  assert_throws(() => bob.move(alice_word, 100, 100))
  // Error: NO_CONSENT

test "consent enables action":
  alice_word = create_word(owner: alice)
  consent = alice.grant_consent(
    to: bob,
    actions: ['move'],
    targets: [alice_word.id]
  )

  assert_succeeds(() => bob.move(alice_word, 100, 100))

test "revoked consent disables action":
  alice_word = create_word(owner: alice)
  consent = alice.grant_consent(to: bob, actions: ['move'], targets: [alice_word.id])

  bob.move(alice_word, 100, 100)  // Works

  alice.revoke_consent(consent.id)

  assert_throws(() => bob.move(alice_word, 200, 200))
  // Error: CONSENT_REVOKED

test "expired consent disables action":
  alice_word = create_word(owner: alice)
  consent = alice.grant_consent(
    to: bob,
    actions: ['move'],
    targets: [alice_word.id],
    expires_in: 1000  // 1 second
  )

  sleep(2000)  // Wait for expiry

  assert_throws(() => bob.move(alice_word, 100, 100))
  // Error: CONSENT_EXPIRED
```

### NetVerse Hook

```javascript
class ConsentManager {
  constructor() {
    this.consents = new Map();  // consent_id -> ConsentRecord
  }

  request(grantor, grantee, scope) {
    const consent = {
      consent_id: crypto.randomUUID(),
      grantor: grantor.id,
      grantee: grantee.id,
      scope,
      state: 'requested',
      created_at: Date.now(),
      state_history: [{
        from_state: null,
        to_state: 'requested',
        timestamp: Date.now(),
        reason: 'initial_request'
      }]
    };
    this.consents.set(consent.consent_id, consent);
    return consent;
  }

  grant(consentId, grantorId) {
    const consent = this.consents.get(consentId);
    if (consent.grantor !== grantorId) throw new Error('NOT_GRANTOR');
    if (consent.state !== 'requested') throw new Error('INVALID_STATE');

    consent.state = 'granted';
    consent.granted_at = Date.now();
    consent.state_history.push({
      from_state: 'requested',
      to_state: 'granted',
      timestamp: Date.now(),
      reason: 'grantor_approved'
    });

    return consent;
  }

  check(granteeId, action, targetId) {
    for (const consent of this.consents.values()) {
      if (consent.grantee !== granteeId) continue;
      if (consent.state !== 'granted') continue;
      if (consent.expires_at && Date.now() > consent.expires_at) continue;
      if (!consent.scope.actions.includes(action)) continue;
      if (!consent.scope.targets.includes(targetId) &&
          !consent.scope.targets.includes('*')) continue;

      return true;  // Valid consent found
    }
    return false;
  }
}

// Usage
const consentManager = new ConsentManager();

class WordObject {
  move(actor, x, y) {
    // Owner always has consent
    if (actor.id !== this.owner) {
      if (!consentManager.check(actor.id, 'move', this.id)) {
        throw new Error('NO_CONSENT');
      }
    }

    // ... perform move
  }
}
```

---

## Invariant 5: Continuity Integrity

### Definition

> Small input changes should not cause disproportionate output changes, unless explicitly declared. The system should be "locally continuous"—no surprise cliffs, no hidden bifurcations. `|Δoutput| ≤ k·|Δinput|` unless a **Δ★** is declared.

### Why It Matters

Continuity is predictability. If nudging a parameter by 1% changes everything by 100%, the system is chaotic and untestable. Designed transitions (Δ★) are allowed, but they must be declared—no hidden trapdoors.

### Mechanisms

| Mechanism | Description | Complexity |
|-----------|-------------|------------|
| **Lipschitz bounds** | Mathematically constrain output sensitivity | High |
| **Rate limiting** | Cap the rate of change per time unit | Low |
| **Smoothing** | Interpolate changes over time | Medium |
| **Transition declarations** | Mark "cliffs" explicitly as Δ★ | Low |
| **Rollback capability** | If discontinuity detected, revert | Medium |

### Data Structure

```typescript
interface ContinuityConfig {
  // Maximum allowed ratio of output change to input change
  lipschitz_bound: number;  // e.g., 10.0 means 10x amplification max

  // For detecting violations
  monitoring: {
    track_fields: string[];
    sample_rate_ms: number;
    alert_threshold: number;
  };

  // Declared discontinuities (allowed cliffs)
  declared_transitions: Array<{
    name: string;
    trigger_condition: string;
    expected_magnitude: 'small' | 'medium' | 'large' | 'total';
  }>;
}

interface ContinuityViolation {
  timestamp: Timestamp;
  input_delta: number;
  output_delta: number;
  ratio: number;
  was_declared: boolean;
  field: string;
}
```

### Tests

```pseudocode
test "small position changes produce small visual changes":
  word = create_word_at(100, 100)

  for delta in [1, 2, 5, 10]:
    before_visual = render(word)
    word.move(word.x + delta, word.y)
    after_visual = render(word)

    visual_change = measure_visual_difference(before_visual, after_visual)

    // Visual change should be proportional to position change
    assert visual_change <= delta * MAX_VISUAL_SENSITIVITY

test "physics parameters have bounded effects":
  word = create_word()

  // Perturb friction by small amount
  old_friction = word.friction
  word.friction = old_friction * 1.01  // 1% change

  // Simulate for fixed time
  trajectory_before = simulate(word, old_friction, time: 5)
  trajectory_after = simulate(word, word.friction, time: 5)

  // Final positions should be within bounded difference
  position_diff = distance(trajectory_before.final, trajectory_after.final)
  assert position_diff <= CONTINUITY_BOUND * 0.01 * trajectory_length

test "declared transitions are allowed to be discontinuous":
  word = create_word(state: 'RELEASED')

  // This is a declared Δ★
  word.drop()  // State change to 'DROPPED'

  // Discontinuity is allowed because it's declared
  assert word.state == 'DROPPED'
  assert word.shrinking == true
  // No continuity violation logged
```

### NetVerse Hook

```javascript
class ContinuityMonitor {
  constructor(config) {
    this.config = config;
    this.history = new Map();  // object_id -> recent states
  }

  track(objectId, fieldName, newValue) {
    const key = `${objectId}:${fieldName}`;
    const history = this.history.get(key) || [];

    if (history.length > 0) {
      const lastValue = history[history.length - 1].value;
      const delta = Math.abs(newValue - lastValue);
      const inputDelta = 1;  // Assuming single-step change
      const ratio = delta / inputDelta;

      if (ratio > this.config.lipschitz_bound) {
        // Check if this is a declared transition
        const isDeclared = this.isDeclaredTransition(objectId, fieldName, delta);

        if (!isDeclared) {
          this.reportViolation({
            object_id: objectId,
            field: fieldName,
            input_delta: inputDelta,
            output_delta: delta,
            ratio,
            was_declared: false
          });
        }
      }
    }

    history.push({ value: newValue, timestamp: Date.now() });
    if (history.length > 100) history.shift();  // Keep bounded
    this.history.set(key, history);
  }

  isDeclaredTransition(objectId, fieldName, delta) {
    // Check against declared Δ★ list
    return this.config.declared_transitions.some(t =>
      t.field === fieldName && delta <= t.max_magnitude
    );
  }
}

// Physics with continuity awareness
class PhysicsEngine {
  constructor() {
    this.continuityMonitor = new ContinuityMonitor({
      lipschitz_bound: 10,
      declared_transitions: [
        { name: 'DROP', field: 'state', max_magnitude: Infinity },
        { name: 'DROP', field: 'shrink_rate', max_magnitude: Infinity }
      ]
    });
  }

  update(object, dt) {
    const oldPos = { x: object.x, y: object.y };

    // Apply physics
    object.velocity.y += GRAVITY * dt;
    object.x += object.velocity.x * dt;
    object.y += object.velocity.y * dt;

    // Track for continuity
    this.continuityMonitor.track(object.id, 'x', object.x);
    this.continuityMonitor.track(object.id, 'y', object.y);
  }
}
```

---

## Invariant 6: Irreversibility Marking

### Definition

> Actions that are costly or irreversible must be structurally marked as such. No silent point-of-no-return. If crossing the river, the user should see the river, feel the current, and have a moment to reconsider.

### Why It Matters

> *"Irreversibility must feel like crossing a river, not clicking a link."*
> — methodology__axiology_first_aesthetics.md

This is the "ceremony" invariant. Some actions can't be undone—delete, publish, burn. Those actions need structural treatment: confirmation, cooldown, witnessing.

### Mechanisms

| Mechanism | Description | Complexity |
|-----------|-------------|------------|
| **Explicit flag** | `irreversible: true` in action schema | Low |
| **Confirmation dialog** | UI requires explicit "I understand" | Low |
| **Cooldown period** | Action requires waiting time before executing | Medium |
| **Witnessing** | Irreversible actions require a second actor | Medium |
| **Ceremony UX** | Visual/interaction weight proportional to consequence | Medium |

### Data Structure

```typescript
interface IrreversibleAction {
  action_type: string;

  // Marking
  irreversible: true;  // Explicit flag
  severity: 'low' | 'medium' | 'high' | 'critical';

  // Requirements before execution
  requirements: {
    confirmation: boolean;
    cooldown_seconds?: number;
    witness_required?: boolean;
    reason_required?: boolean;
  };

  // Logging (enhanced for irreversible)
  provenance: {
    actor_id: ActorID;
    timestamp: Timestamp;
    confirmation_timestamp?: Timestamp;
    witness_id?: ActorID;
    reason: string;
    client_state_hash?: string;  // What did the user see?
  };
}
```

### Tests

```pseudocode
test "irreversible actions require confirmation":
  word = create_word()

  // Without confirmation, should fail
  assert_throws(() => word.burn())
  // Error: CONFIRMATION_REQUIRED

test "irreversible actions have cooldown":
  word = create_word()

  request = word.request_burn(reason: "cleanup")

  // Immediate execution fails
  assert_throws(() => request.execute())
  // Error: COOLDOWN_NOT_ELAPSED

  sleep(BURN_COOLDOWN_SECONDS * 1000)

  // After cooldown, succeeds
  assert_succeeds(() => request.execute())

test "irreversible actions are logged with enhanced provenance":
  word = create_word()
  word.request_burn(reason: "cleanup")
  sleep(COOLDOWN)
  word.execute_burn()

  log = get_provenance(word.id)
  burn_event = log.find(e => e.action.type == 'BURN')

  assert burn_event.irreversible == true
  assert burn_event.provenance.reason != null
  assert burn_event.provenance.confirmation_timestamp != null
```

### NetVerse Hook

```javascript
class IrreversibleActionManager {
  constructor() {
    this.pendingActions = new Map();
  }

  request(actor, action, target, options) {
    const config = IRREVERSIBLE_ACTIONS[action];
    if (!config) throw new Error('NOT_IRREVERSIBLE');

    const request = {
      request_id: crypto.randomUUID(),
      actor_id: actor.id,
      action,
      target_id: target.id,
      reason: options.reason,
      requested_at: Date.now(),
      cooldown_ends_at: Date.now() + (config.cooldown_seconds * 1000),
      confirmed: false,
      witness_id: null,
      state: 'pending'
    };

    this.pendingActions.set(request.request_id, request);
    return request;
  }

  confirm(requestId, actorId) {
    const request = this.pendingActions.get(requestId);
    if (request.actor_id !== actorId) throw new Error('NOT_REQUESTER');

    request.confirmed = true;
    request.confirmed_at = Date.now();
    return request;
  }

  execute(requestId, actorId) {
    const request = this.pendingActions.get(requestId);

    // Validations
    if (request.actor_id !== actorId) throw new Error('NOT_REQUESTER');
    if (!request.confirmed) throw new Error('NOT_CONFIRMED');
    if (Date.now() < request.cooldown_ends_at) throw new Error('COOLDOWN_ACTIVE');

    const config = IRREVERSIBLE_ACTIONS[request.action];
    if (config.witness_required && !request.witness_id) {
      throw new Error('WITNESS_REQUIRED');
    }

    // Execute the action
    const result = this.performIrreversibleAction(request);

    // Enhanced logging
    ledger.record({
      actor: { id: actorId },
      action: { type: request.action, target_id: request.target_id },
      irreversible: true,
      provenance: {
        reason: request.reason,
        requested_at: request.requested_at,
        confirmed_at: request.confirmed_at,
        executed_at: Date.now(),
        witness_id: request.witness_id
      }
    });

    request.state = 'executed';
    return result;
  }
}

const IRREVERSIBLE_ACTIONS = {
  'BURN': {
    cooldown_seconds: 5,
    confirmation: true,
    witness_required: false,
    ceremony: {
      visual: 'flame_animation',
      duration_ms: 1000,
      sound: 'paper_burn'
    }
  },
  'PUBLISH': {
    cooldown_seconds: 10,
    confirmation: true,
    witness_required: false,
    ceremony: {
      visual: 'broadcast_ripple',
      duration_ms: 2000,
      sound: 'chime'
    }
  },
  'DELETE_ZONE': {
    cooldown_seconds: 30,
    confirmation: true,
    witness_required: true,  // High severity = witness
    ceremony: {
      visual: 'zone_collapse',
      duration_ms: 3000,
      sound: 'destruction_rumble'
    }
  }
};
```

---

## Summary: The Implementation Checklist

For SRII compliance at each level:

### L1: Identity
- [ ] All objects have stable UUIDs
- [ ] ID field is immutable
- [ ] ID changes require explicit declaration

### L2: Identity + Boundary
- [ ] All objects have queryable boundaries
- [ ] Boundary violations are detectable
- [ ] Permissions are explicit, not implied

### L3: Identity + Boundary + Provenance
- [ ] All state changes are logged
- [ ] Logs include actor, timestamp, delta
- [ ] State is reconstructible from log

### L4: Identity + Boundary + Provenance + Consent
- [ ] Actions on others' objects require consent
- [ ] Consent has states (requested → granted → revoked)
- [ ] Revocation is always possible

### L5: ...+ Continuity
- [ ] Sensitivity bounds are defined
- [ ] Discontinuities are declared as Δ★
- [ ] Violations are detectable

### L6: ...+ Irreversibility
- [ ] Irreversible actions are marked
- [ ] Confirmation/cooldown mechanisms exist
- [ ] Enhanced logging for irreversible events

---

## Cross-links

- **README.md** — §8 Generator semantics (yield, not return)
- **srii__contract_of_aims.md** — Source definitions for invariants
- **SRII_CARDS_CASES.md** — Complementary case law for values
- **CONSTELLATION_ANALYSIS.md** — §7.1 SRII-Lite adoption ladder
- **parametric_authorship.md** — Dignity tensor, Sovereign Interface
- **LENS__gravity_irreversibility_clarity.md** — NetVerse implementation of these mechanisms

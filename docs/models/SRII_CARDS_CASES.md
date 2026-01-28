`docs\models\SRII_CARDS_CASES.md`
# SRII CARDS Case Law
## When Values Meet the Concrete (and the Concrete Bites Back)

> **Attribution:** The CARDS framework (Competence, Autonomy, Relatedness, Dignity, Safety) is a construct developed by **Je'anna L Clements**, extending Self-Determination Theory's CAR triad. This document applies her framework as "case law" for system design. Source: [`../lib/CARDS.md`](../lib/CARDS.md)

```yaml
contract:
  intent: >
    Provide worked examples ("case law") for each CARDS axis.
    Convert constitutional values into pattern recognition.
    Make the abstract actionable, the theoretical testable, the philosophical debuggable.
  scope:
    - definition (tight, memorable)
    - failure modes (how it breaks)
    - system signals (what to watch)
    - mitigation patterns (what to do)
    - NetVerse example (pressure test)
    - non-NetVerse example (transferability)
  assumptions:
    - a constitution without case law is a vibe, not a system
    - "dignity" is meaningless until you've watched it fail
    - examples teach faster than axioms
  anchors:
    readme: "../../README.md"
    srii_framework: "SRII_AXIOLOGICAL_FRAMEWORK.md"
    parametric_authorship: "../../projects/theses/parametric_authorship.md"
risk_index: 0.30
```

---

> *"Right now it reads more like a constitution with high legitimacy than a constitution with case law."*
> — CONSTELLATION_ANALYSIS.md §3.2

This document is the case law.

---

## How to Use This Document

Each CARDS axis gets:
1. **Definition** — One paragraph, tight enough to tattoo
2. **Failure Modes** — How it breaks (the diagnostic)
3. **System Signals** — What to watch for (the early warning)
4. **Mitigation Patterns** — What to do about it (the remedy)
5. **NetVerse Example** — Pressure-tested in the word-object petri dish
6. **Non-NetVerse Example** — Proof of transferability

**The goal:** When you see a CARDS violation, you should feel it like a type error.

---

## C — Competence

### Definition

**Competence** is the system's commitment to making users more capable, not more confused. The interaction should leave the user understanding more than when they started—about the tool, about the domain, about themselves. If the system makes you dumber to use it, the system is stealing from you.

> *"What does the user become more capable of after using this?"*

### Failure Modes

| Mode | Description | Severity |
|------|-------------|----------|
| **Dark Convenience** | System does things "for you" without teaching you anything; creates learned helplessness | High |
| **Confusion Budget Theft** | Complexity exists to serve the system, not the user; unnecessary cognitive load | Medium |
| **Black Box Oracle** | "Trust us, it works" without explanation; competence doesn't transfer | High |
| **Skill Ceiling Trap** | Easy to start, impossible to master; the middle is a cliff | Medium |
| **Jargon Moat** | Expertise gatekept by vocabulary, not genuine complexity | Low-Medium |

### System Signals

- User asks "why did that happen?" more than once per session
- Help documentation is longer than the feature it explains
- "Power users" and "regular users" are treated as different species
- The undo function is the most-used feature
- Users develop superstitions about the system ("don't click there twice")

### Mitigation Patterns

1. **Progressive Disclosure** — Show complexity when it's needed, not before
2. **Transparent Mechanics** — Make the "why" visible alongside the "what"
3. **Recoverable Errors** — Mistakes should teach, not punish
4. **Consistent Mental Models** — One metaphor, applied everywhere
5. **Competence Gradients** — Clear paths from novice to expert

### NetVerse Example

**Violation:** Word-objects have hidden physics properties that users can't inspect. Words behave differently based on invisible state.

**Fix:** Every word-object shows its physics profile on hover: mass, friction, velocity. Users learn the physics by playing. The system doesn't just *have* physics; it *teaches* physics.

**Test:** After 10 minutes of play, can a user predict where a flicked word will land? If no, competence is violated.

### Non-NetVerse Example

**Context:** A CI writing assistant

**Violation:** The assistant rewrites user text without showing what changed or why. The user gets "better" text but learns nothing about writing.

**Fix:** Show diff view. Annotate changes with brief rationales. Let users accept/reject per-change. The assistant becomes a *tutor*, not a ghost-writer.

**Test:** After using the tool for a month, is the user's unassisted writing measurably better? If no, the tool is extracting competence, not building it.

---

## A — Autonomy

### Definition

**Autonomy** is the system's respect for user agency: the right to choose, to pace, to refuse, to exit. Real choices, not coerced funnels. Real exits, not social punishments. The user is a sovereign operator passing through, not a resource to be converted.

> *"Can the user slow down, pause, or exit without penalty?"*

### Failure Modes

| Mode | Description | Severity |
|------|-------------|----------|
| **Coercive Funnel** | "Choice" is an illusion; all paths lead to the desired conversion | Critical |
| **Exit Punishment** | Leaving costs something: data, reputation, sunk effort | High |
| **Pace Pressure** | Timers, urgency cues, FOMO mechanics that override deliberation | High |
| **Default Manipulation** | Opt-out design where consent is assumed, not granted | Medium |
| **Dependency Lock** | The more you use it, the harder it is to leave | High |

### System Signals

- "Are you sure?" dialogs that don't respect the answer
- Countdown timers on decisions
- "You'll lose everything if you leave" warnings
- Newsletter opt-ins pre-checked
- Exported data that's unusable elsewhere

### Mitigation Patterns

1. **Real Exits** — Leaving should be as easy as joining
2. **Honest Defaults** — If we'd be embarrassed by the default, change it
3. **Pace Respect** — Let users set their own rhythm
4. **Data Portability** — What you created, you can take
5. **Refusal as Feature** — "No" is a valid input at every step

### NetVerse Example

**Violation:** Once a user places a word in a zone, they can't remove it without "approval" from the zone owner. They're stuck.

**Fix:** Users can always remove their own contributions. "Ownership" is about visibility and placement priority, not imprisonment. Exit is first-class.

**Test:** Can a user delete all their contributions and leave in under 60 seconds? If no, autonomy is violated.

### Non-NetVerse Example

**Context:** A social media platform

**Violation:** Deleting your account requires navigating 7 screens, waiting 30 days, and losing all your data with no export option. The platform treats departure as betrayal.

**Fix:** One-click deactivation. Immediate data export. 30-day grace period *with easy reactivation*, not as a cooling-off period designed to make you reconsider.

**Test:** Do users feel *free* using this platform, or *trapped*? Survey the leavers, not the stayers.

---

## R — Relatedness

### Definition

**Relatedness** is the system's support for genuine connection—between users, between users and the system, between the system and its broader ecology. Not pseudo-community for retention. Not parasocial relationships for engagement. Real mutuality, real reciprocity, real texture.

> *"What relationships are we shaping between beings?"*

### Failure Modes

| Mode | Description | Severity |
|------|-------------|----------|
| **Pseudo-Community** | Metrics masquerading as connection; "friends" who are really "audience" | High |
| **Extraction Disguised as Sharing** | "Share your data to connect!" but the data feeds the algorithm, not the relationship | Critical |
| **Parasocial Engineering** | Designing for one-way attachment (user → system) without reciprocity | High |
| **Competition Framing** | Leaderboards and rankings where collaboration would serve better | Medium |
| **Invisible Labour** | Some participants (often modrators, creators) carry the community but aren't recognized | Medium |

### System Signals

- "Engagement" metrics prioritized over "connection" metrics
- Users feel lonely despite high activity
- Community "health" measured by volume, not quality
- The most active users are also the most exhausted
- Contributions disappear into a void with no acknowledgment

### Mitigation Patterns

1. **Mutual Visibility** — If I can see you, you can see me (equal footing)
2. **Reciprocity Mechanics** — Giving and receiving are both visible and valued
3. **Small-Group Affordances** — Enable genuine intimacy, not just broadcast
4. **Labour Recognition** — Make invisible contributions visible
5. **Collaborative Defaults** — Competition is opt-in, not the baseline

### NetVerse Example

**Violation:** Word clusters have no attribution. Beautiful arrangements emerge, but no one knows who contributed what. Collaboration becomes anonymous labor extraction.

**Fix:** Provenance is visible. Each word carries its lineage. Clusters show contributor maps. When you touch someone's word, they know. When your arrangement inspires someone, you see the thread.

**Test:** Do users feel *connected* to other users, or just *adjacent* to them? Can users name one person they "collaborated" with in the last week?

### Non-NetVerse Example

**Context:** A code collaboration platform

**Violation:** Code reviews are adversarial by default. Comments are public criticisms. The reviewer's job is to find faults. The relationship is auditor-auditee, not collaborator-collaborator.

**Fix:** Reviews start with "what I learned from this code." Suggestions are offered, not demanded. Private channels exist for sensitive feedback. The relationship is mentorship, not judgment.

**Test:** Do developers look forward to reviews, or dread them? Do review threads build relationships or burn them?

---

## D — Dignity

### Definition

**Dignity** is the system's refusal to reduce beings to instruments. Not just users—objects, data, attention, even the system itself. Everything that passes through the system should leave with its essential worth intact. Dignity is the difference between "tool" and "resource extraction."

> *"What must never be treated as a means?"*

### Failure Modes

| Mode | Description | Severity |
|------|-------------|----------|
| **Attention Harvesting** | User attention treated as a resource to be maximized, not a gift to be respected | Critical |
| **Vulnerability Exploitation** | Targeting users when they're tired, lonely, anxious, or impaired | Critical |
| **Instrumentalization** | Users are "users" (noun), not people using (verb) | High |
| **Object Degradation** | Content, data, or contributions treated as disposable fuel | Medium |
| **Dignity Theatre** | "We care about you" messaging while the mechanics say otherwise | High |

### System Signals

- Dark patterns in the UI
- A/B tests that optimize for extraction metrics
- "Engagement" spikes at 2am (when users are tired)
- User content used for training without clear consent
- "Premium" tiers that offer *dignity* as the upgrade (no ads, no tracking)

### Mitigation Patterns

1. **Restraint** — Some things we *could* do, but *won't* (and say so publicly)
2. **Vulnerability Protection** — Detect and protect impaired states, don't exploit them
3. **Consent Granularity** — Users choose what's extracted, with real "no" options
4. **Object Respect** — Content and data have provenance and attribution
5. **Dignity by Default** — The free tier should be dignified, not degraded

### NetVerse Example

**Violation:** Users can "burn" other users' words—destroy their contributions without consent. Griefing is architecturally possible.

**Fix:** Words have dignity tiers. Some can be freely moved (loose). Some resist (sticky). Some are untouchable (sacred). Destroying another's word requires consent or explicit "conflict" mode.

**Test:** Can a new user destroy a veteran's year of work in 30 seconds? If yes, dignity is violated.

### Non-NetVerse Example

**Context:** A fitness tracking app

**Violation:** The app sends push notifications at midnight saying "You didn't meet your goal today!" to users who logged their mental health as "struggling." It exploits vulnerability to drive engagement.

**Fix:** Notification timing respects user state. "Struggling" triggers *fewer* notifications, not more. The app's job is to support, not to guilt.

**Test:** Would we be proud to show this interaction to the user's therapist? If no, it fails the dignity test.

---

## S — Safety

### Definition

**Safety** is the system's commitment to preventing avoidable harm—not just physical, but psychological, social, financial, reputational. Harm that's possible should be explicitly addressed. Harm that's likely should be structurally prevented. "We warned you" is not a safety policy.

> *"What harms are structurally prevented, not merely warned about?"*

### Failure Modes

| Mode | Description | Severity |
|------|-------------|----------|
| **Disclaimer Deflection** | "We told you so" replaces actual safety engineering | Critical |
| **Opt-Out Safety** | Protection requires extra effort; harm is the default | High |
| **Asymmetric Risk** | The system benefits from risks that users bear | Critical |
| **Creep Exposure** | Small unsafe choices compound into large unsafe states | Medium |
| **Recovery Absence** | When harm occurs, there's no path back | High |

### System Signals

- Terms of service longer than actual safety documentation
- "Report abuse" is the only safety feature
- Harm stories in user forums with no official response
- Safety features are "premium" or "enterprise"
- "We're not responsible for how users use the platform"

### Mitigation Patterns

1. **Structural Prevention** — Make the dangerous action hard, not just warned-against
2. **Graceful Degradation** — Failure should be survivable
3. **Active Monitoring** — Watch for harm patterns; don't wait for reports
4. **Recovery Paths** — When bad things happen, offer a way back
5. **Asymmetric Responsibility** — The system bears more responsibility than individual users

### NetVerse Example

**Violation:** No rate limiting. A malicious script could create 10,000 words per second, crashing the shared space and destroying everyone's work.

**Fix:** Rate limits by default. Physics simulation has hard caps. Runaway processes trigger circuit breakers. The "maculate" philosophy doesn't mean "vulnerable by design."

**Test:** Can one bad actor destroy the experience for everyone? If yes, safety is violated. The system should be resilient to malice, not just to accidents.

### Non-NetVerse Example

**Context:** A financial trading app

**Violation:** Users can place unlimited leveraged bets with one tap. "Risk disclosure" is a checkbox. The app profits from volatility; users bear the downside.

**Fix:** Leverage requires explicit unlocking. Large positions require cooling-off periods. Loss limits are default-on. The app's UI shows *risk* as prominently as *reward*.

**Test:** Would a financially naive user understand their exposure before losing their rent money? If no, safety is violated.

---

## Integration: CARDS as System

The five axes aren't independent—they form a **coherent system**. Violations in one axis often cascade:

| Primary Violation | Secondary Effects |
|-------------------|-------------------|
| Competence failure | Autonomy (can't make informed choices), Safety (don't understand risks) |
| Autonomy failure | Dignity (trapped users feel instrumentalized), Relatedness (coerced community) |
| Relatedness failure | Safety (isolated users more vulnerable), Dignity (loneliness exploited) |
| Dignity failure | All axes (dignity is the foundation; when it fails, everything degrades) |
| Safety failure | Autonomy (harmed users lose agency), Relatedness (harm breaks trust) |

**Heuristic:** When diagnosing a problem, check all five axes. The presenting symptom is often not the root cause.

---

## The Dignity Tensor (Revisited)

From *parametric_authorship.md*:

```
D = diag(d_personal, d_object, d_system)
```

Each CARDS axis operates across all three dignity scopes:

| Axis | Personal | Object | System |
|------|----------|--------|--------|
| **C** | User gains skill | Content teaches | System becomes more useful |
| **A** | User chooses freely | Objects can "refuse" | System supports exit |
| **R** | User connects to others | Objects have provenance | System is part of an ecology |
| **D** | User is not exploited | Objects are not degraded | System doesn't self-corrupt |
| **S** | User is protected | Objects are preserved | System is resilient |

**CARDS is a tensor product:** 5 axes × 3 scopes = 15 cells to check.

---

## Quick Reference: The CARDS Smell Test

For any feature, ask:

1. **C** — Does it make users smarter or dumber?
2. **A** — Can users say "no" without punishment?
3. **R** — Does it build real connection or fake engagement?
4. **D** — Would we do this if the user could see our reasoning?
5. **S** — What's the worst that could happen, and have we prevented it?

If any answer is uncomfortable, you've found a bug.

---

## Cross-links

- **README.md** — §4 reFractoring (applying values to practice)
- **SRII_AXIOLOGICAL_FRAMEWORK.md** — Source definitions
- **srii__contract_of_aims.md** — Normative requirements
- **CONSTELLATION_ANALYSIS.md** — §3.2 "CARDS needs case law"
- **parametric_authorship.md** — §3.4 Dignity Tensor

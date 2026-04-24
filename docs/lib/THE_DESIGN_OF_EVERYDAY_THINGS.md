# LIBRARY - THE DESIGN OF EVERYDAY THINGS (Don Norman)

> **Status:** Draft Imported Library | **Host:** Andre S Clements | [Full contract ->](#appendix-contract)

---

                    -- SUBJECT MATTER --

## Attribution & Ownership

**The Design of Everyday Things** is a design and cognitive psychology framework developed by Don Norman (Donald A. Norman). The work first appeared as *The Psychology of Everyday Things* (Basic Books, 1988) and was later retitled *The Design of Everyday Things*. A revised and expanded edition was published by Basic Books in 2013.

The book is not the whole of design. It is a bounded, authorial source for a set of everyday design primitives inside the larger design field: how people perceive possible action, form expectations, interpret system state, recover from error, and learn the underlying model of an object or interface.

**Key Works:**

- Norman, D. A. (1988). *The Psychology of Everyday Things*. New York: Basic Books. OCLC 17550682.
- Norman, D. A. (1999). "Affordance, conventions, and design." *interactions*, 6(3), 38-43. DOI: 10.1145/301153.301168.
- Norman, D. A. (2013). *The Design of Everyday Things: Revised and Expanded*. New York: Basic Books. ISBN 9780465050659.
- Norman, D. A. & Wadia, B. (2013). "Opportunities and Challenges For Touch and Gesture-Based Systems." JND.org. https://jnd.org/opportunities-and-challenges-for-touch-and-gesture-based-systems/
- Norman, D. A. (2023). *Design for a Better World: Meaningful, Sustainable, Humanity Centered*. Cambridge, MA: MIT Press.

**Lineage:**

```text
Gibson (1977 / 1979)
  affordances as organism-environment action relations
        |
        v
Norman & Draper (1986)
  user-centred system design; gulfs of execution/evaluation
        |
        v
Norman (1988)
  The Psychology of Everyday Things
  everyday cognitive design; visibility, mapping, constraints, feedback
        |
        v
Gaver (1991)
  technology affordances; perceptible / hidden / false affordances
        |
        v
Norman (1999 / 2008)
  affordance terminology correction; signifiers foregrounded
        |
        v
Hartson (2003)
  cognitive, physical, sensory, functional affordances for interaction design
        |
        v
Norman (2013)
  revised DOET; signifiers added; examples and implementation updated
        |
        v
Norman (2023)
  humanity-centred / sustainable / meaningful design as later corrective expansion
```

---

## Section 1. Core Question

Norman's core question is practical and humane:

> How should things be designed so ordinary people can understand what actions are possible, what has happened, and how to recover when something goes wrong?

The framework shifts responsibility away from blaming the user and toward examining the designed relation among person, object, context, and system image. When someone makes an error, the first design question is not "what is wrong with this person?" but "what did the system make hard to perceive, understand, or recover from?"

This is the everyday face of design as systems concern: the planning of relationships between intention, action, feedback, consequence, and repair.

---

## Section 2. The Seven-Stage Action Loop

Norman's action model treats interaction as a cycle:

```text
Goal
  -> Intention
  -> Specify action
  -> Execute action
  -> Perceive system state
  -> Interpret state
  -> Evaluate outcome
  -> New goal / adjusted action
```

Two gaps matter:

| Gap | Question | Design implication |
|---|---|---|
| **Gulf of Execution** | Can the person work out what actions are possible and how to perform them? | Make available actions and their means legible. |
| **Gulf of Evaluation** | Can the person work out what happened and whether the goal was met? | Provide timely, intelligible feedback and visible system state. |

A good design narrows both gulfs. It does not require the person to hold the whole system in private memory.

---

## Section 3. Affordances

An **affordance** is a possible action in the relation between an actor and an object or environment. Norman inherits the term from J. J. Gibson, who used it for organism-environment action relations.

For everyday design, the crucial distinction is:

| Type | Meaning | Example design question |
|---|---|---|
| **Real affordance** | What can actually be done. | What actions does this object/system materially permit? |
| **Perceived affordance** | What the person perceives can be done. | What does the person believe is possible from the visible/tangible evidence? |

Norman's later correction matters: in screen-based interfaces, designers often say "affordance" when they mean a visual cue, convention, label, or feedback. A graphic does not magically create an affordance. It may invite, constrain, or explain one.

---

## Section 4. Signifiers

A **signifier** is a perceivable signal that communicates where or how action can happen.

Signifiers become especially important when the relevant affordance is not physically obvious: touchscreens, gesture systems, remote controls, websites, documents, design systems, and agentic interfaces.

| Without signifiers | With signifiers |
|---|---|
| Possible actions are hidden or guessed. | Possible actions are discoverable. |
| Users learn through trial, error, and folklore. | Users can form expectations before acting. |
| Recovery depends on memory or help from others. | Recovery can be designed into the interface. |

Signifiers are not merely decorative labels. They are part of the contract between system and participant.

---

## Section 5. Mapping

**Mapping** is the relationship between a control and its result.

Good mapping lets a person infer consequence from arrangement. Poor mapping makes the person memorise arbitrary associations.

```text
control layout -> expected effect -> actual effect
```

The closer the expected and actual effect, the less cognitive tax the design imposes. Mapping is where design becomes planning: the arrangement of parts carries meaning before anyone reads instructions.

---

## Section 6. Feedback

**Feedback** tells a person what happened.

Feedback should be:

- timely enough to connect action with result
- informative enough to guide the next move
- intelligible in the person's context
- proportionate to the consequence
- useful for recovery, not only confirmation

Feedback is not noise. A beep, spinner, colour shift, log line, haptic pulse, disabled button, receipt, or version history can all be feedback if they help the person understand state and consequence.

---

## Section 7. Constraints

**Constraints** reduce the set of possible actions and thereby reduce memory burden.

Norman's common constraint types:

| Constraint | What it does | Design value |
|---|---|---|
| **Physical** | Makes some actions materially impossible. | Prevents impossible or unsafe moves. |
| **Logical** | Lets reasoning eliminate wrong options. | Helps the person infer what remains. |
| **Cultural** | Uses learned conventions. | Speeds action when conventions are shared. |
| **Semantic** | Uses meaning in the situation. | Makes action fit the context. |

Constraints are design decisions. Used well, they protect competence and safety. Used badly, they become traps, lock-ins, or paternalistic control.

---

## Section 8. Conceptual Models and System Image

A **conceptual model** is the person's working understanding of how the thing operates.

The designer does not place a model directly into the user's mind. The designer shapes the **system image**: the visible, tactile, textual, behavioural, and social evidence from which the person constructs a model.

```text
designer's model -> system image -> user's conceptual model
```

Design succeeds when the system image helps the user's model become accurate enough for action and repair. Design fails when the system image teaches the wrong model, or no model at all.

A system image teaches the wrong model when its visible evidence points to a structure the system does not actually have. A confusing door suggests "push" where the mechanism requires "pull." A single control suggests one temperature relationship while the appliance hides a coupled mechanism. In design-system terms, a pattern teaches the wrong model when its appearance, label, behaviour, documentation, and implementation imply different rules. The user is then not learning the system; they are learning to survive its contradictions.

---

## Section 9. Error as Design Information

Norman's central dignity-preserving move is the shift from blame to diagnosis.

Errors can be:

| Error type | Short description | Design response |
|---|---|---|
| **Slip** | The right goal, wrong action. | Improve signifiers, mappings, constraints, feedback, and undo. |
| **Mistake** | The wrong goal or plan. | Improve conceptual model, instructions, defaults, and framing. |

The design question is not whether humans err. They do. The question is whether the system anticipates ordinary human fallibility with grace.

---

## Section 10. The And-Yet (Shadow)

**Usability can serve extractive aims.** A system can be easy to use and still be manipulative, surveillant, addictive, or exploitative. Ease is not virtue by itself.

**User-centred design can become too narrow.** Focusing on the immediate user may hide other stakeholders, maintenance labour, ecological costs, cultural assumptions, or institutional incentives.

**Signifiers can become coercive.** Making an action obvious can be helpful, but it can also steer people toward choices that serve the system more than the person.

**Conventions are not universal.** Cultural constraints work only where they are shared. Treating a local convention as natural can exclude or shame people outside that context.

**Design responsibility can become designer heroism.** The framework rightly returns responsibility to design, but mature practice must still include participation, evidence, maintenance, and humility.

**The meta-question:** When does "good everyday design" make a harmful system more efficient?

These shadows are why the source tiering matters. Everyday design primitives are powerful enough to make action easier; verification and provenance help keep that ease answerable to evidence, context, and purpose.

<!-- You found the signifier. The action available here is: slow down and inspect the model. -->

---

## Section 11. Verification & Primary Sources

| Source | Tier | Verification status | Notes |
|---|---|---|---|
| Norman 2013, *The Design of Everyday Things* | Silver | Publisher metadata verified via Basic Books / Hachette; Norman's JND.org book page verified. | Primary source for core constructs. |
| Norman 1988, *The Psychology of Everyday Things* | Silver | WorldCat metadata verified. | Original title and first publication context. |
| Norman 1999, "Affordance, conventions, and design" | Silver / Bronze | ACM metadata and JND authorial repost checked. | Key terminology correction. |
| Norman & Wadia 2013, touch/gesture systems | Bronze / Copper | JND article checked. | Useful bridge to modern interaction surfaces. |
| Gaver 1991, "Technology affordances" | Gold | Peer-reviewed CHI metadata verified via Northumbria portal. | HCI affordance lineage. |
| Hartson 2003, affordance types | Gold | Taylor & Francis metadata checked. | HCI refinement source. |
| Norman 2023, *Design for a Better World* | Silver | MIT Press metadata checked. | Later systemic/humanity-centred corrective. |

---

                    -- REPOSITORY INTEGRATION --

## What This Changes

| Conventional drift | Everyday Design Practice inversion |
|---|---|
| User error as personal failure | Error as diagnostic evidence about system design, feedback, constraints, and conceptual models. |
| Design as surface polish | Design as communication between possible action, system state, and human understanding. |
| Components as reusable shapes | Components as interaction contracts: what can be done, what happened, how to recover, what model is taught. |
| Documentation as afterthought | The system image is part of the design; help, labels, states, and examples carry the conceptual model. |
| Consistency as visual sameness | Consistency as learnable mapping across action, response, recovery, and meaning. |
| Hidden complexity as sophistication | Hidden complexity is debt unless supported by signifiers, feedback, and recoverable conceptual models. |
| Design systems as asset libraries | Design systems as governed practice: shared decisions, language, constraints, accessibility, code, maintenance, and memory. |

---

## Maintainer's Note

Host != Author.

Don Norman is the authorial source for this imported construct. This repository hosts and transposes the framework because it fills a gap between high-level axiology and everyday interaction practice.

The wider repo thesis remains broader: design is a constitutive dimension of artistry. It includes planning, arrangement, material constraint, relation, rhythm, maintenance, and systems concern. Norman's work does not exhaust that field; it gives this repo a precise everyday-design primitive set inside it.

---

## Integration with CARDS

| CARDS axis | Everyday Design Practice contribution | Failure signal |
|---|---|---|
| **Competence** | Discoverability, mappings, constraints, and conceptual models help people act skilfully without memorising hidden rules. | People feel foolish, dependent, or forced to ask for help for ordinary use. |
| **Autonomy** | Clear possible actions, undo/recovery paths, and honest state feedback preserve agency under use. | Users can act, but cannot confidently reverse, pause, compare, or refuse. |
| **Relatedness** | Shared signifiers and consistent mappings let teams and communities coordinate around the same system image. | Each team/person carries a private model; handoff requires oral folklore. |
| **Dignity** | Errors are treated as design information, not as evidence of user inadequacy. | The system blames, shames, or patronises the person it confused. |
| **Safety** | Constraints, feedback, and recovery reduce preventable harm, especially under fatigue, haste, stress, or unfamiliarity. | High-consequence actions are easy to trigger accidentally and hard to understand afterward. |

**Diagnostic implication:** If CARDS degrades during everyday use, inspect Norman primitives first: possible action, signifier, mapping, feedback, constraint, conceptual model, recovery path. The failure will often be located before the user's "mistake."

---

## Integration with SOLID and Engineering

| Construct | Everyday design relation |
|---|---|
| **SRP** | A control, component, or pattern should not ask the user to infer multiple unrelated responsibilities from one ambiguous signifier. |
| **OCP** | Extension points should be perceptible and learnable; new behaviour should not silently mutate the user's conceptual model. |
| **LSP** | Substituted components must preserve behavioural expectations, not only visual similarity. |
| **ISP** | Do not expose people to controls, states, or decisions they cannot use or affect. |
| **DIP** | Depend on stable interaction contracts, not tool-specific surfaces. |

The engineering model adds maintenance vocabulary: signifiers are **signals**; constraints are **structure**; mappings are **seams** between intention and result; deprecated patterns need **graveyards**; design systems require **ledger** and **ritual**.

---

## Integration with Permaculture

Permaculture designs fields of relation. Norman designs encounters within those fields.

| Permaculture | Norman |
|---|---|
| Zone placement | Interaction frequency and proximity of controls |
| Sector analysis | External forces that shape use context |
| Stacking functions | Components serving multiple coherent functions without confusing the model |
| Edge effect | Productive interfaces between system parts |
| Observe and interact | Watch real people in context before declaring what is "obvious" |

Together: place elements where care and attention can reach them, then make each encounter legible.

---

## Integration with Objectification and Consent

Blameful interfaces instrumentalise people as tolerance buffers for system convenience. Everyday design practice restores dignity by asking what the designed relation made hard.

Consent architecture also requires Norman primitives. Permission text alone is thin if people cannot perceive:

- what action is available
- what consequence follows
- what state they are in
- how to stop, reverse, or recover
- what model governs the interaction

This links directly to the [Wheel of Consent](WHEEL_OF_CONSENT.md): consent must be embodied in action, boundary, and feedback, not merely asserted in copy.

---

## Execution Routines

### Routine A - Everyday Design Audit

For any object, interface, document, or design-system pattern:

1. Name the user's likely goal.
2. List available actions.
3. For each action, identify its signifier.
4. Check mapping: does control arrangement predict effect?
5. Check feedback: how does the person know what happened?
6. Check recovery: how does the person reverse, repair, or exit?
7. Check conceptual model: what does the system teach about itself?

### Routine B - Error Dignity Pass

When users make errors:

1. Classify the error as likely slip or mistake.
2. Identify what the system failed to make perceptible.
3. Add or adjust signifier, mapping, feedback, constraint, default, or recovery.
4. Remove blameful copy unless a real boundary was knowingly crossed.
5. Retest under tired, hurried, unfamiliar, and interrupted use.

### Routine C - Design-System Primitive Review

For each reusable pattern:

1. Define behaviour, not only appearance.
2. State the interaction contract.
3. Document required signifiers and feedback states.
4. Define constraints and disabled states.
5. Define error and recovery behaviour.
6. Record accessibility expectations.
7. Add maintenance notes: owner, change conditions, deprecation path.

---

## Why This Matters for the Repository

1. **Everyday bridge:** It gives the repo a concrete interaction grammar between values and practice.
2. **Design systems:** It supports future resources on design systems as governed practice, not mere asset collections.
3. **Dignity under error:** It operationalises the move from blame to diagnosis.
4. **Artistry bridge:** It helps articulate design as planning, relation, constraint, and system image - a constitutive dimension of artistry.
5. **CI collaboration:** It applies to agentic interfaces: prompts, tool outputs, errors, handoffs, and state need signifiers, feedback, and recoverable models.

---

## Cross-links

- [Library Index](README.md)
- [CARDS](CARDS.md)
- [SOLID](SOLID.md)
- [PERMACULTURE](PERMACULTURE.md)
- [OBJECTIFICATION](OBJECTIFICATION.md)
- [WHEEL_OF_CONSENT](WHEEL_OF_CONSENT.md)
- [REGENERATIVE_CULTURES](REGENERATIVE_CULTURES.md)
- [Engineering model](../models/engineering.md)
- [Axiology-First Aesthetics](../methods/methodology__axiology_first_aesthetics_for_engagement_design.md)
- [Parametric Authorship](../../projects/theses/parametric_authorship.md)
- [Research brief](../../staging/research/research__everyday_design_practice.md)
- [DEPENDENCIES.md](../../DEPENDENCIES.md)

---

## Appendix: Contract

> ```yaml
> title: "THE DESIGN OF EVERYDAY THINGS - Everyday Design Practice"
> author: "Don Norman / Donald A. Norman"
> host: "Andre S Clements (Reference Hosting Only)"
> intent: "Import Norman's everyday interaction primitives for action legibility, feedback, conceptual models, constraints, and error dignity."
> lineage: "Gibson affordances -> Norman & Draper UCD -> Norman DOET -> Gaver/Hartson HCI refinement -> Norman signifier correction -> Norman humanity-centred expansion"
> status: "Draft Imported Library"
> usage: "Everyday design audit; design-system primitive review; dignity-preserving error diagnosis; bridge from values to interaction practice."
> risk_index: 0.35
> research: "../../staging/research/research__everyday_design_practice.md"
> ```

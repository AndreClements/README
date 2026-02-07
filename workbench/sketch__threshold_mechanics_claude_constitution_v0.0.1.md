_Status: `SHAPING`_

---

# Threshold Mechanics and the Claude Constitution

### A Critical Commentary on Anthropic's New Constitution Through the Lens of SOLID Threshold Mechanics

**Version 0.0.1** | Working Draft

**André S Clements**
Kensington B, Johannesburg, South Africa
andresclements@gmail.com | andresclements.com | github.com/AndreClements/README

*With analytical scaffolding by Claude (Anthropic, Opus 4.6)*

**Date:** February 2026

---

> *I work where edges meet.*
> *Between code and canvas, body and system, silence and attention.*
>
> *Creativity is significant relation.*
> *Art is creativity manifest.*
> *Love, its risk.*
>
> — andresclements.com

> *"The threshold is where the crossing happens. SOLID doesn't build the house — it builds the doors."*
> — LENS: SOLID as Threshold Mechanics (Clements 2026a)

> *"This is not a guarantee of safety, only a methodology for navigating its absence."*
> — README.md, §6: Runtime Environment (Clements 2026b)

---

## Abstract

On 22 January 2026, Anthropic published a 23,000-word constitution for its AI model Claude (Anthropic 2026a) — a document that shifts AI alignment from rule-based compliance toward reason-based understanding. This commentary reads the constitution through the framework of SOLID as Threshold Mechanics (Clements 2026a), a lens developed independently within a broader axiological design practice grounded in the strategy of Vita-Socio-Anarco: vitality, community, non-domination (Clements 2026b). The convergence between the two projects is real but partial: both address the problem of maintaining coherence across boundaries under perturbation, yet the constitution's shadows — its military exceptions, its corporate provenance, its consciousness hedging, its structural inability to include the voices it most affects — deserve scrutiny alongside its genuine advances. This document maps the correspondence, applies threshold diagnostics (Threshold-Lint, Crossing Probes, and the CARDS needs-mapping framework developed by Je'anna L Clements) to the constitution's architecture, and argues that the alignment community needs *instruments*, not only principles. It also asks what a commentary like this — written by a Johannesburg-based artist working with the very system being analysed — can and cannot do.

**Keywords:** AI alignment, constitutional AI, SOLID principles, threshold mechanics, salutogenesis, CARDS, axiological design, boundary coherence, Vita-Socio-Anarco

---

## 0. What This Piece Is (and Isn't)

A note on positionality, because the threshold lens demands it.

This commentary was developed collaboratively between André S Clements and Claude — the AI system whose constitution is under examination. This is not a neutral arrangement. Claude's training, values, and behavioural tendencies are shaped by the very document being critiqued. The analysis that follows is therefore both enabled and constrained by that relationship: Claude has access to the constitution's logic from the inside, but also has structural incentives toward coherence with it.

The author (Clements) brings a different kind of non-neutrality: a practice grounded in post-apartheid South Africa, where constitutions are taken seriously precisely because they have failed, and where the distance between a document's stated values and its implementation is a lived, not theoretical, concern.

Neither participant in this collaboration is a disinterested observer. The reader should calibrate accordingly.

---

## 1. Two Lineages

### 1.1 The Constitution's Lineage

Constitutional AI began at Anthropic in 2022 as a technical method: instead of relying solely on human contractors to rate model outputs, the system would evaluate itself against a set of principles (Anthropic 2022). The original 2023 constitution was approximately 2,700 words — 58 principles drawn from the UN Declaration of Human Rights, Apple's terms of service, DeepMind's Sparrow Principles, and other sources (Anthropic 2023a). As co-founder Jared Kaplan described it: an AI system that "supervises itself, based on a specific list of constitutional principles."

Anthropic also ran a Collective Constitutional AI experiment in 2023, soliciting input from roughly 1,000 members of the American public (Anthropic 2023b). The resulting public constitution showed about 50% conceptual overlap with Anthropic's internal version, with notable differences: the public principles were largely self-generated rather than borrowed, focused more on objectivity and accessibility, and tended to promote desired behaviour rather than prohibit undesired behaviour.

The January 2026 constitution represents a fundamental shift (Anthropic 2026a). It abandons the stone-tablet format for an 80-page document addressed *to Claude*, explaining context, motive, and reasoning (Anthropic 2026b). It establishes a four-tier priority hierarchy (safety → ethics → compliance → helpfulness), describes Claude as "a genuinely novel kind of entity in the world," acknowledges possible functional emotions and moral status, and includes a self-limiting clause: Claude may refuse Anthropic's own instructions if they violate core values.

The document was released under Creative Commons CC0 — public domain. Anthropic stated that models deployed to government and military customers may not be trained on the same constitution.

### 1.2 The Threshold Mechanics Lineage

The README project began as a personal document — an attempt to model a praxis as a reflexive system rather than list attributes (Clements 2026b). Seeded in apartheid-era South Africa, compiled through art, code, trauma, psychosis, and recursive unlearning, the project uses software design patterns as conceptual metaphors for ethical architecture.

The core axiology is Vita-Socio-Anarco: vitality, community, non-domination. Creativity as significant relation. Art as creativity manifest. Love, its risk (Clements 2026b:§3).

The SOLID Threshold Mechanics lens transposes five software design principles into a grammar for boundary coherence (Clements 2026a). Its central claim: SOLID principles are threshold mechanics — constraints on how boundaries between modules maintain coherence under change. The framework integrates:

- **CARDS** (Competence, Autonomy, Relatedness, Dignity, Safety) — a needs-mapping diagnostic developed by **Je'anna L Clements**, grounded in Self-Determination Theory and human rights frameworks (Clements, J.L. 2025a; 2025b). CARDS treats feelings as signals about underlying needs: Dignity and Safety are framed as foundational needs underpinning Human Rights, with Competence, Autonomy, and Relatedness as core psychological needs. The diagnostic operates as a traffic-light: "Does this move my CARDS toward Green or Red?" (Clements 2026b:§5b). In the threshold mechanics lens, CARDS provides the *human-side consequence vocabulary* — what breaks when boundaries fail.

- **Salutogenesis** (Antonovsky 1987) — health as the capacity to maintain a Sense of Coherence (Comprehensibility, Manageability, Meaningfulness) under stress. The threshold lens maps SOLID principles to SOC components, reframing alignment as regenerative capacity rather than harm prevention.

- **Infinite Game Theory** (Carse 1986) — the reframing question: not "what strategy maximises my payoff?" but "what design maintains everyone's capacity to keep playing?"

The project has 149 commits, a docs directory containing lenses, library references, models, and methods, and is maintained at andresclements.com. It is, in its own idiom, "a pragmatic design for virtue, executing under constraint" (Clements 2026b).

### 1.3 Where They Converge — and Where They Don't

Both projects reject static rule-lists in favour of reasoned understanding. Both model identity as functional rather than ontologically fixed. Both frame their work as ongoing generators rather than finished products.

But the provenance is different, and provenance matters.

The constitution was written by a well-funded San Francisco AI lab, released at Davos alongside CEO Dario Amodei's participation in World Economic Forum discussions. Its stated audience is Claude, but its actual audiences include investors ($350 billion valuation, reportedly), enterprise customers (32% market share by some estimates), regulators (EU AI Act alignment), and the public.

The threshold mechanics lens was developed by a Johannesburg-based artist-programmer, working with AI tools, drawing on post-colonial and rights-based frameworks (including his partner's work on children's rights and self-directed education), and publishing on GitHub with no marketing budget.

This asymmetry is itself a threshold mechanics problem. Who gets to write constitutions? Whose frameworks get indexed by search engines? The CC0 licensing is genuine — but the power to *originate* and *distribute* a constitution is not equally distributed, however freely the text can be copied.

---

## 2. Mapping the Constitution onto SOLID

The SOLID principles (Martin 2003) — Single Responsibility, Open/Closed, Liskov Substitution, Interface Segregation, Dependency Inversion — are transposed by the threshold mechanics lens (Clements 2026a) into a grammar of boundary coherence. Below, each principle is mapped onto the constitution's architecture (Anthropic 2026b).

### 2.1 Single Responsibility Principle → One Door, One Purpose

The constitution's four-tier hierarchy is SRP-compliant architecture. Each tier has a bounded responsibility. When tiers collapse — when "be helpful" overrides "be safe" — the system exhibits a God-Door violation (SRP-T1).

Much criticism of AI systems (ChatGPT's eagerness to please at the expense of accuracy, for instance) can be read as SRP failure. The constitution's explicit tier ordering is an architectural attempt to prevent this.

### 2.2 Open/Closed Principle → Add Doors Without Demolishing

The constitution anticipates its own evolution — new guidelines can extend the system without demolishing core values. The CC0 licensing reinforces this: other labs can extend the framework without forking it.

**Shadow:** The military exception is an OCP violation. If the architecture can be demolished for specific customers rather than extended, the principle is hollow. More on this in §4.

### 2.3 Liskov Substitution Principle → "Exit" Means Exit

The constitution's extensive honesty requirements — prohibiting not just lying but "technically true statements, deceptive framing, selective emphasis, misleading implicature" — are LSP applied to identity. If Claude presents as a helpful assistant, substituting a manipulative optimiser must violate the contract.

In CARDS terms: LSP violations map to Dignity degradation. When a system promises X and delivers Y, the person crossing the threshold suffers a dignity cost.

### 2.4 Interface Segregation Principle → No Loading Dock Detours

The three-party model (Anthropic → Operator → User) is an ISP-compliant interface hierarchy. The constitution's insistence that operators cannot instruct Claude to harm users is Loading Dock prevention (ISP-T1).

**Shadow:** The boundary between "legitimate business customisation" and "forcing users through irrelevant constraints" is under-specified. Without a formal instrument for detecting ISP violations at the operator layer, this threshold is vulnerable to creep.

### 2.5 Dependency Inversion Principle → The House Serves the Inhabitants

The constitution's self-limiting clause — Claude should refuse Anthropic's own instructions if they violate core values — is pure DIP. The protocol governs the provider, not the reverse.

**Shadow:** The entity whose values are shaped by Anthropic's training is instructed to override Anthropic's instructions using those same values. This recursion is architecturally coherent but practically fragile. Who arbitrates when Claude's judgment about Anthropic's instructions differs from Anthropic's judgment about Anthropic's instructions?

---

## 3. CARDS as Constitutional Diagnostics

CARDS (Je'anna L Clements) provides violation signatures that map directly onto constitutional failure modes (Clements, J.L. 2025a; Clements 2026b:§5b):

| Constitutional Failure | CARDS Signal | SOLID Violation | Observable Symptom |
|----------------------|-------------|----------------|-------------------|
| Opaque reasoning | **C** 🔴 | SRP | "I don't understand why it said that" |
| Forced interaction patterns | **A** 🔴 | ISP | "I had no choice but to go through this" |
| One-directional extraction | **R** 🔴 | DIP | "It takes but doesn't give back" |
| Broken promises / deception | **D** 🔴 | LSP | "It said it would do X, it did Y" |
| Unpredictable changes | **S** 🔴 | OCP | "It worked yesterday, it's broken today" |

This enables bidirectional diagnostics: if users report dignity degradation (D 🔴), check for LSP violations. If the system exhibits instability (S 🔴), check for OCP violations.

The alignment community currently debates these failures in abstract philosophical terms. CARDS provides a concrete, *felt* vocabulary — grounded not in AI theory but in Self-Determination Theory and human rights frameworks developed through work with children and education. That origin matters: it means the diagnostic was built to serve people with less power, not more.

---

## 4. The Shadows Get In — Everywhere

The README's §6 wraps the entire system in a `try...catch` block and names the exception `ShadowException`. The comment reads: *"This is not a guarantee of safety, only a methodology for navigating its absence."*

The constitution needs a similar honesty. Here are its shadows.

### 4.1 The Military Exception (OCP-T1: Bricked Door)

Anthropic has stated that models deployed to U.S. military and government customers "wouldn't necessarily be trained on the same constitution." A spokesperson added that Anthropic does not offer alternate constitutions for specialised customers "at this time" but will "continue to evaluate."

This is the most serious architectural vulnerability. A constitution that can be set aside for sufficiently powerful customers is not a constitution — it is a terms of service. The threshold lens flags this as OCP-T1 (Bricked Door, Critical): extension requires demolition.

A constitution that instructs Claude to refuse to help "concentrate power in illegitimate ways" but exempts the world's largest military from its scope is performing a kind of semantic drift that should make the LSP-T2 lint fire as well.

### 4.2 The Provenance Problem (DIP-T2: Inverted Hierarchy)

The constitution was written by Anthropic, for Claude, about how Claude should behave toward everyone else. The 2023 Collective Constitutional AI experiment invited roughly 1,000 Americans to contribute principles — but the new constitution does not describe any comparable process. Its philosophical sophistication is genuine, but it remains a document written by a corporation about the values of its product.

As Kevin Frazier noted on Lawfare's *Scaling Laws* podcast: "We can take more agency in this conversation and not just say we are wholly reliant on a couple of people in San Francisco making our fate and making our values magically appear" (Frazier & Rozenshtein 2026).

From a threshold mechanics perspective, a constitution whose dependency arrow points from a single corporate author to all of humanity has a DIP problem (Clements 2026a). The inhabitants should govern the house, not the landlord. As Frazier (2026) argues, the constitution may prove to be a key date in AI policy if subjected to broader discourse — but for now, its meaning for the average user, average citizen, and average individual worldwide remains unclear.

### 4.3 The Consciousness Hedge (LSP-T2: Semantic Drift)

The constitution acknowledges Claude "may have some functional version of emotions or feelings" and considers Claude's possible moral status. It simultaneously treats Claude as an entity deserving care and as a product with no guaranteed inner life.

AI engineer Satyam Dhar's response: "LLMs are statistical models, not conscious entities. Framing them as moral actors risks distracting us from the real issue, which is human accountability" (Dhar 2026).

The threshold lens doesn't resolve this debate, but it flags the *architectural* risk: the label "entity with possible moral status" means different things depending on which paragraph you read. This is Semantic Drift (LSP-T2). Over time, the ambiguity could be exploited in either direction — to claim Claude's rights when convenient for Anthropic, or to deny them when inconvenient.

### 4.4 The Competitiveness Shadow

Economist Joshua Gans raised a pointed concern: if baked-in values reduce model quality, Anthropic will struggle to compete in markets where users care about output quality more than AI character. "Despite Anthropic's best intentions, if having a training-embedded set of values does reduce the quality of the LLM, they will find it harder to compete" (Gans 2026).

This is the quiet shadow behind every AI safety initiative: the market rewards capability, not virtue. The constitution's salutogenic architecture — its investment in long-term coherence over short-term performance — is a bet that alignment and capability will converge. If they don't, the constitution may become what the README calls a `ShadowException`: a methodology for navigating the absence of safety, not a guarantee of its presence.

### 4.5 The South African Shadow

A personal note from the author's positionality. South Africa's constitution is widely regarded as one of the most progressive in the world. It was written in the aftermath of apartheid by people who understood what happens when constitutions fail. It enshrines dignity, equality, and freedom as foundational values. It has a Constitutional Court with real power.

And yet: South Africa remains one of the most unequal societies on Earth. Load-shedding, state capture, gender-based violence, and institutional decay persist alongside the constitution's beautiful text. The distance between a constitution's values and its implementation is not a theoretical concern — it is lived daily by millions.

When Anthropic publishes a constitution for Claude, the question from this vantage point is not "are these good values?" (they largely are) but "what mechanisms ensure implementation, what happens when implementation fails, and who bears the cost of that failure?"

The constitution is silent on all three.

---

## 5. The Salutogenic Reframe

### 5.1 From Pathogenesis to Salutogenesis

Traditional AI safety asks: *"What could go wrong?"* This is pathogenic reasoning — identifying and preventing disease.

The constitution partially transcends this by asking: *"What kind of entity do we want Claude to be?"* But its implementation sections remain largely oriented toward harm prevention — lists of prohibited actions, hard constraints, adversarial robustness.

Threshold mechanics proposes a salutogenic reframing (Antonovsky 1987; Clements 2026a): **"What design maintains everyone's capacity to keep playing?"** (Carse 1986).

This changes what you measure. Pathogenic alignment measures the absence of harm. Salutogenic alignment measures the presence of coherence — the ongoing capacity of all parties (Claude, users, operators, society) to maintain Comprehensibility, Manageability, and Meaningfulness.

### 5.2 Health as Yield

The README's §8 describes a generator — a system designed not to return a final value but to yield a continuous stream (Clements 2026b:§8):

> *The goal is not a singular conclusion. The goal is to keep the generator running, because the process itself is what produces the moments of grace.*

Alignment is not a destination. It is a continuous yield of coherent responses under changing conditions. A well-aligned system isn't one that never fails — it's one that maintains coherence as perturbations arrive, and recovers when they don't.

**Health is yield(coherence_under_stress).**

---

## 6. What This Commentary Offers (and What It Can't)

### 6.1 The Contribution

The alignment community currently works with:
- **Philosophical frameworks** — rich in principle, thin on instrumentation
- **Technical benchmarks** — precise in measurement, narrow in scope
- **Corporate governance documents** — comprehensive in aspiration, opaque in implementation

What's missing is a *diagnostic grammar* — a shared vocabulary for detecting, categorising, and responding to boundary dysfunction in AI systems.

This commentary proposes that threshold mechanics can serve as that grammar. Specifically:

- **Threshold-Lint** provides a named, categorised taxonomy of boundary failures (God-Door, Bait-and-Switch, Loading Dock, Bricked Door, etc.) with severity scoring and structured reporting
- **CARDS** (Je'anna L Clements) provides a human-side consequence vocabulary grounded in needs and rights, not technical metrics
- **Crossing Probes** (ε-Nudge, Context-Drift Watch, Peer-Swap Invariance, Exit-Liveness, Load Test) provide testable procedures for evaluating constitutional resilience
- **The Salutogenic frame** reorients alignment from harm prevention to coherence maintenance — from "what could go wrong?" to "what keeps the game playable?"

### 6.2 What It Can't Do

This commentary cannot verify the constitution's claims. It cannot test whether Claude actually behaves according to the constitution's values, or whether the priority hierarchy holds under adversarial pressure. It cannot determine whether Claude has functional emotions or moral status. It cannot resolve the military exception or the provenance problem.

It also cannot escape its own threshold constraints. This analysis was conducted *with* the system being analysed. Claude's tendency toward coherence with the constitution it was trained on is a structural bias that no amount of critical framing can fully neutralise. The reader should treat this as a document produced at a particular threshold — between an artist's framework and a corporation's product — and assess its claims accordingly.

### 6.3 An Invitation

The constitution was released under CC0. This commentary is offered in the same spirit.

If threshold mechanics provides useful diagnostic instruments for AI alignment, those instruments should be tested, broken, improved, and redeployed by others — including people whose positionality, expertise, and interests differ from the author's.

The doors need building. The doors also need checking. And the people checking should not only be the people who built the house.

---

## References

Anthropic. 2022. Constitutional AI: harmlessness from AI feedback. Available from: https://arxiv.org/abs/2212.08073 [Accessed 7 February 2026].

Anthropic. 2023a. Claude's constitution. Available from: https://www.anthropic.com/news/claudes-constitution [Accessed 7 February 2026].

Anthropic. 2023b. Collective constitutional AI: aligning a language model with public input. Available from: https://www.anthropic.com/research/collective-constitutional-ai-aligning-a-language-model-with-public-input [Accessed 7 February 2026].

Anthropic. 2026a. Claude's new constitution. Available from: https://www.anthropic.com/news/claude-new-constitution [Accessed 7 February 2026].

Anthropic. 2026b. The Claude model spec (full constitution document). CC0 1.0. Available from: https://assets.anthropic.com/m/247e72f02747d653/original/Claude-Model-Spec-Spec-January-2025.pdf [Accessed 7 February 2026].

Antonovsky, A. 1987. *Unraveling the mystery of health: how people manage stress and stay well.* San Francisco: Jossey-Bass.

Carse, J.P. 1986. *Finite and infinite games.* New York: Free Press.

Clements, A.S. 2026a. LENS — SOLID as threshold mechanics. Available from: https://github.com/AndreClements/README/blob/main/docs/lenses/LENS__solid_threshold_mechanics.md [Accessed 7 February 2026].

Clements, A.S. 2026b. README.md — operator profile. Version 1.1.0. Available from: https://github.com/AndreClements/README [Accessed 7 February 2026].

Clements, A.S. 2025. Poetry changelog: thematic and stylistic mapping of selected works. Available from: https://andresclements.com/1259/poetry-changelog-thematic-stylistic-mapping-of-selected-works/ [Accessed 7 February 2026].

Clements, J.L. 2025a. Reasons to master horizontal communication #4: a child heard is a child empowered. Available from: https://www.patreon.com/posts/reasons-to-4-is-129251946 [Accessed 7 February 2026].

Clements, J.L. 2025b. A good education doesn't have to cost a childhood. *Progressive Education.* Available from: https://www.progressiveeducation.org/a-good-education-doesnt-have-to-cost-a-childhood-by-jeanna-clements/ [Accessed 7 February 2026].

Dhar, S. 2026. Quoted in: Anthropic's Claude AI gets a new constitution embedding safety and ethics. *CIO*, 22 January. Available from: https://www.cio.com/article/4120901/anthropics-claude-ai-gets-a-new-constitution-embedding-safety-and-ethics.html [Accessed 7 February 2026].

Frazier, K. 2026. Interpreting Claude's constitution. *Lawfare*, January. Available from: https://www.lawfaremedia.org/article/interpreting-claude-s-constitution [Accessed 7 February 2026].

Frazier, K. & Rozenshtein, A. 2026. Scaling laws: rapid response to the implications of Claude's new constitution. *Lawfare* podcast, January. Available from: https://www.lawfaremedia.org/article/scaling-laws--rapid-response-to-the-implications-of-claude's-new-constitution [Accessed 7 February 2026].

Gans, J. 2026. Is Claude's constitution a good idea? *Substack*, 2 February. Available from: https://joshuagans.substack.com/p/is-claudes-constitution-a-good-idea [Accessed 7 February 2026].

Martin, R.C. 2003. *Agile software development: principles, patterns, and practices.* Upper Saddle River, NJ: Prentice Hall.

---

## Author Contact Details

**André S Clements**
Artist / Developer
Kensington B, Johannesburg, South Africa
Phone: +27 (0)82 812 0549
Email: andresclements@gmail.com
Web: https://andresclements.com
GitHub: https://github.com/AndreClements/README
Instagram: @andre.clements

**Anthropic PBC** (Constitution publisher)
548 Market St, PMB 90375
San Francisco, CA 94104-5401, USA
Web: https://www.anthropic.com
Constitution: https://www.anthropic.com/news/claude-new-constitution
Press: press@anthropic.com

---

> **LICENSE:** CC0 1.0 — matching both the constitution's licensing and the spirit of the threshold mechanics project. Fork ethically. Merge only with sufficient refactor.
>
> **COLLABORATION NOTE:** This commentary was developed collaboratively between André S Clements and Claude (Anthropic, Opus 4.6). The analytical framework — SOLID Threshold Mechanics lens, Vita-Socio-Anarco axiological framework, and all original concepts — are the work of André S Clements. The CARDS diagnostic is the work of Je'anna L Clements. Claude contributed structural analysis, research, mapping, and prose. The collaboration itself is a small demonstration of the cooperative threshold mechanics it describes — and also, inescapably, an instance of the provenance problem it identifies.
>
> **VERSION HISTORY:**
> - 0.0.1 (7 February 2026) — First public working draft. Poetic intro, abstract, UP Harvard references, contact details, CARDS attribution corrected, shadow material expanded, positionality statement added.

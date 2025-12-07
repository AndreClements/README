# Project: NetVerse — Initiation Log
> **Version:** 0.1 (Genesis / Concept Phase)
> **Status:** Active / Incubating
> **Repository:** `local:C:/xampp/htdocs/NetVerse` | `remote:github.com/AndreClements/NetVerse` (Private)

---

## **Lead Maintainer’s Note**

Resuscitating a legacy concept (the "Flash-era" magnetic poetry screensaver) and re-architecting it as a persistent, multi-user hyperstrate. The project moves from a solitary visualizer to a shared "Game of Life meets Minecraft" environment for text.

This document logs the conceptual constraints, the chosen stack, and the initial axioms of the system.

```yaml
contract:
  intent: "resuscitate legacy project; architect persistent semiotic space"
  scope: "NetVerse"
  stack: ["Laravel 11", "Vue 3", "PixiJS", "Matter.js"]
  principles: ["mass_of_language", "sovereign_interaction", "maculate_lamp"]
  validation: ["physics_feel_test", "multi_user_persistence_test"]
```

---

## **§1. The Core Proposition**

**"Fridge-door magnet poetry's wet dream in cyberspace."**

The internet has become a frictionless void of algorithmic feeds. **NetVerse** proposes a "Cozy Web" alternative: a digital third space where language possesses **mass, velocity, and relational gravity**.

It is a move away from the flat document model of the web toward a **Cartesian Hyperstrate**:
1.  **Spatial:** Words exist at coordinates `(x, y, z)`.
2.  **Physical:** Interaction follows a physics simulation (inertia, friction, collision).
3.  **Persistent:** The arrangement of text is a durable act of landscaping; it remains when the observer leaves.

---

## **§2. The Aesthetic Constraint (The "Reilly" Curve)**

> *"A good line in the wrong place tends to work better than a bad line in the right place."*
> — Frank J. Reilly via Jack Faragaso.

The visual soul of the project relies on a specific physics behavior derived from the original ActionScript 3 prototype:
*   **The Paper Drift:** Words do not fall linearly. They descend with an "upward pointing circular curve" trajectory.
*   **Mass-Index:** Lateral motion is constrained by character length (mass). Short words flutter; long words plunge.
*   **Representation:** Simple white blocks, fine black outlines. The aesthetic of cut paper naturalistically descending through an atmosphere.

**Technical Goal:** Port this specific "feel" from AS3 logic to a **Matter.js** constraint engine.

---

## **§3. Architecture: The "Maculate LAMP"**

We embrace the constraints of the current hosting environment (Dreamhost Shared / Standard LAMP) but deploy a modern "Headless Monolith" architecture to support reactivity without infrastructure bloat.

*   **The Hyperstrate (Backend):** **Laravel 11** (PHP 8.2+).
    *   Handles: Auth (Sanctum), Spatial Indexing, Economy (Cashier/Stripe), and the "Heartbeat" (Game of Life logic).
*   **The Lens (Frontend):** **Vue 3** + **Vite**.
    *   Handles: The UI shell, inventory management, and API consumption.
*   **The Renderer (Canvas):** **PixiJS** (WebGL).
    *   Handles: High-performance rendering of thousands of text agents. Replaces the Flash DisplayList.
*   **The Simulation:** **Matter.js**.
    *   Handles: Collision, gravity, springs, and the "wind" of user interaction.

---

## **§4. Sovereign Access Tiers (The Economy)**

Monetization is structured around **agency** and **ownership**, not data extraction.

| Tier | Role | Capabilities | Metaphor |
| :--- | :--- | :--- | :--- |
| **T0** | **Observer** | Read-only. Transient interaction (mouse wind/turbulence). | The Flaneur |
| **T1** | **Scribe** | Write access. Inventory ("Pockets"). Ability to "Pin" words against gravity. | The Poet |
| **T2** | **Architect** | Zone ownership. Control over local physics (gravity/friction). API access for generative input. | The Landscaper |

---

## **§5. Immediate Roadmap**

- [x] **Genesis:** Repo initialized (`git init`).
- [x] **Ethos:** README created with "Reilly" axiom.
- [x] **Environment:** PHP 8.2 verified; Composer installed; Path configured.
- [x] **Core:** Laravel 11 installed via side-load method.
- [x] **Brain:** MySQL database connected (`netverse`).
- [x] **Lens:** NPM dependencies installed (`vue`, `pixi.js`, `matter-js`).
- [ ] **First Pulse:** Establish the "Hello World" physics demo (two words connected by a spring).
- [ ] **Archaeology:** Excavate AS3 logic for the drift curve.

---

## **§6. Repository Bindings**

*   **Project Repo:** (Private) `github.com/AndreClements/NetVerse`
*   **Methodology:** `../docs/methods/METHODOLOGY_CI.md`
*   **Philosophy:** `../docs/models/philosophy_of_hyperstrate.md`

---
### **Update: v0.2 — The Gliding Leaf (2025-12-07)**

**Refinement of Axioms:**
The initial "Reilly" constraint has evolved into a more complex set of physical laws governing the behavior of meaning in the system.

*   **A2 (Buoyancy):** Meaning is buoyant. Short words (functional particles) have low air resistance and fall fast. Long words (complex concepts) have high resistance and linger.
*   **A3 (Aerodynamics):** Motion is a function of orientation. Items slide "down the slope" of their rotation.
*   **A4 (Entropy & Placeness):** The system tends toward equilibrium (horizontal). "Pinned" is a gradient state (`adherence` 0.0 to 1.0), not a binary switch.
*   **A5 (Dynamic Symmetry):** The coordinate system will migrate from rectilinear Base-10 to **Root-2 ($\sqrt{2}$)** dynamic symmetry to support organic unfolding.

**Architectural implication:**
State must persist. We are moving from a client-side simulation to a server-side state machine.
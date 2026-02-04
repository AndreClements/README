# /docs/forensics/ — Instance Records

> **Configuration:**
> ```yaml
> intent: >
>   A registry of forensic records — raw data about the physical
>   instance, system events, and operational truth. Forensics
>   documents what is, not what should be. These are the boot logs
>   and vulnerability manifests of the Operator chassis.
> role: "Records & System Truth"
> maintenance: "Append-only; update on state change, do not retroactively edit"
> pattern: "Factual documents with minimal interpretation; data first, reading second"
> ```

---

## What This Folder Contains

**Forensics** holds documents that are:
- **Factual** — recording the specific chassis, the specific history, the specific failures
- **Low-interpretation** — data first, meaning second
- **High-provenance** — append-only; history is not rewritten
- **Wetware-adjacent** — the closest the repository gets to the physical instance

These are not reflective essays (see [/essays/](../essays/) for that). These are **ground truth** — what the system reveals about itself when read without flinching.

---

## Relationship to Other Folders

| Folder | Role | Relation to Forensics |
|--------|------|-----------------------|
| **/essays/** | Reflective readings | Essays perform interpretive reading of what forensics records factually |
| **/models/** | Conceptual frameworks | Models theorize the abstract; forensics grounds the specific |
| **/protocols/** | Governance primitives | Protocols govern how forensic data is handled (provenance, consent) |

---

## Index of Records

| Record | Type | Content | Status |
|--------|------|---------|--------|
| **[BOOT_LOG.md](BOOT_LOG.md)** | Instance data | Physical chassis specification; system uptime log | active |

---

## Cross-links

- **[README.md §0](../../README.md)** — Bootloader; the narrative form of what this folder records
- **[README.md §2](../../README.md)** — The Operator; the abstract class this folder instantiates
- **[/essays/](../essays/)** — Forensic reading as interpretive practice
- **[philosophy_of_body.md](../models/philosophy_of_body.md)** — Embodied resilience; the theory of what this folder documents

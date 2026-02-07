# /workbench/ — Sketches in Transition

> **Configuration:**
> *Housekeeping data below. The real mess is further down.*
> ```yaml
> intent: >
>   A space for sub-draft level material: more formed than raw ideacubator
>   captures, not yet at the resolution of staging or docs. The workbench
>   is where ideas are shaped, tested, and iterated before committing to
>   a destination.
> role: "Active Shaping & Incubation"
> maintenance: "Active; files may be promoted, archived, or discarded"
> pattern: "sketch__[topic].md files with lightweight status markers"
> ```

---

## What This Folder Contains

**Sketches** are documents that:
- Have emerged from `ideacubator/` or `IDEACUBATORY.md` raw captures
- Are not yet coherent or complete enough for `staging/` or `docs/`
- May be exploratory, contradictory, or intentionally rough
- Are expected to *move*: promoted to staging, merged into docs, or archived

---

## Relationship to Other Folders

| Folder | Role | Relation to Workbench |
|--------|------|-----------------------|
| **IDEACUBATORY.md** | Raw input stream | Workbench receives material from here |
| **ideacubator/** | Slightly formed raw ideas | Workbench receives promoted ideas |
| **staging/** | Work-in-progress, ready to refine | Workbench feeds into staging |
| **docs/** | Polished, production content | Final destination after staging |

---

## File Naming Convention

`sketch__[topic].md`

Examples:
- `sketch__parametric_authorship_iteration.md`
- `sketch__body_time_concept_map.md`

---

## Status Markers

Use inline status at top of each file:

`_Status: `SHAPING`_`

Values: `SHAPING` | `DORMANT` | `READY_TO_STAGE` | `ARCHIVE`

---

## Cross-links

- **[IDEACUBATORY.md](../IDEACUBATORY.md)** — Upstream raw input
- **[ideacubator/](../ideacubator/)** — Upstream idea captures
- **[staging/](../staging/)** — Downstream staging area
- **[docs/](../docs/)** — Final production destination

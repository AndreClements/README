`docs/poems/README.md`

# /docs/poems/ — Poems

> **Configuration:**
> *Configuration for systems. The poems themselves are for ears.*
> ```yaml
> intent: >
>   A registry of freestanding poems: works with a fixed, circulated
>   version and their repo-side apparatus. A poem enters this folder
>   when a version is fixed and has left the operator's hands; before
>   that it lives in staging or the ideacubator.
> role: "Poem records & apparatus"
> maintenance: "Active; apparatus-first — the canonical text of a poem lands here at (or after) its public publication, and until then the folder carries its score, fingerprint and provenance"
> pattern: "punctuation score + __provenance.md sibling per poem; lexis gated until the durable public edition exists"
> ```

---

## What This Folder Contains

Poem records that are:

- **Apparatus-first** — provenance, versions, typed relations, and a structural score arrive before the words do. The repo is master for the record; the website is the durable public edition of the text ([weight-of-relation principle](../../staging/refactor__weight_of_relation.md)).
- **Lexis-gated where needed** — a poem awaiting its public edition is present here as a *punctuation score* (structure and marks with the words masked), bound to the canonical text by hash and by a private-vault commit pointer. The mapping is public; the mark is held. This is [Map-over-Mark](../../projects/theses/parametric_authorship.md) working as custody.
- **One apparatus file per poem** — where an essay carried two apparatus files, a poem carries one. No refraction carries the whole ledger; transparency past the point of use is ballast.

Session-residue poems (written inside a working session, companion to another document) live in [staging/reflections/](../../staging/reflections/) — cf. *Span* — and publication packages still incubating live in [ideacubator/](../../ideacubator/). A poem moves here when its version is fixed and circulated.

---

## Relationship to Other Folders

| Folder | Role | Relation to Poems |
|--------|------|--------------------|
| **/essays/** | Reflective field essays | Apparatus precedent (provenance + colophon pattern); essays argue, poems assert |
| **/protocols/** | Governance primitives | [PROTOCOL__provenance_ledger.md](../protocols/PROTOCOL__provenance_ledger.md) and [PROTOCOL__typed_coauthorship_relations.md](../protocols/PROTOCOL__typed_coauthorship_relations.md) govern each record |
| **/methods/** | Executable practices | [voice_signature.md](../methods/voice_signature.md) reads the poems as purest signal (poetry asserts; it cannot hedge) |

---

## Index of Poems

| Poem | Version | Status | Apparatus |
|------|---------|--------|-----------|
| **Logistics of the Heart** | v1.0.0 | Circulated (WhatsApp, on/before 2026-08-20); site publication pending (post 1486); lexis gated until launch. Returned marks (2026-08-21) recorded, unapplied. | [provenance](logistics_of_the_heart__provenance.md) |
| **Six Chambers. Count Them.** | v1.0.0 (as received 2026-08-21) | Semi-private: title + canonical address public, text and score gated; site page pending (URL to be set). Publication sequencing coupled to *Logistics*. | [provenance](six_chambers_count_them__provenance.md) |

---

## Cross-links

- **[CONCEPTS/GLOSSARY.md](../../CONCEPTS/GLOSSARY.md)** §Operational vocabulary — *lexis-gating*, *punctuation score*
- **[projects/theses/parametric_authorship.md](../../projects/theses/parametric_authorship.md)** — A1 Map-over-Mark, A6 Provenance is the Indexical Trace
- **[docs/essays/README.md](../essays/README.md)** — the sibling registry this one's shape borrows

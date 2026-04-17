`staging/reflections/engineering_seed.md`

# Engineering Model — Provenance Seed

> **Archive header**
> ```yaml
> archive:
>   title: "Engineering model — provenance seed"
>   status: "complete"
>   created: 2026-04-17
>   sessions_completed: 1
>   current_phase: "seed"
>   early_signal: "proceed"
> ```

---

## What surfaced

An AI-generated cross-domain engineering synthesis arrived in mid-April 2026: general / software / data engineering principles laid out with a provenance ledger, a Venn mapping, a sceptic pass. Silver-tier overall (LLM synthesis of Gold-tier primary sources). Twelve thousand words, or thereabouts.

The delivery chain (forwarded, re-forwarded, passed hand to hand) is not preserved here. It is noise. The synthesis is treated as *an LLM artefact the operator encountered*, and nothing more. Attribution cleanliness matters; Principle 8 (Host ≠ Author) is easier to honour when the attribution is simple.

## Why the seed was kept

The synthesis's convergence findings confirm an intuition that has been waiting for a model. At the component scale, [philosophy_of_body](../../docs/models/philosophy_of_body.md) already names boundary integrity (firewall-before-port). At the field scale, [philosophy_of_hyperstrate](../../docs/models/philosophy_of_hyperstrate.md) already names protocol and ledger. The middle — modules, systems, the engineering decisions that accumulate into a repo or a WordPress theme or a life-drawing practice's infrastructure — has been unnamed. The synthesis's cross-domain convergence table (its §5.1: separation of concerns, modularity, abstraction, feedback, fail-safe, parsimony, all independently surfacing across general / software / data engineering) is the scaffolding that lets the homegrown model declare its axiom without having to re-derive the field from scratch.

The convergence is not the model. The convergence gives the model permission to be small.

## The split

Two files, not one.

1. **`docs/lib/lib__cross_domain_engineering_principles.md`** — the imported synthesis, hosted as a lib entry. Origin declared as *AI-generated synthesis (LLM, 2026)*. No forwarder. No sibling. No company email. Silver tier with caveat: the LLM cited primary sources from training-data memory, not from independent reading; specific page numbers and exact quotes are `unverified_inference` until a human reader checks them.
2. **`docs/models/engineering.md`** — the homegrown model. First-hand, practice-emergent, voice-native. Cites the lib entry for convergence scaffolding; does not import its prose.

This is the SRII pattern (CARDS as lib → SRII as model). It is also the spans pattern (no lib dependency, but a staging seed + model + essay).

Running the imported synthesis wholesale into `docs/models/` would be LSP-T2 (semantic drift): the label *model* would be preserved, but the meaning (homegrown, first-hand) would silently flip to imported scholarship. The split keeps the label honest.

## Operator correction (recorded)

Initial plan proposed **four valences** (Structure / Seam / Signal / Graveyard), on the spans.md precedent.

Operator response: *but does four valences make sense in this context, surely this should be 'n' valences?*

Correction absorbed. The spans.md footnote ([L51](../../docs/models/spans.md)) already carries the open-count rider — *"The count is open: a fifth valence ... may surface in use, and the model does not close the list"* — but the engineering model should foreground the openness from the start, not treat it as a concession. Engineering has as many faces as the situation demands. Named core: Structure, Seam, Signal, Graveyard. Surfacing also in practice: Substrate, Ledger, Ritual, Residue. The list invites; it does not close.

A process note (for [PRIVATE_META/field_notes/](../../../PRIVATE_META/field_notes/), if it surfaces there): the *n*-valence correction is the kind of move that separates a homegrown model from a ported one. An imported framework would have a fixed taxonomy; the homegrown model earns the right to leave the list open.

## Lineage (short form)

```
OneThread-era PHP practice (2010s–)
  → life-drawing infrastructure + andresclements.com deployments
  → README repo governance + CII v4.2.1
  → imported cross-domain engineering synthesis (LLM, 2026-04)
  → this seed (2026-04-17)
  → docs/models/engineering.md + docs/lib/lib__cross_domain_engineering_principles.md
```

## Resume instructions

This seed is complete; the model and lib entry have been drafted from here. For a future session iterating on the model:

1. Read this seed first.
2. Read [docs/models/engineering.md](../../docs/models/engineering.md) and [docs/lib/lib__cross_domain_engineering_principles.md](../../docs/lib/lib__cross_domain_engineering_principles.md) for current state.
3. Read [docs/methods/METHODOLOGY_CII.md](../../docs/methods/METHODOLOGY_CII.md) §0 dispatch table for tier routing.
4. Check the model's `sceptic_pass:` field for registered gaps.
5. A companion field essay (`docs/essays/engineering_field_essay.md`) is deferred; likely the next natural iteration, parallel to the spans model + spans_field_essay pair.

*something like that.*

# Exhibition and event repository-boundary execution manifest

```yaml
archive:
  unit: B2
  status: "proposal — exact path and website projection map; no move, rewrite, database change or deploy performed"
  created: 2026-09-06
  owner: "GPT-5.6 Sol"
  elaborates: "coordination_bench_tmp.md — B1 repository-boundary audit"
  repositories:
    public_method: "README"
    private_practice_record: "ArtPraxis"
    public_event_projection: "andresclements.com"
  custody: "No poem lexis, participant material, private correspondence, buyer identity or private contact detail is reproduced here."
```

## 1. Boundary used by this proposal

- **ArtPraxis is the event record.** It owns exhibition histories, outcomes, works, terms, correspondence pointers, custody and unresolved follow-up.
- **README is the public method layer.** It may retain a stable public case, a frozen manual that was itself deployed, a protocol, or a thin tombstone. It is not the live exhibition tracker.
- **The website is a projection.** It receives verified public facts and public-safe images after the ArtPraxis record is current. It does not become the source of truth for sales, consent, correspondence or custody.
- Existing public paths stay in place. Cross-repository history cannot be preserved by `git mv`; the private destination records the public source path, source commit and SHA-256 before the public file is rewritten.
- A public file's previous Git revisions remain public. Moving or deleting the current file is not a privacy remedy; any history rewrite is a separate, explicitly authorised security operation.

## 2. Frozen source anchors

Hashes are of the working-tree bytes read on 2026-09-06. Commits are the last commits touching the named source, not proof that the whole repository was clean.

| Public source | Last source commit | SHA-256 / inventory anchor |
|---|---|---|
| `projects/project__bodyTime_exhibition_manual.md` | `39a7087a4937091cadb7131b1f0da198a014b6b2` | `70dbc1e93f2bcdceb032920e12169c71f07d095a0598ab58707b5ea73d99b423` |
| `projects/project__lifescape_exhibition--user_manual.md` | `866b215d0d2ddacb1dca4ad07a5dd5fabfc70bcb` | `bf302be2b2792b685b9511320e901674a9b2206b7953becf5275865e8693c7c7` |
| `projects/lifescape_exhibition_assets/` | `b305c72ea390329fdd7d2f21bb74b8fe7aba06f0` | 110 files; 285,540,035 bytes; ordered manifest digest `738755aec6a255bfae41a615ab689bb9a9927a59962cb3bfc44b99af28983ba4` |
| `projects/project__bowie_tribute_statement.md` | `bf2767b3e8a4f69e97b9c50155f12512e065fa0f` | `3493157a148dd6e47d0a2947b8c7ef5b44dc232ababb26a80f8aebaf82bb8c20` |
| `projects/project__eve_song_statement.md` | `bf2767b3e8a4f69e97b9c50155f12512e065fa0f` | `594c34dd12d979e7f21fd9efb4df5c9c8f84a68a0a4f2a32e3716fb49de5112a` |
| `projects/project__magic_shadow_show_protocol.md` | `ddc576d9fd4a6b93393bae0d13b9e10ec9825efb` | `02464203be2b9ac8c8bd4806ad9dc683b9eaa54808a95abfca9a42f42245358c` |

The lifescape digest is SHA-256 over UTF-8 lines of `relative/path<TAB>bytes<TAB>file_sha256`, sorted by path with no final newline. It includes the zero-byte untracked lock file `~a2template~0gwm_v.idlk`; 109 of the 110 files are tracked.

## 3. Exact move / retain / reference map

### B2-M1 — `bodyTime()`

1. Create `ArtPraxis/exhibitions/2025-bodytime/README.md` and `ArtPraxis/exhibitions/2025-bodytime/exhibition.md`.
2. Copy the complete current public manual into `exhibition.md`, then add provenance fields: `moved_from`, `source_commit`, `source_sha256`, `captured_on`, and `public_case_path`. Do not call the operation a `git mv`.
3. Put the event/history material in the private hub: the Sex Expo trial, the 15–16 March 2025 Stokvel installation, the Opale continuation, installation/placement outcomes and unresolved operational notes.
4. Retain `projects/project__bodyTime_exhibition_manual.md` at the same public path as a compact, maintained method/case record: P(a)/PPP, consent-led studio praxis, dual wall texts, public attestation, public dates and a provenance notice. Remove live exhibition-task language and repair its stale `METHODOLOGY_CI.md` link during that rewrite.
5. No reference update is required for `docs/models/aLexicon.md`, `docs/models/spans.md`, the Bowie/Eve tombstones or `TODOS.md` because the public path survives. Verify those links after the rewrite.

### B2-M2 — `lifescape()`

1. Create `ArtPraxis/exhibitions/2025-lifescape/README.md`, `ArtPraxis/exhibitions/2025-lifescape/exhibition.md` and `ArtPraxis/exhibitions/2025-lifescape/archive-manifest.tsv`.
2. Copy the full participation manual to the private `exhibition.md` with the same provenance fields used for `bodyTime()`.
3. Retain `projects/project__lifescape_exhibition--user_manual.md` as a **frozen deployed public manual**, not a second live source. Add an archival banner, its byte hash, the private canonical-record statement, and a no-further-maintenance date. This preserves the manual's own event-time promise that it would remain publicly available.
4. Keep the reusable dual-wall practice at `ideacubator/idea__dual_wall_text_inclusivity_practice.md`. If the co-curation material merits its own public method after operator review, extract it to the proposed `ideacubator/idea__lifescape_co_curation_protocol.md`; do not keep updating it inside the frozen event manual.
5. Do **not** copy `projects/lifescape_exhibition_assets/` into ArtPraxis Git in bulk. The tree contains other artists' works, admin DOCX files, eighteen INDD files and bundled fonts. `artworks/`, `admin/`, `Invite-design/` and publicity images require separate rights/custody classifications. `C:\Users\User\Documents\LifescapeExhibitionPrints` is only a four-file partial set and is not the archive destination.
6. At execution, write one row per asset to `archive-manifest.tsv` (`relative_path`, `bytes`, `sha256`, `tracked`, `custody_class`, `rights_basis`, `archive_location`). Choose and verify a recoverable cold-archive location before removing any active public copy. Public Git history remains a separate exposure question.

### B2-M3 — Bowie preproduction tracker

1. Copy `projects/project__bowie_tribute_statement.md` to `ArtPraxis/exhibitions/2026-bowie-tribute/preproduction-statement-tracker.md` with its commit and hash.
2. Update the comment at the top of `ArtPraxis/exhibitions/2026-bowie-tribute/statement.md` to the local archived tracker, and correct the stale status in `exhibition.md` before any website event is created.
3. Replace the public tracker in place with a thin outcome/provenance tombstone. It may retain the Pretoria dates, the existence of the Melville restaging, public method pointers and public work links. Do not copy buyer identity, contact data, payout detail or private correspondence into README or the website.
4. Keep both public exhibition legs as separate website events joined by the shared WordPress tag `Exhibition: Bowie Tribute`; the current event schema has no series field.

### B2-M4 — Eve Song preproduction tracker and workshop correction

1. Copy `projects/project__eve_song_statement.md` to `ArtPraxis/exhibitions/2026-eve-song/preproduction-statement-tracker.md` with its commit and hash. Update the local `statement.md` comment to that path and type the statement as an unadopted proposal rather than an exhibition outcome.
2. Replace the public tracker in place with a short supersession record: the proposed integration of André's visual work was not pursued; the completed contribution was the separate drawing workshop already represented by website event 1480. Do not project Eve Song as a separate André exhibition or happening without a new operator ruling.
3. The 2026-09-06 operator account corrects the record in two directions: the broader integration was not pursued, while the prompt-pool/veto apparatus was used. This manifest does not infer what that means for research use and carries no room or participant evidence.
4. Retain event 1480, but repair its public copy before backfilling other events. Its current body describes a live Nussbaum test, participant co-authorship and three composites showing in the programme; those claims must be checked line by line against the operator's two statements. Do not silently turn either model's reading into the replacement copy.

### B2-M5 — Magic Shadow / Magic Phantom workshop

1. Create `ArtPraxis/exhibitions/2025-magic-phantom-workshop/README.md` and `ArtPraxis/exhibitions/2025-magic-phantom-workshop/exhibition.md` for the August House run.
2. Put only run-specific facts and outcomes in the private event record. The exact date is unresolved: the public post dated 5 December 2025 says “this past weekend”, which narrows but does not prove the date.
3. Retain the full technical protocol at `projects/project__magic_shadow_show_protocol.md`, because it is reusable and the public website post links to it. Replace its one run-specific `DEPLOYED` header with a tested-status note and an event-record provenance pointer only after the ArtPraxis record exists.

### Required ArtPraxis finding-aid changes

After the destination records exist, add `2025-bodytime/`, `2025-lifescape/` and `2025-magic-phantom-workshop/` to `ArtPraxis/exhibitions/README.md`. In the same close-out pass, correct the existing Bowie, Eve Song, Moon and Things rows from their evidence; do not guess the missing outcomes.

## 4. Website event projection

`event_status` currently accepts only `scheduled`, `postponed` or `cancelled`. For completed past events, the archive derives pastness from `event_end`; `scheduled` therefore remains the storage value unless the schema is separately extended. A blank end is automatically replaced by the start date, so an unknown exhibition end must not be represented by silently leaving the field empty.

| Record / action | Event values supported now | Readiness and dependency |
|---|---|---|
| **DENCITY** — reuse legacy ID `158`, slug `dencity` | `Group`; start `2011-06-14`, end `2011-08-13`, start time `18:30`; Resolution Gallery; Unit 4, 142 Jan Smuts Avenue, Parkwood 2193; Johannesburg | **READY AFTER SANITISATION.** Re-type the existing post as `event`, preserve its ID/media relation, repair mojibake, remove injected “clinic”/“troche” spam and omit historic personal contact details. Verify the collaborative copy before publication. |
| **ALEXA MAKE SOME ART** — reuse legacy ID `1086`, slug `alexa-make-some-art` | `Group`; start `2024-05-18`, end `2024-06-15`, start time `11:00`; The Viewing Room Art Gallery; 492 Fehrsen Street, Brooklyn Circle; Pretoria; curator Debbie Cloete | **READY AFTER COPY REVIEW.** Preserve the poster only if its media rights are documented. Reduce the generated-sounding description to sourced event/work facts if authorship cannot be established. |
| **Killer Queen** — reuse legacy ID `1140`, slug `killer-queen` | `Group`; start `2024-11-16`, end `2024-12-24`, start time `11:00`; The Viewing Room Art Gallery; 492 Fehrsen Street, Brooklyn Circle; Pretoria; curator Gordon Froud | **READY.** End date and curator are corroborated by public post 1132; remove phone numbers from the body unless there is a current reason to retain them. |
| **bodyTime()** — reuse legacy ID `1268`, slug `bodytime` | `Solo` **operator confirmation requested**; start `2025-03-15`, end `2025-03-16`; Stokvel Gallery; city Johannesburg only if confirmed | **READY AFTER ART PRAXIS RECORD.** Legacy post date `2025-07-12` is not the event date. Populate the empty legacy body from the public-safe case record, not from private correspondence. |
| **Echoes of Lynch** — new event, slug `echoes-of-lynch` | `Group`; start `2025-07-15`, end `2025-08-15`; venue `Opale Art (online)`; external URL `https://opaleart.com/exposition-echoes-of-lynch/` | **READY.** Dates and online venue are stated in public post 1267. Use André's participation and selected work only; do not reproduce the full participant list unless needed. |
| **lifescape()** — new event, slug `lifescape` | `Group`; start `2025-10-04`, end `2025-10-05`, start time `11:00`; Stokvel Gallery, 27 Boxes, Melville; Johannesburg | **READY AFTER ART PRAXIS RECORD.** Use public manual facts and a small rights-cleared image selection; do not migrate the asset tree or admin material into WordPress. |
| **The Magic Phantom Drawing Workshop** — new event only after date confirmation | `Workshop`; August House; Johannesburg; facilitator André Clements | **BLOCKED: exact run date.** Keep public post 1329 and protocol link meanwhile. “Past weekend” in a 5 December post is evidence, not an exact date. |
| **MOON: its gravity on a slow painting** — new event, slug `moon-its-gravity-on-a-slow-painting` | `Group`; candidate start `2026-01-23`, candidate end `2026-02-19`, start time `18:00`; Trent Gallery, Waterkloof; Pretoria; curator Helen Lötter | **BLOCKED: DATE CONTRADICTION.** Public post 1336 says “Thursday, 23 January”, but 23 January 2026 was a Friday. Confirm Thursday 22 January versus Friday 23 January, then repair the stale ArtPraxis hub. Sale/payment/collection details stay private. |
| **From Ziggy Stardust to Blackstar** — new Pretoria event, slug `from-ziggy-stardust-to-blackstar` | `Group`; start `2026-05-23`, end `2026-06-15`; The Viewing Room Art Gallery at St. Lorient; Pretoria; curator Gordon Froud; tag `Exhibition: Bowie Tribute` | **READY AFTER BOWIE HUB CLOSE-OUT.** Public post 1417 supports the facts. Do not project the private sale file. |
| **Things We've Gotta Let Go Of** — new event, slug `things-weve-gotta-let-go-of` | `Group`; start `2026-05-16`, start time `11:00`; The Studio; 48b 5th Avenue, Parktown North; Johannesburg | **BLOCKED:** duration, final selection and outcome are unrecorded. Confirm whether it was a one-day event before allowing the save handler to default `event_end` to 16 May. Keep beneficiary health details and private contact information out of public copy. |
| **Objectively · Objectifying · Objectification** — update existing event ID `1480`, slug `objectification-workshop` | `Workshop`; start `2026-08-07`, end `2026-08-07`, start `10:00`, end `13:30`; 2-1 Gallery, University of Pretoria; Pretoria | **COPY REPAIR FIRST.** Keep the completed workshop event. Reconcile the public body with the operator's two 6 September statements; do not add a separate Eve Song event from the superseded tracker. Research interpretation remains an operator decision. |
| **From Aladdin Sane to Blackstar** — new Melville event, slug `from-aladdin-sane-to-blackstar` | `Group`; start `2026-08-23`, start time `12:00`; Stokvel Gallery, 27 Boxes, 4th Ave, Melville; Johannesburg; curator Gordon Froud; tag `Exhibition: Bowie Tribute` | **BLOCKED: closing date.** Keep it distinct from the Pretoria record. Do not publish an estimated three-week end date as fact and do not copy buyer or payout details. |
| **Eve Song — A Happening** | No event values proposed | **DO NOT CREATE as André's event on present evidence.** The operator says the broader integration was not pursued. Retain Eve Song only as context where accurately needed on the corrected workshop page. |
| **Wildlife: Then & Now** | No completed event values proposed | **EXCLUDE from completed archive.** ArtPraxis records the withdrawal. A cancelled event page is optional only if the operator wants a public record of the withdrawal. |

The Sex Expo trial (29 November–1 December 2024) is a possible later event/appearance record, not part of this minimum backfill.

## 5. Safe execution order

1. Re-read the coordination bench and obtain operator approval for the boundary modes above, especially the frozen lifescape manual, the `bodyTime()` solo classification and the Eve Song/Objectification public distinction.
2. Re-check all three worktrees. Preserve unrelated changes. Create the ArtPraxis destinations first, with provenance and finding-aid rows; correct stale ArtPraxis hubs before projecting them.
3. Build and review the lifescape asset manifest. Choose a cold archive and rights/custody disposition. Do not delete or bulk-copy assets yet.
4. Rewrite only the five named README sources into their assigned modes; run an internal-link check and verify the website's existing Magic protocol link. No canonical method edit is implied by this proposal.
5. Reconcile the website branch before touching it. On 2026-09-06 it is `ahead 2, behind 1` with unrelated custody work, while remote commit `68727fc` contains security remediation. Complete the incident checklist and take a database/media backup.
6. Repair live event 1480's copy. Then migrate legacy IDs 158, 1086, 1140 and 1268 in place after sanitisation, followed by the ready new events. Do not publish blocked rows.
7. Verify REST/archive/single-event rendering, event types, shared Bowie tag, dates/time zone, old media, redirects and duplicate slugs in staging. Deploy only the reviewed event set, then compare live REST values to this table.

## 6. Decisions still required

- Approve or vary each public mode: `bodyTime()` method/case, lifescape frozen manual, Bowie/Eve tombstones, Magic reusable protocol.
- Choose the lifescape cold-archive location and whether already-public admin/font/other-artist assets require security or history-remediation work.
- Confirm `bodyTime()` as Solo; the Magic run date; Moon's contradictory opening date; Things duration/selection/outcome; the Bowie Melville closing date; and whether Wildlife should have a public cancelled record.
- Approve the factual scope and wording of the Objectification page correction, including what may be said about the prompt-pool run and what, if anything, may be used as research evidence.

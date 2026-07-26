`staging/herri_decay_submission/provenance_ledger__herri_decay_plates.md`

# Provenance Ledger — Herri decay plates

> Schema: [templates/provenance_ledger.md](../../templates/provenance_ledger.md).
> Scope: the thirteen photographs at `ArtPraxis/_archive/Herri_Decay/` and the claims made about
> them across six drafts of *Urban Decay is a Verb* (2026-07-26).
> **This ledger records readings. It does not amend any draft.** Where a draft carries a reading
> this ledger contradicts, the ledger says so and stops there; whether the prose changes is the
> operator's.

**Method note.** The `JPEG/` exports have had EXIF stripped (they carry the 2026-07-26 export
stamp only). Everything below is read from the **originals in the parent folder** — TIF, camera
JPG, or PNG — via PIL, base IFD plus Exif sub-IFD (`DateTimeOriginal`, tag 0x9003). Text on
surfaces was read by cropping the region from the full-resolution original, converting to
greyscale, autocontrasting and upscaling 3× (Lanczos), then reading the result. Weekdays are
derived arithmetic, not stored data.

---

## §1 Capture stamps

| id | asset | source | evidence | confidence | validation_method | notes |
|----|-------|--------|----------|------------|-------------------|-------|
| P-01 | `Zandspruit_Ballgame_2012_DSC6875.tif` | original TIF | `2012-06-13 15:26:40` · Nikon D7000 | high | EXIF read | Wednesday |
| P-02 | `OWN-tower(2014_07_30_1459_tmp).tif` | original TIF | `2014-07-30 22:54:45` · Canon EOS 600D | high | EXIF read | Wednesday |
| P-03 | `Life(ASClem_2015_07_29_1293).TIF` | original TIF | `2015-07-29 21:33:17` · Canon EOS 500D | high | EXIF read | Wednesday |
| P-04 | `DiepslootRefuseFire(…take2).tif` | original TIF | `2015-10-08 22:50:55` · Canon EOS 500D | high | EXIF read | Thursday |
| P-05 | `MagNieGeboggelWordNie(StandertonElektries_2016).tif` | original TIF | `2016-06-05 00:19:44` · Canon EOS 750D | high | EXIF read | Sunday. **Place: see §3** |
| P-06 | `_MG_0800.JPG` | camera JPG | `2016-06-22 01:45:25` · Canon EOS 750D | high | EXIF read | Wednesday. Supersedes a recollection of 2015 |
| P-07 | `04_crop_colour_3200.tif` | original TIF | `2017-03-19 02:22:01` · Canon EOS 750D | high | EXIF read | Sunday |
| P-08 | `FacesinBordeaux_2019_MG_6016e.tif` | original TIF | `2019-04-26 22:30:50` · Canon EOS 6D Mark II | high | EXIF read | Friday. Places Bordeaux 8 days before P-09 → **France**, not Randburg (operator-confirmed) |
| P-09 | `Midnight(Paris 2019).jpg` | camera JPG | `2019-05-04 00:00:41` · Canon EOS 6D Mark II | high | EXIF read | Saturday. The title is true to the minute |
| P-10 | `Durban Deep_2021(FNMBJ_Jul21_MG_0887).JPG` | camera JPG | `2021-07-17 16:37:13` · Canon EOS 6D Mark II | high | EXIF read | Saturday |
| P-11 | `IMG_1278_urban_decay_is_a_verb.png` | PNG export | **no timestamp; no Model tag** | — | EXIF read (negative) | **UNPAID.** No original located under `ArtPraxis/`. Year 2023 rests on operator recollection |
| P-12 | `school_hillbrow.jpg` | archive copy | **no EXIF**; 1080 × 1350 px | — | file inspection | **UNPAID.** See §4 |
| P-13 | `EventHorison(…)[…2017-2026].tif` | composite | no `DateTimeOriginal`; only a 2026-07-26 save stamp | n/a | EXIF read (negative) | Composite by construction; a single capture date does not exist |

**Derived, not asserted.** Of the ten dated frames, **eight are night** (≥19:00 or ≤05:00) and
**four are after midnight**. Weekday spread is Wed ×4, Sun ×2, Sat ×2, Thu ×1, Fri ×1 — at n=10
this supports no claim about a working week; the hours do.

---

## §2 The stencil (P-05)

| id | claim | source | evidence | confidence | validation_method |
|----|-------|--------|----------|------------|-------------------|
| S-01 | The inscription reads, in two lines, **`MAG NIE GEBOGGEL OF` / `LOS GERANGEER WORD NIE`** | the photograph itself | 6000 × 4000 original, region cropped at ~(0.215–0.345 W, 0.435–0.505 H), greyscale, autocontrast, 3× Lanczos | high | direct read of the source |
| S-02 | *geboggel* is anomalous: the standard SAR/Spoornet formula is *gebuffer* | domain knowledge, unverified against a rolling-stock marking standard | — | medium | **unverified_inference.** Named for lineage, not authority |
| S-03 | The operator's own filename preserves `MagNieGeboggelWordNie` | `ArtPraxis/_archive/Herri_Decay/` | filename | high | corroborates S-01 independently of any draft |

**Superseded readings.** Three drafts (`…v0.1.0`, `…v0.2.0`, `…v0.3.0(Opus5VSCode)`) quoted
`GEHANGEER`. That is not the inscription and is not an Afrikaans word. Two drafts
(`…v0.3.0(Opus5OnlineChat)`, `…v0.4.0`) declined to quote it and paraphrased it as *"may not be
buffered or loose-shunted"* — the correct editorial instinct on the evidence then available, but
the paraphrase silently substitutes *gebuffer* for what is painted. `v0.5.0` coins **`ongeboggeld`**,
which is built on the true root and currently has no antecedent in its own text.

---

## §3 Place (P-05) — corrected

| id | claim | source | confidence | validation_method |
|----|-------|--------|------------|-------------------|
| L-01 | The photograph was made in **Braamfontein, Johannesburg** | operator, 2026-07-26 | high | Operator_verified |
| L-02 | **`STANDERTON ELEKTRIES`** is *inscribed on the carriage*, and is in the filename for that reason | the photograph; operator | high | direct read + Operator_verified |
| L-03 | The carriage also carries running number **`14160`**, and beneath the depot line **`SYLYN 76…14`** (middle digits obscured) | the photograph | medium (14160 high; SYLYN string partial) | direct read of the source |

**Superseded.** Four drafts and the plate manifest gave the *place* as Standerton. That is the
inscription, not the location. Cause: each reader took the location from the filename.

---

## §4 `school_hillbrow` (P-12)

| id | claim | source | confidence | validation_method |
|----|-------|--------|------------|-------------------|
| H-01 | The frame shows a camera **on** its tripod, cable release attached, rear screen lit — a working setup mid-exposure | the photograph | high | crop of lower-left region, 3× upscale |
| H-02 | The archive copy is **1080 × 1350**, an Instagram portrait crop, with no EXIF | file inspection | high | direct |
| H-03 | Therefore the file in the archive is already a social re-save; the original is elsewhere or gone | inference from H-02 | high | inference, stated |
| H-04 | The frame is "the last frame of that night" and the camera "was about to be taken" | drafts `…Opus5OnlineChat` v0.3.0/v0.4.0 | — | **UNVERIFIED.** Nothing in the file supports it. The v0.4.0 colophon sources the surrounding window passage to the operator's Facebook reply of 2026… *2 January 2023*, but does not list this claim among what that reply supplies. Recollection or invention: operator to mark |

**Superseded.** Two drafts (`…v0.3.0(Opus5VSCode)`, `…(Fable5VSCode)`) describe the camera as
down "on the tarmac". H-01 contradicts that. The correction is not cosmetic: an apparatus
standing in that road at night working properly is a different avowal from a broken one.

---

## §5 Validation finding — inheritance is not corroboration

Two errors in this set propagated across four independently-run model drafts, and in both cases
the shared wording read as confirmation when it was descent from a common ancestor:

1. **Place** — taken from a filename by the first reader, then inherited. Four drafts agreed.
2. **Stencil** — one misreading of a low-resolution export, then inherited verbatim. Three drafts
   agreed *character for character*, which is the signature of copying rather than of independent
   reading.

The `Opus5OnlineChat` v0.4.0 colophon caught the shape of this from inside the set — *"four
machines agreeing is not a reading"* — and drew the right operational conclusion (refuse to
quote) from a partly wrong premise (it inferred the agreed wording was not Afrikaans; in fact one
letter was wrong and the odd-looking word was correct).

**Guard, for reuse.** Where a claim can be read off a source asset, agreement between drafts
counts for nothing; only a read of the asset counts. Filenames are the operator's shorthand and
are **not** metadata. This sits alongside the existing note that "canonical" names where a claim is
*stated*, not where it is *verified*
([field_notes__methodology_ci.md](../../../PRIVATE_META/field_notes/field_notes__methodology_ci.md)).

---

## §6 Still unpaid

- **P-11** `IMG_1278` capture date. Needs the G1X original or the Lightroom catalogue. Until then
  the interval after the Hillbrow night (2 January 2023) stands as the operator's recollection and
  should not be adjusted to fit the PNG's February 2023 export stamp.
- **P-12** `school_hillbrow` capture date, and H-04.
- **S-02** the *gebuffer* standard, asserted from domain knowledge and not checked against a
  rolling-stock marking specification.
- **Two claims new in `v0.5.0`**, carried here because they are checkable and currently unsourced:
  Zandspruit population density ">30,000/sq km" in 2012, and the Durban Deep "implosion of
  corporate interests in 2001".

---

*Compiled 2026-07-26, theMachine(s) (Opus 5, VS Code), from the archive originals. Readings are
the instrument's; the frames, the places and the recollections are the operator's. No draft was
amended in the making of this ledger.*

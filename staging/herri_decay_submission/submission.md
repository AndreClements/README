# Submission — herri, urban decay issue

**Piece:** *Urban Decay is a Verb* — photo-essay, ~2,200 words plus captions, thirteen plates.
**Author:** André S Clements.
**Issue live:** 1 August 2026.
**Contact at herri:** Aryan (holds the 2023 caption; asked for pictures).

---

## Assembly

The body text is **[docs/essays/urban_decay_is_a_verb.md](../../docs/essays/urban_decay_is_a_verb.md)**
— **v0.5.0, the operator's hand-pass, canonical**. It carries its own published footer
(*Photographs and text… Provenance:* + the GitHub URL) and embeds the plates inline; nothing needs
to be cut or added to build the file that goes to herri.

- **Ready-made PDF:** [urban_decay_is_a_verb_v0.5.1.pdf](urban_decay_is_a_verb_v0.5.1.pdf)
  (ASC branding, ~3.6 MB; plates at 1600px for mail). Rebuild after any edit with
  `tools\render-pdf.ps1 -InputFile docs\essays\urban_decay_is_a_verb.md -Brand -Toc:$false -NumberSections:$false -NoTitleBlock`.
- **Full-resolution plates** ship separately per [plates.md](plates.md) (3000px exports); the repo
  copies at `docs/essays/urban_decay_is_a_verb_plates/` are the same exports under sanitised names.
- Repo-side apparatus stays home: [provenance](../../docs/essays/urban_decay_is_a_verb__provenance.md)
  and [colophon](../../docs/essays/urban_decay_is_a_verb__colophon.md) are not part of the
  published body.

*The intermediate drafts (v0.1.0–v0.4.0, four instruments) are retired to commit history. The seed
remains at v0.0.3, kept unfurnished. Neither ships.*

## Standfirst (as it appears under the title)

> A photo-essay. Several of the pictures are an argument, this text is what I owe them.

## Biographical note (~70 words)

> André S Clements is a programmer artist working between Johannesburg and code. Photography and
> contemporary art practice have run parallel to his technology work for two decades, with solo
> and group exhibitions in South Africa and France, and work held in private, corporate and
> public collections including Liberty and SAFFCA. He writes at
> github.com/AndreClements/README, where the frameworks behind this essay are kept in the open.

*(Source: `staging/CV_andre_clements_draft_v1.md` v2.2. Trim to herri's house length as needed;
the collections line is the first thing to go.)*

---

## Plate sequence

As sequenced in v0.5.0. The sequence is part of the work; if space forces a cut, cut rather
than reorder.

| # | Movement / anchor | File |
|---|---|---|
| 1 | opening — the staircase, the window | `IMG_1278_urban_decay_is_a_verb` |
| 2 | Banked — LIFE on the wall | `Life(ASClem_2015_07_29_1293)` |
| 3 | Banked — the city is not empty | `04_crop_colour_3200` |
| 4 | The whistle — the truck the other way | `_MG_0800` |
| 5 | Harvest — *verval*, the stencil | `MagNieGeboggelWordNie(StandertonElektries_2016)` |
| 6 | Harvest — the fire, always the fire | `DiepslootRefuseFire(ASClem_2015_10_08_1344_take2)` |
| 7 | The window — the camera at its vigil | `school_hillbrow` |
| 8 | **The boys — the Zandspruit crossing** | `Zandspruit_Ballgame_2012_DSC6875` |
| 9 | The green — mining afterlife | `Durban Deep_2021(FNMBJ_Jul21_MG_0887)` |
| 10 | The green — faces in the render | `FacesinBordeaux_2019_MG_6016e` |
| 11 | The gold — VIDEO TOWN | `OWN-tower(2014_07_30_1459_tmp)` |
| 12 | Elsewhere — midnight | `Midnight(Paris 2019)` |
| 13 | The last frame | `EventHorison(aPinhole-Poem)[pinhole_on_digital-doubleExposure-2017-2026]` |

**Plate 8 carries an editorial condition:** it publishes only with its passage ("The boys")
standing beside it. See the caption ethics note in
[urban_decay_is_a_verb__provenance.md](../../docs/essays/urban_decay_is_a_verb__provenance.md)
and in [plates.md](plates.md).

Full manifest, captions, credit line and dignity note: [plates.md](plates.md).

---

## Notes for the editor, if asked

- The Afrikaans (*verval*, the stencil on the carriage, *Kinders moet gesien word, EN gehoor
  word*, *ongeboggeld*) is deliberately untranslated.
- Plate 7 is undated because it has no EXIF. "Undated" is preferred to a guessed year.
- The essay corrects its own seed on one point (the refusal to photograph people) and says so.
  That correction is load-bearing for plate 8 and should not be edited out.

## Before sending

- [ ] Final read-aloud of v0.5.0 (the operator's BODY check on his own hand-pass).
- [ ] Source or soften the remaining recollection-stat (Durban Deep 2001). Zandspruit density is now sourced in the canonical provenance.
- [ ] Verbatim check of the January 2023 post quotes cited in the colophon.
- [ ] Confirm thirteen plates or a stated subset with herri.
- [ ] Confirm herri's export spec; current exports are 3000px long edge, sRGB.
- [ ] Locate the `IMG_1278` original if the exact day is wanted.

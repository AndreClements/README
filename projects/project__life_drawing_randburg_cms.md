# PROJECT — Life Drawing Randburg CMS

```yaml
contract:
  title: "Life Drawing Randburg — Digital Archive & Community Platform"
  operator: "André S Clements"
  collaborator: "Claude (Anthropic)"
  timeline: "~2 days build time across 8 sessions (Feb 2026)"
  intent: >
    Build a consent-informed CMS for the Life Drawing Randburg community.
    Enable artists and models to claim participation, track attendance,
    and preserve 8 years of session history with dignity and autonomy.
  status: "Beta (v0.2.0)"
  url: "https://lifedrawing.andresclements.com/randburg"
  workspace: "C:\\xampp\\htdocs\\lifedrawing\\"
  repo: "https://github.com/AndreClements/lifedrawing"
risk_index: 0.25
```

---

## Context

**Life Drawing Randburg** is a weekly figure drawing gathering hosted by André since 2017 in Randburg, Johannesburg. Artists of all levels draw from a live model in a quiet, focused environment. The model is a co-participant, not an object.

Before this project, session history lived in a Google Sheet and photos circulated in a WhatsApp group — 8 years of practice with no durable archive, no way for artists to build a portfolio from their participation, and no structure around consent for the images taken during sessions.

The brief: build a digital home that fits the values of the room. Not a social media platform. Not a portfolio site. A record of practice, with consent and dignity as structural constraints.

---

## Architecture

Custom PHP 8.2+ micro-kernel (~15 core files, no framework). Module system where each community "table" is self-contained. HTMX for interactivity. PHPMailer for SMTP. IBM Plex font family. Zero build pipeline.

The architecture borrows the bones of Laravel (service container, middleware pipeline, named routes, migration runner) but not the weight. Two external dependencies total.

Full technical details in the [app README](https://github.com/AndreClements/lifedrawing).

---

## Key Decisions

**Consent belongs in the room, not in software.** The defining architectural decision. Default artwork visibility is `public` — consent happens face-to-face during check-in. The app records the outcome, not the process. This led to a simplification: removing code that over-engineered consent by making software enforce what should be a human interaction.

**Govern via slope, not policing.** Claiming is one button press. Uploading requires facilitator role. No `if ($user->isAllowed('claim'))` permission check — the architecture makes the desired behaviour the path of least resistance.

**Stats reward attendance, not output.** Streaks track consecutive weeks attended, not artwork volume or quality. The slope encourages showing up.

**Name privacy as disclosed default.** `can_see_names()` checks whether the viewer is logged in *and* has participated in at least one session. The threshold is presence, not permission. You must have been in the room to know who else was in the room.

**Honest errors.** `AppException` carries an `andYet` field — self-critique logged alongside the catch. The consent withdrawal code doesn't pretend to handle model likeness takedowns; it confesses the gap, names the risk (Botha, non-economic), and ships.

---

## Frameworks Applied

| Framework | How it manifested |
|---|---|
| [CARDS](../docs/lib/CARDS.md) | No quality rankings (Competence). Opt-in claims (Autonomy). Session-centric design (Relatedness). `DignityException` halts (Dignity). CSRF + prepared statements + rate limiting (Safety). |
| [And-Yet](../docs/lib/) | `AppException::$andYet` field. Consent withdrawal gap documented. Scaled from exception field to system-wide design posture. |
| [Parametric Authorship](theses/parametric_authorship.md) | Slope-based governance. Claiming frictionless, uploading gated. Stats reward presence not output. |
| [Provenance Ledger](../docs/protocols/PROTOCOL__provenance_ledger.md) | Every auth event, claim, upload, consent change logged with user/action/entity/IP/timestamp. |
| Consent State Machine | `pending → granted → withdrawn` on every user. `ConsentGate` middleware enforces before data operations. |

---

## Reviews

**v0.0.1 (2026-02-14):**
- **Gemini 2.0 Flash**: "Exceptionally strong conceptually and architecturally."
- **GPT**: "An assembly header masquerading as narrative."

**v0.2.0 (2026-02-16):**
- **Gemini 2.5 Flash**: "S-Tier Prototype." And-Yet pattern is "genius." "A glimpse into the future of software development."
- **Claude chat**: "Quite good." Architecture absorbed growth without structural changes.
- **GPT**: Constraints are "executable, not vibes."

Full reviews: `lifedrawing/docs/reviews-v0.2.0.md`
Case study: `lifedrawing/docs/case-study-methodology-ci.md`

---

## Milestones

| Version | Commit | Summary |
|---|---|---|
| **v0.0.1** | `b6020a0` | Initial build — sessions, gallery, claims, consent, dashboard, profiles (session 1) |
| **v0.1.0-beta** | `87c2d66` | Security hardening, 296-session CSV backfill, name privacy, remember-me (sessions 2–3) |
| **v0.2.0** | `2f44128` | SMTP email, notifications, image pipeline, participant management, IBM Plex, tabs, FAQ, upload progress, stub claiming, intent-preserving registration, inline cleanup, git history squash (sessions 4–8) |

---

## Status

Beta. Live at production URL. 3 real registered users + ~214 stub accounts from CSV backfill awaiting claim.

**Next:**
- Image backup strategy (infrastructure — nightly rsync or S3/B2)
- Model takedown flow (And-Yet: consent withdrawal hides uploads but not likeness)
- Optimisation pass
- Add-to-calendar functionality
- Zero-downtime deployment

---

*This file is the project index entry. The canonical project state lives at the workspace. See the [workbench blog draft](../workbench/draft__blog_life_drawing_app.md) for the public-facing narrative.*

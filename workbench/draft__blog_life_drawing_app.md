# draft — blog + social posts: life drawing app

_Status: `DRAFT` — for André to edit, season, publish_
_Update (2026-02-16): App is live at v0.2.0 — https://lifedrawing.andresclements.com/randburg_

---

## Blog Post

**Title options** (pick one, or riff):
- machines and gardens: building the thing I've been threatening to build


---

I had long wanted to build a content management system to hold the snapshots of drawing I take during our life drawing sessions. Been threatening to do so for years, but where to find the time? — even using off-the-shelf solutions would take more time than I really have, or that my particular blend of ADD and autism streaks cope well with.

But we live in a different world now. Where still, *"the future is here, just not evenly distributed"* — but it does seem more distributed than before. For now.

Anyway I had finished setting up the studio after work with ten minutes to spare before people would arrive, and sat down to brief Claude Code in VSCode to build me a first draft of what I had in mind.

Written in under ten minutes, allowing a few minutes to also get through the questions I knew it would have, the brief was relatively short but dense, embedding a lot by reference to the wider constellation of my work and play. The [README repo](https://github.com/AndreClements/README), the methodology docs, the life drawing hosting sketch. A shorthand — *you've read my operating manual, now build something that fits inside it.*

Not long after the session I had a bespoke CMS developed according to my quirks and fancies, with a somewhat novel architecture and very little bloat. A claim system where artists can say *"I drew this"* and models can say *"I modelled for this"*, attendance streaks, session history — a kind of Strava for artistry, if Strava cared less about performance metrics and more about showing up. Not just coded but already working and tested in my local development environment, ready to publish to GitHub.

The architecture has a few ideas I'm fond of. A `ConsentGate` that enforces consent as a structural constraint, not a checkbox. A `DignityException` that halts rather than warns. Error handling that carries an `andYet` field — honest self-critique logged alongside the catch, because some things you handle but shouldn't pretend you've resolved. *"Govern via slope, not policing"* — make the right behaviour the path of least resistance.

I get a sense of vertigo from this technology.

Working with this stuff is working with machines, obviously, but it's also working with gardens. That intersection — that's the interesting stuff, at least to me. You shape the conditions, and then something grows that you didn't entirely specify.

If other commitments allow I'll try to get a production instance live in beta mode over the next day or two. Right now though — parkrun then life drawing, both this morning. The body has its own schedules.

_[Update: beta went live the next day. Eight build sessions, two calendar days, 296 sessions of historical data imported. Three AI reviewers called it variously "S-Tier Prototype", "quite good", and "real product surface area." The consent simplification — removing code that overstepped into human territory — turned out to be the defining architectural decision. v0.2.0: "...but every territory is a map, every map a territory."]_

---

## Facebook

**Post for AndreSClementsartist page:**

Built the thing I've been threatening to build for years — a proper digital home for Life Drawing Randburg. Session archive, artwork gallery, a claim system so artists and models can build their profiles through participation, attendance tracking. Strava for artistry, basically.

Ten-minute brief to an AI collaborator before people arrived for the session. Six hours later: working app, bespoke architecture, very little bloat. The future is here, just not evenly distributed — but it does seem more distributed than before.

I get a sense of vertigo from this technology. Also a sense of something like gardening.

Beta soon, if other commitments allow. Right now: parkrun, then the next lifedrawing session.

[link to blog post]

---

## X / Twitter

**Option A** (277 chars):
Built the life drawing CMS I've been threatening to build for years. Ten-minute brief, six hours of AI-collaborative building, bespoke architecture, working app. I get a sense of vertigo from this technology. Also something like gardening. Beta soon. [link]

**Option B** (240 chars):
Working with AI is working with machines, obviously, but it's also working with gardens. That intersection — that's the interesting stuff. Built a bespoke CMS for our life drawing community in one sitting. Vertigo. [link]

**Option C** (214 chars):
Ten minutes to brief it. Six hours to build it. A bespoke digital home for our life drawing community — consent gates, dignity exceptions, attendance streaks. The future is here, just not evenly distributed. [link]

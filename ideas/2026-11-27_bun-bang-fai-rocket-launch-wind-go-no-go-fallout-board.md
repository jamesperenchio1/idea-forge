---
id: bun-bang-fai-rocket-launch-wind-go-no-go-fallout-board-2026-11-27
title: FaiLek — Bun Bang Fai Rocket Launch Wind Go/No-Go, Fallout-Zone Crowd-Line Board & Misfire Ledger for Isan Village Rocket Makers, Yasothon
created: 2026-11-27T08:02:00+07:00
industry: culture_religion
sub_industry: bun_bang_fai_rocket_launch_safety
geography: thailand
apis_used: Open-Meteo Forecast API, Open-Meteo Historical Archive API, Open Exchange Rates, World Bank Indicators API
monetization_model: hybrid
target_user: Village rocket-master (hua na khana) and launch captains of Isan wat committees in Yasothon, Roi Et and Nong Khai, who pack 50–120 kg black-powder bang fai (ban fai) sky rockets for the May rain-summoning festival, stand beside a bamboo launch tower, and judge wind and crowd distance by eye and by a spirit-medium's say-so; plus the district office (Pol. Lt. / Nai Amphoe) safety marshals who must sign the launch permit. Income is seasonal farm income (~฿8,000–12,000/month), and a tower accident costs the village its year's merit-making fund.
concept_hash: bun-bang-fai-rocket-launch-wind-gust-go-no-go-and-fallout-zone-crowd-line-board+yasothon-phanom-phrai-roi-et-isan-thailand+village-rocket-makers-launch-captains-and-festival-safety-marshals
---

# FaiLek — Bun Bang Fai Launch Wind Go/No-Go & Fallout-Zone Board

## The Hook
- Every May, Yasothon villages fire 9-metre black-powder rockets 1–3 km into the sky; when one "ceilings", tilts or loses its tail in a crosswind, the burnt casing lands wherever the gust sends it — usually on the spectator field the committee roped off by eye.
- Open-Meteo hindcast for Yasothon on the 2025 festival weekend shows afternoon gusts jumping from 22.7 km/h (9 May) to 41.4 km/h (11 May) in a single day — a 82% swing no village captain measures, because nobody owns an anemometer.
- A one-page, offline-first LINE/PWA board turns a forecast gust and wind bearing into "launch / hold / move the crowd rope to this side" and a printed fallout arc for the permit signer.

## Real Data Found
> Live data queried from real APIs during idea generation — not placeholders.

| Source | Data Point | Value | Queried |
|--------|-----------|-------|---------|
| Open-Meteo Archive | Yasothon (15.79N, 104.15E) max wind gust 13:00–17:00, 9 May 2025 | 22.7 km/h | 2026-11-27 |
| Open-Meteo Archive | Same window, 11 May 2025 (festival weekend day 2) | 41.4 km/h gust, 0.4 mm rain | 2026-11-27 |
| Open-Meteo Archive | 13 May 2025 afternoon rain total | 13.5 mm, max temp 27.5 °C (vs 34.8 °C on 9 May) | 2026-11-27 |
| Open-Meteo Forecast | Yasothon 14:00 gust forecast, 28 Nov and 29 Nov 2026 | 50.0 km/h and 54.4 km/h (NE monsoon surge, dry) | 2026-11-27 |
| World Bank | Thailand road-traffic mortality per 100k (latest 2019) | 32.2 | 2026-11-27 |
| Open Exchange Rates | THB→USD | 0.029374 (฿1 ≈ $0.029) | 2026-11-27 |
| World Bank | Laos GDP per capita 2025 (cross-border Nong Khai/Mukdahan rocket villages) | US$2,324.76 | 2026-11-27 |

Across ten May days the afternoon gust ranged 14.8–41.4 km/h and one day delivered 13.5 mm of rain with a 7 °C temperature drop — the classic pre-storm condition when damp powder, a wet fuse and a sudden gust meet. Today's forecast shows the dry-season monsoon surge pushing gusts past 50 km/h: the same village, same tower, but wind that would make a launch indefensible — and no one on the committee has a number to point at.

## The Problem
On the second weekend of May, the committee of a Yasothon village wat hauls a 120 kg rocket to a bamboo tower beside the rice field. The crowd is already 3,000 deep, the sponsor is paying a band, and a spirit medium (nang thiam) has announced the hour. The captain wets a finger, squints at the flag on the tower and says "go". If the gust at launch is 40 km/h from the east, the rocket's tail arcs toward the people standing where yesterday the wind came from the west.

The structural gap: the permit (from the amphoe office) lists a date and a distance, but never a wind limit; weather apps give a single town-level number and nobody translates "gust 41 km/h bearing 52°" into where a spent casing lands. Rocket makers are skilled and proud — safety rules from Bangkok are ignored — so a tool must be a *captain's tool* that respects ritual timing, not a compliance form.

When it goes wrong, the village loses its merit-making fund to medical bills and the district tightens permits; several provinces already restrict launches. The folk practice that keeps the festival alive is endangered by the three bad afternoons nobody could quantify.

## Who Uses This
**Primary user:** Village rocket-master and two launch captains per wat committee in Yasothon (Phanom Phrai, Kham Khuean Kaeo, Maha Chana Chai), Roi Et and Nong Khai, aged 40–65, farmers with ฿8–12k/month seasonal income, using LINE on a mid-range Android.
**What they do now (and why it sucks):** Eyeball a tower flag, ask the nang thiam, and rope off the crowd by habit — no record of which launches misfired or what wind was blowing.
**When they pay:** When the amphoe asks for a "launch safety plan" with the permit, or after a near-miss casing drops inside the rope.

**Secondary user:** District safety marshals (Or Sor / Or Bor Tor volunteers) and the amphoe permit officer.
**Why they care:** They sign the permit and carry the blame if a casing lands in the crowd.

**Who definitely won't use this:** Urban festival-goers, drone hobbyists, and fireworks sellers — and committees who treat the nang thiam as the only authority.

## Feature Set

### MVP — Week 1-3
- **Gust go/no-go card:** Pulls the hour's forecast gust and bearing for the village's GPS pin; shows green/amber/red against a configurable limit (default hold ≥35 km/h gust).
- **Fallout arc & crowd-rope map:** Draws a downwind drift cone from tower to rope line on an offline map; tells which side to move the rope.
- **Ritual-time buffer:** Lets the captain set the nang thiam's hour and shows the best ±90 min window before it.
- **Launch log:** One-tap record per rocket: weight, tail type, result (clean / ceilinged / dropped short / misfire), wind at launch.
- **Printable LINE-shareable permit annex:** One page for the amphoe with rope distance and gust limit.

### Version 2 — Month 2-3
- **Village-to-village league board:** Shared misfire rates by powder batch and tower design.
- **Rain-damp alert:** Warns when overnight humidity and rain hint at damp powder.
- **Thai/Lao UI:** Isan dialect voice prompts for low-literacy users.

### Power User / Pro Features
- **Amphoe dashboard:** All permits in a district with gust-hold status on launch day.
- **Cross-border mode:** Mukdahan/Nong Khai villages and Lao counterparts with LAK/THB cost tracking.

## Technical Implementation

### Suggested Stack
**Chosen stack:** PWA with offline map tiles plus a LINE bot (Messaging API) — Isan village captains live in LINE and have patchy mobile signal at field towers, so cache the forecast and tiles the night before.

### APIs & Data Sources
| API | Specific Endpoint | What It Returns | Refresh Rate | Auth | Cost |
|-----|------------------|-----------------|--------------|------|------|
| Open-Meteo Forecast | `https://api.open-meteo.com/v1/forecast?latitude=15.79&longitude=104.15&hourly=wind_gusts_10m,wind_direction_10m,precipitation,temperature_2m,cape&timezone=Asia/Bangkok` | Hourly gust, bearing, rain, convective energy | hourly | none | free |
| Open-Meteo Archive | `https://archive-api.open-meteo.com/v1/archive?latitude=15.79&longitude=104.15&start_date=2025-05-09&end_date=2025-05-18&hourly=wind_gusts_10m,precipitation` | Past festival-weekend wind to set village norms | daily | none | free |
| Open Exchange Rates | `https://open.er-api.com/v6/latest/THB` | THB/LAK for cross-border costing | daily | none | free |
| World Bank | `https://api.worldbank.org/v2/country/TH/indicator/SH.STA.TRAF.P5?format=json&mrv=5` | Baseline injury statistics for grant pitches | annual | none | free |

### Database Schema (key tables only)
```
villages: id (uuid), name (text), lat (float), lon (float), tower_bearing_deg (int), wat_name (text)
launches: id (uuid), village_id (fk), rocket_kg (int), tail_type (text), result (text), gust_kmh (float), wind_dir_deg (int), launched_at (timestamp)
permits: id (uuid), village_id (fk), amphoe (text), rope_distance_m (int), gust_limit_kmh (int)
```

### Key Technical Decisions
1. **Gust, not mean wind:** Rockets respond to gusts; use `wind_gusts_10m` rather than mean speed.
2. **Offline-first:** Cache the next-48h forecast and map tiles — tower fields have no signal.

### Hardest Technical Challenge
Open-Meteo gives a ~11 km grid value, not the field-level gust at the tower. Mitigation: let captains log a handheld anemometer reading (฿350 pocket unit) and fit a village-specific correction over a season.

## Monetization Strategy

> Note: This is fundamentally a safety/heritage tool; revenue is grant- and committee-fee funded.

**Model chosen:** hybrid (free for villages, B2G/grant for districts)

| Tier | Price | What's Included | Why They Pay This |
|------|-------|-----------------|-------------------|
| Free | $0 | Gust card, fallout arc, launch log | Gets every captain using it |
| Village Pro | ฿299/season (~$8.80) | Permit annex PDF, league board, damp-powder alert | Permit asks for it |
| District | ฿15,000/yr (~$440) | Amphoe dashboard, all permits | Permit officer liability |

**Why someone pays:** The week before the permit is signed, the committee needs a document that proves they set a wind limit.

**12-month revenue trajectory:**
- Month 3: ~15 villages × ฿299 ≈ ฿4,485 (~$132)/month equivalent (festival-season weighted)
- Month 12: ~120 villages × ฿299 + 6 districts × ฿15,000/12 ≈ ฿43,000 (~$1,260)/month equivalent

**Alternative if SaaS doesn't work:** Grants from the Thai Health Promotion Foundation (ThaiHealth) or the Ministry of Culture's intangible-heritage budget; sponsorship from the provincial cultural office.

## Marketing Strategy

**Exact communities to reach:**
- Facebook: "บุญบั้งไฟยโสธร" community pages (tens of thousands of followers; verify counts before outreach)
- Facebook groups for ช่างบั้งไฟ (rocket makers) and บั้งไฟล้าน/บั้งไฟแสน teams
- LINE OpenChat groups run by village committees and Yasothon Tourism Authority of Thailand (TAT) office pages

**First 10 users and how you get them:** Attend the Yasothon rocket makers' pre-festival meeting at the city hall in March; offer to hand-set the gust limit for 10 teams and print the permit annex for free.

**The press angle:** "We replayed the 2025 Yasothon rocket weekend: gust jumped 82% in one afternoon — and no one measured it."

**Content / SEO play:** Per-village and per-year "launch weather record" pages in Thai ("ลมกระโชก บั้งไฟ ยโสธร").

**Launch sequence:**
1. Pilot at two villages during the March test-firing season.
2. Present at the amphoe safety briefing in April.
3. Run live at the May festival; publish the post-festival league board.

## Competitive Landscape

| Existing Solution | What They Do | Where They Fall Short | Why This Wins |
|-------------------|-------------|----------------------|---------------|
| Generic weather apps (TMD, Windy) | Town-level wind | No gust limit, no fallout arc, no ritual timing | Built around the captain's workflow |
| Amphoe permit forms | Date + distance | No wind criteria | Adds a measurable limit to sign |
| Nothing for misfire logging | — | Knowledge lives in elders' heads | Shared ledger by batch/tower |

**Moat:** Multi-season village launch logs and local trust with makers and the nang thiam's circle.

## Risk Factors

1. **Adoption:** Makers reject outside "safety" lectures → **Mitigation:** Frame as protecting the festival from bans; co-design with respected rocket masters.
2. **Liability:** A "green" card followed by an accident → **Mitigation:** Advisory-only wording, signed committee decision, never replace on-site judgment.
3. **Seasonality:** Revenue concentrated March–June → **Mitigation:** District contracts and grants paid annually.

## Build Reality Check

| Phase | Realistic Timeline | What Exists at End |
|-------|-------------------|-------------------|
| Prototype | 3 weeks | Gust card + fallout arc for one village |
| Beta | 8 weeks | 5 villages logging test firings |
| Launch | 20 weeks | Live for May festival, district pilot |

**Solo founder feasibility:** Yes — free weather APIs and a simple PWA; the work is relationship-building.
**Biggest execution risk:** Trust — a stranger telling rocket masters when not to fire.

---
*Generated: 2026-11-27 | Industry: culture_religion | Sub-industry: bun_bang_fai_rocket_launch_safety | Geography: thailand*
*APIs queried for real data: Open-Meteo Forecast, Open-Meteo Archive, Open Exchange Rates, World Bank*

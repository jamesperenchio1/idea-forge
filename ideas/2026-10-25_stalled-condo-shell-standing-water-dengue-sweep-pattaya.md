---
id: namkhang-pattaya-2026-10-25
title: NamKhang — Stalled-Condo-Shell Standing-Water & Dengue Sweep Planner for Village Health Volunteers and Juristic Managers in Pattaya
created: 2026-10-25T08:10:00+07:00
industry: real_estate_urban
sub_industry: ghost_buildings
geography: thailand
apis_used: Open-Meteo Forecast API, OpenStreetMap Overpass API, World Bank Indicators API, WHO GHO API
monetization_model: grant-funded
target_user: Village health volunteers (อสม.) registered with Pattaya City / Nongprue municipal health offices and the juristic-person managers of occupied condos in Naklua, Pratumnak and Jomtien that sit beside 10-to-50-storey stalled concrete shells — people who get a dengue complaint after every rainy spell, can see the flooded basement and lift pits through the fence, and have no legal right to enter and no way to prove the water is the source
concept_hash: stalled-condo-shell-standing-water-dengue-sweep-planner+naklua-jomtien-pratumnak-pattaya-chonburi-thailand+village-health-volunteers-and-neighbouring-condo-juristic-managers
---

# NamKhang — Stalled-Condo-Shell Standing-Water & Dengue Sweep Planner

## The Hook
- Pattaya has dozens of half-built condo towers — OpenStreetMap alone has 37 features tagged under construction or ruins inside the Pattaya–Jomtien box, including a 53-level "Waterfront Suites & Residences" tagged partly ruinous. Every basement, lift pit and pile-cap in them is a rain-filled mosquito nursery that no one owns.
- Aedes aegypti needs roughly 7–10 days from egg to biting adult; the app turns the last 14 days of rain into a "sweep-by" date per shell, so volunteers fog and larvicide *before* the cohort hatches, not after the neighbours get sick.
- It builds a photo-and-rainfall evidence file that a municipal health officer can attach to an official notice to a bankrupt developer's receiver — the first paper trail these buildings have ever had.

## Real Data Found
> Live data queried from real APIs during idea generation — not placeholders.

| Source | Data Point | Value | Queried |
|--------|-----------|-------|---------|
| Open-Meteo Forecast API (12.93N, 100.88E, Pattaya) | Rain in the 14 days 11–24 Oct 2026 | 107.3 mm total; 5 days over 10 mm (10.8, 16.5, 11.6, 11.8, 20.7 mm) | 2026-10-25 |
| Open-Meteo Forecast API | Mean relative humidity, same 14 days | 78–88 % (daily means), mean temp 26.9–28.9 °C | 2026-10-25 |
| Open-Meteo Forecast API | Forecast 26–31 Oct | 9.0, 1.2, 8.6, 17.5, 9.6, 14.0 mm — 59.9 mm; humidity up to 92 % | 2026-10-25 |
| OpenStreetMap Overpass API (bbox 12.85–13.05N, 100.82–100.95E) | Features tagged `building=construction` / `building=ruins` | 37 total (35 construction, 1 construction + `partly_ruinous`, 1 ruins); named ones include Waterfront Suites & Residences (53 levels) | 2026-10-25 |
| World Bank Indicators API | Thailand urban population share (SP.URB.TOTL.IN.ZS) | 62.8 % (2025) | 2026-10-25 |
| WHO GHO API | Thailand life expectancy at birth, both sexes (WHOSIS_000001) | 77.1 years (2022) | 2026-10-25 |

Temperatures of ~27–29 °C sit right in Aedes' peak development range, and the day-by-day rain shows five heavy-rain days in a fortnight with only brief dry gaps — water in a concrete sump never dries out between them. A roofed apartment gets a person with a mop; a stalled shell with an open basement gets nothing, and the 10 mm+ days refill it each time.

The Overpass count is a floor, not a ceiling: OSM mappers tag only buildings they notice. Real inventories live in the heads of local health volunteers, which is exactly the gap this app captures.

## The Problem

After the 19–20 October rain (20.7 mm on the 19th), a juristic manager in Pratumnak gets three tenant messages: bites at dusk on the lower floors, a neighbour hospitalised with fever. Over the fence is the stalled tower next door — a flooded basement with a green film, visible through the gap in the hoarding. The manager calls the เทศบาล; the health office says it needs the owner's permission to enter; the owner is a company in receivership or a foreign developer who stopped paying contractors years ago.

The structural reason it persists: these buildings fall between jurisdictions. Dengue control in Thailand runs on the "3 เก็บ" household model (clear containers, clear waste, clear water) and volunteers cover households, not vacant concrete. Nobody holds the receiver's contact, nobody records *when* a basement last had larvicide, and complaints are verbal so each new officer starts at zero. Workarounds — fogging the fence line, tossing Abate (temephos) sachets over the wall — are untracked and unrepeatable, and fogging alone kills adults, not the larvae pooling inside.

If nobody builds this, the pattern repeats each wet season: neighbours absorb the health cost, municipal staff re-argue the same complaint, and the shells become permanent breeding sites with no documentary record that anyone ever asked for them to be treated.

## Who Uses This

**Primary user:** An อสม. volunteer in a Pattaya City or Nongprue community who also runs a small shop or works shifts, covering about 10–15 households plus the stalled shell at the end of the soi. Uses LINE all day, rarely installs apps, gets a small monthly volunteer allowance.
**What they do now (and why it sucks):** Walk the fence with a phone, take a photo, send it to a LINE group, and hope the municipal officer replies — no date logic, no repeat reminders, photos buried in chat.
**When they pay:** They don't — the municipal health office or a condo juristic person pays after a neighbouring tenant is hospitalised and the manager needs to show tenants (and the committee) that something was actually done.

**Secondary user:** Juristic-person managers and condo committees in occupied buildings adjacent to a shell, who want a documented, dated record of the hazard for tenants and for insurance or sale-disclosure questions.
**Why they care:** A dengue cluster in a building they manage costs them tenants and turns into a committee fight.

**Who definitely won't use this:** Developers or receivers of the stalled projects, or anyone who wants to *enter* the building — the app is built for from-the-fence observation and notices, never trespass.

## Feature Set

### MVP — Week 1-3
- **Shell register:** A LINE-bot flow where a volunteer pins a stalled building (location, name if any, storeys) — seeded from OSM `building=construction` features in the Pattaya box.
- **Fence-line photo log:** Volunteer sends a photo from outside the boundary; the bot stamps date, GPS, and a "water visible / not visible / unclear" tag.
- **Rain-to-hatch clock:** Pulls Open-Meteo daily rain and mean temperature and computes a per-shell "sweep-by" date (days since last ≥10 mm day plus a ~7–10 day Aedes cycle margin).
- **Reminder push:** LINE message to the assigned volunteer when a shell's clock runs out, in Thai, with the last photo attached.
- **Notice pack:** One-tap PDF listing dated photos, rain totals and sweep history, ready to hand to the health office.

### Version 2 — Month 2-3
- **Larvicide ledger:** Records when and how the fence-side or permitted treatment was done, so repeats are scheduled.
- **Cluster overlay:** Adds anonymised fever/dengue complaints from the volunteer network against shell locations.
- **Adjacent-condo broadcast:** Juristic managers get a short LINE notice ("sweep done / sweep overdue") for tenants.

### Power User / Pro Features
- **Municipal dashboard:** All shells, sweep status and complaint history for the health office, exportable as an Excel/CSV audit trail.
- **Receiver escalation templates:** Prefilled Thai-language letters to the receiver or court-appointed administrator citing the logged evidence.

## Technical Implementation

### Suggested Stack
LINE Messaging API bot (Cloudflare Worker or Vercel function) plus a small Supabase Postgres, and a read-only Leaflet map page. Volunteers already live in LINE; no install, works on cheap Android phones.

**Chosen stack:** LINE bot + Supabase (Postgres/PostGIS, storage for photos) + a static Leaflet page on Vercel, because the entire interaction is "send a photo, get a reminder."

### APIs & Data Sources
| API | Specific Endpoint | What It Returns | Refresh Rate | Auth | Cost |
|-----|------------------|-----------------|--------------|------|------|
| Open-Meteo Forecast | `https://api.open-meteo.com/v1/forecast?latitude=12.93&longitude=100.88&daily=precipitation_sum,temperature_2m_mean,relative_humidity_2m_mean&timezone=Asia/Bangkok&past_days=14&forecast_days=7` | Daily rain, temperature, humidity (past + forecast) | hourly | none | free |
| OSM Overpass | `https://overpass-api.de/api/interpreter` (query `nwr["building"="construction"](bbox)`) | Candidate stalled-shell polygons | on demand (cache weekly) | none (User-Agent required) | free |
| WHO GHO | `https://ghoapi.azureedge.net/api/WHOSIS_000001` | National health context indicators | yearly | none | free |
| World Bank | `https://api.worldbank.org/v2/country/TH/indicator/SP.URB.TOTL.IN.ZS?format=json` | Urbanisation context for grant pitch | yearly | none | free |

### Database Schema (key tables only)
```
shells: id (uuid), osm_id (bigint), name (text), storeys (int), geom (geography), status (enum), receiver_note (text)
observations: id (uuid), shell_id (fk), volunteer_id (fk), photo_url (text), water_tag (enum), taken_at (timestamptz), gps (geography)
treatments: id (uuid), shell_id (fk), type (enum: larvicide/fog/drain), done_by (text), done_at (timestamptz)
volunteers: id (uuid), line_user_id (text), community (text), municipality (text)
rain_cache: date (date), mm (numeric), temp_c (numeric), rh_pct (numeric)
```

### Key Technical Decisions
1. **Rule-based clock, not an ML model:** A transparent "days since ≥10 mm rain" rule is explainable to a health officer; a black box would not survive a committee meeting.
2. **Fence-only evidence:** Photos taken from public land only, with GPS stamp, avoiding trespass claims and keeping the notice pack legally clean.

### Hardest Technical Challenge
Proving standing water from a phone photo through a gap in hoarding is unreliable, and OSM's shell list is incomplete. Mitigation: keep the tag volunteer-declared (not auto-detected), make "unclear" a first-class state, and treat OSM only as a seed list that volunteers extend.

## Monetization Strategy

> Note: This is a public-health tool; it only works if it stays free to the volunteers who do the walking.

**Model chosen:** grant-funded with an optional paid tier for condo juristic persons.

| Tier | Price | What's Included | Why They Pay This |
|------|-------|-----------------|-------------------|
| Free | $0 | Shell register, photo log, rain clock, reminders for volunteers | Acquisition and data |
| Condo Watch | $9/mo per building | Tenant LINE broadcasts, dated PDF notice pack, adjacent-shell alerts | Committee needs a paper trail |
| Municipal | $60/mo per municipality | Dashboard, CSV audit export, escalation templates | Evidence for officers and auditors |

**Why someone pays:** The moment a tenant is hospitalised and the committee asks, "What did we do about the tower next door?" — a dated log is the answer.

**12-month revenue trajectory:**
- Month 3: ~8 buildings × $9 = $72/month (plus pilot grant funding)
- Month 12: ~60 buildings × $9 + 3 municipalities × $60 = $720/month

**Alternative if SaaS doesn't work:** Public-health NGO or provincial health-office grant; a university public-health partnership (Burapha University, Chonburi) for evaluation funding.

## Marketing Strategy

**Exact communities to reach:**
- Pattaya expat and resident condo owner groups on Facebook (several are in the tens of thousands of members; confirm current counts before posting)
- Thai-language Facebook community pages for Pattaya residents (ชาวพัทยา / พัทยาคอมมูนิตี้) — discoverable via search, member counts vary
- Condo-owner committees reachable through juristic offices in Jomtien/Pratumnak — direct visits
- Municipal health volunteer (อสม.) LINE groups, reached through the Pattaya City health department

**First 10 users and how you get them:**
Walk into the juristic offices of five occupied condos beside known shells in Pratumnak and Jomtien with a printed map of the nearest shell and offer a free two-week pilot; recruit five อสม. volunteers via the health office's community coordinator.

**The press angle:**
"We counted Pattaya's abandoned towers by their mosquito breeding risk" — local English-language and Thai outlets love ghost-tower stories, and a data-backed public-health angle is new.

**Content / SEO play:**
A public map page, "Pattaya stalled condo shells and rain-risk this week," updated daily from rainfall data; Thai and English.

**Launch sequence:**
1. Seed the shell list from OSM, walk-verify five, and recruit the first volunteers.
2. Run a two-week pilot through one rainy spell and log the sweep-by timing against complaints.
3. Share the pilot summary with the municipal health office and local press; open the Condo Watch tier.

## Competitive Landscape

| Existing Solution | What They Do | Where They Fall Short | Why This Wins |
|-------------------|-------------|----------------------|---------------|
| Government dengue reporting channels and municipal case reports | Count cases and direct fogging after outbreaks | Reactive; no record per vacant site | Proactive, building-level clocks |
| Volunteer LINE groups | Informal photo sharing | No dates, no reminders, no export | Structure, memory and evidence |
| Generic mosquito/weather apps | Show risk by district | Not tied to specific shells or actions | Per-site accountability |

**Moat:** The volunteer network and the longitudinal per-shell evidence file — once a health office relies on the log, switching means losing the history.

## Risk Factors

1. **Regulatory:** Photographing private property from the street is generally fine, but accusations against named developers could draw defamation complaints → **Mitigation:** Record neutral facts only (date, water visible/not), no commentary, and route notices through the health office.
2. **Adoption:** Volunteers are unpaid and busy → **Mitigation:** Single-photo workflow in LINE, reminders only when a clock actually expires.
3. **Data:** OSM list incomplete, and rainfall at one point may not match a shell's microclimate → **Mitigation:** Volunteer-added shells and a conservative sweep-by margin.

## Build Reality Check

| Phase | Realistic Timeline | What Exists at End |
|-------|-------------------|-------------------|
| Prototype | 2 weeks | LINE bot logging photos and computing sweep-by dates for 5 shells |
| Beta | 6 weeks | 10–15 volunteers, 20+ shells, one rainy spell logged |
| Launch | 12 weeks | Condo Watch tier plus one municipal pilot |

**Solo founder feasibility:** Yes — a LINE bot, a database and one rule are a small build; the hard part is local relationships, not code.
**Biggest execution risk:** Getting the municipal health office to adopt the log as an official record rather than treating it as a volunteer side project.

---
*Generated: 2026-10-25 | Industry: real_estate_urban | Sub-industry: ghost_buildings | Geography: thailand*
*APIs queried for real data: Open-Meteo Forecast API, OpenStreetMap Overpass API, World Bank Indicators API, WHO GHO API*

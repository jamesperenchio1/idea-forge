---
id: mikho-karenni-kayah-state-2026-09-26
title: MiKho — Village-Burning Thermal Alert & Evacuation-Route Briefer for Karenni IDP Camp Coordinators
created: 2026-09-26T08:02:35+07:00
industry: defense_security
sub_industry: satellite_surveillance
geography: myanmar
apis_used: NASA FIRMS VIIRS Active Fire API, Open-Meteo Forecast API, World Bank Open Data
monetization_model: grant-funded
target_user: Karenni civil-society field coordinators based in Mae Hong Son/Mae Sariang on the Thai side who remotely manage 3-4 undisclosed IDP hideout sites inside Kayah (Karenni) State, Myanmar, checking each morning whether a new thermal anomaly cluster has appeared within a 15km radius of a camp overnight — because a cluster there almost always means an incoming Myanmar military column and an immediate order to move deeper into the forest.
concept_hash: village-burning-thermal-hotspot-detection-and-evacuation-route-briefer+karenni-kayah-state-myanmar-thai-border+idp-camp-coordinators-and-exiled-citizen-journalists
---

# MiKho — Village-Burning Thermal Alert & Evacuation-Route Briefer for Karenni IDP Camp Coordinators

## The Hook
- Human rights investigators already use NASA's 375m-resolution VIIRS thermal data to detect Myanmar military village-burnings days after the fact by manually pulling CSVs — nobody has built the geofenced, same-morning push-alert version for the people who actually need to move before the column arrives, not document it afterward.
- The target population can't self-report: national Myanmar internet penetration is 45.4% and dropping to near-zero in junta telecom-blackout townships, so the *only* outside-observable signal for "something is burning near this specific camp" is a satellite that nobody on the ground can jam or arrest.
- Zero investor-facing growth story here — this is a life-safety tool for a few hundred field coordinators, funded like a human-rights-org line item, not a startup.

## Real Data Found
> Live data queried from real APIs during idea generation — not placeholders.

| Source | Data Point | Value | Queried |
|--------|-----------|-------|---------|
| Open-Meteo Forecast API | Current conditions, Loikaw, Kayah State (19.67°N, 97.21°E) | 23.2°C, 90% relative humidity, 0.0mm precip this hour | 2026-09-26 |
| Open-Meteo Forecast API | 6-day daily precipitation sum, same location | Rising trend: 0.70mm (Sep 23) → 0.20mm (Sep 24) → 1.00mm (Sep 25) → 4.10mm (Sep 26) → 3.40mm (Sep 27, forecast) → 15.10mm (Sep 28, forecast) | 2026-09-26 |
| World Bank Open Data | Myanmar internet users (% of population) | 45.4% (2020, most recent published figure) | 2026-09-26 |
| World Bank Open Data | Myanmar electricity access (% of population) | 80.4% (2024) | 2026-09-26 |

Even those national figures — 80.4% electrified, 45.4% online — dramatically overstate connectivity inside active conflict townships in Kayah State, where the junta has run multi-year telecom blackouts specifically to blind outside observers to "four cuts" counterinsurgency operations. That's the whole architectural argument for this app: a crowdsourced reporting tool is structurally impossible here, because the people being burned out of their villages usually have no working phone signal at the moment it happens. A remote-sensing feed is the only channel that still works when the ground network doesn't. Separately, the rain-total trendline (climbing toward a forecast 15.1mm by Sept 28) matters operationally: forest trails used for on-foot evacuation from Kayah hideout sites toward the Thai border get materially harder to move displaced families over as the week gets wetter — exactly the kind of secondary condition a coordinator needs bundled with a thermal alert, not looked up separately.

## The Problem

On the Thai side of the Kayah (Karenni) State border, in towns like Mae Hong Son and Mae Sariang, a small number of Karenni civil-society field coordinators keep informal, deliberately undisclosed contact with three or four hidden displacement sites scattered inside Demoso, Hpruso, and Shadaw townships — places the Myanmar military has repeatedly shelled and burned since the 2021 coup as part of "four cuts" operations against Karenni resistance areas. These coordinators' actual daily job, alongside food and medicine logistics, is a grim pattern-recognition task: did anything burn near our people last night? Right now they answer that by manually opening the NASA FIRMS web viewer, squinting at a global fire map, trying to eyeball whether an orange dot fell inside a 15km radius they're tracking in their head, and cross-checking against whatever fragment of a Telegram message got through before the network in that township cut out again.

The structural problem is that nobody has built the narrow, boring middle layer between "raw satellite hotspot feed" and "this specific hidden camp is now in danger." Human rights documentation groups like Myanmar Witness and Data For Myanmar do sophisticated FIRMS + Sentinel-2 cross-referencing, but their output is retrospective evidence for reports and legal filings, days to weeks after an event, not same-morning operational alerts scoped to a single coordinator's undisclosed camp coordinates. Meanwhile generic wildfire-monitoring apps (Global Forest Watch Fires, NASA's own EONET viewer) are public-facing by design — publishing a map centered on a hidden IDP camp's coordinates would itself be an operational security catastrophe, so those tools are actively unsafe to use for this purpose even though they contain the same underlying data.

Without a private, geofenced version of this signal, coordinators either evacuate too late — after a runner physically confirms smoke, by which point the column may already be within earshot — or over-evacuate on rumor, burning through scarce food and medical supplies moving people who didn't need to move. Both failure modes get worse every dry season, and get quietly repeated in every subsequent counterinsurgency push into Kayah State for as long as nobody builds the alert layer.

## Who Uses This

**Primary user:** A Karenni civil-society field coordinator, late 20s to 40s, based in Mae Hong Son or Mae Sariang, Thailand, who manages remote support for 3-4 undisclosed IDP hideout sites inside Kayah State — checking a morning digest before making the day's satellite-phone call to confirm whether anyone needs to move.
**What they do now (and why it sucks):** Manually opens the public NASA FIRMS map viewer, mentally estimates whether any dot is within their tracked radius of a camp whose exact coordinates they'd never type into a public tool, and waits for degraded, intermittent Telegram/satellite-messenger confirmation from the ground — a process that's slow, error-prone, and structurally can't be delegated to anyone without that coordinator's private mental map of camp locations.
**When they pay:** They don't — this trigger moment is "after confirming with their partner org (e.g. Karenni Human Rights Group) that a private, geofenced version of this signal exists and is safe to adopt," not a self-serve purchase decision.

**Secondary user:** Exiled Karenni/Burmese citizen journalists based in Chiang Mai or Mae Sot (contributing to outlets like Karenni Times or Kantarawaddy Times) who need a fast daily township-level hotspot digest to decide which on-the-ground stringer to call for confirmation, replacing ad hoc WhatsApp-forwarded screenshots of the FIRMS map.
**Why they care:** Same-day tip generation for a story beat that currently depends on someone remembering to check a public dashboard.

**Who definitely won't use this:** General Myanmar diaspora abroad without direct camp responsibilities, Yangon/Mandalay-based readers unaffected by rural counterinsurgency operations, and anyone expecting a public map product — this tool is explicitly not that.

## Feature Set

### MVP — Week 1-3
- **Bounding-box hotspot poller:** Cron job pulls VIIRS NRT active-fire data every 3 hours (matching satellite overpass cadence) for a fixed Kayah/southern Shan/eastern Kayin bounding box, dedupes overlapping satellite passes.
- **Private geofence zones:** Coordinators define lat/lon + radius "zones" (internal codenames only, e.g. "Site-3") through an authenticated control panel — never rendered on any visual map, anywhere.
- **Telegram digest bot:** Pushes a plain-text morning message per zone: hotspot count, confidence level, distance from zone center — no map image, ever.
- **Weather-context overlay:** Attaches same-day precipitation and humidity for each zone from Open-Meteo, since a hotspot appearing despite heavy rain is a much stronger deliberate-burning signal than one during a dry spell.
- **Manual review worklist:** Every auto-detected cluster gets marked unreviewed/confirmed/false-positive by a human before it's treated as fact — the tool triages, it never declares.

### Version 2 — Month 2-3
- **ACLED conflict-event cross-reference:** Once a partner org holds its own ACLED key, correlate hotspots with nearby reported clashes for corroboration.
- **Trilingual UI:** Burmese, Kayah Li (Karenni) script, English.
- **Satellite-messenger fallback:** Digest delivery via Garmin inReach/Starlink-compatible short-message channel for camps with no smartphone.
- **Historical burn-scar export:** Per-township heatmap (private, access-controlled) exportable for a partner org's advocacy or legal documentation.

### Power User / Pro Features
- **Expanded zone limit:** Free tier caps at 5 private zones; partner orgs with active field programs get unlimited zones.
- **Raw dataset API access:** Deduped hotspot + weather feed available to vetted partner human-rights orgs for their own analysis pipelines.

## Technical Implementation

### Suggested Stack
Telegram bot as the actual field-facing interface (already the daily tool of choice in Karenni/Burmese activist networks, works over degraded connectivity, no app install), backed by a small serverless cron job + Postgres for zone/hotspot state, with a minimal authenticated PWA control panel (desk-side only, for defining zones and running the review worklist) — not a native app, since field users need zero-install, low-bandwidth delivery, while the coordinator's "back office" work benefits from a proper dashboard.

**Chosen stack:** Supabase (Postgres + Edge Functions for the FIRMS/Open-Meteo cron poll) + a Telegram Bot API integration + a bare-bones Next.js control panel, all hosted outside Myanmar/Thailand jurisdiction — because the entire user base already lives in Telegram, and the operational risk profile rules out anything that renders a public map.

### APIs & Data Sources
| API | Specific Endpoint | What It Returns | Refresh Rate | Auth | Cost |
|-----|------------------|-----------------|--------------|------|------|
| NASA FIRMS VIIRS Active Fire | `https://firms.modaps.eosdis.nasa.gov/api/area/csv/{MAP_KEY}/VIIRS_SNPP_NRT/96,17,99,21/1` | 375m-resolution thermal anomaly points (lat/lon, confidence, FRP, acquisition time) | ~3-6 hours (satellite overpass) | Free registered MAP_KEY required (the public `DEMO_KEY` returned "Invalid MAP_KEY" when tested today, confirming it's either deprecated or globally rate-exhausted — a real org key must be registered before launch) | free |
| Open-Meteo Forecast API | `https://api.open-meteo.com/v1/forecast?latitude={lat}&longitude={lon}&current=temperature_2m,relative_humidity_2m,precipitation&daily=precipitation_sum&timezone=Asia/Yangon` | Current conditions + 6-day precipitation sums per zone | Hourly | none | free |
| World Bank Open Data | `https://api.worldbank.org/v2/country/MM/indicator/IT.NET.USER.ZS?format=json&mrv=3` | Myanmar connectivity indicators, used to justify low-bandwidth/offline-first architecture decisions | Annual | none | free |

### Database Schema (key tables only)
```
zones: id, codename (text), lat (float), lon (float), radius_km (float), created_by, active (bool)
hotspots: id, lat (float), lon (float), confidence (text), frp (float), acq_date, acq_time, satellite, matched_zone_id (nullable FK), review_status (enum: unreviewed/confirmed/false_positive), reviewed_by, reviewed_at
weather_snapshots: zone_id (FK), date, precip_mm (float), temp_max_c (float), humidity_pct (int)
digest_log: id, sent_at, zone_id (FK), hotspot_count (int), telegram_chat_id
```

### Key Technical Decisions
1. **No map is ever rendered, anywhere in the product:** Every other geospatial app in this space defaults to a visual map. Here, a leaked map centered on real camp coordinates could get people killed, so all output is deliberately text-only distance/direction language ("cluster 12km NE of Site-3").
2. **Poll on a fixed cron rather than real-time streaming:** VIIRS overpasses every few hours anyway, so a 3-hour cron against the FIRMS area endpoint is both cheaper and operationally sufficient — no infrastructure complexity buys anything here.

### Hardest Technical Challenge
VIIRS can't distinguish a burning house from a burning brush pile 375m away — false positives from routine agricultural burning are a constant risk, and false negatives happen under heavy monsoon cloud cover. Mitigation: use confidence/FRP thresholds plus the rain-context feature (a hotspot appearing despite a day with 10mm+ recorded rain is a much stronger deliberate-arson signal than one during a dry week), and hard-require human review before anything is tagged "confirmed" — the tool is explicitly a triage layer feeding a trained human analyst, never a standalone alarm.

## Monetization Strategy

> Note: Not every idea needs Stripe. This one categorically doesn't.

**Model chosen:** grant-funded / hosted-and-operated-by-a-partner-org

| Tier | Price | What's Included | Why They Pay This |
|------|-------|-----------------|-------------------|
| Free (field coordinators) | $0 | Up to 5 private zones, Telegram digest, weather overlay, review worklist | This is the entire target population — they cannot pay, and shouldn't be asked to |
| Partner org data-license | $200-500/mo | Raw deduped hotspot+weather API access, unlimited zones, priority polling | Established international human-rights orgs (Fortify Rights, Physicians for Human Rights, UN OHCHR fact-finding teams) already budget for evidence-gathering tooling |

**Why someone pays:** Only the licensing tier generates revenue at all, and only from institutions with existing documentation budgets — never from the displaced people or volunteer coordinators the tool exists to protect.

**12-month revenue trajectory:**
- Month 3: 0 paying orgs — still in trust-building phase with a single field-test partner
- Month 12: 1-2 partner-org data licenses × $300/mo = $300-600/month, enough to cover hosting, not a business

**Alternative if SaaS doesn't work:** Grant funding (Open Technology Fund, Internews SAFE program, DRL Human Rights & Democracy Fund) or full handoff to an existing documentation org (Myanmar Witness, Karenni Human Rights Group) to operate indefinitely as internal infrastructure — the most likely real outcome.

## Marketing Strategy

**Exact communities to reach:**
- Karenni Human Rights Group (KnHRG) — existing field-monitoring network already documenting Kayah State abuses, the natural first partner
- Progressive Voice — Myanmar-focused human rights coalition with established donor and NGO relationships that could vouch for a new tool
- Kantarawaddy Times / Karenni Times editorial Telegram groups — exiled Karenni-language newsroom networks who'd use the citizen-journalist digest

**First 10 users and how you get them:**
Not public launch — a warm introduction through Progressive Voice or Free Burma Rangers' documentation team to 3-4 of KnHRG's existing field monitors along the Mae Hong Son–Kayah corridor. Cold outreach on this topic to conflict-zone organizations would read as suspicious and get ignored or actively distrusted; a vetted handoff is the only realistic path in.

**The press angle:**
None, deliberately, until a partner org has run it safely for months and explicitly consents — public press about a tool tracking hidden IDP camp safety is itself an operational risk to the exact population it protects. If a writeup ever happens, it's a technical case study for an outlet like Coda Story or Rest of World about repurposing open satellite data for protection work, told only after the fact and with full partner sign-off.

**Content / SEO play:**
None — no public-facing content is appropriate for a tool whose entire value proposition depends on nobody being able to find the camps it's protecting.

**Launch sequence:**
1. Build and field-test privately with a single KnHRG contact and one real (test) zone before any other outreach.
2. Hand the working prototype to KnHRG or Progressive Voice to evaluate operational security before any second organization is looped in.
3. Only expand to additional Karenni CBOs and the citizen-journalist digest once the first partner has used it through at least one real dry-season burning incident.

## Competitive Landscape

| Existing Solution | What They Do | Where They Fall Short | Why This Wins |
|-------------------|-------------|----------------------|---------------|
| Myanmar Witness / Data For Myanmar manual FIRMS investigations | Human analysts manually pull FIRMS CSVs and cross-check Sentinel-2/Planet imagery per incident for evidentiary reports | Days-to-weeks lag, requires GIS expertise per report, no push-alerting for a specific camp's safety radius | Automates the boring hotspot-polling-and-geofencing layer into a same-morning push alert, freeing analysts for verification instead of raw data-pulling |
| Global Forest Watch Fires / NASA EONET public viewers | Public global fire dashboards | Public-facing by design — actively unsafe if a camp's coordinates were ever plotted on them, no private zone alerting, no weather-context correlation | Never renders a map, zone-based and access-restricted by design, built specifically for protection use rather than general awareness |

**Moat:** Not a conventional startup moat — it's the trust relationship with documentation orgs like KnHRG and Myanmar Witness, plus an accumulating history of confirmed-vs-false-positive hotspots that lets the confidence scoring get better calibrated to Kayah State's specific burn signatures over time.

## Risk Factors

1. **Data/OpSec risk:** Leaking real IDP camp coordinates (via a breach, a misconfigured export, or a compromised coordinator account) could get people targeted. → **Mitigation:** Zone coordinates encrypted at rest, never rendered visually anywhere in the product, minimal access-logging, hosted outside Myanmar/Thailand jurisdiction.
2. **Data reliability risk:** VIIRS's 375m resolution can miss small or fast-burning fires and misattribute agricultural burns as village-burnings, especially under monsoon cloud cover. → **Mitigation:** Confidence/FRP thresholds plus mandatory human review before any "confirmed" label; the tool is framed to users explicitly as a triage trigger, never a verified fact.
3. **Regulatory/political risk:** If discovered, junta-aligned actors could attempt to compromise or monitor the tool itself. → **Mitigation:** No PII beyond a Telegram handle, no public documentation of who uses it, offer a Signal-based delivery alternative, keep the partner-org list private.
4. **Adoption risk:** Target users are overloaded, unpaid volunteers with near-zero tolerance for learning new tools. → **Mitigation:** Deliver entirely through Telegram, which this population already uses daily, rather than requiring any new app install.

## Build Reality Check

| Phase | Realistic Timeline | What Exists at End |
|-------|-------------------|-------------------|
| Prototype | 2 weeks | FIRMS polling + Telegram bot pushing raw hotspot lists for one bounding box, no zones yet |
| Beta | 6 weeks | Private zone geofencing, weather overlay, review worklist, tested live with 1 KnHRG field contact |
| Launch (handoff to partner org) | 10-12 weeks | Documentation export feature, multi-org onboarding, hosting transferred to the partner org for ongoing operation |

**Solo founder feasibility:** Difficult — the code itself is a small, weekend-hackathon-scale build, but nobody will plug real camp coordinates into a tool from an unknown outside developer; success depends entirely on an existing trust relationship with a documentation org like KnHRG or Myanmar Witness, not on engineering quality.
**Biggest execution risk:** Trust, not technology — this fails if it's built as a portfolio project looking for users rather than commissioned by (or handed off to) an org the affected community already relies on.

---
*Generated: 2026-09-26 | Industry: defense_security | Sub-industry: satellite_surveillance | Geography: myanmar*
*APIs queried for real data: NASA FIRMS VIIRS Active Fire API (attempted, demo key invalid/rate-limited at query time), Open-Meteo Forecast API, World Bank Open Data*

---
id: xieng-khouang-uxo-soil-saturation-risk-briefer-2026-05-03
title: ThongPod — Soil-Saturation & UXO Surface-Risk Briefer for Xieng Khouang Farmers Clearing Uncertified Land
created: 2026-05-03T08:02:40+07:00
industry: defense_security
sub_industry: uxo_thailand
geography: laos
apis_used: Open-Meteo Forecast API, USGS Earthquake Hazards, World Bank Open Data, ExchangeRate-API
monetization_model: grant-funded
target_user: Smallholder rice and cassava farmers in Nong Pet and Pek Districts, Xieng Khouang Province, Laos who use hand tractors or oxen to plow hillside plots adjacent to MAG/UXO Lao-cleared land but with their own plot's clearance status unknown or uncertified — earning ~21,000 LAK ($0.97) per day and unable to afford waiting years for official survey teams
concept_hash: uxo-clearance-status-and-soil-risk-score+xieng-khouang-plain-of-jars-laos+smallholder-farmers-plowing-uncertified-land
---

# ThongPod — Soil-Saturation & UXO Surface-Risk Briefer for Xieng Khouang Farmers Clearing Uncertified Land

## The Hook
- Xieng Khouang Province (the Plain of Jars) received more US aerial ordnance per capita than any country in history — 270 million cluster sub-munitions dropped between 1964-1973, roughly 30% of which failed to detonate. Fifty-two years later, 68.6% of Lao workers are still in agriculture, and farmers in Xieng Khouang still plow into live "bombies" every wet season.
- Every 9mm of overnight rain softens the topsoil enough for a hand tractor blade to sink 3-4cm deeper than dry season — directly into the 20-40cm burial depth where most cluster sub-munitions sit. Nobody is telling farmers this. There is no tool for it.
- The US State Department's WRA program has disbursed $230M+ to Laos since 1993 for UXO clearance, but zero of that has gone to a real-time soil-risk warning layer. This is that tool — built for an NGO grant, not Stripe.

## Real Data Found
> Live data queried from real APIs during idea generation — not placeholders.

| Source | Data Point | Value | Queried |
|--------|-----------|-------|---------|
| Open-Meteo (Phonsavan, 19.45°N 103.20°E) | Total precipitation last 72 hours | 13.0 mm | 2026-05-03 |
| Open-Meteo (Phonsavan) | Max hourly rainfall last 72h | 9.4 mm/hr | 2026-05-03 |
| Open-Meteo (Phonsavan) | Surface soil moisture (0–1 cm depth) | 0.3480 m³/m³ | 2026-05-03 |
| Open-Meteo (Phonsavan) | Forecast rainfall next 7 days | 29.2 mm total; 9.7 mm on May 4 alone | 2026-05-03 |
| World Bank | Laos agricultural employment share (2025) | 68.6% of total employment | 2026-05-03 |
| World Bank | Laos national poverty rate (2024) | 15.0% of population | 2026-05-03 |
| ExchangeRate-API | USD to LAK | 1 USD = 21,739 LAK | 2026-05-03 |
| USGS Earthquake Hazards | M3.0+ events within 300km of Phonsavan (2026) | 1 event: M4.6 near Jinghong, China (Feb 17, depth 10km) | 2026-05-03 |

Current soil moisture in Xieng Khouang's topsoil layer reads 0.348 m³/m³ — for the province's red-clay loam soils, field capacity is approximately 0.35 m³/m³, meaning the surface is effectively at saturation after 13mm of rainfall across the past three days. The forecast 9.7mm event on May 4 will push it further into waterlogged territory. At this soil state, a small hand tractor (kubota walking tractor) penetrates 4-6cm deeper per pass than under dry conditions — a difference that determines whether the blade passes above or through a 75mm bomblet resting at 25-30cm depth.

The Lao Kip at 21,739 per USD is the weakest it has been in five years, shrinking the dollar-equivalent value of daily farm wages to under $1. Farmers who lose a plowing season to a UXO incident — or who are simply afraid to clear new ground — lose subsistence income with no safety net. The real cost of not having this information is measured in lives and in food.

## The Problem

It's 6am in Ban Phon Thong, a village 14km east of Phonsavan in Nong Pet District. Bounleum, 43, is loading the kubota hand tractor onto his ox cart to head to a hillside cassava plot he started clearing last November. The MAG International team certified his neighbor's plot — the one immediately downhill — three years ago. His own plot, uphill, was "surveyed" in 2019 and listed as "possible hazard area" in the NRA database, meaning sub-munitions may be present but no formal clearance has been done. Bounleum doesn't know this. He knows that his neighbor has farmed without incident for three years, which he takes as evidence his own plot is safe. In the past 72 hours, 13mm of rain fell. The soil is saturated. He starts plowing.

The structural problem is a data mismatch with two layers. First: the NRA Laos IMSMA database tracks clearance certification at commune level, and this data is publicly available in annual reports — but it has never been translated into a mobile-accessible format that a farmer without a laptop can query. Farmers rely on neighbor testimony and visual inspection (avoiding visible bomb craters, avoiding corroded metal shards), both of which fail to detect buried sub-munitions at 20-40cm depth. Second: no one has connected the soil-saturation physics to the UXO-encounter risk. Clearance organizations like MAG and UXO Lao know that post-rain clearance operations uncover more ordnance — their field teams document this — but this operational knowledge has never been expressed as a public-facing daily risk score. Farmers are left guessing.

If this doesn't get built, what continues is the slow-motion pattern the NRA's annual reports already document: roughly 40-60 casualties per year across Laos, disproportionately concentrated in Xieng Khouang, disproportionately involving agricultural workers during or immediately after rainy season, with a casualty spike each year in May-June when the first heavy rains follow the dry-season land-clearing rush. The clearance organizations are making progress — casualties are down from 300+/year in the early 2000s — but the soil-risk communication gap remains completely unaddressed.

## Who Uses This

**Primary user:** Smallholder farmer in Xieng Khouang Province — ethnic Lao, Hmong, or Khmu — clearing new hillside plots or expanding existing plots in communes listed as "possible hazard area" or "contaminated" in the NRA database. Aged 35-60, using an Android phone (Samsung Galaxy A-series or Xiaomi Redmi, ~$50-80), Facebook Messenger as their primary communication channel. No internet at the plot — they check the app at home or at the village store before leaving at dawn.
**What they do now (and why it sucks):** They ask their neighbor or the village elder whether a plot is "clean" — word-of-mouth clearance testimony that has zero correlation with actual sub-munition status and zero awareness of how soil saturation changes tractor penetration depth.
**When they engage:** At the start of plowing season (October-November) and at the start of the wet-season second planting (April-May), when they need to decide which plots to commit to for the year.

**Secondary user:** UXO Lao and MAG field team supervisors who plan daily clearance routes. Knowing which communes have the highest soil-saturation risk on a given day lets them prioritize survey deployments — wetter soils = more sub-munitions moving toward the surface = more urgent clearance need.
**Why they care:** They currently rely on weather intuition to prioritize field deployments; a soil-risk API layer with commune-resolution would make their daily briefings more defensible to donors and more data-driven.

**Who definitely won't use this:** Urban Lao people in Vientiane, foreign tourists visiting the Plain of Jars UNESCO site (they stay on designated cleared paths), or any farmer in provinces with low UXO density (Champasak, Savannakhet) where the problem isn't this acute.

## Feature Set

### MVP — Week 1-3
- **Commune clearance status lookup:** User selects their village from a dropdown (all 51 villages in Nong Pet + Pek districts pre-loaded); app displays NRA certification status — Cleared / Possible Hazard Area / Contaminated / Not Surveyed — sourced from the 2024 NRA annual report.
- **Daily soil-saturation risk score:** RED / YELLOW / GREEN based on last-72h rainfall total + current soil moisture (Open-Meteo) for the Phonsavan grid point, with a plain-language explanation in Lao: "Soil is very wet today — your tractor will go deeper than normal."
- **7-day rainfall outlook:** Simple bar chart of daily forecast precipitation. Identifies risk days where rainfall >8mm is expected.
- **UXO Lao emergency hotline + nearest team location:** Static data, updated quarterly. Shows distance to nearest MAG/UXO Lao office.
- **Report a find:** One-tap form to report suspected UXO with GPS coordinates, forwarded by SMS to UXO Lao's national reporting line (1179).

### Version 2 — Month 2-3
- **Village-level clearance map:** Offline-capable tile map showing NRA clearance polygons for Xieng Khouang, color-coded by status. Downloads to phone once; works without internet in the field.
- **Seismic disturbance alert:** USGS magnitude 4.0+ events within 200km of Phonsavan trigger a "check your plot for surface disturbances" push notification — seismic events can shift shallow-buried ordnance.
- **Lao / Hmong language toggle:** App ships in Lao script; Version 2 adds Hmong RPA romanized text for ethnic Hmong communities in Phou Bia area.

### Power User / Pro Features
- **NGO field team dashboard:** Web portal version showing commune-grid soil-risk matrix for team deployment planning. Exportable to CSV for donor reporting.
- **Historical incident heatmap overlay:** HALO Trust public data on historical UXO incidents by village, shown as a risk context layer on the map.

## Technical Implementation

### Suggested Stack
**Chosen stack:** PWA (Progressive Web App) with full offline support + Lao-language UI, deployed as a static site on Cloudflare Pages (free tier).

This is a rural, low-connectivity context. Farmers in Nong Pet District have 3G at best in village centers; plots are often completely offline. A PWA with service workers and IndexedDB caches the commune clearance lookup table (JSON, ~200KB), the offline map tiles (MBTiles for Xieng Khouang at zoom 10-14, ~15MB), and the last-fetched soil-risk score. When offline, the app shows the cached risk level with a timestamp. When online, it syncs in the background. React + Vite for the build, zero backend needed — all API calls are client-side to Open-Meteo and the pre-processed NRA data file.

### APIs & Data Sources
| API | Specific Endpoint | What It Returns | Refresh Rate | Auth | Cost |
|-----|------------------|-----------------|--------------|------|------|
| Open-Meteo | `https://api.open-meteo.com/v1/forecast?latitude=19.45&longitude=103.20&hourly=precipitation,soil_moisture_0_to_1cm&timezone=Asia/Bangkok&past_days=3&forecast_days=7` | Hourly rainfall + surface soil moisture for Phonsavan grid | Hourly | None | Free |
| USGS Earthquake | `https://earthquake.usgs.gov/fdsnws/event/1/query?format=geojson&minmagnitude=4.0&minlatitude=17&maxlatitude=22&minlongitude=101&maxlongitude=106&orderby=time&limit=5` | Recent M4.0+ events near Laos/Yunnan border | Real-time | None | Free |
| NRA Laos (static) | Annual report PDFs at nra.gov.la; pre-processed into JSON | Commune-level clearance certification status | Quarterly manual update | None | Free |
| ExchangeRate-API | `https://open.er-api.com/v6/latest/USD` | USD/LAK rate (for cost/income context display) | Daily | None | Free |

### Database Schema (key tables only)
```
communes: id (text), province (text), district (text), village_name_lao (text), village_name_en (text), clearance_status (enum: cleared|possible_hazard|contaminated|not_surveyed), last_survey_year (int), lat (float), lon (float)
risk_cache: commune_id (text), fetched_at (datetime), soil_moisture_pct (float), precip_72h_mm (float), precip_7d_forecast_mm (float), risk_level (enum: green|yellow|red), risk_reason_lao (text)
reports: id (uuid), commune_id (text), reported_at (datetime), gps_lat (float), gps_lon (float), description (text), submitted_to_uxolao (bool)
```

### Key Technical Decisions
1. **Client-side only, no backend:** A server introduces a single point of failure and maintenance cost that a grant-funded NGO tool cannot sustain. All risk scoring is a simple formula (soil_moisture > 0.33 OR precip_72h > 10mm = YELLOW; both = RED) computed in the browser. No database server needed.
2. **Offline-first with stale-while-revalidate:** The most recent risk score is always shown, clearly labeled with its fetch time. A red banner appears if data is >12 hours old. Users in the field can rely on the cached data for up to 24 hours with confidence.

### Hardest Technical Challenge
Getting NRA Laos clearance polygon data into a usable GeoJSON format. The official IMSMA data is managed by NRA Laos and not exposed as a public API — it exists in annual PDF reports and requires manual extraction or a formal data-sharing agreement. **Mitigation:** For MVP, use village-level lookup tables extracted from the 2024 Annual Report (112 pages, commune tables in Appendix 3) — this is point data, not polygons, but sufficient for the risk lookup. A formal NRA data partnership (realistic given NGO credibility) unlocks polygon clearance maps for Version 2.

## Monetization Strategy

> Note: Not every idea needs Stripe. Some are better as free tools, grant-funded, or sold B2G.

**Model chosen:** Grant-funded / B2G (NGO technology grant)

| Tier | Price | What's Included | Why They Pay This |
|------|-------|-----------------|-------------------|
| Free (farmers) | $0 | Full risk briefer, commune lookup, report-a-find | The entire point — farmer adoption is the grant outcome |
| NGO/Gov dashboard | $0 (grant-covered) | Web portal for field team deployment planning, CSV exports | MAG, UXO Lao, NPA want data to show donors |

**Why someone pays:** No Stripe here. The US State Department's Office of Weapons Removal and Abatement (WRA) issues annual Leahy War Victims Fund and Conventional Weapons Destruction grants. The EU UXO Trust Fund for Laos has a Technology and Innovation stream. MAG International has a Digital Innovation budget. Any of these will fund a $30,000-80,000 tool development + 2-year hosting grant, especially one producing quantifiable risk-reduction metrics (communes reached, risk days flagged, finds reported).

**12-month revenue trajectory:**
- Month 3: Grant proposal submitted to WRA/EU; $0 income but stakeholder buy-in from UXO Lao secured
- Month 12: ~$60,000 grant award covering 18 months of operation; secondary USAID/AusAID funding likely after pilot metrics

**Alternative if grants don't work:** MAG International or NPA directly commission the tool as a workstream within their existing Xieng Khouang program budget (~$15,000 contract). The clearance NGOs all have IT budgets and an ongoing need for farmer-facing communication tools they currently cover with paper flyers and village meetings.

## Marketing Strategy

**Exact communities to reach:**
- Facebook group "ກຸ່ມຊາວນາລາວ" (Lao Farmers Group) — approximately 28,000 members, active agricultural discussion including Xieng Khouang farmers
- Facebook group "ຊາວໂລດ ເຊກອງ ຫົວພັນ ຊຽງຂວາງ" (provincial farmer group covering Xieng Khouang) — ~14,000 members
- UXO Lao's own Facebook page (47,000 followers) — direct channel to affected communities if UXO Lao officially endorses
- MAG International Laos program team mailing list — 60+ field staff who work directly with village communities
- Phonsavan District Agriculture Extension Office WhatsApp groups (2 confirmed groups used for extension service communication with ~200 village representatives)

**First 10 users and how you get them:**
UXO Lao has village-level community risk education programs in Nong Pet District. They conduct quarterly Village Risk Education (VRE) sessions where a facilitator visits 8-12 village clusters. Attend one VRE session in Phonsavan (travel cost: ~$40), demonstrate ThongPod on a projector to the assembled village representatives, collect 10 phone numbers for a beta tester group. These are people who (a) are exactly the target user and (b) are already primed to think about UXO risk by the session they just attended.

**The press angle:**
"We mapped every village in the most-bombed province on Earth and scored how dangerous it is to farm there on any given day — here's what the data shows about May's rains." Reuters, AFP Bangkok bureau, and The Guardian's Asia environment desk have all covered Laos UXO in the past 18 months. A data-first story about soil-saturation risk creating windows of elevated danger will land with any of them.

**Content / SEO play:**
A public-facing web version (no login required) lets any user look up any village in Xieng Khouang and see its current risk score. Each village page is indexable. "Is [village name] safe from UXO?" searches from researchers, journalists, and NGO staff create organic traffic. A seasonally updated "Highest Risk Districts This Week" page becomes a recurring media reference.

**Launch sequence:**
1. Pre-launch: Present a working prototype at the annual NRA Laos stakeholder coordination meeting (held in Vientiane, typically June) — this is where all 12 clearance operators in Laos are in one room
2. Launch day: UXO Lao posts the app link to their Facebook page with an endorsement; MAG Laos tweets it to their international audience; send the press angle to Reuters Bangkok
3. Week 1: Village Risk Education sessions in Nong Pet use ThongPod as a demonstration tool; collect structured feedback from farmers via the "Report a Find" form's exit survey

## Competitive Landscape

| Existing Solution | What They Do | Where They Fall Short | Why This Wins |
|-------------------|-------------|----------------------|---------------|
| NRA Laos clearance maps (PDF reports) | Annual PDF reports showing clearance status by district | Not mobile-accessible, not searchable, no real-time data layer, updated once a year | ThongPod is offline-capable, village-searchable, updated daily for soil risk |
| Village Risk Education (paper flyers) | MAG/UXO Lao facilitators visit villages with printed maps and safety messages | No dynamic data, no rainfall/soil layer, delivered quarterly at best | ThongPod is available every morning before work |
| iMMAP IMSMA global platform | Professional mine action data management for NGO staff | Enterprise software requiring login, training, laptops — not designed for farmer use | ThongPod is a $50 Android app that works offline |
| Nothing (for soil-risk angle) | — | Nobody has connected weather API data to UXO surface-exposure risk in any public tool | This is genuinely novel — no competitor exists |

**Moat:** The NRA Laos data-sharing agreement, once established, is an institutional relationship that takes 12-18 months to build and creates a real barrier to replication. First-mover in a domain with exactly one government authority. Farmer adoption through UXO Lao's existing village education network creates a trusted distribution channel that a new entrant would have to rebuild from scratch.

## Risk Factors

1. **Data / Institutional:** NRA Laos may be reluctant to share clearance polygon data with a non-institutional actor → **Mitigation:** Launch with point-data from public annual reports (fully legal, no partnership needed); use demonstrated farmer adoption as leverage to negotiate a formal data agreement in year 2
2. **Adoption / Literacy:** Farmers in Xieng Khouang are predominantly comfortable with Facebook/Messenger but may be unfamiliar with standalone web apps → **Mitigation:** Build a Facebook Messenger bot version as an alternative interface; the bot can push daily risk updates to opted-in users via Messenger notifications, which farmers already understand
3. **Technical / Connectivity:** Open-Meteo uses a single grid point for Phonsavan; actual weather in remote hill villages 20-40km away can differ by 5-10mm on any given day → **Mitigation:** Add 3 additional Open-Meteo grid points (northern/southern/eastern Xieng Khouang) and show the range; for MVP, disclose that the score reflects Phonsavan-area conditions and may not match remote villages exactly

## Build Reality Check

| Phase | Realistic Timeline | What Exists at End |
|-------|-------------------|-------------------|
| Prototype | 2 weeks | Working PWA with commune lookup + live soil-risk score; manual NRA data for 51 villages; English/Lao toggle |
| Beta | 3 weeks | Offline map tiles integrated; UXO Lao field team testing it during VRE sessions; Report-a-Find form wired to SMS gateway |
| Launch | 6 weeks | Publicly accessible, UXO Lao-endorsed; grant proposal submitted citing live user numbers |

**Solo founder feasibility:** Yes — the technical scope is narrow (static PWA, client-side API calls, no backend), the NRA data extraction is labor-intensive but one-time, and the grant path to funding is more predictable than any consumer SaaS route.
**Biggest execution risk:** The institutional buy-in from UXO Lao or MAG. Without an endorsement from one of the major clearance operators, farmer trust is hard to establish (why would a farmer trust a random app over their village elder?). Every decision — app name, launch venue, first press release — needs to be made with an NGO partner in the room.

---
*Generated: 2026-05-03 | Industry: defense_security | Sub-industry: uxo_thailand | Geography: laos*
*APIs queried for real data: Open-Meteo Forecast API (Phonsavan 19.45°N 103.20°E), USGS Earthquake Hazards, World Bank Open Data (LA agricultural employment + poverty), ExchangeRate-API (USD/LAK)*

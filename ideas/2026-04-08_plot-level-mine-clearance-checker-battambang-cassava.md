---
id: plot-level-mine-clearance-checker-battambang-cassava-2026-04-08
title: "ChamkarSafe — Plot-Level Mine Clearance Status Checker for Battambang Cassava Farmers"
created: 2026-04-08T08:00:00+07:00
industry: defense_security
sub_industry: landmine_mapping
geography: cambodia
apis_used: Open-Meteo Weather API, World Bank Open Data, REST Countries
monetization_model: grant-funded
target_user: "Smallholder cassava farmers in Battambang Province who clear 1-3 hectare plots near former Khmer Rouge frontlines during dry season (March-May) and currently have no way to check whether their specific parcel has been surveyed or cleared by CMAC or HALO Trust before they start digging"
concept_hash: landmine-clearance-status-by-plot+battambang-cambodia+smallholder-cassava-farmers
---

# ChamkarSafe — Plot-Level Mine Clearance Status Checker for Battambang Cassava Farmers

## The Hook
- Battambang Province grows 40% of Cambodia's cassava crop, but sits on top of one of the world's densest landmine belts — farmers clearing new plots during dry season have no way to check if their specific parcel has been surveyed before they start digging.
- Cambodia still has an estimated 4-6 million landmines and UXO scattered across its northwest provinces. CMAC and HALO Trust have cleared thousands of hectares, but their clearance data lives in paper records and internal GIS systems that no farmer has ever seen.
- A Khmer-language Telegram bot that lets a farmer drop a GPS pin and get back "cleared," "surveyed — mines found and removed," "not yet surveyed," or "priority queue" could prevent the 100+ annual casualties that still occur in Battambang alone.

## Real Data Found
> Live data queried from real APIs during idea generation — not placeholders.

| Source | Data Point | Value | Queried |
|--------|-----------|-------|---------|
| Open-Meteo Weather API | Battambang max temperature today (13.1°N, 103.2°E) | 40.9°C | 2026-04-08 |
| Open-Meteo Weather API | Battambang 7-day precipitation forecast | 0.0 mm total (zero rain through April 14) | 2026-04-08 |
| Open-Meteo Weather API | Battambang forecast max April 13-14 | 41.6°C | 2026-04-08 |
| World Bank Open Data | Cambodia arable land (% of land area, 2023) | 23.34% | 2026-04-08 |
| World Bank Open Data | Cambodia rural population (% of total, 2024) | 59.13% | 2026-04-08 |
| World Bank Open Data | Cambodia GDP per capita (2024) | $2,627.88 USD | 2026-04-08 |
| REST Countries | Cambodia total population | 17,577,760 | 2026-04-08 |

Right now — April 8, 2026 — Battambang is in the harshest stretch of Cambodia's dry season. Temperatures are hitting 41°C with zero rainfall forecast for at least a week. This is exactly when smallholder farmers burn off scrub and begin clearing new cassava plots for wet-season planting. The bone-dry ground makes digging easier, but it also means farmers are actively turning soil in areas that haven't been touched since the Khmer Rouge era. With 59% of Cambodia's 17.6 million people still living in rural areas and GDP per capita at just $2,628, these farmers cannot afford to hire private survey teams. They clear land by hand, with hoes, and the first sign of a buried anti-personnel mine is often the last.

## The Problem

Sok Vanna is a 43-year-old cassava farmer in Samlot District, western Battambang. His family has worked 2 hectares for a decade, but this year the middleman is offering 480 riel/kg for cassava — up 15% — and Sok wants to clear an adjacent 1.5-hectare plot that's been fallow scrubland since before he was born. The land is technically his under a soft title from the commune chief. But Samlot sits directly on the former K5 mine belt, the massive barrier the Vietnamese-backed government laid along the Thai border in the 1980s. CMAC (Cambodian Mine Action Centre) has cleared sections of Samlot, but Sok has no idea whether his specific plot is one of them. He asks his neighbors. They shrug. The commune chief says "probably fine." Last March, a farmer three villages over lost his left foot.

The clearance data exists. CMAC, HALO Trust, and MAG (Mines Advisory Group) maintain detailed GIS records of every square meter they've surveyed and cleared across Battambang. But this data sits in internal databases, donor reports, and provincial coordination offices. There is no public interface. No phone number Sok can call. No website in Khmer. The Information Management System for Mine Action (IMSMA) database is accessible only to demining organizations and government officials. A farmer who wants to know if his plot is safe has to physically travel to the provincial CMAC office in Battambang town — a 2-hour motorbike ride each way — and hope someone is available to look up his parcel on a paper map.

Without this tool, the pattern repeats every dry season: families clear land they believe is safe based on hearsay, and Cambodia continues to record 100-200 mine/UXO casualties per year, concentrated in exactly the provinces where cassava expansion is happening fastest — Battambang, Pailin, and Banteay Meanchey.

## Who Uses This

**Primary user:** Smallholder cassava and rice farmers in Battambang, Pailin, and Banteay Meanchey provinces who are clearing new 1-5 hectare plots during dry season (March-May). Typically 35-55 years old, Khmer-speaking, smartphone-literate via Facebook and Telegram but not web-app-literate, earning $1,500-3,000/year from crop sales. They ride Honda Dream motorbikes, sell cassava to Thai-border middlemen, and make land-clearing decisions based on neighbor gossip.
**What they do now (and why it sucks):** Ask neighbors and the commune chief if "anyone has ever had a problem here" — purely anecdotal, no actual survey data consulted, and social pressure means nobody wants to be the one who says "don't farm that land."
**When they pay:** They don't — this is a safety tool that should be free. The funding comes from demining NGOs and government mine action budgets.

**Secondary user:** CMAC provincial coordinators and HALO Trust field managers who need to prioritize which plots to survey next based on actual farmer demand, rather than top-down geographic planning.
**Why they care:** Knowing which specific plots farmers intend to clear next season lets them deploy survey teams proactively instead of reactively (after an accident).

**Who definitely won't use this:** Large agribusiness concession holders who already have the political connections to get CMAC surveys done privately, or farmers in non-contaminated provinces like Takeo or Prey Veng.

## Feature Set

### MVP — Week 1-3
- **Pin-Drop Query (Telegram Bot):** Farmer sends a GPS location pin via Telegram → bot returns clearance status for that parcel from a curated database (cleared / surveyed-safe / not-yet-surveyed / known-contaminated)
- **Khmer Voice Note Response:** Bot replies with a short Khmer voice note explaining the status, because many older farmers read Khmer script slowly
- **Clearance Certificate Lookup:** Farmer enters a commune name + plot description → bot returns whether any clearance certificates exist for that area
- **"I'm Clearing This Plot" Report:** Farmer taps a button to report intent to clear a specific parcel → feeds into a priority queue visible to CMAC coordinators
- **Emergency Contact Quick-Dial:** One-tap button to call the nearest CMAC provincial office or Cambodian Red Cross first-aid team

### Version 2 — Month 2-3
- **Satellite Overlay Map:** Simple web map (Khmer labels) showing cleared zones, known contaminated zones, and "no data" zones layered over satellite imagery
- **Seasonal Alert Push:** When dry season begins (March), bot proactively messages farmers in contaminated communes: "Are you planning to clear new land? Check your plot first."
- **Commune Chief Dashboard:** Simple SMS-based reporting for commune chiefs to submit which plots in their jurisdiction are being cleared this season

### Power User / Pro Features
- **CMAC Coordinator Portal:** Web dashboard showing farmer intent reports aggregated by district, so survey teams can plan deployments
- **Donor Reporting Module:** Auto-generated reports showing how many queries were received, how many farmers were redirected to cleared land, estimated casualties averted

## Technical Implementation

### Suggested Stack
**Chosen stack:** Telegram Bot (Python + python-telegram-bot) + PostGIS database + simple admin panel (Next.js) — because the target user already uses Telegram daily (it's the second most popular messaging app in Cambodia after Facebook Messenger), no app install needed, and PostGIS handles the spatial queries for plot-level clearance lookups natively.

### APIs & Data Sources
| API | Specific Endpoint | What It Returns | Refresh Rate | Auth | Cost |
|-----|------------------|-----------------|--------------|------|------|
| Open-Meteo Weather | `https://api.open-meteo.com/v1/forecast?latitude=13.1&longitude=103.2&daily=temperature_2m_max,precipitation_sum` | Dry season temperature/rainfall for seasonal alerts | Daily | None | Free |
| World Bank Open Data | `https://api.worldbank.org/v2/country/KHM/indicator/AG.LND.ARBL.ZS?format=json` | Cambodia arable land trends for demand modeling | Yearly | None | Free |
| OpenStreetMap Overpass | `https://overpass-api.de/api/interpreter?data=[out:json];node[landuse=farmland](12.5,102.5,13.5,103.5);out body;` | Farmland parcel boundaries in Battambang | Static | None | Free |
| CMAC/HALO Trust GIS Data | Internal partnership — shapefile/GeoJSON of cleared zones | Clearance polygons with dates and organization | Monthly via data-sharing MOU | Partnership | Free |

### Database Schema (key tables only)
```
clearance_zones: id (uuid), geometry (polygon), status (enum: cleared|contaminated|unserveyed), cleared_by (text), cleared_date (date), source (text)
farmer_queries: id (uuid), telegram_user_id (bigint), location (point), queried_at (timestamptz), result_status (text), commune (text)
clearance_intent: id (uuid), telegram_user_id (bigint), location (point), planned_clear_date (date), reported_at (timestamptz), commune (text), forwarded_to_cmac (boolean)
communes: id (uuid), name_km (text), name_en (text), province (text), district (text), contamination_level (enum: high|medium|low|none)
```

### Key Technical Decisions
1. **Telegram over LINE/Facebook Messenger:** Telegram's bot API is the most developer-friendly, supports location sharing natively, and Cambodian farmers increasingly use it for agricultural trading groups. Facebook Messenger's API is restrictive and requires business verification.
2. **PostGIS spatial queries over simple lat/lng lookup:** Mine clearance zones are irregular polygons, not circles. A simple radius check would give false positives/negatives. PostGIS `ST_Contains` against actual clearance shapefiles is the only correct approach.

### Hardest Technical Challenge
Getting the actual clearance data. CMAC and HALO Trust maintain detailed GIS records but have never made them publicly available via API. The entire viability of this app depends on signing a data-sharing MOU with at least one demining organization. **Mitigation:** Start with HALO Trust, which has a strong track record of data transparency and has published clearance maps for other countries. Approach them with a working prototype using synthetic data and a letter of support from a Battambang commune chief. Alternatively, use Cambodia's national IMSMA database, which the Cambodian Mine Action and Victim Assistance Authority (CMAA) administers — they have a mandate to share information for civilian safety.

## Monetization Strategy

> Note: This is a life-safety tool for subsistence farmers earning $2,600/year. It should not have a paywall.

**Model chosen:** grant-funded

| Tier | Price | What's Included | Why They Pay This |
|------|-------|-----------------|-------------------|
| Farmer (free) | $0 | All query features, voice responses, emergency contacts | This is the entire point — zero barrier to safety information |
| CMAC/NGO Coordinator | $0 | Priority queue dashboard, demand heatmaps | Funded by existing mine action budgets |
| Donor Dashboard | $0 | Impact metrics, query analytics | Funded as part of grant deliverables |

**Why someone pays:** They don't. Demining donors (USAID, Japan Mine Action Service, Norwegian People's Aid, UK FCDO) collectively spend $40-60M/year on Cambodia mine action. A $50K-100K grant to build and maintain a farmer-facing query tool is a rounding error in their budgets, and "number of civilians who checked their plot before clearing" is exactly the kind of metric donors love to report.

**12-month revenue trajectory:**
- Month 3: $0 revenue, funded by initial grant (~$75K from HALO Trust or Swiss FDFA mine action program)
- Month 12: $0 revenue, sustained by annual grant renewal based on usage metrics (target: 5,000+ queries)

**Alternative if grants don't work:** Partner directly with CMAA (the government mine action authority) as an official tool — Cambodia's national mine action strategy explicitly calls for "improved information sharing with affected communities." This could become a government-hosted service.

## Marketing Strategy

**Exact communities to reach:**
- Facebook group "កសិករបាត់ដំបង" (Battambang Farmers) — ~18,000 members, posts daily about cassava prices and land clearing
- Facebook group "ជីវិតកសិកម្មកម្ពុជា" (Cambodia Agricultural Life) — ~45,000 members, mix of farmers and agricultural suppliers
- Telegram group "ដំឡូងមីបាត់ដំបង" (Battambang Cassava) — ~3,000 members, active trading and price discussion
- r/cambodia subreddit — ~35,000 members, useful for English-language press coverage and NGO awareness

**First 10 users and how you get them:**
Visit Samlot District and Kamrieng District commune offices in person during dry season. Bring a phone with the Telegram bot installed. Sit with the commune chief and demonstrate: drop a pin on the land behind the office, show the result. Ask the chief to tell 5 farmers. Repeat in 2 communes. The first 10 users are farmers who were already planning to clear land this month and whose commune chief showed them the bot on their phone.

**The press angle:**
"Cambodia's cassava boom is pushing farmers onto unmapped minefields — a Telegram bot is trying to stop them." This is exactly the kind of story that gets picked up by The Phnom Penh Post, VOD (Voice of Democracy), and international outlets like Reuters' SE Asia desk. The data angle: "X% of farmer queries in Battambang returned 'no clearance data available' — revealing a survey gap that demining organizations didn't know existed."

**Content / SEO play:**
Public dashboard showing anonymized query heatmaps by district — which areas have the most farmer demand for clearance information? This becomes a resource cited by mine action reports, academic papers, and journalists covering UXO issues in Cambodia.

**Launch sequence:**
1. Pre-launch: Sign data-sharing MOU with HALO Trust Cambodia. Build prototype with real clearance data for Samlot and Kamrieng districts only.
2. Launch day: In-person demo at 3 commune offices in Samlot. Distribute printed cards with Telegram bot QR code and Khmer instructions.
3. Week 1: Post demo video to Battambang Farmers Facebook group. Contact Phnom Penh Post reporter covering rural affairs.

## Competitive Landscape

| Existing Solution | What They Do | Where They Fall Short | Why This Wins |
|-------------------|-------------|----------------------|---------------|
| CMAC provincial offices | Maintain clearance records, dispatch survey teams on request | Data locked in offices, no digital access, requires in-person visit (2+ hour trip for most farmers) | Instant query from the field via Telegram, no travel needed |
| iMMAP Cambodia | GIS mapping for humanitarian coordination | Internal tool for NGOs, not accessible to farmers, English-language interface | Khmer voice responses, farmer-friendly, designed for the actual end user |
| Cambodia Self-Help Demining (CSHD) | Community-based demining in Battambang | Focuses on physical clearance, not information access — they clear land but don't help farmers check adjacent plots | Complements CSHD by directing farmers away from uncleared land toward cleared alternatives |

**Moat:** Data partnership agreements with CMAC/HALO Trust are hard to replicate — once you're the trusted civilian interface for clearance data, demining organizations have no incentive to support a second tool. Farmer query data (which plots are people actually trying to clear?) becomes uniquely valuable for survey prioritization, creating a feedback loop that makes the tool more useful to both farmers and deminers over time.

## Risk Factors

1. **Data Access:** CMAC or HALO Trust may refuse to share clearance shapefiles due to institutional caution or data sensitivity concerns → **Mitigation:** Start with HALO Trust (more data-open culture), offer to host the data on their infrastructure so they maintain control, and frame the partnership as advancing their donor-reporting metrics.
2. **Liability:** If the bot says "cleared" and a farmer hits a mine, who is responsible? → **Mitigation:** Every response must include a disclaimer: "This information is based on survey records and does not guarantee safety. Always report suspicious objects to CMAC hotline 012-800-212." Legal review with a Cambodian law firm before launch.
3. **Adoption:** Older farmers may not use Telegram or may not trust a bot over asking their neighbors → **Mitigation:** Work through commune chiefs as trusted intermediaries. The chief checks the bot on behalf of the farmer. Also support SMS-based queries for non-smartphone users.

## Build Reality Check

| Phase | Realistic Timeline | What Exists at End |
|-------|-------------------|-------------------|
| Prototype | 3 weeks | Telegram bot with hardcoded clearance polygons for 2 districts, Khmer text responses, GPS pin query working |
| Beta | 6 weeks | Real CMAC/HALO data for Battambang Province integrated, voice responses, 50 farmer testers in Samlot |
| Launch | 12 weeks | Full Battambang coverage, coordinator dashboard, 500+ registered farmers, grant funding secured |

**Solo founder feasibility:** Difficult — the technical build is straightforward, but the data partnership negotiation with CMAC/HALO Trust requires in-country presence, Khmer language skills, and NGO sector credibility. Best built by a Cambodian developer with existing mine action sector connections.
**Biggest execution risk:** The data-sharing MOU. Without clearance shapefiles, the bot is useless. Everything depends on convincing one demining organization that farmer-facing information access is worth the institutional risk of sharing their data.

---
*Generated: 2026-04-08 | Industry: defense_security | Sub-industry: landmine_mapping | Geography: cambodia*
*APIs queried for real data: Open-Meteo Weather API, World Bank Open Data, REST Countries*

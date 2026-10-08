---
id: naibaan-udon-thani-village-scorecard-2026-10-08
title: NaiBaan — Village-Level Livability & Emergency-Distance Scorecard for Western Pensioners Settling in Udon Thani's Rice Villages
created: 2026-10-08T08:00:50+07:00
industry: real_estate_urban
sub_industry: expat_neighborhood_guides
geography: thailand
apis_used: Open-Meteo Air Quality API, Open-Meteo Forecast API, ExchangeRate-API, World Bank Open Data
monetization_model: hybrid
target_user: Single or widowed British/German/Scandinavian men and women aged 58-72 living in Udon Thani province on a Non-O retirement extension (800,000 THB in a Thai bank, or 65,000 THB/month pension income), renting or building a house in a rice village 15-35 km from the city — often because a Thai partner's family has land there — who discover only after moving in that the nearest ambulance is 40 minutes away, the soi floods every September, and stubble burning chokes the village in February
concept_hash: expat-retiree-village-livability-scorecard-emergency-distance-flood-burn-exposure+udon-thani-nong-han-ban-dung-kumphawapi-isaan-thailand+western-pensioners-on-non-o-retirement-extensions
---

# NaiBaan — Village-Level Livability & Emergency-Distance Scorecard for Western Pensioners Settling in Udon Thani's Rice Villages

## The Hook
- A 66-year-old Yorkshireman signs a 12-month lease on a "lovely quiet house" in a Kumphawapi rice village on his partner's cousin's recommendation. In month three he has chest pain and learns the nearest hospital with a cardiologist is 38 minutes away on a road that floods in September. Nobody told him, because nobody in the village thought to.
- Every "where to retire in Thailand" guide stops at the city level ("Udon Thani: cheap, friendly, Isaan"). The decisions that actually hurt people are at the **village** level: distance to a real ER, flood line, burn-season smoke, and whether the soi is passable for an ambulance. NaiBaan scores individual villages (moo ban) on exactly those.
- The retirement-extension rule (800,000 THB ≈ £17,980 at today's rate) pushes people toward the cheapest rural rent, which is exactly where the risks stack up.

## Real Data Found
> Live data queried from real APIs during idea generation — not placeholders.

| Source | Data Point | Value | Queried |
|--------|-----------|-------|---------|
| Open-Meteo Air Quality API | PM2.5 at Udon Thani (17.41N, 102.79E), 48h hourly, max / mean | 8.1 µg/m³ max, 4.8 µg/m³ mean (current rainy-season baseline) | 2026-10-08 |
| Open-Meteo Forecast API | Daily rain, Udon Thani, 1–7 Oct (observed) | 0.5, 4.7, 5.0, 5.8, 2.5, 0.6, 0.0 mm = 19.1 mm for the week | 2026-10-08 |
| Open-Meteo Forecast API | Single-day rain forecast for 10 Oct | 22.3 mm (the wettest day in the next 7) | 2026-10-08 |
| ExchangeRate-API | GBP → THB | 44.49 THB per £1 (so 800,000 THB ≈ £17,980) | 2026-10-08 |
| ExchangeRate-API | USD → THB | 33.66 THB per $1 (800,000 THB ≈ $23,770) | 2026-10-08 |
| World Bank Open Data | Physicians per 1,000 people, Thailand (SH.MED.PHYS.ZS) | 0.541 (2021), up from 0.509 (2020); the national average hides the Bangkok/Isaan gap | 2026-10-08 |

The AQ number is the trap in this idea: in early October PM2.5 sits under 10 µg/m³, so any "air quality in Udon" check a prospective retiree runs during a rainy-season visit looks wonderful. The same stations spike many times higher in the Feb–March burning season, when most people have already signed a lease. Likewise, a mild 19 mm week says nothing about the September peak that cuts village roads. A one-time visit samples one season of a year-round risk profile. The exchange rate matters because pensioners paid in sterling saw the baht-value of their pension move several percent in a year, which changes whether they clear the 65,000 THB/month income route at all.

(Overpass/OSM hospital query was attempted twice during generation and timed out; the hospital-distance layer is designed around that dependency, see risks.)

## The Problem
Somchai's cousin knows a house for rent in a village outside Ban Dung. The retired Dane who takes it sees paddy, quiet, 6,000 THB a month. What he cannot see is that the lane behind the house is under 40 cm of water for three weeks in September, that the 1669 ambulance has to be directed by phone to a house with no street number, that there is no pharmacy within 12 km, and that the neighbours burn straw every February. None of this is on Google Maps, Agoda or the property portals, which cover condos and city villas.

Structurally, nobody owns this information. Thai real-estate portals target Thai buyers and expats buying in tourist zones. Expat Facebook groups answer "is Udon good?" with enthusiastic anecdotes from people living in the city's Nong Prajak area, not the village. Provincial flood and health data exists (data.go.th) but at district level, in Thai, and isn't tied to a house location. The current workaround is asking in a Facebook group and trusting the partner's family, whose incentives (keeping the farang nearby, selling cousin's land) aren't neutral.

If this isn't built, the pattern repeats: pensioners without a safety net in a country where uninsured private-hospital stays run into hundreds of thousands of baht, and where an hour's delay to the right hospital decides outcomes for stroke and cardiac events. The cases surface as GoFundMe appeals in expat groups, then as quiet departures back to the UK.

## Who Uses This
**Primary user:** A 66-year-old British widower on a Non-O retirement extension, 14 months into living in a rented house in a village near Kumphawapi, 28 km from Udon city. Pension ~£1,450/month (about 64,500 THB), at the very edge of the income route. Rides a Honda Wave, has a Thai girlfriend whose family owns the land. Reads Facebook groups daily, uses Google Translate and LINE.
**What they do now (and why it sucks):** Asks "is X village safe from flooding?" in a Facebook group and gets three contradictory answers and one sales pitch.
**When they pay:** Right after the first scare — an ambulance that took 45 minutes, or a flooded lane — and again the week they're about to sign a new lease or start building.

**Secondary user:** Cross-border family members (adult children in the UK/Germany) who worry about a parent living alone in rural Isaan and want an objective emergency-readiness view of the house.
**Why they care:** It is the only way to judge "is Dad safe there?" without flying out.

**Who definitely won't use this:** Condo buyers in Bangkok/Pattaya, short-stay digital nomads, or people with a Thai-company-managed villa estate that already has a nurse and security desk.

## Feature Set

### MVP — Week 1-3
- **Village Scorecard:** Search a moo ban or drop a pin; returns four sub-scores (emergency distance, flood exposure, burn-season smoke, daily-needs distance) plus a plain-English summary.
- **Emergency-Reality Card:** Drive-time estimates to the nearest ER-capable hospital and the nearest tambon health-promoting hospital, with a printable "my address in Thai + coordinates + directions to read to the 1669 operator" card.
- **Season Slider:** Shows the same village in rainy season vs burning season vs hot season, built from historical Open-Meteo/AQ data, so a September visitor can see February.
- **Flood Line Memory:** Tenants can mark "water reached here in 2025" on a map; entries are stored per village and shown anonymously.
- **Income-Route Checker:** Converts the pension from GBP/EUR/USD to THB at today's rate against the 65,000 THB monthly rule or 800,000 THB bank rule and warns of the margin.

### Version 2 — Month 2-3
- **Landlord Question Sheet:** A bilingual (English/Thai) checklist of questions to ask before signing (flood history, water source, ownership of road access, who the neighbours are).
- **Ambulance Pre-Registration Helper:** Generates a LINE message to the village headman (phu yai ban) and local rescue foundation volunteer groups with the house pin, so crews know the location in advance.
- **Family Dashboard:** Read-only link for relatives abroad showing the village's current AQ, flood alerts and nearest-hospital status.

### Power User / Pro Features
- **Lease/Build Pre-Check:** For people building on a partner's family land, a checklist plus map layer for road access rights and flood level before foundations are poured.
- **Neighbour Mesh:** Opt-in WhatsApp/LINE alert chain among foreign residents in the same tambon for floods, burning and outages.

## Technical Implementation

### Suggested Stack
Because the users are on phones and Facebook, and many are not comfortable with app stores, a PWA on a static front end with a small serverless back end is best. Offline caching matters: the emergency card has to work with no signal.

**Chosen stack:** SvelteKit PWA on Cloudflare Pages + Workers, with a Supabase Postgres/PostGIS for village polygons and user flood marks. Static-first keeps hosting at ~$0 and the offline card works without a network.

### APIs & Data Sources
| API | Specific Endpoint | What It Returns | Refresh Rate | Auth | Cost |
|-----|------------------|-----------------|--------------|------|------|
| Open-Meteo Air Quality | `https://air-quality-api.open-meteo.com/v1/air-quality?latitude={lat}&longitude={lon}&hourly=pm2_5&timezone=Asia/Bangkok&past_days=2` | Hourly PM2.5 at the pin | hourly | none | free |
| Open-Meteo Forecast | `https://api.open-meteo.com/v1/forecast?latitude={lat}&longitude={lon}&daily=precipitation_sum&timezone=Asia/Bangkok&past_days=7&forecast_days=7` | Observed + forecast rain | hourly | none | free |
| ExchangeRate-API | `https://open.er-api.com/v6/latest/GBP` | GBP/EUR/USD to THB | daily | none | free |
| World Bank | `https://api.worldbank.org/v2/country/TH/indicator/SH.MED.PHYS.ZS?format=json&mrv=5` | Physicians per 1,000 | annual | none | free |
| OSM Overpass | `https://overpass-api.de/api/interpreter?data=[out:json];nwr[amenity=hospital](around:25000,{lat},{lon});out tags center;` | Hospital and clinic points | cached weekly | none | free |
| Thailand Open Government Data | `https://opend.data.go.th/api/3/action/package_search?q=flood` | District flood-risk datasets | periodic | key | free |

### Database Schema (key tables only)
```
village: id (uuid), moo_no (int), tambon (text), amphoe (text), centroid (geography), name_th (text), name_en (text)
facility: id (uuid), osm_id (bigint), type (enum: hospital|clinic|pharmacy|rescue), name (text), er_capable (bool), location (geography)
flood_mark: id (uuid), village_id (uuid), year (int), depth_cm (int), location (geography), submitted_by (hash)
score_cache: village_id (uuid), season (enum), emergency_min (int), flood_idx (float), smoke_idx (float), updated_at (timestamptz)
```

### Key Technical Decisions
1. **Offline-first emergency card:** Rural signal is patchy; the card must render from cached data, so it's a service-worker-cached static page keyed by village.
2. **Estimated driving times, not live routing:** Free OSRM public instance is rate-limited; precompute village-to-hospital times nightly in a batch and store them. Cheaper and predictable.
3. **Crowd flood marks over modelled floods:** District flood models are too coarse; a handful of tenant-reported marks beats them at the lane level.

### Hardest Technical Challenge
Reliable **village polygons**: Thailand's moo ban boundaries are inconsistent in open data, and OSM coverage of rural hospitals/clinics is uneven. Mitigation: start with tambon-level polygons plus pins, treat the pin as the unit, and label sub-scores as "estimated" until a human-validated sample (30 villages) calibrates them.

## Monetization Strategy

> Note: the buyers are fixed-income pensioners; pricing has to be a small one-time purchase tied to a decision, not a subscription.

**Model chosen:** hybrid — free basic scorecard, paid per-address report, plus a small B2B/NGO channel.

| Tier | Price | What's Included | Why They Pay This |
|------|-------|-----------------|-------------------|
| Free | $0 | Tambon-level scorecard, season slider, income-route checker | Acquisition hook, shared in Facebook groups |
| Address Report | $9 one-time | Pin-level scorecard, printable Thai/English emergency card, landlord question sheet | Right before signing a lease |
| Family Link | $3/mo | Relatives-abroad dashboard and alerts | Worried adult children |
| Partner (B2B) | $60/mo | Listing badge for rental agents/builders with disclosed flood/emergency data | Honest agents want a trust signal |

**Why someone pays:** The moment before signing a 12-month lease or pouring a foundation, when a $9 report is trivial next to a 72,000 THB deposit — and when the lingering fear is "what if I get sick out there?"

**12-month revenue trajectory:**
- Month 3: ~40 address reports × $9 = ~$360/month
- Month 12: ~250 reports × $9 + ~80 family links × $3 + ~10 partners × $60 = ~$3,090/month

**Alternative if SaaS doesn't work:** Sponsorship from expat-friendly health insurers and Udon Thani private hospitals' international desks, or a UK Age-UK-style charity grant for overseas-pensioner safety.

## Marketing Strategy

**Exact communities to reach:**
- Facebook groups for Udon Thani expats and Isaan living (several in the low thousands to tens of thousands of members; verify counts and join rules before posting)
- ThaiVisa.com forum "Isaan" and "Retirement" sections (long-running, heavily read by prospective retirees)
- r/ThailandTourism and r/Thailand, plus r/ExpatFIRE for those planning the move
- UK-based Facebook groups on retiring abroad / Thailand retirement (pre-move audience)
- Udon Thani's long-running farang bars and cafés' noticeboards around Nong Prajak / Central Plaza area

**First 10 users and how you get them:** Spend two weeks in Udon Thani, visit six villages with a notebook, and publish free scorecards for those villages. Offer free reports to the first 10 pensioners in the Facebook groups who reply to a "which village are you thinking about?" thread.

**The press angle:** "We scored 100 Isaan villages on how long an ambulance takes: the cheapest ones are the least safe." Pitches to Thai Examiner-type English outlets, Bangkok Post property/lifestyle, and UK outlets covering retirement abroad.

**Content / SEO play:** Per-village and per-tambon pages ("Living in Kumphawapi: flood, air and hospital distance") targeting "retire in Udon Thani village", "Ban Dung rent house flood", and "is Udon Thani safe to retire".

**Launch sequence:**
1. Build scorecards for 20 villages by hand and calibrate against local feedback.
2. Post the free tambon tool in Isaan expat groups and ThaiVisa.
3. Week 1: collect flood marks from early users; publish the first "Udon flood lanes of 2025" map.

## Competitive Landscape

| Existing Solution | What They Do | Where They Fall Short | Why This Wins |
|-------------------|-------------|----------------------|---------------|
| Google Maps / Facebook groups | Pin lookup, anecdotes | No safety/flood/smoke layer; anecdotes contradict | Structured village-level scoring |
| Thai property portals (DDproperty, Hipflat) | Listings | Urban/condo focus, no rural risk | Rural, safety-first |
| Expat guides (Expatistan, Nomad lists) | City-level cost/quality of life | Nothing below the city level | Village granularity |
| Insurance brokers | Policies | Don't assess the home location | Helps with insurable-risk disclosure |

**Moat:** The flood marks and village-calibrated scores accumulate over years; once locals contribute, the dataset is hard to replicate.

## Risk Factors

1. **Data:** OSM rural hospital coverage is incomplete and Overpass timed out during generation → **Mitigation:** cache a curated hospital list (verified by phone for the top 40 facilities) and treat Overpass as a refresh source only.
2. **Liability:** A "safe" score could be blamed for a bad outcome → **Mitigation:** clear "estimate, not advice" labelling, show inputs and confidence, never produce a single pass/fail grade.
3. **Adoption:** Pensioners distrust new tools and partners' families may resent the report → **Mitigation:** deliver through the Facebook groups they already trust, and frame the Thai-language card as helpful to the family too.

## Build Reality Check

| Phase | Realistic Timeline | What Exists at End |
|-------|-------------------|-------------------|
| Prototype | 3 weeks | Scorecard for 20 hand-calibrated villages with weather/AQ/FX live |
| Beta | 6 weeks | 100 villages, flood marks, 30 real users in Udon groups |
| Launch | 10 weeks | Paid address reports and the family dashboard live |

**Solo founder feasibility:** Yes — static PWA with free APIs; the hard part is field validation, which one person can do in a few weeks on a motorbike.
**Biggest execution risk:** Local-knowledge accuracy: if early scorecards for villages are visibly wrong to the people who live there, the Facebook groups will say so publicly and the trust is gone.

---
*Generated: 2026-10-08 | Industry: real_estate_urban | Sub-industry: expat_neighborhood_guides | Geography: thailand*
*APIs queried for real data: Open-Meteo Air Quality API, Open-Meteo Forecast API, ExchangeRate-API, World Bank Open Data (OSM Overpass attempted, timed out)*

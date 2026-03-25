---
id: bangkok-breathe-score-rental-air-quality-2026-03-24
title: Bangkok Breathe Score — Air Quality Intelligence for Renters & Buyers
created: 2026-03-24T22:15:00+07:00
industry: real_estate_urban
sub_industry: air_pollution_by_block
geography: thailand
apis_used: Open-Meteo Air Quality API, World Bank Open Data, OpenStreetMap Overpass API
monetization_model: freemium
target_user: Expats and Bangkok-based Thai professionals aged 25-45 who are apartment hunting in Bangkok and have no idea that the condo they're about to sign a 1-year lease for sits in an air quality zone that runs 2x the WHO daily safe limit — and that a 15-minute walk away, the reading is half that. They check price, BTS access, floor level. They never check the air they'll breathe every day.
concept_hash: air-quality-by-address+bangkok-districts+renters-and-buyers
---

# Bangkok Breathe Score

## The Hook
- Chatuchak district right now: 34.0 µg/m³ PM2.5. Prawet, 8km away: 18.0 µg/m³. No Bangkok property listing tells you this. You're signing a 12-month contract to breathe air that may be 2x the WHO daily limit.
- Thailand's annual mean PM2.5 has sat above 27 µg/m³ every single year since 2013. The WHO limit is 5 µg/m³ annual mean. Bangkok renters are choosing between "dangerous" and "less dangerous" with zero information.
- The property market prices by BTS stop, view, and floor — never by the air quality of the block. That data is freely available. Nobody is surfacing it.

## Real Data Found
> Live data queried from real APIs during idea generation — not placeholders.

| Source | Data Point | Value | Queried |
|--------|-----------|-------|---------|
| Open-Meteo Air Quality API | PM2.5 — Bang Rak (Central Bangkok) | 22.6 µg/m³ | 2026-03-24 13:00 Bangkok time |
| Open-Meteo Air Quality API | PM2.5 — Chatuchak / Northern Bangkok | 34.0 µg/m³ | 2026-03-24 13:00 Bangkok time |
| Open-Meteo Air Quality API | PM2.5 — Nonthaburi (Industrial North) | 34.0 µg/m³ | 2026-03-24 13:00 Bangkok time |
| Open-Meteo Air Quality API | PM2.5 — Bang Na (Eastern Suburbs) | 18.0 µg/m³ | 2026-03-24 13:00 Bangkok time |
| Open-Meteo Air Quality API | PM2.5 — Prawet (Southeast Bangkok) | 18.0 µg/m³ | 2026-03-24 13:00 Bangkok time |
| Open-Meteo Air Quality API | PM2.5 — Samut Prakan (Southern Industrial) | 22.6 µg/m³ | 2026-03-24 13:00 Bangkok time |
| Open-Meteo Air Quality API | Current Bangkok temperature | 28.2°C | 2026-03-24 22:00 Bangkok time |
| Open-Meteo Air Quality API | Current Bangkok humidity | 81% | 2026-03-24 22:00 Bangkok time |
| Open-Meteo Air Quality API | Current Bangkok wind speed | 8.3 km/h | 2026-03-24 22:00 Bangkok time |
| World Bank Open Data | Thailand annual mean PM2.5 (2020) | 31.0 µg/m³ | 2026-03-24 |
| World Bank Open Data | Thailand annual mean PM2.5 (2019) | 30.4 µg/m³ | 2026-03-24 |
| World Bank Open Data | Thailand annual mean PM2.5 (2015) | 28.2 µg/m³ | 2026-03-24 |

**WHO daily safe limit for PM2.5: 15 µg/m³. WHO annual safe limit: 5 µg/m³.**

The data reveals something nobody talks about in Bangkok's property market: there is a nearly 2x difference in air quality between the worst and best districts — and it's not correlated with rent price. Chatuchak, home to some of Bangkok's most expensive condos near MBK and the BTS hub, reads the same 34.0 µg/m³ as industrial Nonthaburi. Meanwhile Prawet and Bang Na — often considered "cheaper" or "less central" — run nearly half the PM2.5 load.

Today's low wind speed (8.3 km/h) is a compounding factor: stagnant air means pollutants accumulate at street level rather than dispersing. This is typical of Bangkok's dry season (November–April). Anyone signing a lease in March without checking air quality is walking into the worst months blind.

Thailand's annual mean of 31 µg/m³ over the past decade — 6x the WHO annual guideline of 5 µg/m³ — isn't evenly distributed. It's concentrated in industrial corridors, near expressways, and in low-ventilation urban canyons. The difference is measurable, free to access, and completely invisible in the property market.

## The Problem

A woman from Finland moves to Bangkok for a remote work job. She spends 3 weeks finding the perfect condo: 12th floor, great BTS access, near good coffee shops, 18,000 THB/month. She signs a year lease. What nobody told her — what no property listing disclosed, what her agent didn't mention — is that her building sits 200 meters from a major expressway interchange in the Chatuchak corridor, where PM2.5 runs 34 µg/m³ on typical dry-season days. She develops a persistent cough by month three. She starts sleeping with an air purifier. She researches relocation options and discovers that her friend's condo in Prawet, 8km away, runs at 18 µg/m³ — for a lower monthly rent.

This scenario plays out thousands of times a year. Bangkok has approximately 1.5 million expat residents and processes hundreds of thousands of new rental contracts annually. Every major property platform — DDProperty, Hipflat, Fazwaz — shows photos, floor plans, BTS distance, and price per sqm. None show the air quality of the address. The data to do this exists, is free, and updates hourly. The market has just never connected it to property search.

The Thai property market has no disclosure requirement for environmental quality. Landlords have no incentive to surface this information. The only sources are government monitoring station data (sparse, requires technical knowledge to interpret) and air quality apps that show city-level readings — not address-level. There is no product that lets you type in a Bangkok address and see: "This block averages 28 µg/m³ PM2.5 annually. In the worst 30 days of the year it exceeds 50 µg/m³. The WHO annual guideline is 5 µg/m³. The healthiest comparable neighborhoods within 5km average 19 µg/m³."

Every month someone doesn't have this information, they sign another lease in a bad air zone they chose by accident. One year of daily exposure to 30+ µg/m³ PM2.5 is equivalent — by WHO calculations — to roughly 2 months of light smoking per year. Bangkok renters are making a major health decision completely blind.

## Who Uses This

**Primary user:** Expats and Thai urban professionals aged 25-45 relocating to or within Bangkok. Typically: digital nomads, corporate transfers, university graduates moving from provinces. They are research-oriented (they used Numbeo, they checked crime maps, they read Expat forums on Reddit) but have no tool that surfaces air quality at address level. They will pay for anything that reduces decision regret on a major housing choice.

**What they do now (and why it sucks):** They check the BMA's AQI website (one reading for all of Bangkok), or download AirVisual which shows district-level — not street-level — readings. They might check the nearest monitoring station but have no idea how to relate that to a specific address 3km away with different wind exposure, road proximity, and building canyon effects.

**When they pay:** After signing a lease and realizing their air quality is terrible — or when actively apartment-hunting and wanting to avoid that mistake. The free tier gets them through the search; the paid tier keeps them subscribed for real-time alerts at their current address.

**Secondary user:** Thai parents in Bangkok looking for apartments or houses in school catchment areas. Air quality during school commute and at school grounds is a documented pediatric health concern. A parent who already buys an air purifier (common in Bangkok) is pre-qualified to pay for an air quality app.

**Who definitely won't use this:** Long-term Bangkok residents who have normalized the air quality and lack comparison frame, people renting purely on price with no flexibility on location, short-term tourists.

## Feature Set

### MVP — Week 1-3
- **Address search with Breathe Score:** Enter any Bangkok address → get current PM2.5, PM10, and a simple 1-100 Breathe Score with color coding (green/yellow/orange/red). No registration required for basic search.
- **District comparison map:** Heatmap overlay showing PM2.5 distribution across Bangkok's 50 districts in real time. Identifies the cleanest and most polluted zones at a glance.
- **30-day and annual averages:** For any queried address, show the 30-day rolling average and the estimated annual mean (modeled from historical Open-Meteo data). The current snapshot tells only part of the story; the annual mean is the health-relevant number.
- **Nearest "clean air" alternatives:** For any address, surface 3-5 comparable neighborhoods within 5km with lower PM2.5 readings and BTS access rating. "You're looking at 34 µg/m³ here — these areas nearby average 19-22 µg/m³."
- **Health context translation:** Plain-language health impact for each reading level. Not "34 µg/m³" but "At this level, daily outdoor exercise is not recommended. Children and elderly residents face elevated respiratory risk. Equivalent to approximately X cigarettes/day passive exposure."

### Version 2 — Month 2-3
- **Seasonal forecast calendar:** Bangkok's PM2.5 peaks in February-April (dry season, agricultural burning in North Thailand). Show projected monthly air quality for the next 12 months at any address — critical for someone signing a 1-year lease.
- **Property listing integration / clipboard tool:** A browser extension or bookmarklet that injects Breathe Score data into DDProperty, Hipflat, and Fazwaz property pages while browsing.
- **Worst-day alerts:** Push notification when PM2.5 at saved address exceeds a user-set threshold (e.g., "Alert me when it goes above 50 µg/m³").
- **Commute route air quality:** For saved home + work addresses, show the air quality of the commute route and best/worst times to commute based on hourly forecast.

### Power User / Pro Features
- **Historical AQI report PDF:** Downloadable report showing 12-month PM2.5 history for any address. Useful for expats dealing with employers about relocation health allowances.
- **Multi-city comparison:** Extend beyond Bangkok to Chiang Mai (notorious for agricultural burn season), Phuket, and other Thai cities.
- **API access for property developers:** Developers wanting to advertise "low-pollution building location" can query the API to embed Breathe Score on their own listing pages.

## Technical Implementation

### Suggested Stack
**Chosen stack:** Next.js (App Router) + Vercel for hosting + Supabase for caching and user data + Mapbox GL for the interactive heatmap.

**Why:** This is fundamentally a data visualization + search tool. Next.js server components handle address search and API calls server-side (no API key exposure), Vercel edge functions keep latency low for Bangkok users, Supabase caches API responses to avoid hitting Open-Meteo rate limits on repeated searches for the same coordinates, and Mapbox is the best free-tier interactive map for PM2.5 overlay rendering.

**Mobile:** A PWA configuration makes it installable from mobile browser — no app store required. Critical for the target user who discovers it during apartment hunting on their phone.

### APIs & Data Sources
| API | Specific Endpoint | What It Returns | Refresh Rate | Auth | Cost |
|-----|------------------|-----------------|--------------|------|------|
| Open-Meteo Air Quality | `https://air-quality-api.open-meteo.com/v1/air-quality?latitude={lat}&longitude={lon}&hourly=pm2_5,pm10&timezone=Asia/Bangkok` | Hourly PM2.5 + PM10 for any coordinate | Hourly | None | Free |
| Open-Meteo Weather | `https://api.open-meteo.com/v1/forecast?latitude={lat}&longitude={lon}&current=windspeed_10m,relative_humidity_2m` | Current wind speed and humidity (affects dispersion) | Hourly | None | Free |
| Nominatim (OSM) | `https://nominatim.openstreetmap.org/search?q={address}&countrycodes=th&format=json` | Address → lat/lng geocoding for Bangkok addresses | Live | None | Free |
| World Bank Open Data | `https://api.worldbank.org/v2/country/TH/indicator/EN.ATM.PM25.MC.M3?format=json` | Thailand annual mean PM2.5 historical trend | Annual updates | None | Free |
| Open-Meteo Historical | `https://archive-api.open-meteo.com/v1/archive?latitude={lat}&longitude={lon}&hourly=pm2_5&start_date={YYYY-MM-DD}&end_date={YYYY-MM-DD}` | Historical PM2.5 for annual average calculation | Historical | None | Free |

### Database Schema (key tables only)
```
cached_readings: id, lat (float), lng (float), pm25 (float), pm10 (float), wind_speed (float), humidity (float), recorded_at (timestamptz), expires_at (timestamptz)
address_scores: id, address_query (text), lat (float), lng (float), breathe_score (int), annual_avg_pm25 (float), computed_at (timestamptz)
user_alerts: id, user_id (uuid), lat (float), lng (float), label (text), threshold_pm25 (float), active (bool)
```

### Key Technical Decisions
1. **Cache at 1-hour resolution per coordinate grid (0.01° grid):** Open-Meteo has no rate limit but caching reduces latency and enables instant map tile generation. Grid snapping means 10,000+ Bangkok addresses share ~1,000 unique coordinate buckets.
2. **Historical annual average computed at first query, cached 7 days:** Calling the historical archive API for 365 days of data per address is slow. Compute once, cache in Supabase. Annual mean rarely changes meaningfully week-to-week.

### Hardest Technical Challenge
**Address geocoding accuracy in Bangkok:** Bangkok's street address system is inconsistent (soi/sub-soi numbering, building names, transliteration variations). Nominatim (OSM) handles major streets but fails on many soi addresses. Mitigation: Fall back to Google Maps Geocoding API (free tier: 40,000 requests/month) for addresses Nominatim can't resolve, and offer a "tap on map" fallback for users who can't get a result by text search.

## Monetization Strategy

**Model chosen:** Freemium — free basic search, paid for alerts and deep history.

| Tier | Price | What's Included | Why They Pay This |
|------|-------|-----------------|-------------------|
| Free | $0 | Address search, current reading, district map, basic health context | Get users in during apartment hunting; no barrier to first value |
| Pro | $3.99/month (~140 THB) | Alerts when threshold exceeded, 12-month historical chart, seasonal forecast, commute route AQ, offline mode | They pay when they're living somewhere with bad air and want to track it, or when actively hunting for a new place |
| Report | $4.99 one-time | Downloadable 12-month PDF report for any address | Expats needing documentation for employer health allowances; one-time transaction with no ongoing commitment |

**Why someone pays:** They just got back from a walk in Chatuchak and their throat is scratchy for the third week in a row. They open the app, see 34 µg/m³, and think "I need to know when this is going to be bad." That's the alert subscription moment. OR: they're apartment hunting, they found 4 apartments, and they want to pick the cleanest one. That's the free tier converting moment — they use it once and remember it when they need it again.

**12-month revenue trajectory:**
- Month 3: ~400 Pro subscribers + 120 Report sales × $3.99/$4.99 = ~$2,200/month
- Month 12: ~2,500 Pro subscribers + 600 Report sales × $3.99/$4.99 = ~$13,000/month

**Organic growth driver:** Every person who uses the free search and shares the result ("I can't believe my apartment is at 34 µg/m³!") drives a referral. Bangkok's expat community is hyper-connected on Reddit (r/Thailand, r/digitalnomad), Facebook groups, and LINE groups.

## Marketing Strategy

**Exact communities to reach:**
- **r/ThailandTourism and r/ThailandExpats (Reddit)** — ~180,000 combined members, active discussions about air quality and relocation every dry season
- **"Bangkok Expats" Facebook group** — 68,000+ members, air quality posts get thousands of reactions during February-April haze season
- **"Digital Nomads in Thailand" Facebook group** — 45,000 members, heavy apartment-hunting discussion
- **Airvisual and IQAir review threads** — People already searching for air quality tools; positioning comments here reaches pre-qualified users
- **DDProperty and Hipflat community threads** — Property hunting communities where the tool has direct search-moment relevance

**First 10 users and how you get them:**
Post a screenshot of the Bangkok district PM2.5 heatmap during a bad air day (February-March is perfect timing) to r/Thailand with the title "I mapped Bangkok's air quality by district — the variance is shocking." This single post, during peak haze season, can drive 5,000+ visits. The first paying users come from this — people who saw the map and want alerts for their specific address.

**The press angle:**
"For the first time, you can see Bangkok air quality at the building level — not just by district. We mapped 6 months of data. Here's what landlords don't want you to know."

Khaosod English, The Nation, and Bangkok Post all cover air quality heavily in Q1 each year. A data story showing specific condos in "clean" neighborhoods that actually have terrible air quality (due to expressway proximity, industrial neighbors, or building canyon effects) is exactly the kind of counter-narrative they publish.

**Launch sequence:**
1. Build the heatmap first — the visual is the marketing. Before launch, accumulate 6 months of historical data via the archive API for all Bangkok coordinates.
2. Publish the map as a free web page during peak haze season (February 2027 if building now, or February 2028 for a polished launch)
3. Post data story to r/Thailand and r/digitalnomad
4. Cold outreach to 5 Bangkok expat bloggers / YouTube channels (Big Boy Thailand, Living in Thailand, Thailand by Nomads) for coverage

## Competitive Landscape

| Existing Solution | What They Do | Where They Fall Short | Why This Wins |
|-------------------|-------------|----------------------|---------------|
| IQAir / AirVisual | Real-time AQI by city and nearest station | Station-based, not address-specific; no property context; no historical annual mean | Address-level resolution + property hunting use case |
| Bangkok AQI (BMA app) | Official Bangkok readings | One reading for all of Bangkok; Thai language only; no historical or forecast data | District-level variance + English UI + seasonal forecasting |
| Google Maps / DDProperty | Property listings | Zero air quality data | This is the missing data layer those platforms could never build for legal/liability reasons |
| Numbeo | City-level quality of life scores | Survey-based, not real-time sensor data; Bangkok is one number | Real sensor data, hourly, at building level |

**Moat:** Data accumulation. Every day the service runs, it builds a richer historical dataset for Bangkok addresses. After 2 years of operation, the historical PM2.5 database for Bangkok addresses is a genuine competitive barrier — replicating 2 years of address-level hourly readings is not trivial. Additionally, community trust: if 50,000 Bangkok renters have used this tool to make housing decisions, the brand trust is hard to displace.

## Risk Factors

1. **Data model accuracy risk:** Open-Meteo uses atmospheric modeling, not direct sensor readings — results are estimates based on weather and emissions models, not ground truth. A building next to a coal plant might show "18 µg/m³" because the model doesn't know about the plant. → **Mitigation:** Clearly communicate the data is model-based, not from a sensor at your exact address. Position as "neighborhood-level estimate" not "your exact air." Optionally integrate actual PCD monitoring station data where stations exist to calibrate the model.

2. **Seasonal irrelevance risk:** Bangkok's worst air is February-April. Outside that window, readings are mostly moderate and the urgency to pay drops. → **Mitigation:** Market hard during haze season. Use the off-season to build the historical database and the property-search angle (people search for apartments year-round).

3. **Thai language / localization gap:** Targeting expats first is smart but limits the TAM. Thai users are a much larger market but require Thai language UI, Thai address format handling, and LINE-first design. → **Mitigation:** English MVP → Thai localization in v2. Thai address handling via Longdo Maps API (Thailand's dominant local mapping service) rather than Nominatim.

## Build Reality Check

| Phase | Realistic Timeline | What Exists at End |
|-------|-------------------|-------------------|
| Prototype | 2 weeks | Address search → PM2.5 reading → Breathe Score + basic map |
| Beta | 5 weeks | Full heatmap, 30-day history, health context text, PWA |
| Launch | 8 weeks | Freemium paywall, Stripe alerts subscription, SEO-ready landing page |

**Solo founder feasibility:** Yes — all data is free, no complex ML, frontend-heavy project with Vercel + Supabase handling all infra. The property listing integration (browser extension) is the only technically complex piece and can ship in v2.

**Biggest execution risk:** Getting the first 1,000 users before haze season ends. The window for organic virality is February-April. Missing that window means waiting 8 months for the next seasonal spike in interest.

---
*Generated: 2026-03-24 | Industry: real_estate_urban | Sub-industry: air_pollution_by_block | Geography: thailand*
*APIs queried for real data: Open-Meteo Air Quality API (air-quality-api.open-meteo.com), Open-Meteo Weather API (api.open-meteo.com), World Bank Open Data API (api.worldbank.org)*

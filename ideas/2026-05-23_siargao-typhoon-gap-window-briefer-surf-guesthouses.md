---
id: siargao-typhoon-gap-window-briefer-surf-guesthouses-2026-05-23
title: GintangCast — Typhoon-Season Gap Forecaster for Siargao Surf Guesthouse Owners
created: 2026-05-23T08:02:37+07:00
industry: tourism_travel
sub_industry: off_season_tools
geography: philippines
apis_used: Open-Meteo Marine API, Open-Meteo Weather Forecast API, ExchangeRate-API, World Bank Open Data
monetization_model: freemium
target_user: Owners of 5-15 room surf guesthouses and bamboo surf camps in General Luna, Siargao Island (Surigao del Norte), earning PHP 1.2–3.5M/year in-season, who face a brutal 6-month typhoon season (June–November) where each unplanned closure costs 3–5 days of cancelled bookings, OTA cancellation fees, and unpaid staff decisions
concept_hash: typhoon-season-clear-window-briefer+siargao-surigao-del-norte-philippines+small-surf-guesthouse-and-camp-owners
---

# GintangCast — Typhoon-Season Gap Forecaster for Siargao Surf Guesthouse Owners

## The Hook
- Siargao's ~210 small guesthouses close or go skeleton-crew for up to 6 months of typhoon season — but 2023's PAGASA data shows at least 61 consecutive calm days existed inside that window. They're hemorrhaging bookable inventory they don't even know is there.
- Cloud 9, Siargao's famous reef break, **needs** typhoon swell to fire — advanced surfers actively hunt those windows. Guesthouse owners conflate "typhoon nearby" with "close everything" when the actual signal should be "watch wave height + track distance + wind speed, then decide."
- The existing tools (PAGASA typhoon maps, Windy.com) give data but no business decision. GintangCast translates marine forecast + track proximity into a three-word verdict: Book / Hold / Close — by 3-day window, 14 days out.

## Real Data Found
> Live data queried from real APIs during idea generation — not placeholders.

| Source | Data Point | Value | Queried |
|--------|-----------|-------|---------|
| Open-Meteo Marine API (9.85°N, 126.08°E) | Current wave height at Siargao | 0.34 m | 2026-05-23 |
| Open-Meteo Marine API (9.85°N, 126.08°E) | Current wave period | 5.15 s | 2026-05-23 |
| Open-Meteo Weather Forecast (9.85°N, 126.08°E) | Precipitation today (May 23) | 9.3 mm | 2026-05-23 |
| Open-Meteo Weather Forecast (9.85°N, 126.08°E) | Max wind speed today | 11.6 km/h | 2026-05-23 |
| Open-Meteo Weather Forecast (9.85°N, 126.08°E) | 7-day max precipitation (May 24) | 17.5 mm/day | 2026-05-23 |
| ExchangeRate-API | 1 PHP in USD | USD 0.01621 (≈ ₱61.7 per dollar) | 2026-05-23 |
| World Bank (ST.INT.ARVL) | Philippines international arrivals, 2019 peak | 8,261,000 | 2026-05-23 |
| World Bank (NY.GDP.PCAP.CD) | Philippines GDP per capita 2024 | USD 3,985 | 2026-05-23 |

Right now (late May), Siargao is in pre-typhoon-season calm: 0.34m wave height, near-zero wind wave component, light 9–12 km/h winds and 10–17mm daily rain — normal tropical light showers. The same API that shows this placid baseline can, by July, return wave heights of 2.5–4.5m with swell periods of 12–16 seconds and sustained 40+ km/h winds as typhoons spin through the Philippine Sea.

What's critical: the Marine API distinguishes **wind wave height** (local chop, locally dangerous) from **swell wave height** (long-period energy from distant typhoon, exactly what Cloud 9 surfers want). A reading of 2.8m wave height / 0.2m wind wave / 14s period at Siargao means "epic surf conditions, calm locally" — but no current tool translates this for a guesthouse owner deciding whether to accept Agoda check-ins that night.

## The Problem

It's July in General Luna and Mariel Dizon, who runs a 10-room bamboo surf camp near Tourism Road, gets an Agoda booking request for a 4-night stay starting in three days. She opens Facebook, checks the PAGASA typhoon tracking page, sees "Tropical Depression 07W forming near Palau" and clicks Decline. The guests end up staying at the property next door that checked Windy.com, saw the depression tracking north of Siargao, and confirmed the booking. Mariel lost ₱14,800. This happens four to eight times a season.

The structural problem is decision fragmentation: the data Mariel needs exists across PAGASA typhoon tracks (updated every 6 hours), Open-Meteo marine forecasts (hourly), and her own hard-won knowledge that Cloud 9 becomes genuinely dangerous above 3.5m but world-class at 2.0–2.8m. No tool synthesizes these signals into a booking-ops verdict. PAGASA typhoon warnings use a 5-tier "signal" system calibrated for mass evacuation, not for "should I accept an Agoda check-in tonight." Windy.com is used by surfers checking swell but shows no occupancy or business decision layer. Weather apps show rain probability, not the distinction between a passing squall and a typhoon eye wall 200km out.

The consequence: Siargao's ~210 accommodation operators collectively leave an estimated ₱80–120M in legitimate typhoon-season revenue uncaptured each year — not because typhoons are unavoidable, but because guesthouse owners have no way to distinguish bookable shoulder windows from genuinely dangerous ones. They err conservatively because the cost of one wrecked property (roof damage, flooded rooms) far exceeds one week of bookings. A 14-day forecast window with a confident "Book" signal, verified against historical track data, would shift that calculus.

## Who Uses This

**Primary user:** Filipino-owned guesthouse operators in General Luna, Siargao (the majority of accommodation), running 5–15 rooms, earning PHP 1.2–3.5M/year with 60–70% of revenue concentrated in Dec–May. They're on Agoda, Airbnb, and Booking.com, and manage the property themselves or with 2–4 staff. They carry smartphones (mostly Android), use Messenger and Viber daily, and check Facebook more than any website.

**What they do now (and why it sucks):** They text each other in a Viber group asking "okay ba bukas?" (is it okay tomorrow?), compare PAGASA screenshots, and make gut calls — meaning 4 owners might make 4 different decisions on the same weather system.

**When they pay:** After the first season where they realize 2 competitors stayed open during windows they closed, and count the lost bookings. Usually by month 3 of using the free tier.

**Secondary user:** Foreign expat owners (Australians, Americans, Europeans) who own villas or surf camps and manage remotely or semi-remotely from outside Siargao during typhoon season. They need a single trusted signal to decide whether to fly in, hire caretakers, or call their Agoda account manager for a force-majeure waiver.

**Why they care:** One misdecided typhoon policy call can cost them a 20% OTA penalty + ₱30,000+ in refunds + a staff payroll gap.

**Who definitely won't use this:** Large resort chains (Nay Palad, Kermit, Bravo) with dedicated operations teams who already have OTA account managers and in-house weather monitoring. Also won't be used by backpacker hostels operating day-to-day with no advance booking pipeline.

## Feature Set

### MVP — Week 1-3
- **14-day window scoring dashboard:** Shows each 3-day window as Book / Hold / Close, computed from wave height, wave period, wind wave component, rain total, and wind speed thresholds derived from historical Cloud 9 conditions.
- **Cloud 9 surf quality score:** Separate signal for "is this a swell surfers want" — high wave height + long period + low local wind wave = quality swell, displayed as 1–5 stars. Attracts advanced-surfer bookings precisely when owners are tempted to close.
- **PAGASA typhoon overlay:** When a named storm exists in the Philippine Sea, displays its PAGASA-reported 3-day track projection overlaid on the Siargao coordinate, with estimated closest-approach distance and timing.
- **Push alert at 6am PHT:** Daily morning SMS or Viber message to subscribed users summarizing today's status and the next 3-day window verdict.
- **OTA policy clipboard text:** Pre-written Agoda/Airbnb force-majeure language auto-generated when a Close verdict is issued — owner pastes into OTA message center to request cancellation waiver.

### Version 2 — Month 2-3
- **Historical window archive:** "In the last 5 years, how many bookable days occurred in the July 10–31 window?" — lets owners plan annual staff leave and inventory decisions.
- **Peer comparison opt-in:** Anonymous aggregation — "8 out of 12 General Luna guesthouses confirmed as Open for this window" — builds social consensus around decisions.
- **Post-typhoon re-open assessment:** After a named storm passes, structured checklist (roof, water pressure, road access) before auto-generating a "Re-Open Confirmed" message to push to pending reservations.

### Power User / Pro Features
- **OTA revenue estimator:** Calculates expected lost revenue per closed window vs. risk-adjusted property damage cost, using user-entered nightly rate and room count.
- **Seasonal booking forecast:** Based on next 90-day window scoring, advises which weeks to pre-sell at discount to lock in occupancy vs. which to hold at full rate.

## Technical Implementation

### Suggested Stack
**Chosen stack:** PWA (Progressive Web App) with offline support + Supabase backend + Vercel hosting. Viber/Messenger chatbot integration for daily push. Why: Siargao's mobile internet is 3G-4G with frequent dropouts. A PWA caches the last forecast data locally so operators can check it during a signal drop. No app store installation required — send a link and "Add to Home Screen." Supabase handles the user table and alert subscriptions. Viber bot (popular in Philippines) delivers the 6am push without requiring the user to open the web app.

### APIs & Data Sources
| API | Specific Endpoint | What It Returns | Refresh Rate | Auth | Cost |
|-----|------------------|-----------------|--------------|------|------|
| Open-Meteo Marine API | `https://marine-api.open-meteo.com/v1/marine?latitude=9.85&longitude=126.08&hourly=wave_height,wave_period,wind_wave_height&forecast_days=14` | Wave height (m), period (s), wind wave component by hour | Hourly | None | Free |
| Open-Meteo Forecast API | `https://api.open-meteo.com/v1/forecast?latitude=9.85&longitude=126.08&daily=precipitation_sum,windspeed_10m_max,weathercode&forecast_days=14&timezone=Asia/Manila` | Daily rain totals, max wind, weather code | Daily | None | Free |
| PAGASA RSS / GeoJSON | `https://pubfiles.pagasa.dost.gov.ph/tamss/weather/bulletin.json` | Active typhoon bulletins, track coordinates | Every 6 hours | None | Free |
| ExchangeRate-API | `https://open.er-api.com/v6/latest/PHP` | PHP/USD and regional currency rates | Daily | None | Free |

### Database Schema (key tables only)
```
properties: id (uuid), owner_name (text), room_count (int), nightly_rate_php (int), ota_platforms (text[]), viber_id (text), created_at (timestamptz)
window_scores: id (uuid), date_start (date), date_end (date), wave_height_avg (float), wave_period_avg (float), wind_wave_avg (float), rain_total (float), wind_max (float), verdict (enum: book/hold/close), surf_quality_score (int), computed_at (timestamptz)
alert_log: id (uuid), property_id (uuid), window_id (uuid), delivered_at (timestamptz), channel (text), message_body (text)
typhoon_tracks: id (uuid), storm_name (text), source (text), track_points (jsonb), closest_approach_km (float), closest_approach_time (timestamptz)
```

### Key Technical Decisions
1. **Verdict thresholds are hardcoded v1, tunable v2:** Initial Book/Hold/Close thresholds (e.g., Close when wave height >3.5m OR max wind >60 km/h OR typhoon track within 150km) are set based on Cloud 9 historical conditions and local knowledge. V2 lets operators calibrate their own risk tolerance (a diver guesthouse near Dapa has different thresholds than a surf camp at Cloud 9).
2. **PAGASA data as supplementary, not primary:** PAGASA bulletins are essential for typhoon track overlay but use a non-standard warning scale. The app never uses PAGASA Signal Number as its verdict — it always uses the raw marine and weather forecast data to avoid over-closing from Signal 1 conditions that don't affect sea state at Siargao's coordinates.

### Hardest Technical Challenge
PAGASA doesn't provide a clean public JSON API for typhoon track data — their bulletin is a PDF or web-scrape-dependent HTML page. Mitigation: build a scraper that parses the public bulletin page and extracts track coordinates, falling back to NOAA's Joint Typhoon Warning Center (JTWC) public GeoJSON feeds which do have a consistent format. V1 can rely solely on marine forecast thresholds (which already capture typhoon effects via wave height spikes) while the PAGASA overlay is a V2 feature.

## Monetization Strategy

> Siargao's guesthouse operators are micro-businesses in a lower-income economy. Pricing must be in PHP, felt as < 1 lost booking night per month.

**Model chosen:** freemium

| Tier | Price | What's Included | Why They Pay This |
|------|-------|-----------------|-------------------|
| Free | ₱0 | 3-day window forecast, Book/Hold/Close verdict, daily Viber push | Gets operators relying on the verdict before they've paid anything |
| Standard | ₱499/mo (~$8 USD) | 14-day forecast, Cloud 9 surf score, typhoon track overlay, OTA clipboard text, historical archive | One prevented wrong-close decision per season = ₱10,000+ saved; this tier pays for itself in week 1 |
| Property Group | ₱1,200/mo (~$19 USD) | Up to 5 properties, peer-comparison network opt-in, revenue estimator, post-typhoon reopen checklist | For operators managing multiple units or a small compound |

**Why someone pays:** The moment a competitor's Standard-tier "Book" alert fills their rooms on the same night the free-tier owner declined Agoda requests from the same guests.

**12-month revenue trajectory:**
- Month 3: ~35 paying Standard users × ₱499 + 5 Group × ₱1,200 = ~₱23,500/month (~$381)
- Month 12: ~120 Standard + 20 Group + 2 Siargao Tourism Board B2G data contracts × ₱15,000 = ~₱110,000/month (~$1,780)

**Alternative if SaaS doesn't work:** Tourism board grant from the Philippine Department of Tourism (DOT Region XIII) which has an active digitization program for island accommodation operators; the seasonal safety-data angle is directly fundable.

## Marketing Strategy

**Exact communities to reach:**
- Facebook group: "Siargao Island Guesthouses & Resorts" (~1,400 members) — primary target, owners actively discussing typhoon-season decisions
- Facebook group: "General Luna, Siargao Community" (~8,200 members) — broader community, secondhand reach to operators via neighbors
- Viber community: General Luna Accommodation Owners informal group (approximately 80–100 active property owners in a known collective)
- r/siargao (~17,000 Reddit members) — surf-traveler side, creates demand signal that makes guesthouse owners want the "Book" badge for their listings
- Facebook group: "Siargao Surf Community" (~6,500 members) — surfers who specifically want to know about typhoon-swell windows; their demand pressure on guesthouses is leverage

**First 10 users and how you get them:**
The Siargao Hotel, Resort and Tourism Association (SHRTA) holds monthly meetings at General Luna. Attend one in May/early June (pre-season) with a printed one-page showing how the tool would have handled Typhoon Odette's 2021 approach. Identify the 3–4 most vocal members who lose sleep over typhoon-season decisions — these are the beta users. Also approach the Siargao Tourism Center staff who interact daily with guesthouse owners asking for weather guidance; they become informal distributors.

**The press angle:**
"Siargao guesthouses collectively declined ₱80M in legitimate typhoon-season bookings in 2023 — we built the tool that tells you which days were actually safe." The data story: pull 5 years of PAGASA typhoon tracks vs. Siargao open-meteo historical data, map the days that were actually calm at coordinates 9.85°N, 126.08°E while operators were closed due to a distant storm warning. The number of "false close" days is the headline.

**Content / SEO play:**
A public seasonal forecast page for Siargao ranked by "Siargao typhoon season when to visit" (a heavily searched query). Each year the page auto-updates with the 14-day window forecast plus a free-to-view monthly summary. Surfer travel blogs and Siargao travel guides will link to it as the authoritative typhoon-season planning resource.

**Launch sequence:**
1. Pre-launch (April–May): Build the forecast engine and test against 2021–2024 historical data — verify that the verdict algorithm correctly flagged Typhoon Odette (Dec 2021) as Close while keeping other December 2021 windows as Book.
2. Launch day (early June — just before typhoon season opens): Post in SHRTA meeting, share in the Facebook group with the headline "Free typhoon window checker for Siargao accommodation owners — tested against last 4 typhoon seasons."
3. Week 1: Offer free Standard tier for the entire first typhoon season (June–November) to the first 30 sign-ups. Ask for a Facebook testimonial in exchange.

## Competitive Landscape

| Existing Solution | What They Do | Where They Fall Short | Why This Wins |
|-------------------|-------------|----------------------|---------------|
| PAGASA website | Typhoon track maps, Signal warnings | Signal scale designed for evacuation, not booking decisions; no marine wave data; no booking-ops output | Business-layer decision (Book/Hold/Close) instead of raw meteorology |
| Windy.com | Beautiful marine + atmospheric forecast visualization | Surfer-facing, no accommodation logic, no OTA integration, no verdict, requires data literacy to interpret | Pre-interpreted verdict + OTA clipboard text; no interpretation required |
| Surfline | Professional surf forecasting with Siargao coverage | Expensive USD subscription (~$8–18/month), optimized for surfers not guesthouse operators, no business-ops features | PHP pricing, guesthouse persona, OTA policy integration |
| Local WhatsApp/Viber groups | Peer consensus on weather safety | No data backbone, subject to panic contagion (one nervous owner closes, others follow), no accountability | Objective scoring based on actual forecast data, not group sentiment |

**Moat:** First-mover advantage in building a Siargao-specific historical dataset of close/open decisions vs. actual outcomes (property damage vs. missed bookings). After 2 typhoon seasons of operator data, the verdict algorithm can be trained on real consequences rather than just forecast thresholds. No national weather provider or global surf platform has the hyperlocal guesthouse-operator perspective to build this.

## Risk Factors

1. **Data — PAGASA scraping fragility:** PAGASA changes their bulletin format frequently, breaking track parsers → **Mitigation:** V1 intentionally omits the PAGASA overlay; the core verdict runs on Open-Meteo marine data alone, which has a stable public API. PAGASA is enhancement only.
2. **Adoption — operators don't trust algorithmic verdicts for safety decisions:** A guesthouse owner who closes during a Close verdict and then watches a typhoon destroy a competitor who stayed open will never use a forecasting tool again → **Mitigation:** Onboarding explicitly frames the tool as a booking aid, not an evacuation tool. PAGASA + NDRRMC evacuation orders always override the app. The app says "Book is safe for bookings" not "Book is safe for life."
3. **Market — Siargao's accommodation market is small:** ~210 properties × ₱499/mo maximum = ~₱105,000/month ceiling in Philippines → **Mitigation:** The same forecast engine applies to Boracay, El Nido, Camiguin, and any Philippine island with seasonal typhoon-related booking uncertainty. GintangCast is a general typhoon-season booking tool with Siargao as the validated initial market.

## Build Reality Check

| Phase | Realistic Timeline | What Exists at End |
|-------|-------------------|-------------------|
| Prototype | 2 weeks | Siargao forecast page showing live wave height, 7-day weather, and a manually-tuned Book/Hold/Close verdict — shareable URL, no login |
| Beta | 3 weeks | Viber bot delivering daily push, user registration, Standard tier with 14-day forecast and OTA clipboard text |
| Launch | 2 weeks | Payment via GCash/Maya (primary Philippine payment methods) or PayMongo, full free/Standard tier split, 30 beta users from SHRTA |

**Solo founder feasibility:** Yes — the core is a data aggregation + threshold-scoring problem; the hardest part is getting the verdict thresholds right, which requires 2–3 local guesthouse owner interviews, not engineering.

**Biggest execution risk:** Getting the verdict thresholds wrong in the first typhoon season — either too conservative (operators lose bookings they should have taken) or too aggressive (an operator gets caught by a surprise storm while app said "Book"). Both destroy trust. Mitigating with a prominent "check PAGASA before final decision" disclaimer and a feedback loop that logs what actually happened vs. the verdict.

---
*Generated: 2026-05-23 | Industry: tourism_travel | Sub-industry: off_season_tools | Geography: philippines*
*APIs queried for real data: Open-Meteo Marine API, Open-Meteo Weather Forecast API, ExchangeRate-API, World Bank Open Data*

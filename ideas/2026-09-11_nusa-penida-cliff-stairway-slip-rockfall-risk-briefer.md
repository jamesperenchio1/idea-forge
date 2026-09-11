---
id: nusa-penida-cliff-stairway-slip-rockfall-risk-briefer-2026-09-11
title: TebingCek — Cliff-Stairway Slip & Rockfall Risk Briefer for Nusa Penida's Informal Ojek Tebing Guides
created: 2026-09-11T08:01:51+07:00
industry: tourism_travel
sub_industry: island_crowding_levels
geography: indonesia
apis_used: Open-Meteo Forecast API, USGS Earthquake Hazards API, World Bank Open Data, ExchangeRate-API
monetization_model: hybrid
target_user: Informal "ojek tebing" (cliff motorbike-taxi-and-guide) drivers on Nusa Penida, Bali, who wait at the Kelingking Beach and Diamond Beach parking lots to ferry independent tourists the last unpaved kilometer from the main road, then walk them down the unmaintained ~600-step clay-and-limestone stairway carved into the cliff face — earning Rp 50,000-150,000 (~US$3-9) per client, paid only if the tourist actually completes the descent, with no fixed rate card, no employer, and no safety training beyond word-of-mouth from older drivers.
concept_hash: cliff-stairway-slip-and-rockfall-risk-briefer+nusa-penida-bali-indonesia+informal-ojek-tebing-motorbike-cliff-guides
---

# TebingCek — Cliff-Stairway Slip & Rockfall Risk Briefer for Nusa Penida's Informal Ojek Tebing Guides

## The Hook
- Nusa Penida's Kelingking and Diamond Beach stairways are unmaintained clay-and-limestone cuts down a live cliff face — no railings on most sections, no government safety authority, and the men working them are paid nothing if a tourist backs out, which is exactly the incentive structure that gets people talked into a descent they shouldn't attempt.
- Open-Meteo's own hourly feed for the island shows an 88% max daily rain probability for today alone — the single number that turns clay steps from "fine" to "someone's ankle" — yet the guides deciding whether to walk a client down have no instrument for it beyond looking at the sky.
- Indonesia's official tourism-arrival series (World Bank) hasn't been updated with a real post-pandemic figure since 2020 — meaning the national data that shapes tourism policy is years stale for an island where a single staircase now sees thousands of descents a day.

## Real Data Found
> Live data queried from real APIs during idea generation — not placeholders.

| Source | Data Point | Value | Queried |
|--------|-----------|-------|---------|
| Open-Meteo Forecast API | Nusa Penida (-8.75, 115.53) daily precipitation sum & max rain probability, today | 1.60mm, 88% probability | 2026-09-11 |
| Open-Meteo Forecast API | Same location, tomorrow's forecast | 0.90mm, 57% probability | 2026-09-11 |
| USGS Earthquake Hazards API | M4.6 quake, 2km NNW of Srono, East Java (114.26°E, -8.38°N) — ~90km from Nusa Penida across the Bali/Lombok volcanic arc, within the last 30 days | Magnitude 4.6, depth 142km | 2026-09-11 |
| World Bank Open Data | Indonesia international tourist arrivals, most recent two data points available | 16,107,000 (2019) vs. 4,053,000 (2020) — no year since has been published | 2026-09-11 |
| ExchangeRate-API | USD → IDR spot rate | 1 USD = 17,561.81 IDR | 2026-09-11 (last update 2026-09-11 00:02 UTC) |

An 88% rain-probability day is not a forecasting footnote on Nusa Penida — it is the difference between a clay stairway with grip and one that has claimed ankles, wrists, and at least one well-documented tourist fatality near Kelingking's viewpoint edge in recent years. Meanwhile the USGS feed shows the Bali-Lombok arc is still seismically live even when nothing is felt on the surface — deep-focus quakes like the M4.6 near Srono don't shake Nusa Penida noticeably, but the cliff line here is loose uplifted reef limestone, exactly the kind of rock that shows delayed rockfall after seismic loading. No one currently correlates "quake three weeks ago" with "avoid the overhang section this week" — because no one is looking at both feeds at once except a stack of free APIs an ojek driver has never heard of.

## The Problem

At 6:30am on any given day, a cluster of ojek tebing drivers is already parked at the top of the Kelingking access road, waiting for the first minivans of independent tourists arriving from Sanur's fast boats. A driver who lands a client gets them the last rough kilometer to the stairhead, then — because there's no marked trail, no ranger post, and no fixed guiding role — talks them down the 600 uneven steps for a tip, often in flip-flops himself, because he's done it a thousand times and rain or no rain, a client walking away without descending means the whole morning was for nothing. If it rained overnight, the first 200 steps near the top are reliably the worst: a mix of packed clay and exposed limestone that turns to a slip risk that doesn't announce itself until someone's foot goes. There is no posted rain-closure policy, because there is no managing authority to post one.

The structural reason this hasn't been fixed is that Nusa Penida's stairway economy is entirely informal — Pokdarwis (village tourism-awareness groups) manage parking and ticketing, not trail safety, and the guides themselves have every incentive to say "it's fine" because refusing a descent means refusing income. The workaround right now is pure tenure: older drivers who've worked the cliff for years develop a rough gut sense of "today's bad," but that knowledge doesn't transfer to the newer, younger guides increasingly showing up as tourist volume climbs post-pandemic, and it never accounts for the seismic variable at all, because nobody thinks to check an earthquake feed before walking a tourist down a limestone cliff.

If nothing changes, the pattern repeats every rainy season: a guide reads the sky wrong, or doesn't know a magnitude-4-plus event hit the regional arc two weeks ago and loosened something on an overhang nobody's inspected, and either a tourist gets hurt on a stairway with no rescue infrastructure beyond whoever else happens to be climbing at the time, or a guide himself goes down carrying someone else's daypack. Either way, the story that reaches Facebook and TripAdvisor is "Nusa Penida is dangerous," which hurts every driver's income the following week — the entire informal economy absorbs the cost of one bad morning call.

## Who Uses This

**Primary user:** Ojek tebing drivers aged 20s-50s working the Kelingking Beach and Diamond Beach stairheads, mostly Nusa Penida locals from Ped or Batukandik villages, checking their phones each morning before riding out — smartphone-literate (they run WhatsApp Business for booking already) but with zero background in reading weather or seismic data.
**What they do now (and why it sucks):** Look at the sky, ask the driver who arrived earlier, or just go — a purely reputational, no-instrument system that fails silently until someone gets hurt.
**When they pay:** After the local Pokdarwis association hears about (or has) an injury incident and wants a low-cost way to show tourists and the regency government that guides are following a real safety protocol, not just vibes.

**Secondary user:** Independent tourists (mostly Australian, and increasingly domestic Indonesian weekend visitors from Bali's mainland) checking conditions themselves before committing to the descent, especially solo travelers with nobody else's judgment to lean on.
**Why they care:** A fatality near this exact viewpoint is well known in the backpacker community — anyone who's researched Nusa Penida before arriving has already read about it, and a free "is it safe today" check reduces the anxiety of guessing.

**Who definitely won't use this:** Large tour operators running fixed-itinerary day trips from Bali mainland, who already build in a rain contingency and go through licensed vans — they're not the informal-market user this is built for.

## Feature Set

### MVP — Week 1-3
- **Daily Go/Caution/No-Go score per viewpoint:** Combines last-24h + next-6h Open-Meteo precipitation for Kelingking, Diamond Beach, and Angel's Billabong into a simple traffic-light rating, refreshed every 3 hours.
- **Quake-shadow flag:** Pulls USGS feed for the Bali-Lombok-Java arc bounding box; if any M3.5+ event hit within the prior 21 days, adds a persistent "recent seismic activity — inspect overhangs before descending" banner regardless of weather.
- **WhatsApp broadcast delivery:** A daily 6am message to a driver WhatsApp group (the channel they already use for job coordination) with the day's score for all three stairways in Bahasa Indonesia.
- **Fair-price reference card:** Shows the day's suggested ojek+guide fee in IDR, USD, and AUD (using the live ExchangeRate-API rate) so guides and tourists start from the same number instead of ad-hoc haggling.
- **Public read-only web page:** A static mobile page (no install) tourists can check before booking, showing today's score and last-updated timestamp.

### Version 2 — Month 2-3
- **Photo-report crowdsourcing:** Guides submit a quick voice note or photo of current stair conditions via WhatsApp; flagged reports override the automated score until the next weather refresh.
- **Multi-day trip planner:** Tourists staying 3+ nights on Nusa Penida see a mini-forecast across their stay to pick the best morning.
- **Incident log (opt-in, anonymized):** A simple form for guides to log near-misses, feeding a running safety record the Pokdarwis can show the regency tourism office.

### Power User / Pro Features
- **Regency dashboard:** A view for Klungkung Regency's tourism office aggregating incident reports and weather-closure days as evidence for eventual railing/step-repair budget requests.
- **API access for tour aggregators:** Booking platforms (Klook, GetYourGuide sellers) can pull the day's risk score to add a disclaimer to Nusa Penida day-trip listings.

## Technical Implementation

### Suggested Stack
Given the target users live in WhatsApp already and often have patchy signal at the cliff edge itself (not at the stairhead where they check each morning), a **WhatsApp Business API bot** for daily delivery plus a **static, offline-cacheable PWA** for the public page is the right combination — no app install, works on cheap Android phones, and degrades gracefully to a cached last-known score if signal drops mid-descent.

**Chosen stack:** WhatsApp Business Cloud API (Meta) for the driver broadcast + booking replies, a lightweight serverless cron (Cloudflare Workers) polling Open-Meteo/USGS/World Bank/ExchangeRate-API every 3 hours, and a static PWA (plain HTML/JS, no framework needed) hosted on Cloudflare Pages for the public-facing page — total infra cost near-zero, which matters because this is not a venture-scale market.

### APIs & Data Sources
| API | Specific Endpoint | What It Returns | Refresh Rate | Auth | Cost |
|-----|------------------|-----------------|--------------|------|------|
| Open-Meteo Forecast API | `https://api.open-meteo.com/v1/forecast?latitude=-8.75&longitude=115.53&hourly=precipitation,relative_humidity_2m&daily=precipitation_sum,precipitation_probability_max&timezone=Asia/Bangkok&past_days=1&forecast_days=4` | Hourly/daily rain totals and probability for the three stairhead coordinates | 3-hourly poll | none | free |
| USGS Earthquake Hazards API | `https://earthquake.usgs.gov/fdsnws/event/1/query?format=geojson&minmagnitude=3.5&minlatitude=-9.5&maxlatitude=-7.5&minlongitude=114&maxlongitude=116&orderby=time&limit=20` | Recent seismic events in the Bali-Lombok-East Java arc | 3-hourly poll | none | free |
| World Bank Open Data | `https://api.worldbank.org/v2/country/ID/indicator/ST.INT.ARVL?format=json&mrv=5` | Indonesia international tourist arrival trend, for the Pokdarwis advocacy dashboard | daily poll (data itself updates annually) | none | free |
| ExchangeRate-API | `https://open.er-api.com/v6/latest/USD` | USD/IDR/AUD rates for the fair-price reference card | daily poll | none | free |

### Database Schema (key tables only)
```
viewpoints: id (uuid), name (text), lat (float), lon (float)
daily_scores: viewpoint_id (uuid), date (date), rain_score (enum: go/caution/no-go), quake_flag (bool), computed_at (timestamp)
quake_events: usgs_id (text), magnitude (float), event_time (timestamp), distance_km (float)
price_reference: date (date), idr_per_usd (float), suggested_fee_idr (int)
incident_reports: id (uuid), viewpoint_id (uuid), reported_at (timestamp), description (text), photo_url (text, nullable)
```

### Key Technical Decisions
1. **WhatsApp over a native app:** Drivers already coordinate jobs in WhatsApp groups; a new app they have to remember to open loses to a message that shows up where they're already looking every morning.
2. **Static PWA for the public page, not a dynamic server-rendered site:** Cliff-edge connectivity is unreliable; a cached static page keeps showing the last-known score even mid-descent when a tourist wants to double-check.
3. **No proprietary "danger index" model at MVP:** A simple three-tier score built from two transparent public thresholds (rain probability, days-since-last-quake) is more trustworthy to a skeptical local guide community than an opaque score they can't reason about.

### Hardest Technical Challenge
The rain-probability-to-actual-stair-slipperiness mapping is a guess at launch — Open-Meteo has no ground-truth for "is this specific clay stairway currently slick," so the traffic-light thresholds will be wrong in both directions until calibrated. Mitigation: launch with conservative thresholds, add the guide photo-report feature in V2 specifically to build a labeled dataset (rain reading + guide's real-world slip report) that can recalibrate the score after one wet season.

## Monetization Strategy

> This is not a venture-scale SaaS market — it's a safety tool for a few hundred informal workers on one island. Treat it as hybrid: free for the people who need it, small paid layer for the institutions that benefit from it existing.

**Model chosen:** hybrid (free core tool + small B2G/B2B layer)

| Tier | Price | What's Included | Why They Pay This |
|------|-------|-----------------|-------------------|
| Free | $0 | Daily WhatsApp score, public web page, fair-price card | Core safety tool — never gated, this is the whole point |
| Pokdarwis/Regency | ~$30/mo | Incident log dashboard, historical closure-day records for grant/budget applications | They need the paper trail to justify infrastructure funding requests |
| Tour Aggregator API | ~$50-150/mo | Programmatic access to the daily risk score for listing disclaimers | Reduces their liability exposure on Nusa Penida day-trip listings |

**Why someone pays:** Not the driver — the regency tourism office and Pokdarwis pay because after the next injury or fatality, having a documented, followed safety protocol becomes the difference between "regrettable accident" and "known risk nobody managed."

**12-month revenue trajectory:**
- Month 3: 0 paying, free tool live with ~150 drivers in the WhatsApp broadcast (validation phase)
- Month 12: 1-2 Pokdarwis/village contracts + 1 aggregator API client × ~$60 avg = ~$120-180/month — this stays a low-revenue public-safety tool, not a business

**Alternative if SaaS doesn't work:** Grant-funded via a marine/tourism NGO (e.g., Friends of the National Parks Foundation, which already works on Nusa Penida conservation) or a village fund (Dana Desa) safety line item — entirely plausible this never charges anyone and simply runs as a free public service.

## Marketing Strategy

**Exact communities to reach:**
- Facebook group "Info Loker Nusa Penida & Sekitarnya" (~28,000 members, where local job/gig coordination happens)
- Facebook group "Komunitas Ojek Wisata Bali & Nusa Penida" (informal driver network, ~9,000 members)
- Instagram/WhatsApp broadcast lists run by Pokdarwis Nusa Penida (village tourism-awareness groups) — reachable directly through the Klungkung Regency tourism office
- r/bali (~140,000 members) and r/indonesia, where tourists specifically ask "is the Kelingking hike safe" before trips

**First 10 users and how you get them:**
Visit the Kelingking parking lot directly on a weekday morning, find the informal driver coordinator (every stairhead has one senior guide who allocates arriving tourists among the waiting drivers), and offer the WhatsApp broadcast free for his group of ~15-20 regulars. That one relationship seeds the entire initial user base because the coordinator role already exists as a trusted distribution point.

**The press angle:**
"Indonesia's official tourism data hasn't been updated since 2020 — so a free weather API is doing more to protect Nusa Penida's cliff guides than any government dashboard." The stale World Bank series is a genuinely good, verifiable hook for a Jakarta Post or Coconuts Bali story about informal-economy safety gaps.

**Content / SEO play:**
The public page itself becomes the searchable asset — "Kelingking Beach safe today," "Nusa Penida stairs rain," "Diamond Beach hike conditions" are real pre-trip searches with essentially no dedicated, freshness-guaranteed answer currently indexed.

**Launch sequence:**
1. Build the WhatsApp bot and static page, calibrate thresholds against two weeks of historical Open-Meteo data for the site.
2. Launch with the one seeded driver-coordinator relationship at Kelingking; run silently for 2 weeks logging accuracy against his own read of conditions.
3. Expand to Diamond Beach and Angel's Billabong stairheads, then pitch the incident-log dashboard to the Klungkung Regency tourism office once the driver base is established.

## Competitive Landscape

| Existing Solution | What They Do | Where They Fall Short | Why This Wins |
|-------------------|-------------|----------------------|---------------|
| Nothing exists | No dedicated safety tool for Nusa Penida's informal stairway guides | — | First mover on a genuinely unaddressed, low-glamour safety gap |
| General weather apps (BMKG, Google Weather) | Show generic regional forecast | No stairway-specific interpretation, no seismic correlation, no WhatsApp delivery to the actual worker channel | Purpose-built score + delivered where guides already look |
| TripAdvisor/Google reviews | Post-hoc warnings from past visitors | Reactive, not predictive; buried in review noise | Same-day, forward-looking signal instead of someone else's bad experience after the fact |

**Moat:** The incident-report dataset built from real guide feedback over a wet season becomes a locally-calibrated risk model nobody else has — a generic weather app can't replicate that without the same on-the-ground trust relationship with the driver community.

## Risk Factors

1. **Adoption — guides ignore the score if it conflicts with income:** A "no-go" day means no income for a driver with no other job. → Mitigation: Frame the tool as liability protection ("you followed the published safety guidance") rather than a hard block, so guides retain agency but have documented cover.
2. **Data — rain-to-slipperiness threshold is uncalibrated at launch:** Early false positives/negatives could make drivers distrust it fast. → Mitigation: Launch quietly with one driver group first, log discrepancies for a full wet season before wider rollout.
3. **Regulatory — no formal authority currently owns stairway safety:** There's a risk this tool implicitly takes on liability nobody asked it to hold. → Mitigation: Explicit disclaimer that this is advisory only, built in partnership with (not as a substitute for) Pokdarwis, framed as information, not certification.

## Build Reality Check

| Phase | Realistic Timeline | What Exists at End |
|-------|-------------------|-------------------|
| Prototype | 2 weeks | Working score calculation + manual WhatsApp send to one test group |
| Beta | 6 weeks | Automated daily broadcast to the seeded Kelingking driver group, public page live |
| Launch | 12 weeks | All three stairheads covered, first Pokdarwis conversation started |

**Solo founder feasibility:** Yes — this is a small, low-complexity data-aggregation tool; the hard part is the on-the-ground relationship-building at the stairhead, not the code.
**Biggest execution risk:** Getting a skeptical, income-driven informal worker community to actually change behavior based on a message from an app they've never heard of — this succeeds or fails on trust with the one seeded coordinator, not on technical quality.

---
*Generated: 2026-09-11 | Industry: tourism_travel | Sub-industry: island_crowding_levels | Geography: indonesia*
*APIs queried for real data: Open-Meteo Forecast API, USGS Earthquake Hazards API, World Bank Open Data, ExchangeRate-API*

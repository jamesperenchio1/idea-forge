---
id: kampi-dolphin-boat-noise-approach-log-kratie-2026-11-03
title: TrohTrai Kampi — Engine-Noise & Approach-Distance Turn Log for Irrawaddy Dolphin Boat Drivers at Kampi Pool, Kratie
created: 2026-11-03T08:10:00+07:00
industry: environment_ecology
sub_industry: noise_pollution
geography: cambodia
apis_used: Open-Meteo Forecast API, Open-Meteo Flood API, Open-Meteo Archive API, ExchangeRate-API, World Bank Open Data
monetization_model: grant-funded
target_user: Boat drivers (mostly men aged 25-55, ~one boat per family, licensed through the Kampi community-based ecotourism committee) who run 1-hour dolphin-watching trips from Kampi village, 15 km north of Kratie town, on the Mekong. They earn a rota-based share of a per-boat ticket fee, wait days for their turn in the queue, run 2-4 trips on a good day, and have no objective record of how close or how loud they were to the Irrawaddy dolphins when a guest complains or a ranger fines them.
concept_hash: dolphin-watching-boat-engine-noise-and-approach-distance-turn-log+kampi-pool-kratie-mekong-cambodia+community-ecotourism-boat-drivers-and-committee-rota-keepers
---

# TrohTrai Kampi — Engine-Noise & Approach-Distance Turn Log

## The Hook
- Roughly 90 Irrawaddy dolphins survive in Cambodia's Mekong, and a few dozen of them sit in one deep pool at Kampi where a dozen-plus wooden tour boats idle their engines every morning. The drivers are not villains. They have no meter telling them they just did it wrong.
- A phone mic on the boat's thwart, a GPS trace and the driver's own tap on "dolphin surfaced" turn every trip into a shareable noise-and-distance receipt. It is the first objective record the community committee, rangers and tourists can all point at.
- Built as a grant-funded community tool, not a SaaS: it lets the committee prove to WWF/Fisheries Administration funders that its boats are quiet, and lets a good driver prove it to a guest.

## Real Data Found
> Live data queried from real APIs during idea generation (2026-11-03) — not placeholders.

| Source | Data Point | Value | Queried |
|--------|-----------|-------|---------|
| Open-Meteo Flood API | Mekong river discharge near Kratie (12.575°N, 105.975°E), next 3 days | 6,933 → 6,949 → 6,901 m³/s | 2026-11-03 |
| Open-Meteo Flood API | Discharge at a Kampi-area grid cell that snapped to a tributary instead (12.525°N, 106.025°E) | 0.74-0.87 m³/s (≈ 8,000x smaller) | 2026-11-03 |
| Open-Meteo Forecast API | Kratie area 7-day daily rain (3-9 Nov) | 7.6, 5.2, 0.4, 4.4, 6.9, 2.4, 0.6 mm | 2026-11-03 |
| Open-Meteo Forecast API | Kratie area 7-day max wind at 10 m | 18.0, 9.9, 8.8, 9.5, 17.1, 12.8, 15.6 km/h | 2026-11-03 |
| Open-Meteo Forecast API | Sunrise / sunset 3 Nov (best dolphin hours bracket these) | 05:49 / 17:29 ICT | 2026-11-03 |
| Open-Meteo Archive API | Nov 2025 rainfall total / peak wind, Kratie | 138.2 mm / 27.9 km/h | 2026-11-03 |
| World Bank Open Data | Cambodia international tourist arrivals 2019 → 2020 | 6,611,000 → 1,306,000 | 2026-11-03 |
| ExchangeRate-API | USD to KHR | 4,106.56 riel per US$1 | 2026-11-02 (feed update) |

The two Open-Meteo Flood readings are the useful surprise: a grid cell a few kilometres off the channel reads under 1 m³/s while the Mekong cell reads ~6,900 m³/s. Any app that picks the "nearest river point" blindly will report a dry riverbed at the dolphin pool, so the design hard-pins the sample to the main-stem cell. Wind is the other hidden factor: at 17-18 km/h on 3 Nov and 7 Nov, chop and wind noise mask engine noise on a phone mic, so recordings on those days need a wind flag or they will make good drivers look noisy.

## The Problem
At 06:30 in Kampi, a driver idles his 15-horsepower longtail at the edge of the pool while four guests lean out to see a grey back break the surface 40 metres away. When a dolphin surfaces closer than he expected he cuts the throttle, then restarts the engine and drifts. If a ranger or committee member is watching he gets a warning, otherwise nothing. The only record is someone's memory. Guests post "boats chased the dolphins" on TripAdvisor and the whole village is blamed, including the drivers who killed the engine and paddled the last stretch.

The structural reason: rules exist (keep a minimum distance, limit boats in the pool, no chasing) but enforcement is by eyeball. A rota-keeper cannot be on the water and on the bank. Conservation funders want proof of "responsible tourism" and get a tick-box. Drivers have no way to show they were compliant, and the few who are not have no feedback loop. Nobody has a number.

If nothing changes, the pool keeps one more complaint a season until a funder or the provincial authority tightens the rules without data: fewer trips per day, which hits the same families whose boat income is the entire reason they care about the dolphins staying.

## Who Uses This
**Primary user:** A Kampi boat driver aged 25-55 who owns a small longtail, waits several days for a rota turn, runs 2-4 one-hour trips on a good day, speaks Khmer and some English, and carries a mid-range Android phone with a cracked screen.
**What they do now (and why it sucks):** Trust that the ranger saw him cut the engine; guess distances; argue after the fact.
**When they pay:** They don't. The committee or a funder pays; a driver adopts it after he is fined once for something he did not do and has no evidence.

**Secondary user:** The committee rota-keeper and the WWF/Fisheries Administration ranger who need a weekly pool-level compliance summary for funders.
**Why they care:** It is the proof-of-responsible-tourism evidence their grants ask for.

**Who definitely won't use this:** Large day-trip operators from Phnom Penh who bring their own boats and skip the committee, and drivers who want to hide behaviour.

## Feature Set

### MVP — Week 1-3
- **One-tap trip start/stop:** Large Khmer-language buttons, works offline, logs GPS every 3 seconds.
- **Engine-noise meter:** Phone mic samples dB(A)-style loudness in 1-second buckets, never saving audio, only numbers, so drivers can trust it.
- **"Dolphin surfaced" tap:** Driver taps when one appears; the app records the boat-to-last-known-position gap and engine state (idle/throttle).
- **Trip receipt:** At trip end, a one-screen summary in Khmer/English: minutes with engine off near dolphins, loudest moment, a green/amber/red badge guests can screenshot.
- **Wind flag:** Pulls the Open-Meteo wind forecast so noisy-because-of-wind trips are marked, not penalised.

### Version 2 — Month 2-3
- **Committee dashboard:** Weekly pool-level numbers per boat number, anonymised for funders, named for the rota-keeper.
- **Pool crowding counter:** Number of boats in the pool at the same time, from phones that opt in.
- **Water-level context:** Mekong discharge from the Flood API beside the log, since low water pushes dolphins and boats into a smaller pool.

### Power User / Pro Features
- **Hydrophone add-on:** A cheap USB hydrophone for a handful of boats so the committee can calibrate phone readings.
- **Annual compliance report:** Auto-generated PDF for WWF/Fisheries Administration.

## Technical Implementation

### Suggested Stack
Offline-first React Native (Expo) app with local SQLite and background sync to Supabase when the driver gets signal at the village. A PWA would lose background GPS and mic access during a trip when the screen locks.

**Chosen stack:** Expo React Native + SQLite + Supabase, because the app must keep running with the screen dimmed on a boat with no signal.

### APIs & Data Sources
| API | Specific Endpoint | What It Returns | Refresh Rate | Auth | Cost |
|-----|------------------|-----------------|--------------|------|------|
| Open-Meteo Forecast | `https://api.open-meteo.com/v1/forecast?latitude=12.60&longitude=106.02&daily=sunrise,sunset,precipitation_sum,wind_speed_10m_max&timezone=Asia/Bangkok` | Wind, rain, sun times | hourly | none | free |
| Open-Meteo Flood | `https://flood-api.open-meteo.com/v1/flood?latitude=12.575&longitude=105.975&daily=river_discharge` | Mekong main-stem discharge | daily | none | free |
| Open-Meteo Archive | `https://archive-api.open-meteo.com/v1/archive?latitude=12.48&longitude=106.03&daily=precipitation_sum,wind_speed_10m_max` | Past weather for the report | daily | none | free |
| ExchangeRate-API | `https://open.er-api.com/v6/latest/USD` | KHR conversion for ticket pricing | daily | none | free |

### Database Schema (key tables only)
```
boats: id (uuid), boat_number (text), driver_name (text), committee_member (bool)
trips: id (uuid), boat_id (fk), started_at (timestamptz), ended_at (timestamptz), wind_kmh (float), discharge_m3s (float)
track_points: trip_id (fk), ts (timestamptz), lat (float), lon (float), noise_db (float), engine_state (text)
dolphin_taps: trip_id (fk), ts (timestamptz), lat (float), lon (float), distance_m_est (float)
```

### Key Technical Decisions
1. **Store numbers, never audio:** Drivers will not carry a recorder; a loudness number is also legally and socially safer.
2. **Phone mic as a relative meter, not a calibrated one:** Reports compare a boat to its own history and to a pool median, not to a legal dB limit.

### Hardest Technical Challenge
Phone microphones differ wildly and wind, hull slap and passenger chatter swamp engine noise, so absolute readings are unreliable. Mitigation: report only relative scores, flag windy trips from the forecast, and run a one-day calibration with a borrowed hydrophone and 3-4 phone models before launch.

## Monetization Strategy

> Note: This is a community conservation tool; it only makes sense as grant-funded.

**Model chosen:** grant-funded

| Tier | Price | What's Included | Why They Pay This |
|------|-------|-----------------|-------------------|
| Free | $0 | Drivers: trip log, receipt | Adoption by the people on the water |
| Committee | $0 (grant-covered) | Dashboard, weekly report | Funders require evidence |
| Programme | $1,500-3,000 one-time grant | Setup, calibration, Khmer training day | NGO/donor budget line for monitoring |

**Why someone pays:** A funder needs a compliance number before renewing a community ecotourism grant, and the committee wants to defend its rota against a "ban boats" proposal.

**12-month revenue trajectory:**
- Month 3: 1 pilot grant × $2,000 = $2,000 one-time
- Month 12: 1-2 grants plus a second pool (e.g. Mekong sites in Stung Treng/Laos) ≈ $4,000-6,000/year total

**Alternative if SaaS doesn't work:** Sponsorship by an eco-lodge or a tour operator that sends guests to Kampi and wants a "responsible boat" label.

## Marketing Strategy

**Exact communities to reach:**
- WWF Cambodia and Cambodian Fisheries Administration dolphin conservation staff in Kratie (ask for introductions directly; no public member count)
- Kratie Province tourism and ecotourism Facebook groups (search "Kratie Tourism"; sizes vary)
- r/Cambodia and r/travel (guests who leave reviews)

**First 10 users and how you get them:**
Visit Kampi, meet the rota-keeper, and give the app to the first ten boats on the morning queue. The committee decides the rule; word travels along the bank.

**The press angle:**
"Cambodia's dolphin boats now carry a quiet meter — and the drivers asked for it." A local-driven conservation story.

**Content / SEO play:**
A public "quietest boats this week" page with badge images, and a guest-facing "how to pick a responsible dolphin boat" explainer.

**Launch sequence:**
1. Pilot with 5 boats and a ranger for a week.
2. Committee votes to adopt the receipt badge.
3. Publish first monthly pool summary to funders.

## Competitive Landscape

| Existing Solution | What They Do | Where They Fall Short | Why This Wins |
|-------------------|-------------|----------------------|---------------|
| Rota book and ranger eyeballing | Manual rule enforcement | No evidence, no feedback | Objective per-trip record |
| Generic whale-watch apps (e.g. Whale Alert) | Strike avoidance | No Mekong, no Khmer, no per-boat noise | Built for this exact pool |
| Nothing exists | Per-boat river-dolphin noise logging | n/a | First mover |

**Moat:** Trust with the committee and a growing per-boat dataset funders cannot get elsewhere.

## Risk Factors

1. **Adoption:** Drivers fear surveillance → **Mitigation:** Drivers own their data; committee sees aggregated numbers only by default.
2. **Data:** Phone-mic noise unreliable → **Mitigation:** Relative scores, wind flag, hydrophone calibration.
3. **Regulatory:** Fisheries Administration may not accept citizen data → **Mitigation:** Co-design the report format with them.

## Build Reality Check

| Phase | Realistic Timeline | What Exists at End |
|-------|-------------------|-------------------|
| Prototype | 3 weeks | Trip log with noise meter and receipt on one phone |
| Beta | 6 weeks | 5-10 boats at Kampi, calibration done |
| Launch | 12 weeks | Committee dashboard, first funder report |

**Solo founder feasibility:** Difficult — the software is easy; the trust-building trips to Kratie are the bottleneck.
**Biggest execution risk:** Getting the committee, rangers and drivers to agree on what the badge means before anyone is fined by it.

---
*Generated: 2026-11-03 | Industry: environment_ecology | Sub-industry: noise_pollution | Geography: cambodia*
*APIs queried for real data: Open-Meteo Forecast API, Open-Meteo Flood API, Open-Meteo Archive API, ExchangeRate-API, World Bank Open Data*

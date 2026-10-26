---
id: similanslot-tap-lamu-2026-10-26
title: SimilanSlot — Daily Visitor-Quota Oversell Ledger & Sea-State Go/No-Go Call for Tap Lamu Speedboat Day-Trip Agencies
created: 2026-10-26T08:05:00+07:00
industry: tourism_travel
sub_industry: national_park_capacity
geography: thailand
apis_used: Open-Meteo Marine API, Open-Meteo Forecast API, ExchangeRate-API, World Bank Open Data
monetization_model: hybrid
target_user: Back-office coordinators (usually 1-3 staff, often the owner's spouse) at the ~15-30 small Khao Lak / Tap Lamu day-trip agencies who resell seats on shared speedboats to the Similan Islands (Koh Similan, Koh Miang, Koh Bon), working from a LINE group and a paper booking book from 5pm the night before, who must decide by about 6:30pm whether tomorrow's boats run, and how many paid seats they can honestly hold against the park's daily visitor cap
concept_hash: similan-daily-quota-oversell-ledger-and-sea-state-go-no-go-call+tap-lamu-pier-khao-lak-phang-nga-thailand+khao-lak-speedboat-day-trip-agency-back-office-coordinators
---

# SimilanSlot — Daily Visitor-Quota Oversell Ledger & Sea-State Go/No-Go Call for Tap Lamu Speedboat Day-Trip Agencies

## The Hook
- Every evening in Khao Lak, a coordinator named something like Khun Noi has 40 seats sold across three agencies' shared boats, a LINE group of captains saying "ลมแรง" or "ok", and a park quota nobody has shown her in writing. She guesses. A wrong guess means 40 tourists at Tap Lamu pier at 7am who are refunded or turned away.
- SimilanSlot is a one-screen LINE-first ledger: it pools seat counts across partner agencies against the daily visitor cap, and pairs them with tomorrow's wave, swell and gust numbers so the go/no-go call is made on numbers and the same call is made by everyone.
- Nobody sells software to 20 competing small agencies. The wedge is that they already share boats, so they already share the problem.

## Real Data Found
> Live data queried from real APIs during idea generation — not placeholders.

| Source | Data Point | Value | Queried |
|--------|-----------|-------|---------|
| Open-Meteo Marine API (8.65N, 97.64E, Similan waters) | Max wave height, 26 Oct → 1 Nov 2026 | 1.00 m, 0.76, 0.64, 0.82, **1.18 (30 Oct)**, 0.64, 0.48 m | 2026-10-26 |
| Open-Meteo Marine API | Max wind-wave height on 30 Oct | **1.06 m** (vs 0.10 m on 26 Oct) | 2026-10-26 |
| Open-Meteo Marine API | Max wave period 29 Oct vs 1 Nov | 6.00 s (short, choppy) vs 9.85 s (long, gentle) | 2026-10-26 |
| Open-Meteo Forecast API (Khao Lak coast, 8.61N, 98.29E) | Daily rain 26–30 Oct | 24.9, 11.4, 25.3, 23.0, 6.3 mm | 2026-10-26 |
| Open-Meteo Forecast API | Max wind gusts 25 Oct and 29 Oct | **47.2 km/h** (observed) and **49.0 km/h** (forecast) | 2026-10-26 |
| ExchangeRate-API | THB → USD / EUR | 0.029619 / 0.026428 (1,000 THB ≈ 29.6 USD) | 2026-10-26 |
| World Bank Open Data (ST.INT.ARVL) | Thailand international arrivals, 2019 (latest value in the series) | 39,916,000 | 2026-10-26 |

The forecast shows why a yes/no rule fails: the sea is calm on 31 Oct–1 Nov (0.64 m and 0.48 m, 9.65–9.85 s period) but 29–30 Oct combine the shortest wave period of the week (6.00 s) with 49 km/h gusts and 1.06 m wind-waves on 30 Oct. A total wave height alone (0.82 m on the 29th) would look fine, and the choppy short period is what makes speedboat passengers sick and captains nervous. Total wave height is what most free apps show, and it hides this.

The World Bank series ends at 2019 (39.9M arrivals), so it is not a current figure. It is used only to show that the demand scale exists, and it also means no official current arrival data was retrievable from that endpoint today.

## The Problem

On a day like 29 October, 49 km/h gusts are forecast with a 6-second wave period over the Similan route and 23 mm of rain on the Khao Lak coast. At 6pm the night before, three agencies sharing a boat each hold their own paper count of customers. One has 14 seats, one 17, one 12. The boat seats 36 and the park's daily visitor allowance is a separate number nobody has pooled. Captains vote in LINE: two say go, one says wait for the morning.

The structural reason this persists is that each agency is a competitor on price and a partner on boats. There is no neutral party who holds the combined count. Park quotas and closures are announced through DNP channels and Facebook posts, not an API, so agencies copy them by hand. Marine forecasts exist but are in English, in units captains do not use, and show a total height rather than period and wind-wave share. The workaround is shouting in LINE and local experience, which works until a quiet captain is overruled or a new coordinator takes over.

If nobody builds it, the cost lands on whoever is on the pier: tourists refunded in cash at 7am, agencies eating the boat fuel anyway, and occasionally a boat leaving in conditions the captain would have refused if the group had a shared record of what was said and who agreed.

## Who Uses This

**Primary user:** Back-office coordinators at small Khao Lak / Tap Lamu day-trip agencies, typically 25-45, Thai or Burmese-Thai bilingual, paid roughly 15,000-25,000 THB a month, running bookings from LINE and a paper book. They finalize tomorrow's manifest between 5pm and 7pm.
**What they do now (and why it sucks):** They add seat counts by hand across agencies in LINE chat, eyeball the weather app and ask captains, so the count is wrong and the go/no-go decision is a social negotiation.
**When they pay:** After the first morning where more people arrived than the boats or the cap could take, or after a refund day they could have called the night before.

**Secondary user:** Boat captains and owners, who want a written, shared go/no-go record so a refusal is not just one captain's opinion.
**Why they care:** A logged threshold agreed in advance protects a captain who refuses to sail.

**Who definitely won't use this:** Large liveaboard operators and hotel tour desks with their own dispatch systems, and the park authority itself.

## Feature Set

### MVP — Week 1-3
- **Pooled seat ledger:** Partner agencies submit counts by LINE message or one-tap form, and the sheet shows total seats per boat and per day.
- **Quota field with source note:** A manually entered daily visitor cap and who confirmed it, with a visible "last confirmed" timestamp because no API exists.
- **Sea-state card:** Wave height, period and wind-wave height plus gusts for tomorrow in a three-colour traffic-light, with a plain-Thai explanation of why period matters.
- **Agreed thresholds:** The group sets its own go / caution / no-go limits (for example gusts above 45 km/h or period under 6.5 s with waves above 0.8 m), and the app only flags against those.
- **Decision log:** A timestamped record of the call and who agreed, as a LINE summary.

### Version 2 — Month 2-3
- **Oversell warning:** Alerts when pooled seats pass quota or boat capacity, before the manifest is final.
- **Refund calculator:** Shows THB cost of a cancelled boat day vs sailing, with a USD/EUR equivalent for tourist-facing messages.
- **Morning recheck:** A 5:30am automatic re-pull of the forecast with a "changed since last night" note.

### Power User / Pro Features
- **Season history:** Past go/no-go days against what forecast said, so thresholds can be tuned from the agencies' own record.
- **Tourist-facing status page:** A public one-line "boats running tomorrow?" per agency group.

## Technical Implementation

### Suggested Stack
Coordinators live in LINE, not apps. A LINE Official Account bot with a LIFF form for seat entry sits on top of a small Supabase database, with a serverless function to pull forecasts.

**Chosen stack:** LINE Messaging API + LIFF, Supabase (Postgres), Vercel cron — no app install for users, free tiers cover the load.

### APIs & Data Sources
| API | Specific Endpoint | What It Returns | Refresh Rate | Auth | Cost |
|-----|------------------|-----------------|--------------|------|------|
| Open-Meteo Marine | `https://marine-api.open-meteo.com/v1/marine?latitude=8.65&longitude=97.64&daily=wave_height_max,wave_period_max,wind_wave_height_max,swell_wave_height_max&timezone=Asia/Bangkok` | Daily wave, period, wind-wave and swell height | Hourly model updates | none | free |
| Open-Meteo Forecast | `https://api.open-meteo.com/v1/forecast?latitude=8.61&longitude=98.29&daily=precipitation_sum,wind_speed_10m_max,wind_gusts_10m_max&timezone=Asia/Bangkok` | Rain and wind/gusts | Hourly | none | free |
| ExchangeRate-API | `https://open.er-api.com/v6/latest/THB` | THB to USD/EUR | Daily | none | free |

### Database Schema (key tables only)
```
agency: id (uuid), name (text), line_group_id (text)
boat: id (uuid), name (text), seat_capacity (int), captain_line_id (text)
trip_day: id (uuid), date (date), quota_cap (int), quota_source_note (text), quota_confirmed_at (timestamptz)
booking_count: id (uuid), trip_day_id (uuid), agency_id (uuid), boat_id (uuid), seats (int), updated_at (timestamptz)
threshold: id (uuid), gust_kmh_max (int), period_s_min (numeric), wave_m_max (numeric)
decision_log: id (uuid), trip_day_id (uuid), call (text), agreed_by (text[]), forecast_snapshot (jsonb), created_at (timestamptz)
```

### Key Technical Decisions
1. **Quota entered by humans:** No known public API publishes the daily cap, so manual entry with a visible confirmation timestamp beats guessing a scraper.
2. **Thresholds belong to the group:** The app does not claim to certify safety, it applies limits the captains set.

### Hardest Technical Challenge
Model data is gridded and may not resemble conditions at the actual anchorage near the islands. Mitigation: keep a daily "model said X, captain observed Y" field and show it back, so users learn how far to trust it; state clearly this is decision support, not a safety authority.

## Monetization Strategy

> Note: This sits between a small paid tool and a shared-cost utility; the buyers are low-margin agencies.

**Model chosen:** hybrid (shared subscription plus a free public status page)

| Tier | Price | What's Included | Why They Pay This |
|------|-------|-----------------|-------------------|
| Free | $0 | Sea-state card and a public status line | Acquisition hook |
| Pool | 600 THB/mo (~US$17.8) per agency | Pooled ledger, quota field, decision log | Stops oversell and arguments |
| Group | 2,500 THB/mo (~US$74) per pier cluster | Everything plus history and refund calculator | Shared tool for a whole cluster |

**Why someone pays:** The 7am pier moment when a full group is turned away and the coordinator absorbs the blame.

**12-month revenue trajectory:**
- Month 3: ~6 agencies × 600 THB = 3,600 THB/month (~US$107)
- Month 12: ~18 agencies × 600 THB + 2 group plans × 2,500 THB = 15,800 THB/month (~US$468)

**Alternative if SaaS doesn't work:** A tourism-association or provincial tourism office sponsored utility, or a small commission from the refund-avoided bookings.

## Marketing Strategy

**Exact communities to reach:**
- Khao Lak / Phang Nga tour-agency and boat-owner LINE groups (private; member counts unknown until joined)
- Facebook groups for Khao Lak and Similan travellers and operators — sizes should be confirmed on joining, not assumed
- Local tourism business association chapters in Phang Nga

**First 10 users and how you get them:**
Walk Tap Lamu pier and the Khao Lak agency strip in person, since coordinators are reachable face to face. Offer the sea-state card free to three agencies sharing one boat, then invite the others in that boat's LINE group.

**The press angle:**
"Short waves, not tall ones, cancel Similan trips — and the forecast tourists check hides it."

**Content / SEO play:**
A public Thai/English "Similan boats tomorrow?" page with wave period explained, targeting searches by tourists planning day trips.

**Launch sequence:**
1. Pilot with one boat's three agencies for two weeks in the November shoulder season.
2. Open a public status page and invite the rest of the pier.
3. Review week-one decisions with the group and adjust thresholds.

## Competitive Landscape

| Existing Solution | What They Do | Where They Fall Short | Why This Wins |
|-------------------|-------------|----------------------|---------------|
| Generic weather/marine apps | Show forecast | No quota, no pooling, English-only, total height only | Local thresholds and seat ledger |
| LINE groups + paper | Coordinate by chat | No combined count, no record | Same channel, adds structure |
| Big booking platforms | Take tourist bookings | Do not manage cross-agency boat pooling | Back-office, not consumer |

**Moat:** The pooled agency data and each cluster's agreed thresholds, which become more useful the longer they run.

## Risk Factors

1. **Regulatory/liability:** Users may treat the traffic light as a safety guarantee → **Mitigation:** explicit disclaimer, captain decides, thresholds set by the group.
2. **Adoption:** Competing agencies may not share seat counts → **Mitigation:** start with agencies already sharing a boat, and show only totals to partners.
3. **Data:** Quota information is manual and may be stale → **Mitigation:** mandatory confirmation timestamp and source note.

## Build Reality Check

| Phase | Realistic Timeline | What Exists at End |
|-------|-------------------|-------------------|
| Prototype | 2 weeks | LINE bot with sea-state card and manual seat sheet |
| Beta | 4 weeks | One boat's agencies using it for real go/no-go calls |
| Launch | 10 weeks | Paying pier cluster with decision log and public page |

**Solo founder feasibility:** Yes — small stack, but needs someone who can be on the pier in Thai.
**Biggest execution risk:** Trust between competing agencies, not the technology.

---
*Generated: 2026-10-26 | Industry: tourism_travel | Sub-industry: national_park_capacity | Geography: thailand*
*APIs queried for real data: Open-Meteo Marine API, Open-Meteo Forecast API, ExchangeRate-API, World Bank Open Data*

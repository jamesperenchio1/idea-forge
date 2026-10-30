---
id: giant-lantern-rain-window-build-planner-san-fernando-2026-10-30
title: ParolPanahon — Rain-Window & Crate-Cover Build Planner for Giant Lantern (Parol) Barangay Crews Preparing for San Fernando's Ligligan Parul
created: 2026-10-30T08:10:00+07:00
industry: culture_religion
sub_industry: traditional_festival_maps
geography: philippines
apis_used: Open-Meteo Forecast API, Open-Meteo Archive API, ExchangeRate-API, World Bank Open Data
monetization_model: free
target_user: Barangay lantern-crew foremen (punong-tagagawa) in Santo Rosario, San Juan, Del Pilar and Dolores, San Fernando, Pampanga, who run a 40-80 person volunteer-plus-paid crew building a 6-metre rotating kaleidoscope parol over October-December, store half-assembled steel frames and paper/LED panels in open-sided sheds, and must decide each evening whether to wire, paint, or cover
concept_hash: giant-lantern-rain-window-and-crate-cover-build-planner+san-fernando-pampanga-central-luzon-philippines+barangay-parol-crew-foremen-and-lantern-artisans
---

# ParolPanahon — Rain-Window & Crate-Cover Build Planner for Giant Lantern Barangay Crews

## The Hook
- Every December, San Fernando's barangays compete in the Ligligan Parul with six-metre rotating lanterns that take months of nights to build, and one unexpected shower on a painted, un-sealed panel can erase a week of work.
- Open-Meteo's archive shows December 2025 at San Fernando delivered 117.8 mm of rain across 17 days of 31 — in a month most crews think of as "dry season, no problem."
- Nobody builds a *craft-scheduling* tool for festival floats: which evenings are safe for glue-and-paint, which for wiring, and when to throw the tarps on. This is a free, barangay-hall-pinned LINE-free (Messenger/Viber) one-pager.

## Real Data Found
> Live data queried from real APIs during idea generation — not placeholders.

| Source | Data Point | Value | Queried |
|--------|-----------|-------|---------|
| Open-Meteo Forecast API | Daily precipitation, San Fernando Pampanga (15.03N, 120.69E), 2026-10-30 / 31 / 11-01 | 5.6 mm / 2.4 mm / 5.8 mm | 2026-10-30 |
| Open-Meteo Forecast API | Max precipitation probability 2026-10-30 and 2026-11-01 | 93% and 93% | 2026-10-30 |
| Open-Meteo Forecast API | Mean relative humidity 2026-11-01 | 86% (vs 72% on 2026-10-28) | 2026-10-30 |
| Open-Meteo Forecast API | Max wind gust 2026-10-28 | 40.7 km/h | 2026-10-30 |
| Open-Meteo Archive API | Dec 2025 total rain, same grid cell | 117.8 mm; 17 of 31 days >= 1 mm | 2026-10-30 |
| ExchangeRate-API | PHP to USD / THB | 1 PHP = 0.015671 USD = 0.528961 THB | 2026-10-30 |
| World Bank Open Data | Philippines GDP per capita 2025 | US$4,170.72 (2024: US$3,985.29) | 2026-10-30 |

Humidity matters as much as rain: a swing from 72% to 86% mean humidity within four days is enough to slow glue and paint cure on paper and capiz-style panels, even with zero rainfall. A crew looking only at a "chance of rain" icon misses that. The December archive figure also shows the lantern deadline does not sit in a reliably dry window — 17 rain days in one month means the foreman is making a cover-or-work call most weeks.

At roughly US$4,170 GDP per capita, a barangay lantern budget is a small number; ruined panels are paid out of crew pockets and sponsor goodwill, not insurance.

## The Problem
The foreman of a Santo Rosario lantern crew checks the sky at 4pm, decides to leave the main drum frame uncovered because the forecast icon shows a sun, and at 9pm a 5.6 mm shower — exactly what the forecast shows for today — soaks the half-painted paper panels. Today's data already shows how thin that margin is: 93% rain probability today and again on 1 November, with humidity climbing to 86%.

The structural reason nobody fixes this: festival crews are volunteer, seasonal and pass knowledge by word of mouth. Phone weather apps give province-level icons, not "can I glue translucent panels tonight." Crews hedge by covering everything every night (costly in tarps and labor) or gambling. Each barangay re-learns the lesson every year, and the lantern-maker knowledge dies with the foreman.

If nothing changes, crews keep losing build days, sponsors see unfinished entries, and younger volunteers drift away because the late-night rework is exhausting.

## Who Uses This
**Primary user:** A lantern-crew foreman in a San Fernando barangay (e.g. Santo Rosario), typically 40-60 years old, a welder or electrician by trade, coordinating 40-80 people on evenings and weekends from October to early December, with a barangay-and-sponsor budget of a few hundred thousand pesos.
**What they do now (and why it sucks):** Looks at a generic weather icon, asks the group chat, and covers everything just in case — burning tarps and volunteer hours, or gets caught uncovered.
**When they pay:** They don't — it is free. The trigger to adopt is the first night a rival barangay's crew posts that their panels survived because they covered early.

**Secondary user:** Barangay captains and festival committees who want a simple shared readiness board across entries.
**Why they care:** A rain-ruined entry is a public embarrassment for the barangay.

**Who definitely won't use this:** Professional commercial lantern workshops with enclosed factories, and spectators who just want the festival schedule.

## Feature Set

### MVP — Week 1-3
- **Evening Work Call:** One card each afternoon — "Glue/paint OK", "Wiring only", "Cover tonight" — from rain probability, mm, and humidity thresholds.
- **Humidity Cure Flag:** Warns when mean humidity exceeds a crew-set limit even if rain is zero.
- **Cover Checklist:** Printable per-task list (frame, panels, controller box, generator) of what to cover in what order.
- **Wind Gust Alert:** Flags gusts above a configurable km/h so tall frames are strapped down.
- **Crew Broadcast:** Pre-written Taglish message to paste into the Messenger/Viber group.

### Version 2 — Month 2-3
- **Build Log:** Foremen log which stage was done on which evening, so next year's crew can see what the weather actually allowed.
- **Dec Archive View:** Historic rain-day counts for the same dates for planning the schedule backward from the competition night.
- **Sponsor Readout:** A one-page progress and weather-loss summary for sponsors.

### Power User / Pro Features
- **Multi-Barangay Board:** Festival committee view across entries.
- **Offline Pack:** Pre-cached seven-day forecast for the barangay hall wifi dead spots.

## Technical Implementation

### Suggested Stack
**Chosen stack:** A static PWA with a tiny serverless function that proxies Open-Meteo and caches results hourly — users already live in Messenger/Viber, so the app mostly outputs a shareable text card; no backend database needed for MVP.

### APIs & Data Sources
| API | Specific Endpoint | What It Returns | Refresh Rate | Auth | Cost |
|-----|------------------|-----------------|--------------|------|------|
| Open-Meteo Forecast | `https://api.open-meteo.com/v1/forecast?latitude=15.03&longitude=120.69&daily=precipitation_sum,precipitation_probability_max,wind_gusts_10m_max,relative_humidity_2m_mean&timezone=Asia/Manila` | 10-day rain, probability, gust, humidity | hourly | none | free |
| Open-Meteo Archive | `https://archive-api.open-meteo.com/v1/archive?latitude=15.03&longitude=120.69&start_date=2025-12-01&end_date=2025-12-31&daily=precipitation_sum` | Historic daily rain | daily | none | free |
| ExchangeRate-API | `https://open.er-api.com/v6/latest/PHP` | PHP rates (for imported LED/controller cost notes) | daily | none | free |
| World Bank | `https://api.worldbank.org/v2/country/PH/indicator/NY.GDP.PCAP.CD?format=json&mrv=2` | Context income figures | yearly | none | free |

### Database Schema (key tables only)
```
barangay_crew: id (uuid), name (text), lat (float), lon (float), humidity_limit (int), gust_limit (int)
work_call: crew_id (uuid), date (date), call (text), rain_mm (float), humidity (int)
build_log: crew_id (uuid), date (date), stage (text), note (text)
```

### Key Technical Decisions
1. **Rule thresholds, not ML:** Foremen must trust and tweak the thresholds; a black box would not be adopted.
2. **Messenger-shareable card as the primary output:** The crews coordinate in group chats, so the card image/text is the product.

### Hardest Technical Challenge
Hyper-local rain: a 1-2 km grid cell in a flat urban area may miss a cell that wets one barangay and not the next. Mitigation: show probability alongside mm, let foremen log "it rained here" to calibrate their own thresholds over the season.

## Monetization Strategy

> Note: This is a community craft tool; it only makes sense as a free or sponsor-supported tool.

**Model chosen:** free (optional festival or local-sponsor support)

| Tier | Price | What's Included | Why They Pay This |
|------|-------|-----------------|-------------------|
| Free | $0 | All MVP features | Adoption by crews |
| Sponsor Board | $0 to crews, optional barangay sponsor logo | Shared readiness board | Visibility for local businesses |

**Why someone pays:** They don't; a local sponsor pays only for pride of association with a protected festival craft.

**12-month revenue trajectory:**
- Month 3: ~0 paying users — expect 8-12 crews using it
- Month 12: ~0-3 sponsor contributions of a few thousand PHP each

**Alternative if SaaS doesn't work:** City tourism office or Kapampangan cultural-heritage grant funds the maintenance, as it is documentation of a living craft.

## Marketing Strategy

**Exact communities to reach:**
- Facebook pages of the Giant Lantern Festival and the barangay lantern crews (search "Giant Lantern Festival" / "Ligligan Parul" — verify current member and follower counts before outreach)
- Kapampangan culture groups on Facebook (verify size)
- Messenger group chats of each barangay's crew (reached via the foreman)

**First 10 users and how you get them:**
Visit two or three barangay workshops in October/November, show the foreman the afternoon card on their own phone, and leave a printed sheet on the shed wall.

**The press angle:**
"The weather app for six-metre lanterns — and the December rain data that says the 'dry season' isn't."

**Content / SEO play:**
Annual "lantern build weather report" per barangay; searchable "Giant Lantern Festival weather" pages.

**Launch sequence:**
1. Test with one crew during the current wet week (forecast above)
2. Share the card format in the festival Facebook pages
3. Week 1: add two more barangays and gather threshold feedback

## Competitive Landscape

| Existing Solution | What They Do | Where They Fall Short | Why This Wins |
|-------------------|-------------|----------------------|---------------|
| Generic phone weather apps | Province icon and rain chance | No craft-stage or humidity-cure decision | Gives a work call |
| PAGASA bulletins | Official warnings | Not tuned to evening work decisions | Daily go/cover card |
| Nothing for festival float crews | — | — | First of its kind |

**Moat:** Local trust, per-crew thresholds, and the accumulated build log across seasons.

## Risk Factors

1. **Adoption:** Crews rely on foreman experience and may ignore an app → **Mitigation:** Present as a second opinion; keep the output to a single card.
2. **Data:** Grid-cell forecasts miss local showers → **Mitigation:** Show probability, allow local rain logging.
3. **Seasonality:** Useful only October-December → **Mitigation:** Extend to other festival floats (Higantes, flower floats) later.

## Build Reality Check

| Phase | Realistic Timeline | What Exists at End |
|-------|-------------------|-------------------|
| Prototype | 1 week | Afternoon work-call card for one barangay |
| Beta | 3 weeks | Three crews using it with feedback on thresholds |
| Launch | 6 weeks | Multi-barangay board before the December festival |

**Solo founder feasibility:** Yes — static PWA over a free weather API.
**Biggest execution risk:** Getting foremen to trust it during the festival rush, when everyone is already stretched thin.

---
*Generated: 2026-10-30 | Industry: culture_religion | Sub-industry: traditional_festival_maps | Geography: philippines*
*APIs queried for real data: Open-Meteo Forecast API, Open-Meteo Archive API, ExchangeRate-API, World Bank Open Data*

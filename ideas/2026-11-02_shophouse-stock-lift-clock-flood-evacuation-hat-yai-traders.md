---
id: yokkhong-hat-yai-stock-lift-clock-2026-11-02
title: YokKhong — Flash-Flood Stock-Lift Clock & Vertical-Evacuation Checklist for Ground-Floor Shophouse Traders in Hat Yai's Kim Yong and Klong Hae Markets
created: 2026-11-02T08:10:00+07:00
industry: disaster_emergency
sub_industry: evacuation_route_tools
geography: thailand
apis_used: Open-Meteo Forecast API, Open-Meteo Archive API, Open-Meteo Flood API, ExchangeRate-API, World Bank Open Data
monetization_model: grant-funded
target_user: Family owners of ground-floor shophouse stalls (dried seafood, rubber-sheet buyers, mobile-phone repair, motorbike-parts, gold-shop display stock) in Hat Yai's Kim Yong market and Klong Hae lanes, Songkhla, who sleep on the 2nd-3rd floor above the shop, own 1-2 pickups or none, and have roughly 6-10 hours between the first heavy-rain burst and water entering the shop floor, with no written plan for what to lift first, who to call, or when to stop lifting and leave
concept_hash: flash-flood-stock-lift-clock-and-vertical-evacuation-checklist+hat-yai-kim-yong-klong-hae-songkhla-southern-thailand+ground-floor-shophouse-stall-owners-living-above-shop
---

# YokKhong — Flash-Flood Stock-Lift Clock & Vertical-Evacuation Checklist for Hat Yai Shophouse Traders

## The Hook
- In November 2025, Hat Yai received **179.6 mm of rain in a single day (20 Nov)** and **509 mm in six days** — and every ground-floor shop owner in Kim Yong market learned the same lesson: the hour you decide to lift stock decides whether you lose 20% or 100% of it.
- YokKhong is a one-page Thai-language LINE flow that turns the rain forecast and upstream river discharge into a countdown: "Lift tier 1 (electronics, gold cases, ledgers) NOW. Tier 2 (dried goods) by 22:00. Stop lifting at water-on-kerb and move everyone upstairs."
- It is also the first *vertical-evacuation* planner for shophouse families: which floor, which window, which neighbour's roof, who carries grandma — written down before the rain, not improvised at 2am.

## Real Data Found
> Live data queried from real APIs during idea generation — not placeholders.

| Source | Data Point | Value | Queried |
|--------|-----------|-------|---------|
| Open-Meteo Archive API (Hat Yai 7.00N, 100.47E) | Peak daily rainfall, Nov 2025 flood | 179.6 mm on 2025-11-20 | 2026-11-02 |
| Open-Meteo Archive API | Six-day rainfall total 19–24 Nov 2025 | 30.7 + 179.6 + 84.4 + 87.8 + 45.8 + 80.8 = 509.1 mm | 2026-11-02 |
| Open-Meteo Archive API | Peak hourly rainfall in that event | 45.5 mm/h at 04:00 on 2025-11-20 | 2026-11-02 |
| Open-Meteo Archive API | Quiet baseline days just before | 0.7–7.6 mm/day on 15–18 Nov 2025 | 2026-11-02 |
| Open-Meteo Forecast API | Next 7 days, precipitation probability | 86–100% every day; daily sums 4.9–16.2 mm (peak 16.2 mm on 4 Nov) | 2026-11-02 |
| Open-Meteo Flood API (river discharge, Hat Yai cell) | Modelled discharge today vs forecast peak | 0.22 m³/s today (2 Nov) → daily max 9.57–9.62 m³/s on 5–6 Nov | 2026-11-02 |
| ExchangeRate-API | THB → USD | 0.0296 USD per baht (≈ 33.8 THB/USD) | 2026-11-02 |
| World Bank Open Data | Thailand population density | 140.3 people/km² (2024) | 2026-11-02 |

The pattern in the archive is the product. Hat Yai had *five quiet-looking days* (15–18 Nov: 0.7–7.6 mm) and then 30.7 mm on the 19th, the warning shot, before 179.6 mm arrived. Today's forecast has 86–100% rain probability for all seven days, and the flood model's discharge jumps from 0.22 to ~9.6 m³/s within four days — a 40x swing that a shop owner looking at a flat "rain 70%" icon on a phone will never see.

The lesson in the numbers: the daily totals alone look like "a rainy week", but the hourly peak (45.5 mm/h) shows water arrives faster than a family can carry stock up a staircase. A tiered lift schedule, started on the *warning-shot* day, is the difference.

## The Problem
Picture the owner of a dried-seafood stall in Kim Yong on the night of 19 Nov 2025: 30.7 mm has fallen, the forecast says heavy rain tomorrow, and she has 400 kg of dried squid and shrimp at floor level, a freezer, a ledger of customer credit, and her mother-in-law asleep upstairs. She does not know whether to start lifting tonight (and lose a night's sleep to a false alarm) or wait. By 04:00, rain is falling at 45.5 mm/h. Whatever isn't on the second floor by dawn is gone.

Nobody has solved this because disaster apps address *the municipality* (sirens, shelters, evacuation zones), not *the shop*. Official warnings say "heavy rain, risk of flash flood in Songkhla"; they don't say "your tier-1 stock must be up in the next 5 hours". Shopkeepers rely on LINE group chatter ("น้ำมาแล้ว" posts from neighbours), which arrives *after* water is on the street. Weather apps show a percentage chance, not a lead-time-based action list.

If nothing gets built, every monsoon season repeats the loss: uninsured stock (most market stalls have no flood cover), customer credit ledgers destroyed, and — worst — elderly relatives stuck on ground floors because nobody rehearsed the vertical evacuation.

## Who Uses This

**Primary user:** Family owners of ground-floor shophouse stalls in Hat Yai's Kim Yong market and Klong Hae lanes who live above the shop. Typical stock value 150,000–800,000 THB (~$4,400–$23,700 at today's rate); no flood insurance; one phone with LINE; decisions made by the 50–65-year-old owner.
**What they do now (and why it sucks):** Watch the sky, read neighbours' LINE posts, and guess; they either lift too late or lose sleep lifting on every false alarm.
**When they pay:** Right after a near-miss or a loss — "I lifted at 5am and still lost the freezer" — or when a neighbour who used the checklist saved everything.

**Secondary user:** Hat Yai municipality disaster-prevention volunteers (อปพร.) and Songkhla chamber-of-commerce market committees who want a standard checklist and a one-tap "who is still on the ground floor" list.
**Why they care:** Their rescue calls drop when families move upstairs early, and they get a household vulnerability list without door-knocking.

**Who definitely won't use this:** Hotel and department-store operators with engineers and insurance; residents of high-rise condos; anyone wanting official flood-zone legal determinations.

## Feature Set

### MVP — Week 1-3
- **Stock tiering sheet:** Owner photographs shelves and tags items Tier 1 (cash, electronics, ledgers, medicines), Tier 2 (dry goods, tools), Tier 3 (heavy/cheap, leave); produces a printable A4 page.
- **Lift clock:** Each morning and evening LINE message: "Warning-shot day / Watch / Lift now / Evacuate upstairs" computed from 24–72 h rainfall forecast, hourly intensity, and upstream discharge jump.
- **Time-to-lift estimator:** Owner enters helpers and stock volume; app says "you need ~4h for Tier 1+2 — start by 21:00".
- **Vertical-evacuation card:** Floor, exit window, neighbour-roof route, vulnerable people, medicines, power-off sequence — in Thai, large font.
- **Neighbour check-in:** One-tap "I'm upstairs and safe" posted to a lane group.

### Version 2 — Month 2-3
- **Lane heatmap:** Shows which lanes' owners have not yet checked in.
- **Post-flood loss log:** Photo + value for each item lost, exportable for relief-fund and tax-deduction claims.
- **Volunteer dispatch list:** Vulnerable-resident list shared with municipal volunteers (opt-in).

### Power User / Pro Features
- **Cooperative stock-lift crews:** Pre-arranged helpers across stalls, shared pickup availability.
- **Market-committee dashboard:** Aggregate readiness percent per lane.

## Technical Implementation

### Suggested Stack
Thai-language LINE Official Account with a LIFF mini-page (no app install; the owners already live in LINE), backed by a serverless function and Postgres.

**Chosen stack:** LINE OA + LIFF + Supabase + a cron'd Cloudflare Worker — the target users won't install anything, and the logic is a small scheduled calculation per location.

### APIs & Data Sources
| API | Specific Endpoint | What It Returns | Refresh Rate | Auth | Cost |
|-----|------------------|-----------------|--------------|------|------|
| Open-Meteo Forecast | `https://api.open-meteo.com/v1/forecast?latitude=7.0&longitude=100.47&hourly=precipitation&daily=precipitation_sum,precipitation_probability_max&timezone=Asia/Bangkok` | Hourly intensity and daily totals | hourly | none | free |
| Open-Meteo Flood | `https://flood-api.open-meteo.com/v1/flood?latitude=7.0&longitude=100.47&daily=river_discharge,river_discharge_max` | Modelled river discharge | daily | none | free |
| Open-Meteo Archive | `https://archive-api.open-meteo.com/v1/archive?latitude=7.0&longitude=100.47&start_date=2025-11-15&end_date=2025-11-30&daily=precipitation_sum` | Back-test of the Nov 2025 event | static | none | free |
| ExchangeRate-API | `https://open.er-api.com/v6/latest/THB` | THB↔USD for NGO reporting | daily | none | free |

### Database Schema (key tables only)
```
shops: id (uuid), line_user_id (text), lane (text), lat (float), lon (float), floors_above (int), stock_value_thb (int)
stock_items: id (uuid), shop_id (fk), name (text), tier (int), est_lift_minutes (int), photo_url (text)
evac_cards: shop_id (fk), exit_route (text), vulnerable_people (jsonb), power_off_steps (jsonb)
alerts: id (uuid), shop_id (fk), level (text), computed_at (timestamptz), lead_hours (int)
checkins: shop_id (fk), status (text), at (timestamptz)
```

### Key Technical Decisions
1. **Trigger on rate-of-change, not totals:** the 19 Nov warning shot (30.7 mm after days under 8 mm) plus a forecast of heavy rain is the signal; absolute thresholds would miss it.
2. **Back-test against Nov 2025 archive data:** tune thresholds so the "Lift now" alert would have fired well before the 04:00 peak hour.

### Hardest Technical Challenge
Open-Meteo's flood model is a gridded estimate, not a gauge on the U-Tapao canal — it can under-represent urban drainage failure. Mitigation: use it only as a corroborating signal alongside rainfall intensity; add manual "water on kerb" reports from lane captains as ground truth and tune thresholds over the first season.

## Monetization Strategy

> Note: This is a resilience tool for low-margin market traders; charging them directly would kill adoption.

**Model chosen:** grant-funded / municipal contract.

| Tier | Price | What's Included | Why They Pay This |
|------|-------|-----------------|-------------------|
| Free | $0 | Lift clock, tier sheet, evac card | Core safety |
| Market committee | ~$30/mo (≈1,000 THB) | Lane readiness dashboard, check-in lists | Committee wants coverage data |
| Municipal / NGO | grant, $3–5k/yr | Volunteer dispatch list, reports | Reduced rescue load |

**Why someone pays:** A committee chair pays after seeing 60% of a lane unready the night before a red-alert forecast.

**12-month revenue trajectory:**
- Month 3: ~2 committees × $30 = $60/month (plus pilot grant)
- Month 12: ~12 committees × $30 + one municipal grant ≈ $360/month + ~$4k/yr grant

**Alternative if SaaS doesn't work:** Disaster-resilience grants, local insurer sponsorship (flood micro-cover cross-sell), or CSR from Songkhla-based banks.

## Marketing Strategy

**Exact communities to reach:**
- Hat Yai / Songkhla local news and community Facebook pages (e.g. "Hatyai Today"-type pages; join and ask admins for current follower counts — sizes vary widely)
- Kim Yong market merchants' LINE groups and the Hat Yai Chamber of Commerce committees
- Municipal volunteer (อปพร.) networks under Hat Yai Municipality
- Thai-language Facebook flood-watch groups for southern Thailand

**First 10 users and how you get them:** Walk Kim Yong market on a weekday afternoon with printed A4 tiering sheets; the first 10 are stall owners who personally lost stock in Nov 2025 and will talk to anyone with a plan.

**The press angle:** "We replayed Hat Yai's Nov 2025 flood: a warning-shot day gave shop owners five hours of lift time nobody told them they had."

**Content / SEO play:** Thai-language pages for "ยกของหนีน้ำ ตลาดหาดใหญ่", printable checklist PDFs, per-lane readiness maps.

**Launch sequence:**
1. Back-test thresholds on the 2025 archive; share results with market committee chairs.
2. Pilot in one Kim Yong lane for the Nov–Dec monsoon peak.
3. Week 1: collect lane check-in data; publish the "readiness map".

## Competitive Landscape

| Existing Solution | What They Do | Where They Fall Short | Why This Wins |
|-------------------|-------------|----------------------|---------------|
| TMD forecasts and warnings | Province-level rain/flood warnings | No shop-level action list or lead time | Converts warnings into tiered lift tasks |
| Government disaster apps (e.g. ThaiWater, Disaster Warning) | Water level data and alerts | Not tailored to stock or vertical evacuation | Per-shop plan and check-in |
| Neighbour LINE chats | Fast rumour mill | Late and noisy | Structured, calibrated alerts |

**Moat:** Local trust via market committees, plus a growing per-lane dataset of real flood arrival times from check-ins.

## Risk Factors

1. **Data:** Modelled river discharge may not match the real canal → **Mitigation:** require rainfall-intensity agreement and lane-captain ground truth.
2. **Adoption:** Older owners distrust "another app" → **Mitigation:** LINE-only, printed sheets, committee endorsement.
3. **Liability:** A missed alert could cause loss → **Mitigation:** clear "advisory only" wording; always defer to official orders.

## Build Reality Check

| Phase | Realistic Timeline | What Exists at End |
|-------|-------------------|-------------------|
| Prototype | 2 weeks | LINE bot sends lift-clock messages for one location |
| Beta | 4 weeks | One Kim Yong lane using tier sheets and check-ins |
| Launch | 8 weeks | Market-committee pilot with a grant application |

**Solo founder feasibility:** Yes — LINE bot plus a forecast calculation is small; the work is fieldwork.
**Biggest execution risk:** Earning trust and a champion in the market committee before the next flood season.

---
*Generated: 2026-11-02 | Industry: disaster_emergency | Sub-industry: evacuation_route_tools | Geography: thailand*
*APIs queried for real data: Open-Meteo Forecast API, Open-Meteo Archive API, Open-Meteo Flood API, ExchangeRate-API, World Bank Open Data*

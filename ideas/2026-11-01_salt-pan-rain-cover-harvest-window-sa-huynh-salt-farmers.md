---
id: muoi-sa-huynh-salt-pan-rain-window-2026-11-01
title: MuốiMưa — Salt-Pan Rain-Cover & Harvest-Window Planner for Sa Huỳnh's Family Salt-Field Farmers
created: 2026-11-01T08:10:00+07:00
industry: food_beverage
sub_industry: spice_sourcing
geography: vietnam
apis_used: Open-Meteo Forecast API, Open-Meteo Archive API, ExchangeRate-API, World Bank Open Data
monetization_model: hybrid
target_user: Family salt farmers in Phổ Thạnh and Phổ Châu communes (Đức Phổ district, Quảng Ngãi) who work small hand-raked clay/earth salt-field plots (ruộng muối), rake and carry crystals at dawn and late afternoon, sell to local traders or a village cooperative at prices that swing with the weather, and lose a whole batch of crystals when a squall dissolves uncovered pans
concept_hash: salt-pan-rain-cover-and-harvest-window-planner+sa-huynh-pho-thanh-duc-pho-quang-ngai-vietnam+family-hand-raked-salt-field-farmers-and-village-salt-traders
---

# MuốiMưa — Salt-Pan Rain-Cover & Harvest-Window Planner for Sa Huỳnh's Family Salt-Field Farmers

## The Hook
- One squall, and a week of evaporation is gone: rain on an open crystallising pan re-dissolves the salt and dilutes the brine back to the start. Sa Huỳnh's family plots are covered by hand, with minutes of warning at best.
- Open-Meteo says tomorrow (2 Nov) will see 10.6 mm at 90% probability, then rain on all 7 forecast days. For a salt farmer that is a "rake everything today and cover the rest" call that nobody makes from a generic phone weather icon.
- The app is one Zalo-friendly page that answers three questions: rake today or wait, cover the brine tank or not, and how many dry days are left to the next realistic harvest.

## Real Data Found
> Live data queried from real APIs during idea generation — not placeholders.

| Source | Data Point | Value | Queried |
|--------|-----------|-------|---------|
| Open-Meteo Forecast API | Sa Huỳnh (14.77N, 109.07E) rain, 2 Nov 2026 | 10.6 mm, 90% max probability | 2026-11-01 |
| Open-Meteo Forecast API | 7-day rain totals, 1–7 Nov | 0.6 / 10.6 / 4.4 / 2.8 / 2.3 / 6.3 / 3.0 mm (rain every day, 30.0 mm total) | 2026-11-01 |
| Open-Meteo Forecast API | Reference evapotranspiration (ET0) next 7 days | 3.3–4.0 mm/day (the evaporation budget the pans depend on) | 2026-11-01 |
| Open-Meteo Forecast API | Daily max wind | 9.4–13.9 km/h | 2026-11-01 |
| Open-Meteo Archive API | Oct 2025 rain at same point | 591.3 mm total, 25 days with at least 1 mm | 2026-11-01 |
| ExchangeRate-API | VND to USD | 1 VND = 0.000039 USD | 2026-11-01 |
| World Bank Open Data | Vietnam GDP per capita, 2025 | US$5,066 | 2026-11-01 |

October 2025 delivered 591 mm of rain with 25 wet days, so at this site a month of the autumn season has essentially no reliable multi-day dry run at all. A salt pan needs sun and wind steadily for days to take seawater from brine to crystals. The ET0 figure of ~3.3–4.0 mm/day is the total evaporation budget; one 10 mm rain day wipes out roughly 2.5–3 days of it. Farmers know this by feel, but a number on a phone makes the decision shareable inside a household and a cooperative.

## The Problem
It is the afternoon of 1 November. A salt farmer in Phổ Thạnh has crystals half-formed in four pans and a stack of raked salt on the bank. The forecast app says "rain, 90%". It does not say when, how much, or whether 0.6 mm today means "go rake now" (it does) or "ignore it". If she rakes too late, the squall hits the heap and the pans; if she rakes too early, she takes thin, wet, low-grade crystals.

Nothing solves this because commodity-salt logistics are about big industrial fields. Sa Huỳnh's hand-made salt is a small, traditional, low-margin crop; weather apps are tuned for beach tourists and city commuters, not for evaporation budgets and cover decisions. The workaround is the farmer's eye on the sky and neighbours' phone calls, which works until the family is split between two plots or the person who "reads the sky" is the one who is away.

If this isn't built, each wet-season loss keeps nudging the younger generation out of the pans (the work is hard and the pay is thin) and the craft keeps shrinking, while buyers of "traditional sea salt" pay a premium for a product whose supply is, quietly, weather-gambled.

## Who Uses This
**Primary user:** A family salt-field farmer in Phổ Thạnh or Phổ Châu (Đức Phổ), 40–65, working 1–3 small plots, selling to a trader or cooperative, using Zalo daily and a mid-range Android phone. Annual income is far below the national GDP-per-capita figure of US$5,066 quoted above.
**What they do now (and why it sucks):** Watch the sky, ask neighbours, glance at a generic weather app, and cover or rake on instinct.
**When they pay:** After a squall ruins a batch they thought they could leave, or when the cooperative asks for a documented harvest log to qualify for a premium buyer.

**Secondary user:** The village salt cooperative or trader that buys from dozens of plots and wants a day-ahead estimate of incoming volumes.
**Why they care:** A rain-aware supply forecast lets them plan transport, pricing, and storage.

**Who definitely won't use this:** Large industrial salt works with their own meteorologists, and anyone wanting salt-price speculation.

## Feature Set

### MVP — Week 1-3
- **Rake/cover call:** One red/amber/green card in Vietnamese: "Rake now", "Cover tonight", or "Safe to leave", based on next-24-hour rain probability and hourly rain.
- **Dry-day budget:** Counts forecast evaporation (ET0) minus rain to show roughly how many "good pan days" remain this week.
- **Zalo-shareable card:** One-tap image of the day's call for the household and neighbours.
- **Plot profile:** The farmer enters number of pans and whether they have a brine tank; advice adapts.
- **Harvest log:** Simple diary of raked kilograms by date for cooperatives and buyers.

### Version 2 — Month 2-3
- **Cooperative dashboard:** Plots reported, expected volumes, rain-damage reports.
- **Squall nowcast alert:** Push or Zalo message when hourly rain probability jumps.
- **Price notebook:** Farmers enter what traders paid; shows a village price range.

### Power User / Pro Features
- **Premium-buyer traceability sheet:** Exports the harvest log plus weather evidence for "traditional hand-made salt" buyers.
- **Season recap:** Lost-days vs good-days summary per plot.

## Technical Implementation

### Suggested Stack
**Chosen stack:** A PWA (offline-first, plain Vietnamese UI) with a tiny serverless function that calls Open-Meteo and caches per commune. Farmers won't install apps reliably, but they will open a link in Zalo.

### APIs & Data Sources
| API | Specific Endpoint | What It Returns | Refresh Rate | Auth | Cost |
|-----|------------------|-----------------|--------------|------|------|
| Open-Meteo Forecast | `https://api.open-meteo.com/v1/forecast?latitude=14.77&longitude=109.07&daily=precipitation_sum,precipitation_probability_max,et0_fao_evapotranspiration&hourly=precipitation_probability` | Rain, probability, ET0, wind | hourly | none | free |
| Open-Meteo Archive | `https://archive-api.open-meteo.com/v1/archive?latitude=14.77&longitude=109.07&daily=precipitation_sum` | Historical rain per day for season recaps | daily | none | free |
| ExchangeRate-API | `https://open.er-api.com/v6/latest/VND` | VND/USD for export buyers | daily | none | free |
| World Bank Open Data | `https://api.worldbank.org/v2/country/VN/indicator/NY.GDP.PCAP.CD?format=json&mrv=1` | Income context | yearly | none | free |

### Database Schema (key tables only)
```
plots: id (uuid), owner_phone_hash (text), commune (text), pan_count (int), has_brine_tank (bool)
forecast_cache: commune (text), fetched_at (timestamp), payload (jsonb)
harvest_log: id (uuid), plot_id (uuid), date (date), kg_raked (numeric), rain_mm_that_day (numeric)
co_op_reports: id (uuid), coop_id (uuid), date (date), plots_reporting (int), est_kg (numeric)
```

### Key Technical Decisions
1. **Rules, not ML:** The rake/cover rule is a transparent threshold on rain probability and ET0 budget so farmers and co-ops can argue with it.
2. **Per-commune cache:** One API call serves hundreds of plots, keeping it free.

### Hardest Technical Challenge
Forecast skill for squalls at a 1 km coastal scale is low; a confident "safe" that turns out wrong destroys trust. Mitigation: bias toward "cover", display probability instead of a certainty, and log hits/misses against farmer feedback to tune thresholds.

## Monetization Strategy

> Not an obvious SaaS: the users are low-income. Realistically grant/co-op funded.

**Model chosen:** hybrid (free for farmers, paid co-op/buyer features, small grant)

| Tier | Price | What's Included | Why They Pay This |
|------|-------|-----------------|-------------------|
| Free | $0 | Rake/cover call, dry-day budget, Zalo card | Acquisition and trust |
| Co-op | ~US$10/mo | Dashboard, volume forecast, harvest-log export | Planning for trader and co-op staff |
| Buyer traceability | ~US$25/mo | Weather-evidenced harvest records for premium salt buyers | Provenance for traditional sea-salt brands |

**Why someone pays:** The co-op pays to avoid a surprise loss of a week's salt, and brands pay for evidence behind a "traditional hand-made" claim.

**12-month revenue trajectory:**
- Month 3: ~2 co-ops × $10 = $20/month (mostly pilot)
- Month 12: ~6 co-ops × $10 + ~4 buyers × $25 = $160/month

**Alternative if SaaS doesn't work:** Provincial agricultural-extension or heritage-craft grant, or a craft-salt brand sponsoring the free tier.

## Marketing Strategy

**Exact communities to reach:**
- Local Zalo groups of salt farmers and the commune's farmers' association (Hội Nông dân), reached via the commune officer — sizes unknown, to be confirmed on the ground
- Facebook groups about Quảng Ngãi and Sa Huỳnh travel and local life (membership counts to be checked before outreach)
- Vietnamese food-craft communities interested in artisanal salt (sizes to be checked)

**First 10 users and how you get them:**
Visit the Sa Huỳnh salt-field area during harvest, ask the farmers' association officer to introduce 10 households, set up the link on their phones in person, and check the call each afternoon for two weeks.

**The press angle:**
"The weather app for the world's slowest harvest: how a 7-day forecast of rain every day decides whether Vietnam's hand-raked salt survives the season."

**Content / SEO play:**
Seasonal pages like "Sa Huỳnh salt harvest rain calendar" that artisanal-salt buyers and travellers find.

**Launch sequence:**
1. Pilot with one cooperative in the dry-ish months.
2. Launch the Zalo card in the next wet season.
3. Publish the first season's lost-days report in week 1 after.

## Competitive Landscape

| Existing Solution | What They Do | Where They Fall Short | Why This Wins |
|-------------------|-------------|----------------------|---------------|
| Generic weather apps | Rain icons by city | No evaporation budget, no action | Turns weather into a rake/cover call |
| Farmer's eye and neighbours | Local knowledge | Not scalable, not documented | Shareable and loggable |
| Industrial salt-works systems | Private forecasting | Not available to small plots | Free and Zalo-native |

**Moat:** Trust with one cooperative, a multi-season rain/harvest log per plot, and traceability records buyers cannot easily get elsewhere.

## Risk Factors

1. **Data:** Coastal squall forecasts are noisy → **Mitigation:** Conservative thresholds and a visible probability.
2. **Adoption:** Older farmers may ignore an app → **Mitigation:** Zalo cards, in-person onboarding, co-op champion.
3. **Market:** Revenue is tiny → **Mitigation:** Grant funding and low running costs (free APIs).

## Build Reality Check

| Phase | Realistic Timeline | What Exists at End |
|-------|-------------------|-------------------|
| Prototype | 2 weeks | Rake/cover card for one commune |
| Beta | 6 weeks | 10 households and one co-op using it daily |
| Launch | 12 weeks | Co-op dashboard and buyer export |

**Solo founder feasibility:** Yes — the technical side is small; the work is local trust.
**Biggest execution risk:** Getting a cooperative to take part in the first place.

---
*Generated: 2026-11-01 | Industry: food_beverage | Sub-industry: spice_sourcing | Geography: vietnam*
*APIs queried for real data: Open-Meteo Forecast API, Open-Meteo Archive API, ExchangeRate-API, World Bank Open Data*

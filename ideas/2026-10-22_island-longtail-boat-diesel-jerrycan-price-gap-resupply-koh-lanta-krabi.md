---
id: nammanlongtail-koh-lanta-fuel-gap-2026-10-22
title: NamMan Longtail — Island Jerrycan Fuel Price-Gap & Resupply Run Planner for Koh Lanta and Krabi Longtail Boat Drivers
created: 2026-10-22T08:05:00+07:00
industry: energy_utilities
sub_industry: fuel_price_tracker
geography: thailand
apis_used: Open-Meteo Marine API, Open-Meteo Forecast API, ExchangeRate-API, World Bank Open Data
monetization_model: hybrid
target_user: Longtail boat drivers (Thai-Muslim and Chao Leh families) running 4-island tours and village shuttles out of Saladan pier on Koh Lanta Yai, who burn 40-80 litres of benzine a day, buy it by 20-litre jerrycan from island roadside shops at a premium over the mainland pump, and have no way to know when a mainland run across the Saladan ferry is worth the fuel and a lost tour day
concept_hash: island-longtail-boat-jerrycan-fuel-price-gap-and-resupply-run-planner+koh-lanta-saladan-krabi-andaman-thailand+longtail-boat-drivers-and-island-roadside-fuel-shop-buyers
---

# NamMan Longtail — Island Jerrycan Fuel Price-Gap & Resupply Run Planner

## The Hook
- A Saladan longtail driver pays 2-6 baht per litre more for jerrycan fuel on Koh Lanta than at a Lanta Noi or Krabi mainland pump, and on 70 litres a day that gap is the profit on one tour a week.
- Nobody tracks the island-versus-mainland gap, and the best day to cross for a bulk fill (calm sea, no rain, ferry queue short) is judged by gut feel.
- A LINE bot that logs jerrycan prices submitted by drivers, checks the sea forecast, and says "cross Thursday, fill 6 cans, save about 900 baht" beats any app the drivers have been offered.

## Real Data Found
> Live data queried from real APIs during idea generation — not placeholders.

| Source | Data Point | Value | Queried |
|--------|-----------|-------|---------|
| Open-Meteo Marine API | Max wave height off Koh Lanta (7.375N, 98.958E), next 5 days | 0.38 m (22-23 Oct), 0.66 m (24 Oct), 0.72 m (25 Oct), 0.68 m (26 Oct) | 2026-10-22 |
| Open-Meteo Forecast API | Daily precipitation, same point | 2.1, 19.7, 27.6, 39.5, 31.6 mm (22-26 Oct) | 2026-10-22 |
| Open-Meteo Forecast API | Max wind gusts, same point | 24.8, 26.3, 30.2, 37.4, 32.0 km/h (22-26 Oct) | 2026-10-22 |
| ExchangeRate-API | 1 THB in USD / MYR / LAK | 0.029771 USD / 0.121491 MYR / 661.15 LAK | 2026-10-22 |
| World Bank Open Data | Thailand net energy imports, % of energy use (EG.IMP.CONS.ZS) | 57.27% (2024), 57.51% (2023), 57.12% (2022) | 2026-10-22 |
| World Bank Open Data | Thailand CPI inflation (FP.CPI.TOTL.ZG) | -0.13% (2025), 0.40% (2024), 1.23% (2023) | 2026-10-22 |

The forecast shows the weather window closing. Waves roughly double from 0.38 m to 0.72 m between Thursday and Saturday, and rain climbs from 2 mm to nearly 40 mm. A driver who delays the mainland fuel run past Thursday faces a rougher crossing and a wet pier. Thailand imports over 57% of its energy, so pump prices follow imported-oil costs, and an island shop adds freight and a margin on top of that. The World Bank figures do not show the island gap itself. They explain why the gap is persistent and why drivers cannot negotiate it away.

Note: the World Bank pump-price indicators (EP.PMP.DESL.CD, EP.PMP.SGAS.CD) returned "not found" on 2026-10-22, so no official island pump price is cited here. The per-litre gap is the data this app would collect, and the 2-6 baht figure above is a hypothesis to validate with drivers, not a measured value.

## The Problem

At 5:30 a.m. on Saladan pier, a driver loads a tour group of eight onto a 12-metre longtail for the Four Islands run to Koh Rok-adjacent reefs. The tank holds about 60 litres. He bought it yesterday from a roadside shop that sells 20-litre jerrycans from a pickup, because the mainland pump is a ferry crossing, a taxi or motorbike ride, and half a day away. Every extra baht per litre comes straight off a margin that is already thin once boat rent, the engine and the guide fee are paid.

The structural reason nobody fixes this is that fuel is bought in small, scattered, cash transactions at shops that set their own prices. No official statistic covers island jerrycan prices. The national fuel-price displays only cover branded pumps. Drivers trade tips in LINE groups ("Lanta shop 41, Krabi 36"), but the tips go stale in a day and nobody knows whether a crossing pays once ferry fare, the lost half-day and the sea state are counted. A rough passage with full jerrycans also carries a real risk, so a bulk run on a bad day is more dangerous, not just more expensive.

If this doesn't get built, drivers keep paying the island premium blindly, and the worst runs still happen on the worst-weather days because the cheap days are not obvious. The rainy-season squeeze of late October is exactly when tourism drops and fuel cost matters most.

## Who Uses This

**Primary user:** A Chao Leh or Thai-Muslim longtail driver based at Saladan or Ban Sangka-U on Koh Lanta Yai, 28-55 years old, running 1-3 tours a day in season and village shuttles off-season, earning roughly 600-1,500 baht a day with fuel as the biggest variable cost. Uses LINE daily, has a mid-range Android phone, and checks the weather by looking at the sky.
**What they do now (and why it sucks):** Ask in a LINE group which shop is cheapest and guess whether to cross to the mainland, with no memory of last month's prices.
**When they pay:** After the second week in which a mainland run in rough weather cost a tour day and a wet, risky crossing, they would pay for a clear yes/no.

**Secondary user:** Island roadside fuel shops and small marinas, who can post prices to attract drivers, and tour operators who budget fuel per trip.
**Why they care:** Posted prices bring steady cash customers, and operators can fix per-trip fuel cost in quotes.

**Who definitely won't use this:** Big speedboat operators with fuel contracts or bulk tanks, and resort-owned boats fuelled by the resort.

## Feature Set

### MVP — Week 1-3
- **LINE price check-in:** A driver sends "Lanta 38" or a photo of the shop board, and the bot logs the price with timestamp and shop.
- **Island vs mainland gap:** Shows the latest island price against the Krabi/Lanta Noi mainland price and the gap per litre.
- **Crossing verdict:** Combines the gap, ferry fare, litres needed and the 5-day wave and rain forecast into "cross Thursday: save about 900 baht" or "wait / buy locally".
- **Weather safety flag:** Marks days with waves over 0.6 m or gusts over 35 km/h as unsafe for carrying full jerrycans.
- **Thai-language replies:** Plain Thai messages and a rich-menu with three buttons.

### Version 2 — Month 2-3
- **Group buy:** Drivers pool a mainland run so one truck carries cans for ten boats.
- **Price history chart:** Weekly island and mainland price lines to spot price spikes.
- **Tank log:** Records litres per trip to show true fuel cost per tour.

### Power User / Pro Features
- **Shop dashboard:** Fuel shops post and update prices and see how many drivers viewed them.
- **Operator quote tool:** Exports a per-trip fuel cost for tour pricing.

## Technical Implementation

### Suggested Stack
**Chosen stack:** LINE Messaging API bot on a small Node.js or Python serverless function with Supabase Postgres, because the drivers already live in LINE and will not install a new app.

### APIs & Data Sources
| API | Specific Endpoint | What It Returns | Refresh Rate | Auth | Cost |
|-----|------------------|-----------------|--------------|------|------|
| Open-Meteo Marine | `https://marine-api.open-meteo.com/v1/marine?latitude=7.375&longitude=98.958&daily=wave_height_max,wind_wave_height_max&timezone=Asia/Bangkok&forecast_days=5` | Max wave height per day | hourly | none | free |
| Open-Meteo Forecast | `https://api.open-meteo.com/v1/forecast?latitude=7.4&longitude=99.0&daily=wind_gusts_10m_max,precipitation_sum&timezone=Asia/Bangkok&forecast_days=5` | Gusts and rainfall | hourly | none | free |
| ExchangeRate-API | `https://open.er-api.com/v6/latest/THB` | THB rates for Malaysian and Lao visiting boats | daily | none | free |
| World Bank | `https://api.worldbank.org/v2/country/TH/indicator/EG.IMP.CONS.ZS?format=json&mrv=5` | Energy import dependence for context | yearly | none | free |

### Database Schema (key tables only)
```
price_reports: id (uuid), shop_id (uuid), price_thb_per_l (numeric), fuel_type (text), reported_by (text), photo_url (text), created_at (timestamptz)
shops: id (uuid), name (text), location (geography), island_or_mainland (text)
drivers: id (uuid), line_user_id (text), boat_type (text), tank_litres (int)
verdicts: id (uuid), driver_id (uuid), date (date), gap_thb (numeric), wave_max_m (numeric), recommendation (text)
```

### Key Technical Decisions
1. **Crowdsourced prices, not scraped:** No public dataset covers island jerrycan prices, so the data comes from drivers and is verified by photo.
2. **Conservative safety thresholds:** The 0.6 m wave and 35 km/h gust flags are starting values to tune with drivers, not published standards.

### Hardest Technical Challenge
Getting enough trustworthy price reports on day one, since a gap number from one report is noise. Mitigation: seed it with 10 paid driver contributors and require a shop-board photo, and show confidence ("3 reports in 48h").

## Monetization Strategy

> Not every idea needs Stripe. The drivers have thin margins, so the free tier must carry the product.

**Model chosen:** hybrid (free for drivers, small fees from shops and operators)

| Tier | Price | What's Included | Why They Pay This |
|------|-------|-----------------|-------------------|
| Free | 0 THB | Price check-in, gap, crossing verdict | Saves money on first use |
| Shop Listing | 199 THB/mo | Posted prices, driver views | Steady cash customers |
| Operator | 499 THB/mo | Per-trip fuel cost export, 14-day outlook | Accurate tour quotes |

**Why someone pays:** A shop pays after seeing a competitor's board price lure away its regular boats, and an operator pays once a fuel spike eats a fixed-price tour.

**12-month revenue trajectory:**
- Month 3: ~8 shops × 199 THB = about 1,600 THB/month
- Month 12: ~40 shops × 199 + ~25 operators × 499 = about 20,400 THB/month

**Alternative if SaaS doesn't work:** Tambon Administrative Organisation or Andaman fisheries-cooperative funding, or a small grant for fishing-community energy costs.

## Marketing Strategy

**Exact communities to reach:**
- Koh Lanta driver and boat-operator LINE groups (invite-only, reached through pier shop owners)
- Facebook groups for Koh Lanta residents and island businesses (member counts to be checked before launch)
- Krabi fishing and longtail-boat community groups on Facebook (counts to be checked)

**First 10 users and how you get them:**
Walk Saladan pier at 5:30 a.m., sit with drivers at the noodle stall, and sign up ten of them over two mornings, asking each to photograph their fuel shop's board once.

**The press angle:**
"What Koh Lanta's boatmen really pay for fuel — we asked 40 of them." Local and regional Thai press like cost-of-living island stories.

**Content / SEO play:**
A public weekly "Lanta fuel board" page in Thai, showing island and mainland prices.

**Launch sequence:**
1. Collect two weeks of manual prices from ten drivers.
2. Launch the LINE bot at Saladan pier with printed QR cards.
3. Week 1: publish the first weekly price board and ask shops to join.

## Competitive Landscape

| Existing Solution | What They Do | Where They Fall Short | Why This Wins |
|-------------------|-------------|----------------------|---------------|
| National fuel-price apps | Show branded pump prices | No island jerrycan prices, no crossing logic | Covers the actual island purchase |
| Driver LINE groups | Share tips | Stale, no weather or cost math | Gives a dated, sourced verdict |
| Weather apps | Show forecasts | Don't connect to fuel decisions | Joins forecast and fuel cost |

**Moat:** The only running record of island jerrycan prices, built from trusted driver and shop reports.

## Risk Factors

1. **Data:** Prices may be under-reported or inflated by shops → **Mitigation:** require photos and show report counts.
2. **Adoption:** Drivers may not bother to report → **Mitigation:** make reporting one message and reward contributors with free fuel-saving tips and small credits.
3. **Safety/Liability:** A "safe to cross" verdict could be blamed in an accident → **Mitigation:** present it as a cost aid only, never a navigation or safety authority, with a clear disclaimer.

## Build Reality Check

| Phase | Realistic Timeline | What Exists at End |
|-------|-------------------|-------------------|
| Prototype | 2 weeks | LINE bot logging prices and returning the gap |
| Beta | 6 weeks | Ten drivers and several shops using it at Saladan |
| Launch | 12 weeks | Public price board and first paying shops |

**Solo founder feasibility:** Yes — a small LINE bot with free weather APIs, but it needs someone who can be on the pier in person.
**Biggest execution risk:** Earning the trust of a tight-knit boat community that has seen outsiders promise things before.

---
*Generated: 2026-10-22 | Industry: energy_utilities | Sub-industry: fuel_price_tracker | Geography: thailand*
*APIs queried for real data: Open-Meteo Marine API, Open-Meteo Forecast API, ExchangeRate-API, World Bank Open Data*

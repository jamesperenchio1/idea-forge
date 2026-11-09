---
id: tuoi-ca-phe-dak-lak-2026-11-09
title: TướiCàPhê — Robusta Flowering-Irrigation Round Counter & Well-Drawdown Pacer for Ê Đê and Kinh Smallholders in Cư M'gar, Dak Lak
created: 2026-11-09T09:10:00+07:00
industry: agriculture_farming
sub_industry: irrigation_optimization
geography: vietnam
apis_used: Open-Meteo Forecast API, Open-Meteo Archive API, World Bank Open Data API
monetization_model: hybrid
target_user: Ê Đê and Kinh smallholders farming 1-3 ha of 15-year-old robusta around Cư M'gar and Buôn Ma Thuột, Dak Lak, who irrigate from a private borehole with a diesel/electric pump, spray 500-600 L of water per tree per round in Dec-Mar, and have no idea whether round 2 should be day 20 or day 30 after round 1
concept_hash: robusta-flowering-irrigation-round-counter-and-well-drawdown-pacer+cu-mgar-buon-ma-thuot-dak-lak-central-highlands-vietnam+ede-and-kinh-smallholder-robusta-growers-with-private-boreholes
---

# TướiCàPhê — Robusta Flowering-Irrigation Round Counter & Well-Drawdown Pacer

## The Hook
- Every Dak Lak robusta grower irrigates 3-4 rounds before Tet — and the whole harvest depends on timing round 1 to the first flowering and round 2/3 to the dry spell. Get it wrong and flowers abort, or the borehole runs dry in February with one round still owed.
- Today (9 Nov 2026) Buôn Ma Thuột's reference evapotranspiration is 4-5 mm/day while rain over the last 3 days totalled ~1 mm. The wet season has quit, and the water budget clock has started with nobody counting.
- Free SMS-style Zalo bot; sells to pump shops and cooperatives as the "stop pumping, start waiting" tool.

## Real Data Found
> Live data queried from real APIs during idea generation — not placeholders.

| Source | Data Point | Value | Queried |
|--------|-----------|-------|---------|
| Open-Meteo Forecast API (12.67N, 108.05E) | Rain, 6-9 Nov 2026 (daily) | 0.1, 0.8, 0.0, 1.1 mm | 2026-11-09 |
| Open-Meteo Forecast API | Reference evapotranspiration (ET0), 6-9 Nov | 4.93, 4.69, 4.89, 4.20 mm/day | 2026-11-09 |
| Open-Meteo Forecast API | Forecast rain 14-15 Nov | 5.7 mm and 7.8 mm | 2026-11-09 |
| Open-Meteo Archive API | Total rain, 1 Jan - 31 Oct 2026 (304 days) | 1,482.4 mm | 2026-11-09 |
| World Bank Open Data | Agriculture, forestry, fishing share of Viet Nam GDP (2025) | 11.64 % | 2026-11-09 |

Buôn Ma Thuột has already received ~1.5 m of rain this year, so soils and shallow aquifers are full right now. But with ET0 near 4.5 mm/day and almost no rain, the buffer drains fast. A grower who irrigates on a "20-day" folk rule ignores that a 7.8 mm shower on 15 Nov and cooler, cloudy days (ET0 2.58 on 11 Nov) change the real soil water by 30-40% across a week.

## The Problem
A grower near Cư M'gar with 2 ha and 1,800 trees stands next to a borehole in early December. Neighbours say "start now"; the pump shop says "wait for the first buds". A single irrigation round costs roughly 6-8 hours of pumping for 2 ha, i.e. a day of diesel or a large electricity bill, and if round 1 is too early the buds open in the wrong week.

Nobody provides a per-plot answer. Extension bulletins give a province-wide "irrigate Jan 5-20" range. The weather apps show rain, not evapotranspiration or soil-water accounting. Growers rely on neighbours' habit, which fails in unusual years.

If this isn't solved, every dry year repeats the same story: boreholes drying in late Feb, neighbours fighting over water, flowers dropping, and 10-20% yield loss to a decision that needed a calendar and a calculator.

## Who Uses This

**Primary user:** An Ê Đê or Kinh smallholder, aged 35-60, 1-3 ha of 12-20 year-old robusta around Cư M'gar / Buôn Ma Thuột, one private borehole and pump, a Zalo account and a mid-range Android phone. Income roughly 80-200 million VND/year in a normal year.
**What they do now (and why it sucks):** Asks neighbours and a Zalo group, then irrigates when others do — no accounting of how many hours of pumping the well can sustain.
**When they pay:** After a year when the well ran dry before the third round, or after paying for a round the rain made unnecessary.

**Secondary user:** Cooperative technicians and pump/irrigation-equipment shops who advise 200-500 growers each.
**Why they care:** They get a way to send consistent advice rather than field phone calls.

**Who definitely won't use this:** Large estate farms with drip systems and agronomists on payroll; growers on rain-only shade-grown plots with no irrigation.

## Feature Set

### MVP — Week 1-3
- **Zalo bot onboarding:** Grower sends a pin or ward name, tree age, hectares, and pump flow (L/min) — nothing else.
- **Round counter:** Records each irrigation (date, hours pumped) and tells them "Round 1 done, 8 days of effective rain since, round 2 suggested between X and Y."
- **ET0-minus-rain tracker:** Computes cumulative deficit since the last round from Open-Meteo.
- **Well-drawdown pacer:** Asks for a one-tap "water level OK / dropping / low" each round and splits the remaining rounds against the dry-season forecast.
- **Vietnamese + Ê Đê voice-note read-outs:** Short audio summaries for low-literacy users.

### Version 2 — Month 2-3
- **Neighbourhood well-stress map:** Anonymised report of how many local wells flagged "low".
- **Fertiliser coordination:** Reminders to align fertiliser with a round.
- **Pump runtime and diesel cost log.**

### Power User / Pro Features
- **Cooperative dashboard:** Technician sees all members' status.
- **CSV export** for cooperative reports and sustainability certification audits (4C, Rainforest Alliance water records).

## Technical Implementation

### Suggested Stack
**Chosen stack:** Zalo Official Account bot (Node.js on a Cloudflare Worker) + Supabase Postgres — growers already live in Zalo and will not install an app.

### APIs & Data Sources
| API | Specific Endpoint | What It Returns | Refresh Rate | Auth | Cost |
|-----|------------------|-----------------|--------------|------|------|
| Open-Meteo Forecast | `https://api.open-meteo.com/v1/forecast?latitude=12.67&longitude=108.05&daily=precipitation_sum,et0_fao_evapotranspiration&timezone=Asia/Bangkok&past_days=3&forecast_days=7` | Rain and ET0 per day | hourly | none | free |
| Open-Meteo Archive | `https://archive-api.open-meteo.com/v1/archive?latitude=12.67&longitude=108.05&start_date=...&end_date=...&daily=precipitation_sum` | Historical rain | daily | none | free |
| World Bank | `https://api.worldbank.org/v2/country/VN/indicator/NV.AGR.TOTL.ZS?format=json` | Sector context | annual | none | free |

### Database Schema (key tables only)
```
growers: id (uuid), zalo_id (text), ward (text), lat (float), lon (float), ha (float), tree_age (int), pump_lpm (int)
rounds: id (uuid), grower_id (uuid), date (date), hours (float), well_state (text)
deficit_cache: grid_cell (text), date (date), rain_mm (float), et0_mm (float)
```

### Key Technical Decisions
1. **Grid-cell cache:** Weather is fetched per 0.1 degree cell, not per grower, so API load stays low.
2. **Rules before ML:** A transparent soil-water bucket model is explainable to a cooperative technician.

### Hardest Technical Challenge
Calibrating the bucket model to local soil and tree age without field sensors. Mitigation: start with technician-validated defaults and let each grower's own "soil still moist?" answer adjust the estimate.

## Monetization Strategy

**Model chosen:** hybrid — free for growers, paid by cooperatives and equipment sellers.

| Tier | Price | What's Included | Why They Pay This |
|------|-------|-----------------|-------------------|
| Free | $0 | Round counter, deficit alerts | Acquisition |
| Cooperative | $40/mo | Member dashboard, CSV exports | Water records for certification |
| Dealer | $25/mo | Branded bot + lead list | Pump/fertiliser upsell |

**Why someone pays:** A coop manager needing water-use records for a buyer audit.

**12-month revenue trajectory:**
- Month 3: ~3 coops × $40 = $120/month
- Month 12: ~25 coops/dealers × $35 = ~$875/month

**Alternative if SaaS doesn't work:** Donor-funded through a coffee-sustainability programme (e.g. roaster-funded water-stewardship projects) or a provincial extension-centre contract.

## Marketing Strategy

**Exact communities to reach:**
- Zalo groups of Dak Lak coffee growers (many with several thousand members) — find via cooperative technicians.
- Facebook groups such as "Hội nông dân trồng cà phê Tây Nguyên" (large; verify member counts at launch).
- Local cooperative offices in Cư M'gar and Krông Ana.

**First 10 users and how you get them:**
Visit two cooperative technicians in Cư M'gar, ask each to onboard 5 members before the first dry-season round, and sit with them in the first week.

**The press angle:**
"Dak Lak's wells have a calendar nobody keeps — we counted every pumping hour."

**Content / SEO play:**
Weekly Vietnamese-language "tưới lần 1/2/3 khi nào" pages per district using live deficit data.

**Launch sequence:**
1. Pilot with 10 growers in November before round 1.
2. Open to the cooperative in December.
3. Publish the first district well-stress snapshot in February.

## Competitive Landscape

| Existing Solution | What They Do | Where They Fall Short | Why This Wins |
|-------------------|-------------|----------------------|---------------|
| Provincial extension bulletins | Province-wide irrigation date ranges | Not per plot, not updated for weather | Per-plot, weather-aware |
| Generic weather apps | Rain forecasts | No ET0, no round counting | Water-budget focus |
| Sensor/IoT startups | Soil probes | Costly for 1-3 ha plots | Zero hardware |

**Moat:** Round logs and well-state reports across thousands of plots become a local groundwater dataset nobody else has.

## Risk Factors

1. **Adoption:** Growers trust neighbours over bots → **Mitigation:** distribute through trusted cooperative technicians.
2. **Technical:** Model errors on odd soils → **Mitigation:** advise ranges, not exact days, and collect feedback.
3. **Regulatory/Liability:** Advice blamed for a bad harvest → **Mitigation:** clear "decision aid" wording; cooperative agronomist sign-off.

## Build Reality Check

| Phase | Realistic Timeline | What Exists at End |
|-------|-------------------|-------------------|
| Prototype | 3 weeks | Zalo bot with round counter and deficit alerts |
| Beta | 8 weeks | 50-100 growers across two coops |
| Launch | 16 weeks | Paying coops and a dealer partner |

**Solo founder feasibility:** Yes — public weather data and a chat bot, no hardware.
**Biggest execution risk:** Getting a Zalo OA approved and earning grower trust before the first round.

---
*Generated: 2026-11-09 | Industry: agriculture_farming | Sub-industry: irrigation_optimization | Geography: vietnam*
*APIs queried for real data: Open-Meteo Forecast API, Open-Meteo Archive API, World Bank Open Data API*

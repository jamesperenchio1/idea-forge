---
id: solar-desa-pantar-genset-2026-08-16
title: SolarDesa — Nightly Diesel Run-Time & Fuel-Buy Calculator for Pantar Island's Off-Grid Village Genset Operators
created: 2026-08-16T08:02:45+07:00
industry: energy_utilities
sub_industry: energy_poverty_mapping
geography: indonesia
apis_used: Open-Meteo Forecast API, World Bank Open Data, ExchangeRate-API
monetization_model: grant-funded
target_user: Dusun-appointed diesel genset operators ("operator listrik swadaya") on Pantar and outer Alor Regency, East Nusa Tenggara — men in their 30s-50s who run a single Yanmar or Dong Feng diesel generator nightly from roughly 18:00 to 22:00-23:00, serving 40-90 households never reached by the PLN grid, who buy subsidized diesel via a 60-90 minute motorbike or boat trip to the nearest SPBU kiosk and collect Rp15,000-30,000/month per household connection using a paper notebook
concept_hash: village-diesel-genset-fuel-run-optimizer+pantar-alor-ntt-indonesia+community-genset-operators-and-swadaya-electricity-collectors
---

# SolarDesa — Nightly Diesel Run-Time & Fuel-Buy Calculator for Pantar Island's Off-Grid Village Genset Operators

## The Hook
- Indonesia's national electricity access rate is 99.9% — yet on Pantar Island in Alor Regency, entire dusun (hamlets) still go dark every night the appointed genset operator miscalculates his diesel stock, because the "access" statistic counts villages as electrified the moment a PLTD or genset program was ever installed there, not whether it's actually running tonight.
- There is no app, spreadsheet, or even a standardized paper form for the estimated tens of thousands of village-managed "listrik swadaya" (self-funded electricity) genset operators across NTT, Maluku, and Papua — they run a multi-hundred-dollar-a-month fuel and collections business entirely from memory.
- The entire tool needs to work with zero connectivity for 29 days a month and sync itself in the 20 minutes of patchy Telkomsel signal the operator gets standing near the SPBU kiosk in town.

## Real Data Found
> Live data queried from real APIs during idea generation — not placeholders.

| Source | Data Point | Value | Queried |
|--------|-----------|-------|---------|
| World Bank Open Data (EG.ELC.ACCS.ZS) | Indonesia national electricity access rate | 99.9% (2024), 100% (2022) | 2026-08-16 |
| Open-Meteo Forecast API | 7-day precipitation forecast, Kalabahi/Pantar area (-8.23, 124.53) | 0.5mm (Aug 16) → spikes to 4.5mm (Aug 20), 0.0mm (Aug 21-22) | 2026-08-16 |
| Open-Meteo Forecast API | Overnight low / daytime high temperature, same coordinates | Nightly lows 20.1-21.5°C, daytime highs 28.5-29.3°C | 2026-08-16 |
| ExchangeRate-API | USD/IDR reference rate | 1 USD = 17,822.23 IDR | 2026-08-16 |

The World Bank number is the whole reason this problem is invisible to policymakers: a 99.9% national "access" figure makes rural electrification look solved, so there's no political urgency and no vendor building tools for the people actually keeping outer-island villages lit. Meanwhile the Open-Meteo forecast shows the exact operational risk these operators live with — a 4.5mm rain day four days out doesn't sound like much until you know it turns the unpaved laterite track to the SPBU kiosk into a mudslide that strands a motorbike carrying two 20-liter jerry cans, which is the entire village's fuel supply for the week.

## The Problem

At 5:40pm on Pantar's east coast, Yustus walks the two hundred meters from his house to the corrugated-iron shed holding the dusun's single Dong Feng diesel genset. He has, by his own estimate, "maybe twelve liters" of subsidized solar left in two jerry cans — he hasn't measured it, because there's nothing to measure it with beyond tilting the can and guessing by weight. Tonight roughly 70 households will draw power for lights, a few televisions during the 7pm sinetron block, and rice cookers during the hot, humid evening the Open-Meteo forecast puts at a 20-21°C low — warm enough that fan demand stays high the whole run. If Yustus runs the genset the full planned five hours and misjudges his fuel, the village goes dark mid-broadcast and he faces the meeting he dreads: angry heads of household demanding to know why they paid their Rp20,000 monthly fee for two hours of light instead of four.

The structural reason this keeps happening is that Indonesia's subsidized diesel ("solar bersubsidi") system was built for vehicles and licensed businesses, not informal village genset cooperatives — buying it requires a MyPertamina QR registration tied to a specific vehicle or generator ID, capped at a monthly quota, available only at the licensed SPBU in the sub-district capital, itself reachable only by a track that the rain data above shows turns risky on short notice. When the subsidized quota runs out or the kiosk is stocked-out, operators either shut down early or buy black-market diesel at nearly double the price and quietly eat the loss rather than raise fees again. None of this is tracked anywhere — no ledger, no fuel-burn rate, no early-warning system tied to weather or actual household count, just an operator's memory and a paper notebook that the village head occasionally asks to see.

The consequence is a slow-motion failure mode that repeats across hundreds of NTT hamlets: gensets get run too hard trying to stretch fuel, break down years before their rated life, operators quietly resign after one too many angry village meetings, and the hamlet reverts to kerosene lamps — with the attendant house-fire and respiratory risk that pushed rural electrification programs to exist in the first place. Every one of those failures gets logged nowhere and shows up in no statistic, so the 99.9% access number just keeps looking fine.

## Who Uses This

**Primary user:** A dusun-appointed diesel genset operator on Pantar Island, Alor Regency, NTT — male, 30s-50s, manages one Yanmar or Dong Feng genset powering 40-90 households from roughly 18:00 to 22:00-23:00 nightly, buys subsidized solar via a 60-90 minute motorbike trip to the SPBU in Kabir or Bakalang (boat-dependent for the more remote dusun), collects Rp15,000-30,000/household/month, tracks everything in a paper notebook or by memory.

**What they do now (and why it sucks):** Estimates nightly fuel by eyeballing the jerry can and guessing tonight's household draw from gut feel, which means either running out mid-broadcast or over-buying black-market diesel he can't really afford — both outcomes he only discovers he made the wrong call on after the fact.

**When they pay:** After the third month in a row he's had to cut the village's power short two nights running and sat through a village meeting where someone brought up "maybe we should just stop paying him," an NGO facilitator or Dinas ESDM (provincial energy office) field visit introduces the app as part of a rural electrification support visit — this is a grant-funded rollout trigger, not a self-serve purchase decision.

**Secondary user:** A sub-district energy cooperative coordinator or NGO field officer (the kind of role Kopernik or similar last-mile energy NGOs staff in eastern Indonesia) who oversees 5-15 hamlet genset operators across an archipelago sub-district and needs a rollup view of who's low on fuel, who's behind on collections, and where the next supply-boat run should prioritize deliveries.

**Why they care:** Their entire KPI is "hamlets stayed lit this month" and right now their only visibility into that is a monthly in-person visit — by which point a genset has often already failed.

**Who definitely won't use this:** Anyone on the PLN grid, urban Java/Bali users, on-grid PLTS (solar) mini-grid operators with automated monitoring already built in, and any operator whose village genset has since been superseded by an actual PLN grid connection.

## Feature Set

### MVP — Week 1-3
- **Nightly fuel calculator:** Operator enters current stock (liters, measured via a supplied dipstick marked in the app's onboarding kit) and tonight's planned run hours; app returns liters needed and a safe/tight/will-run-out verdict based on his logged burn rate.
- **Offline household ledger:** Simple list of connected households, monthly fee, paid/unpaid status for the current cycle — works with zero connectivity, stored locally.
- **Fuel-run weather flag:** When cached forecast data (synced on last connectivity window) shows rain above a threshold on the days he'd normally travel to the SPBU, the app surfaces a "buy extra today, road risk in 3 days" nudge.
- **Burn-rate learning:** Every logged run (hours + starting/ending stock) refines his personal liters-per-hour rate instead of relying on the generic genset spec sheet number.
- **Manual fuel price entry:** Operator or NGO facilitator updates subsidized vs. market diesel price locally; no live pricing API exists for this, so the app is explicit that this number is only as fresh as the last manual update.

### Version 2 — Month 2-3
- **Break-even view:** Compares total monthly fuel spend + genset wear estimate against total collections, flags when he's effectively running at a loss.
- **Cooperative rollup dashboard:** Web view for the NGO/Dinas ESDM coordinator showing fuel-stock status and collection compliance across all hamlets they oversee, refreshed whenever each operator's phone syncs.
- **PDF ledger export:** One-tap export of the month's collections and fuel spend for the village meeting (musyawarah desa) accountability requirement.

### Power User / Pro Features
- **Multi-genset fleet view:** For coordinators managing more than one physical genset per hamlet (backup units), track maintenance intervals against total run-hours.
- **SMS digest fallback:** For dusun with no data signal at all even during "town trips," a low-bandwidth SMS summary of fuel status sent to the coordinator's phone via a basic gateway.

## Technical Implementation

### Suggested Stack
Offline-first Progressive Web App, installable to the home screen, is the only sane choice here — these operators have basic Android phones, near-zero data connectivity at the hamlet itself, and get maybe 20 minutes of patchy signal a week standing near the SPBU kiosk in town. A native app would work equally well technically but a PWA avoids app-store distribution friction for a userbase that will be onboarded in person by an NGO facilitator, not via a store listing.

**Chosen stack:** Vanilla JS + IndexedDB PWA for the operator-facing app (works fully offline, syncs opportunistically), with a lightweight Cloudflare Workers + D1 backend for the coordinator rollup dashboard — cheap, serverless, and the sync payload per operator per week is tiny (a few dozen ledger rows and fuel readings).

### APIs & Data Sources
| API | Specific Endpoint | What It Returns | Refresh Rate | Auth | Cost |
|-----|------------------|-----------------|--------------|------|------|
| Open-Meteo Forecast API | `forecast?latitude={lat}&longitude={lon}&daily=precipitation_sum,temperature_2m_max,temperature_2m_min&timezone=Asia/Makassar&forecast_days=7` | 7-day rain/temp forecast for the hamlet's coordinates, cached on device at each sync | Daily (fetched on sync) | none | free |
| World Bank Open Data | `country/ID/indicator/EG.ELC.ACCS.ZS?format=json` | National/provincial electrification context, used only in the coordinator dashboard's reporting view | Annual | none | free |
| ExchangeRate-API | `latest/IDR` | Reference exchange rate, used only for the (optional) NGO/donor-facing cost-reporting export in USD | Daily | none | free |

### Database Schema (key tables only)
```
operators: id, dusun_name, phone_number, genset_model, rated_liters_per_hour
households: id, operator_id, name, monthly_fee_idr, connection_point_count
fuel_purchases: id, operator_id, date, liters, price_per_liter_idr, source (subsidized/market)
genset_runs: id, operator_id, date, start_time, end_time, stock_start_liters, stock_end_liters
collections: id, household_id, cycle_month, paid_boolean, amount_idr
```

### Key Technical Decisions
1. **Local-first, sync-optional architecture:** Every core feature (calculator, ledger, burn-rate learning) must function with the device fully offline indefinitely — sync is a bonus, never a dependency, because treating connectivity as available would make the app unusable for its actual users most of the time.
2. **Manual fuel price entry instead of a pricing API:** No public API exists for Pertamina's subsidized diesel price by kiosk, so rather than fake precision, the app timestamps the last manual update and visibly ages it, so the operator knows when to double-check at the pump.

### Hardest Technical Challenge
Getting the app onto operators' phones and keeping it updated at all, given near-zero connectivity and no app-store distribution path that reaches them. Mitigation: distribute via APK/PWA install during in-person NGO or Dinas ESDM field visits (the same visits that would introduce the tool in the first place), bundle updates into the sync payload so a device only needs one good connectivity window to both sync data and pull a new app version.

## Monetization Strategy

> Note: Not every idea needs Stripe. This is a public-good rural electrification tool for a userbase with near-zero cash to spare — it only makes sense as grant-funded or B2G.

**Model chosen:** grant-funded

| Tier | Price | What's Included | Why They Pay This |
|------|-------|-----------------|-------------------|
| Free (operator) | $0 | Full offline calculator, ledger, burn-rate learning | Individual operators can never be a viable paying customer — this tier must always be free |
| Cooperative dashboard | Grant/program-funded, ~$50-150/month per sub-district | Rollup monitoring, PDF exports, SMS digest fallback | Funded by the NGO or Dinas ESDM program running the rural electrification support visits, not by operators |

**Why someone pays:** The payer is never the operator — it's an NGO (e.g., Kopernik-style last-mile energy organizations active in eastern Indonesia) or the provincial Dinas ESDM office, who pay because their program's actual deliverable is "hamlets stay lit," and this tool is cheaper than the status quo of a field officer physically visiting each hamlet monthly to find out which genset is about to fail.

**12-month revenue trajectory:**
- Month 3: 1 NGO pilot covering ~15 operators in one sub-district × $100/month = $100/month
- Month 12: 4-5 NGO/government program contracts across NTT sub-districts × $100-150/month = ~$500-700/month

**Alternative if grant funding doesn't work:** Bundle the tool as a required deliverable inside an existing rural electrification grant (e.g., funded through Indonesia's Dana Desa village fund allocation for "digitalisasi desa") rather than seeking a standalone contract — the tool becomes a line item inside money that's already being spent on village electrification.

## Marketing Strategy

**Exact communities to reach:**
- Facebook group "Info Loker & Info Alor NTT" (~28,000 members) — general Alor Regency community group where village-level infrastructure news circulates
- WhatsApp groups of kepala desa (village heads) coordinated through Alor Regency's Dinas Pemberdayaan Masyarakat dan Desa — reached via a formal introduction letter, not cold outreach
- Kopernik's field network (Indonesian last-mile technology NGO active in NTT since 2010) — natural distribution partner rather than a "community" to market into
- Facebook group "Forum Komunikasi Kepala Desa Indonesia" (national village-head forum, tens of thousands of members) for the cross-province version of the pitch once the NTT pilot has results

**First 10 users and how you get them:**
The first 10 aren't found online — they're the operators in one sub-district (kecamatan) of Pantar or Alor whose village heads already have a relationship with a rural electrification NGO or the Dinas ESDM field team. The realistic path is a single in-person NGO field visit that onboards an entire sub-district's worth of operators (5-15) at once during a scheduled program visit, not individual acquisition.

**The press angle:**
"Indonesia says 99.9% of the country has electricity. On Pantar Island, whether the lights stay on tonight depends on whether a man on a motorbike made it back from town with two jerry cans of diesel before the rain hit the road." — a story about the gap between national statistics and lived reality that Indonesian outlets covering NTT infrastructure (Kompas regional desk, Mongabay Indonesia's energy coverage) have run versions of before.

**Content / SEO play:**
A public, non-app-gated page listing every reported off-grid genset-dependent dusun by name across NTT (built from operator-submitted data, opt-in), effectively the first public map of Indonesia's "phantom electrified" villages — the ones that count toward the 99.9% but run dark most nights of the month. This is the kind of primary-source data researchers and journalists covering rural electrification would cite and link to.

**Launch sequence:**
1. Partner with one NGO or Dinas ESDM NTT field team already running rural electrification visits; co-design the onboarding kit (dipstick, laminated quick-reference card, phone with app pre-installed if operator has none)
2. Launch during their next scheduled sub-district field visit — onboard 5-15 operators in a single day
3. Week 1: facilitator does a follow-up call/visit to fix any onboarding friction, collect first burn-rate data to validate the calculator's accuracy against operators' own experience

## Competitive Landscape

| Existing Solution | What They Do | Where They Fall Short | Why This Wins |
|-------------------|-------------|----------------------|---------------|
| Paper notebook / memory (current default) | Free, zero setup | No forecasting, no burn-rate learning, no visibility for oversight bodies, dies with the operator | Structured data that survives operator turnover and enables oversight |
| PLN's national grid monitoring / SUSENAS electrification statistics | Tracks grid-level "access" at a macro level | Counts a hamlet as "electrified" the day a program installed a genset, regardless of whether it runs reliably today | Tracks actual nightly operational reality, not installation history |
| General accounting/ledger apps (BukuWarung, BukuKas — popular with Indonesian micro-merchants) | Good general bookkeeping for small businesses | No fuel-burn modeling, no weather-linked supply-run risk, not designed for a genset's specific operating pattern | Purpose-built for the exact decision (how much fuel, when to travel for more) that determines whether the village stays lit |

**Moat:** Once an NGO or Dinas ESDM program has onboarded a sub-district's worth of operators and their burn-rate/collection history lives in the tool, switching costs (retraining, re-collecting historical data) are high, and the aggregated "phantom electrified village" dataset becomes a unique public-interest asset no general bookkeeping app has any reason to build.

## Risk Factors

1. **Adoption — operators may resist a phone-based tool if they're not confident with smartphones:** → **Mitigation:** Onboarding kit includes a laminated quick-reference card and the app's core flow is three taps (enter stock, enter hours, read verdict); facilitator-led onboarding rather than self-serve install.
2. **Data — no live subsidized-fuel pricing API exists to keep price data fresh:** → **Mitigation:** App visibly ages the last manual price update rather than pretending precision it doesn't have; NGO facilitator refreshes pricing during scheduled visits.
3. **Market — the entire model depends on one or two NGO/government partners choosing to fund and distribute it, not organic operator adoption:** → **Mitigation:** Design the MVP cheap enough (Cloudflare Workers + D1, no ongoing operator cost) that a single small grant or Dana Desa allocation can sustain it past the pilot, and keep the core offline app fully free and independent of any partner relationship continuing.

## Build Reality Check

| Phase | Realistic Timeline | What Exists at End |
|-------|-------------------|-------------------|
| Prototype | 3 weeks | Offline calculator + ledger PWA, testable on a single Android device with no backend |
| Beta | 6 weeks | Sync backend live, one sub-district (5-15 operators) onboarded via NGO field visit, real burn-rate data flowing |
| Launch | 12 weeks | Cooperative dashboard live for the partner NGO/Dinas ESDM coordinator, first grant/program contract signed |

**Solo founder feasibility:** Difficult — the technical build is genuinely solo-feasible in weeks, but distribution is entirely gated on an in-person NGO or government field-visit partnership, which a solo founder has to source through relationship-building in eastern Indonesia's rural electrification NGO circuit, not through any online channel.
**Biggest execution risk:** Without a committed distribution partner (NGO or Dinas ESDM) before writing code, this becomes a well-built tool with no path to the people who'd actually use it — the partnership has to come first, not the build.

---
*Generated: 2026-08-16 | Industry: energy_utilities | Sub-industry: energy_poverty_mapping | Geography: indonesia*
*APIs queried for real data: Open-Meteo Forecast API, World Bank Open Data, ExchangeRate-API*

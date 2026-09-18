---
id: dieseljimat-kuala-kedah-2026-09-18
title: DieselJimat — Subsidised Diesel Quota & Break-Even Trip Calculator for Kuala Kedah's Kad Nelayan Small-Boat Fishermen
created: 2026-09-18T08:01:51+07:00
industry: energy_utilities
sub_industry: fuel_price_tracker
geography: malaysia
apis_used: World Bank Open Data, ExchangeRate-API, Open-Meteo Marine API, Open-Meteo Forecast API
monetization_model: grant-funded
target_user: Class B/C small-scale trawler and gillnet fishermen operating 20-40ft boats out of the Kuala Kedah fishing jetty in Kedah, Malaysia, who hold a government Kad Nelayan biometric subsidy card entitling them to a fixed monthly litre quota of diesel at the controlled price (RM1.65-2.15/litre depending on boat class) from designated Petronas/BHPetrol pumps — and who run out of quota mid-month, forcing a silent switch to market-rate diesel that can flip a profitable trip into a loss without them realizing until they're back at the jetty weighing catch.
concept_hash: diesel-subsidy-quota-break-even-calculator+kuala-kedah-kedah-malaysia+kad-nelayan-small-scale-trawler-fishermen
---

# DieselJimat — Subsidised Diesel Quota & Break-Even Trip Calculator for Kuala Kedah's Kad Nelayan Small-Boat Fishermen

## The Hook
- A Kuala Kedah trawlerman's Kad Nelayan gets declined at the pump on the 19th of the month — quota's gone — and he only finds out because the machine beeps, not because anyone told him he was close.
- Nobody in Malaysia's small-boat fishing fleet has a tool that answers "will today's trip make money?" using their *actual remaining subsidy litres*, not the fantasy controlled price they stopped getting a week ago.
- The Ringgit has moved from RM4.09/USD to wherever it sits tomorrow, and every point of that move quietly resets the break-even line for a fisherman who has never seen a live exchange rate in his life.

## Real Data Found
> Live data queried from real APIs during idea generation — not placeholders.

| Source | Data Point | Value | Queried |
|--------|-----------|-------|---------|
| World Bank Open Data | Malaysia fuel exports (% of merchandise exports), most recent year | 11.16% (2025) | 2026-09-18 |
| World Bank Open Data | Malaysia fuel exports trend, prior year | 14.40% (2024) — a 3.2-point drop, signaling tighter margins in the fuel economy Malaysia's subsidy math is built on | 2026-09-18 |
| ExchangeRate-API | USD → MYR spot rate | 4.096441 | 2026-09-18 (00:02 UTC) |
| Open-Meteo Marine API | Wave height, Kuala Kedah coastal waters (6.125°N, 100.21°E), next 72h | Ranging 0.38m–0.62m — flat, boat-safe seas all three days | 2026-09-18 |
| Open-Meteo Forecast API | Peak hourly wind speed, Kuala Kedah, next 72h | 23.2 km/h (2026-09-18 04:00 local) with a co-occurring 9.0mm/h rain spike at 01:00 | 2026-09-18 |

Two things jump out. First, Malaysia's fuel-export share sliding from 14.4% to 11.2% year-on-year is a proxy for a national fuel-revenue picture getting tighter — the same subsidy pool that funds Kad Nelayan's controlled diesel price is under more pressure, not less, which matters to a fisherman even if he's never read a World Bank spreadsheet. Second, the sea itself is a non-issue this week (sub-half-metre waves, calm wind) — meaning on a flat-calm day like this, the only variable stopping a boat from going out isn't weather, it's whether there's still subsidised diesel left on the card. That's the exact blind spot this app targets: on a green-light weather day, fishermen still skip trips or eat a loss purely because nobody tracks the fuel-quota side of the equation the way everyone already tracks the weather side.

## The Problem

At the Kuala Kedah jetty, a Class C boat owner gets a fixed monthly litre allocation of diesel at the government-controlled Kad Nelayan price — typically enough for roughly two to three weeks of normal trips, depending on boat size and how many days he actually goes out. He doesn't get a statement, a balance check app, or a warning. He finds out his quota is exhausted the way everyone at that jetty finds out: the card reader at the BHPetrol or Petronas pump beeps and rejects the subsidised rate, and the pump attendant tells him he's now paying the open market price — often 25-40% higher per litre. If he's already committed the crew and the ice for that day's trip, he either eats the higher fuel cost against that day's catch value, or he cancels and loses the ice and the crew's guaranteed daily wage anyway.

This happens because the entire subsidy system is designed around the pump, not the boat. Malaysia's Kad Nelayan biometric system tracks quota centrally for fraud control, but exposes nothing back to the fisherman about pace-of-use — there's no SMS, no app, no printed slip showing "you have 40 litres left, at your current trip rate that's 6 more trips." The workaround right now is entirely social: fishermen ask around the jetty coffee shop what day of the month "the cards start beeping," a rough oral tradition that varies by boat class, by how many days a fisherman fished that month, and by whether he loaned litres to a relative's boat (a common informal practice at these jetties that further scrambles anyone's individual tracking).

Left unaddressed, this keeps producing the same two failure modes on repeat: boats going out on quota-exhausted days without realizing it until they're mid-trip and already burning market-rate fuel, and boats staying tied up on perfectly fishable, flat-calm days like the one in this week's marine data because the owner assumes (often wrongly) that his quota is already gone. Both are pure information failures, not weather or stock failures — exactly the kind of gap a five-input calculator closes.

## Who Uses This

**Primary user:** A Class B or C boat owner-operator at Kuala Kedah jetty (or the sister jetties at Kuala Kurau and Kuala Perlis along the same stretch of coast) running a 20-40ft gillnet or small trawl boat, who checks his Kad Nelayan balance by trial-and-error at the pump, plans trips day-by-day around crew availability and tide, and has never had a way to see his subsidy quota, the current market fallback price, and today's sea conditions in one place before deciding whether to go out.

**What they do now (and why it sucks):** He guesses his remaining quota from memory and jetty gossip, then finds out he's wrong at the pump — after the crew is already assembled and the ice is already bought.

**When they pay:** Never directly out of pocket — the moment of value is the day his fishermen's association (Persatuan Nelayan) sees enough members using it that they fold it into the digitalisation services LKIM (Lembaga Kemajuan Ikan Malaysia, the national Fisheries Development Authority) already funds for jetty communities.

**Secondary user:** The *tuke* (boat syndicate operator) who owns or finances 3-6 boats and needs to sequence which boat goes out on which day to keep the syndicate's combined subsidy quota from all running dry in the same week.

**Why they care:** A tuke's whole margin depends on staggering fuel-quota depletion across his fleet so at least some boats are always fishing at the subsidised rate rather than all of them hitting market rate simultaneously.

**Who definitely won't use this:** Deep-sea Class A/A2 trawler operators running 40GT+ vessels on weeklong trips with their own bulk diesel contracts — they're not on the Kad Nelayan retail-pump quota system at all, so the entire premise doesn't apply to them.

## Feature Set

### MVP — Week 1-3
- **Quota balance entry:** Fisherman logs his last-known card balance (litres) and the date his monthly allocation resets; app does simple linear depletion tracking from his self-reported pump visits.
- **Trip break-even calculator:** Input planned trip length (hours), boat's fuel burn rate (litres/hour, preset by boat class with manual override), and expected catch value; app outputs profit/loss under both subsidised and market diesel price.
- **Live market-price context panel:** Shows current USD→MYR rate (ExchangeRate-API) and a plain-language "diesel export pressure" indicator built off the World Bank fuel-exports trend, so a fisherman has a directional sense of whether market diesel is getting more or less expensive nationally.
- **Marine go/no-go strip:** Pulls Open-Meteo Marine (wave height, wind wave height) and Forecast (wind speed, precipitation) for the Kuala Kedah coordinates, shown as a simple green/amber/red band for the next 3 days.
- **Quota countdown:** "At your current pace, your subsidised litres run out around [date]" — the single number the whole app exists to produce.

### Version 2 — Month 2-3
- **WhatsApp bot interface:** Since the primary interface friction is app-install reluctance among older jetty fishermen, port the calculator to a WhatsApp number they message with trip details and get a one-line go/no-go + break-even reply.
- **Jetty-reported market price board:** Crowdsourced field for fishermen to log what price they actually paid once quota ran out that day at their specific pump, since floating rates vary pump-to-pump.
- **Multi-boat tuke dashboard:** For syndicate operators managing several Kad Nelayan cards, a single view staggering which boat should fish which day to avoid simultaneous quota exhaustion.

### Power User / Pro Features
- **Trip profitability log/export:** A running CSV/PDF history of every logged trip's fuel cost vs catch value — useful when applying for LKIM boat-upgrade grants or microfinance that ask for informal income evidence.
- **Multi-jetty comparison:** For fishermen who occasionally refuel at Kuala Kurau or Kuala Perlis instead, compare reported market rates across all three jetties before choosing where to buy market-rate top-up fuel.

## Technical Implementation

### Suggested Stack
This user has an older Android phone, patchy 3G/4G at the jetty, heavy existing WhatsApp habit, and close to zero tolerance for installing yet another app. A lightweight PWA (works as a bookmarked mobile-web page, no app-store friction, caches the last-known quota/weather state for offline viewing at sea) paired with a WhatsApp Business API bot as the primary conversational interface fits this far better than a native app.

**Chosen stack:** WhatsApp bot (Meta Cloud API, free tier under 1,000 conversations/month — comfortably covers a single jetty's fleet) as the primary interface, backed by a small Node.js/Express service on a $5/month VPS, with a companion read-only PWA (plain HTML/JS, no framework needed) for anyone who prefers tapping over typing. No native app — nothing to install, nothing to update.

### APIs & Data Sources
| API | Specific Endpoint | What It Returns | Refresh Rate | Auth | Cost |
|-----|------------------|-----------------|--------------|------|------|
| ExchangeRate-API | `https://open.er-api.com/v6/latest/USD` | USD→MYR spot rate | Daily | none | free |
| World Bank Open Data | `https://api.worldbank.org/v2/country/MY/indicator/TX.VAL.FUEL.ZS.UN?format=json&mrv=5` | Malaysia fuel exports (% of merchandise exports), annual | Annual | none | free |
| Open-Meteo Marine API | `https://marine-api.open-meteo.com/v1/marine?latitude=6.12&longitude=100.18&hourly=wave_height,wind_wave_height&timezone=Asia/Bangkok&forecast_days=3` | Hourly wave height & wind-wave height for Kuala Kedah waters | Hourly, updated multiple times/day | none | free |
| Open-Meteo Forecast API | `https://api.open-meteo.com/v1/forecast?latitude=6.12&longitude=100.18&hourly=windspeed_10m,precipitation&timezone=Asia/Bangkok&forecast_days=3` | Hourly wind speed & precipitation | Hourly | none | free |

### Database Schema (key tables only)
```
fishermen: id, phone_number (WhatsApp ID), boat_class (B/C), boat_fuel_burn_lph, tuke_group_id (nullable)
quota_logs: id, fisherman_id, reported_date, litres_remaining_self_reported, quota_reset_date
trips: id, fisherman_id, trip_date, planned_hours, fuel_price_used (subsidised/market), catch_value_myr, computed_profit_myr
jetty_price_reports: id, jetty_name, reported_date, market_diesel_price_myr_per_litre, reported_by_fisherman_id
```

### Key Technical Decisions
1. **Self-reported quota tracking instead of a Kad Nelayan API integration:** There is no public or even semi-public API into Malaysia's Kad Nelayan subsidy ledger — it's a closed government/PETRONAS system. Rather than blocking the whole product on a data-sharing agreement with LKIM, the MVP treats quota as fisherman-reported (last known balance + date), which is imperfect but immediately usable, and becomes the natural pitch for an eventual official data partnership once adoption proves demand.
2. **WhatsApp-first, not app-first:** Given the target user's device and connectivity profile, a bot that lives inside an app they already open 20 times a day beats a new icon on their home screen competing for install effort.

### Hardest Technical Challenge
Quota accuracy without official data access — self-reported balances will drift out of sync with the real card ledger over weeks, and a wrong "you have fuel left" signal is worse than no signal at all. Mitigation: keep the countdown framed as an estimate with a visible confidence caveat, nudge users to re-anchor their reported balance every time they mention a pump decline or a fresh top-up, and pursue a formal data-sharing conversation with LKIM/PETRONAS once a single jetty's usage numbers exist as proof of concept.

## Monetization Strategy

> Note: Not every idea needs Stripe. This one doesn't.

**Model chosen:** grant-funded

Small-scale Kad Nelayan fishermen are, by definition, a subsidised population — asking them to pay a subscription for a tool that helps them use a subsidy contradicts the entire target market. The realistic path is B2G/NGO: LKIM already runs a "digital nelayan" modernization push, and Persatuan Nelayan Kebangsaan (the national fishermen's association) has budget lines for member digital services. This is pitched and funded as a jetty-level pilot, not sold seat-by-seat.

| Tier | Price | What's Included | Why They Pay This |
|------|-------|-----------------|-------------------|
| Free (all fishermen) | RM0 | Full calculator, WhatsApp bot, weather strip | It's the whole product — no paywall makes sense here |
| Association/LKIM pilot license | RM3,000-8,000 one-time + hosting | Jetty-wide rollout, onboarding sessions, WhatsApp Business API setup, usage dashboard for the association | Association wants adoption data to justify continued digitalisation funding |
| State Fisheries Dept multi-jetty contract | RM20,000-50,000/year | Rollout across all Kedah jetties (Kuala Kedah, Kuala Kurau, Kuala Perlis, etc.), aggregated anonymized quota-depletion patterns fed back to inform quota policy | Real usage data helps them right-size future quota allocations by boat class |

**Why someone pays:** Not the fisherman — the association or state fisheries office pays because they already fund "nelayan digitalisation" initiatives and this gives them a concrete, low-cost, immediately-adopted deliverable instead of an abandoned app nobody used.

**12-month revenue trajectory:**
- Month 3: 1 pilot jetty (Kuala Kedah) funded by Persatuan Nelayan Kedah × RM5,000 one-time = RM5,000
- Month 12: State-level Kedah Fisheries Department contract covering 4-5 jetties × RM30,000/year = RM30,000/year run-rate

**Alternative if grant funding stalls:** Position as an open-source community tool maintained by a university (e.g., Universiti Malaysia Terengganu's fisheries faculty already publishes small-scale fisheries research) as a research instrument that happens to also be useful — gets it built and running even with zero initial funding.

## Marketing Strategy

**Exact communities to reach:**
- **Persatuan Nelayan Kawasan Kuala Kedah** (the local area fishermen's association) — the literal gatekeeper organization for the target jetty, a few hundred registered members.
- **Facebook group "Nelayan Malaysia"** — a public group with several thousand members where small-scale fishermen across Malaysia's west coast discuss diesel prices, catch conditions, and Kad Nelayan complaints regularly.
- **r/malaysia** — occasional threads about fuel subsidy friction and Kad Nelayan issues surface here and get real engagement from a policy-curious audience, useful for the press/awareness angle even if not the direct user base.

**First 10 users and how you get them:**
Visit the Kuala Kedah jetty in person on a weekday morning when boats are docked and nets are being mended (the natural downtime when fishermen are reachable and not at sea), bring a phone with the WhatsApp bot already running, and demo the break-even calculator live using that day's actual weather and a real trip scenario with 2-3 boat owners the local Persatuan Nelayan branch head introduces. Word spreads jetty-to-jetty faster than any digital channel — these communities are small and tight-knit.

**The press angle:**
"Malaysia's fishermen get a subsidy card with no balance check — until now: a free WhatsApp bot tells small-boat fishermen when their diesel quota runs out before the pump does." This is a clean human-interest + policy-gap story for Malay-language outlets like Utusan Malaysia or Sinar Harian's Kedah/Perlis regional desks, who cover Kad Nelayan grievances periodically.

**Content / SEO play:**
A public, no-login page showing "today's Kuala Kedah fishing conditions" (wave height, wind, go/no-go) updated daily — genuinely useful to anyone searching "cuaca laut Kuala Kedah hari ini" (today's Kuala Kedah sea weather), and a natural organic-traffic funnel into the fisherman-specific tool.

**Launch sequence:**
1. Build and test the calculator + WhatsApp bot against 2-3 real boat owners' actual trip economics before any public mention.
2. Launch day: in-person demo session at the Kuala Kedah jetty coordinated through the local Persatuan Nelayan branch, timed to a weekday morning low-tide window when boats are in.
3. Week 1: follow-up WhatsApp broadcast through the association's existing member list (they already run one for meeting announcements) introducing the bot's number.

## Competitive Landscape

| Existing Solution | What They Do | Where They Fall Short | Why This Wins |
|-------------------|-------------|----------------------|---------------|
| Kad Nelayan pump terminal itself | Approves/declines subsidised purchase at point of sale | Zero visibility before you're already at the pump; no forecasting | This surfaces the same information days in advance, not at the moment of failure |
| Jetty word-of-mouth / coffee shop chatter | Informal, free, socially trusted | Wildly inaccurate per-boat, no weather integration, no break-even math | Same social trust channel (WhatsApp), but with actual numbers instead of guesses |
| Generic weather apps (Malaysian Meteorological Dept app, MyWeather) | Accurate general marine forecasts | No fuel/subsidy angle whatsoever, not tailored to Kad Nelayan quota cycles | Combines the two variables that actually decide a trip: sea state AND fuel economics |

**Moat:** Once a jetty's fishermen are reporting their pump-decline dates and market prices into the shared jetty_price_reports table, that crowdsourced quota-timing pattern becomes genuinely hard for a generic weather or fisheries app to replicate — it's hyperlocal, socially-sourced data that only exists because this specific community trusts and uses this specific bot.

## Risk Factors

1. **Data — self-reported quota drifts from reality:** Without an official Kad Nelayan data feed, balance estimates degrade over time. → **Mitigation:** Frame all quota countdowns as estimates with explicit uncertainty language, and build the re-anchoring prompt into every pump-decline report a user sends.
2. **Adoption — older fishermen skeptical of a new WhatsApp number:** Distrust of unfamiliar contacts (scam-wary population) could suppress opt-in. → **Mitigation:** Launch exclusively through the Persatuan Nelayan's own endorsement and existing broadcast list, never cold outreach.
3. **Regulatory — LKIM or PETRONAS could view unofficial quota tracking as adjacent to a subsidy-fraud-sensitive system:** Even though this app has no write access to the actual subsidy ledger, proximity to the topic could draw scrutiny. → **Mitigation:** Proactively brief the local LKIM office before wide rollout, positioning the tool as a demand-generation case for their own official quota-visibility feature rather than a workaround.

## Build Reality Check

| Phase | Realistic Timeline | What Exists at End |
|-------|-------------------|-------------------|
| Prototype | 2 weeks | Working break-even calculator + marine go/no-go strip as a simple web page, no bot yet |
| Beta | 5 weeks | WhatsApp bot live with 2-3 real Kuala Kedah boat owners logging real trips |
| Launch | 10 weeks | Jetty-wide rollout through Persatuan Nelayan endorsement, first association funding conversation underway |

**Solo founder feasibility:** Yes — the technical build is genuinely small (a calculator, two free weather APIs, a WhatsApp bot wrapper); the real work is the in-person jetty relationship-building, which one person can do with enough visits.
**Biggest execution risk:** Not technical — it's whether a solo builder with no existing fisheries-association relationship can earn enough trust at the jetty to get the first 10 real users logging real quota data, since the entire product lives or dies on that self-reported input.

---
*Generated: 2026-09-18 | Industry: energy_utilities | Sub-industry: fuel_price_tracker | Geography: malaysia*
*APIs queried for real data: World Bank Open Data, ExchangeRate-API, Open-Meteo Marine API, Open-Meteo Forecast API*

---
id: agosalerto-baseco-manila-2026-09-20
title: AgosAlerto — Manila Bay Propeller-Fouling & Ghost-Net Drift Alert for Baseco Compound's Small-Boat Pump-Boat Fishermen
created: 2026-09-20T08:03:00+07:00
industry: ocean_maritime
sub_industry: ocean_plastic
geography: philippines
apis_used: Open-Meteo Marine API, Open-Meteo Forecast API, World Bank Open Data, ExchangeRate-API
monetization_model: grant-funded
target_user: Small-scale pump-boat ("kuliglig"-engine banca) fishermen based in Baseco Compound, Tondo, Manila — launching at 4-6am from the mouth of the Pasig River into Manila Bay, running bottom-set gillnets and hook lines within 2-3km of shore because they can't afford fuel for deep-sea trips, earning roughly ₱300-500 ($5-8) per day on a normal catch
concept_hash: manila-bay-debris-pulse-propeller-fouling-forecast+baseco-compound-tondo-manila-philippines+small-scale-pump-boat-fishermen
---

# AgosAlerto — Manila Bay Propeller-Fouling & Ghost-Net Drift Alert for Baseco Compound's Small-Boat Pump-Boat Fishermen

## The Hook
- The Pasig River — the drain for all of Metro Manila — empties directly into the bay where Baseco Compound's fishermen fish every morning, and Open-Meteo's marine model shows the current at that exact river mouth flipping from 225° (southwest) to 45° (northeast) within about 6 hours on a single ordinary day (2026-09-20) — meaning the trash a fisherman sees drifting one way at dawn is very possibly drifting the opposite way by the time he sets his second net.
- A fouled propeller shaft costs ₱1,500-5,000 ($24-80 at today's rate of ₱62.84/$1) to repair — 3 to 10 days of income wiped out by a single sachet-and-ghost-net tangle, and it happens most often in the 12-36 hours after a heavy rain flushes the city's storm drains into the river.
- Only 1.6% of the Philippines' territorial waters are under any kind of formal marine protection or monitoring (World Bank, 2025 — and it was 1.7% just two years earlier, so it's shrinking) — Manila Bay's debris load is tracked by nobody in a way that reaches the people whose engines it's actually destroying.

## Real Data Found
> Live data queried from real APIs during idea generation — not placeholders.

| Source | Data Point | Value | Queried |
|--------|-----------|-------|---------|
| Open-Meteo Marine API | Ocean current direction at Pasig River mouth / Manila Bay (14.625°N, 120.875°E) on 2026-09-20 | Swings from 225° (SW) at 00:00-11:00 → 90° (E) at 12:00 → 0° (N) at 13:00 → 45° (NE) at 14:00-17:00 → back to 90° (E) by 18:00 | 2026-09-20 |
| Open-Meteo Marine API | Peak forecast wave height, same location, next 72h | 0.30 m at 15:00 on 2026-09-21 (calm — confirms debris drift is current-driven, not wave-driven, in this sheltered bay mouth) | 2026-09-20 |
| Open-Meteo Forecast API | Daily precipitation sum, Manila (14.587°N, 121.003°E) | 17.90mm (Sep 17) → 5.30mm (Sep 18) → 11.10mm (Sep 19) → 1.70mm (Sep 20) → 4.90mm (Sep 21 fcst) → 2.40mm (Sep 22 fcst) → 5.90mm (Sep 23 fcst) | 2026-09-20 |
| World Bank Open Data | Marine protected areas, % of Philippine territorial waters | 1.6% (2025), down from 1.7% (2023) | 2026-09-20 |
| ExchangeRate-API | PHP to USD | 1 USD = 62.84 PHP | 2026-09-20 |

The Sep 17 rain spike (17.9mm, with a burst of 4.3mm in a single hour at 13:00) is exactly the kind of event that flushes Metro Manila's informal-settlement drainage and storm sewers into the Pasig — under this app's model, that predicts a debris pulse reaching the bay mouth roughly 12-36 hours later, meaning the morning of Sep 18 through Sep 19 was the highest-risk fishing window of the week, invisible to anyone not cross-referencing rain totals against a river's flow time. Meanwhile the current-direction data shows something fishermen's own intuition gets wrong: the same square kilometer of water gets hit from a completely different direction by early afternoon than it was at dawn, so a debris field a boat dodged on the way out can drift directly into its return path.

## The Problem

At 4:30am, a fisherman in Baseco Compound pushes his pump-boat off the mudflat at the Pasig River's mouth, engine idling at low RPM to keep the long-shaft propeller — an improvised, unshielded design common on these boats because a shrouded prop is too expensive — clear of anything floating. He's heading maybe 2km out, close enough to see the Manila skyline, because that's as far as a liter of gasoline and a family's grocery money will stretch. Two days earlier it rained hard overnight. He doesn't know that rain is now arriving at the exact stretch of water where his nets sit, carried by a current that reversed direction twice since he last checked it. His shaft catches a wound coil of nylon ghost net tangled with plastic sachets; the engine strains, stalls, and by the time he paddles back in to inspect it, the prop shaft is bent and the seal is torn. Repair: ₱2,800. His catch that week: maybe ₱2,000.

This happens because nobody connects the two things that would predict it. Philippine government agencies (PAGASA for weather, DENR/EMB for the Manila Bay cleanup mandate, BFAR for fisheries) each hold one half of the puzzle — rainfall data or dredging/cleanup schedules — but nothing correlates upstream rain timing with bay-mouth current direction to say "this cell, this window, elevated risk." Fishermen's current workaround is pure folk heuristic: judge trash risk by what they can see from shore at 4am in the dark, or by what the guy next to him saw yesterday — both stale and both blind to the fact the current itself is not stable through a single fishing session. The interceptor/skimmer boats that Manila Bay's rehabilitation program does deploy patrol on a fixed schedule, not a rain-triggered one, so they're frequently in the wrong place when a pulse actually arrives.

Left alone, this keeps draining the same households repeatedly: a ₱2,800 repair to a family clearing ₱300/day forces a choice between the engine and that week's rent, often solved by a 5-6 informal lender charging 20%/month — the debt compounding faster than the next catch can pay it down. And every bent shaft is also a missed day of income on top of the repair cost, since Baseco's fisherfolk associations report boats sitting idle for days waiting on parts or cash for a mechanic.

## Who Uses This

**Primary user:** Small-scale pump-boat fishermen in Baseco Compound, Tondo — men in their 30s-60s running single-engine wooden bancas with unshielded long-shaft propellers, launching before dawn, fishing within sight of shore because deep-sea fuel is unaffordable, earning ₱300-500 on a typical day and often supporting 4-6 family members on it.
**What they do now (and why it sucks):** Eyeball visible trash from the mudflat before launch (useless in the dark, and useless once already on the water) or ask the last boat back what they saw (hours-old, and the current may have already reversed).
**When they pay:** They don't pay directly — see Monetization. The trigger for *adoption* is after the second or third propeller repair in a season, when a neighbor mentions the free SMS/Messenger alert that would have flagged the bad window.

**Secondary user:** Barangay (village-level) fisherfolk association officers and the local CENRO (City Environment and Natural Resources Office) staff coordinating Manila Bay's court-mandated cleanup boats, who need to know where debris is actually pulsing rather than patrolling a fixed route.
**Why they care:** Routing a limited number of skimmer boats to where a pulse is predicted, instead of a fixed schedule, means visibly more trash collected per boat-hour — a metric the Manila Bay rehabilitation program (under a 2008 Supreme Court continuing-mandamus order) is under standing pressure to show progress on.

**Who definitely won't use this:** Commercial trawler operators and deep-sea fishing fleets — they're too far offshore for river-mouth debris pulses to matter, and they already have marine radio and better instrumentation.

## Feature Set

### MVP — Week 1-3
- **Daily 5am risk briefing (Facebook Messenger bot):** A single message in Tagalog/Filipino naming 3-4 named bay-mouth zones (e.g. "Baseco North," "Vitas," "R-10 outfall") and a red/yellow/green debris-pulse risk for each, computed from the last 48h of Manila rainfall plus the morning's forecast current direction.
- **SMS fallback (Semaphore or Globe Labs gateway):** Same daily briefing as a plain-text SMS for fishermen without mobile data, since load (prepaid data credit) is a real cost constraint.
- **Rain-to-pulse lag model:** A simple rule-based scorer — rain accumulation over 24h upstream + hours elapsed since the rain peak — flags the 12-36h window after a >10mm rain day as elevated risk.
- **Current-reversal warning:** If Open-Meteo Marine's forecast shows the current direction changing by more than 90° within the fishing day, the briefing explicitly says so ("morning trash may drift back toward you by afternoon").
- **No-login zone subscription:** Fisherman replies with his zone name once (or a barangay officer sets it up on his behalf) — no account, no app install.

### Version 2 — Month 2-3
- **Photo-report ghost-net sightings:** Fishermen can reply to the Messenger bot with a photo + rough location; officer-side dashboard aggregates these as ground-truth to check the model's predictions.
- **Barangay officer dashboard (simple map):** Color-coded map of the 3-4 zones updated twice daily, for association leaders and CENRO staff planning skimmer-boat routing.
- **Historical pulse log:** Weekly summary showing which predicted high-risk windows actually correlated with reported prop damage, to build trust and tune the model.

### Power User / Pro Features
- **CENRO/NGO data export:** CSV/API export of the historical rain-current-risk correlation and community-reported ghost-net locations, for Manila Bay rehabilitation program reporting or academic partners (e.g., UP Marine Science Institute).
- **Multi-outfall expansion toggle:** Configuration to add more river-mouth zones (Parañaque, Bacoor Bay) without rebuilding the model, for NGOs wanting to replicate this in other Metro Manila coastal barangays.

## Technical Implementation

### Suggested Stack
Given the primary users are subsistence fishermen with limited smartphones and even more limited mobile data, and the Philippines is famously Facebook/Messenger-first (not app-install-first), this should not be a native app. **Chosen stack:** a Meta Messenger Platform bot (free, Send API) as the primary interface, with an SMS fallback via a Philippines-local gateway (Semaphore API, cheap peso-denominated per-SMS pricing) for feature-phone users, both driven by a small scheduled Python job (cron on a $5/mo VPS or a free-tier cloud function) that pulls the two Open-Meteo endpoints, applies the rain-lag/current-reversal rules, and pushes the daily briefing. The barangay officer map is a static PWA (no backend needed beyond a JSON file the same cron job writes) so it costs nothing to host and works on a low-end Android browser.

### APIs & Data Sources
| API | Specific Endpoint | What It Returns | Refresh Rate | Auth | Cost |
|-----|------------------|-----------------|--------------|------|------|
| Open-Meteo Marine API | `https://marine-api.open-meteo.com/v1/marine?latitude=14.593&longitude=120.966&hourly=wave_height,ocean_current_velocity,ocean_current_direction&timezone=Asia/Bangkok&forecast_days=3` | Hourly wave height + ocean current speed/direction for the bay-mouth cell | Updated multiple times daily | none | free |
| Open-Meteo Forecast API | `https://api.open-meteo.com/v1/forecast?latitude=14.587&longitude=121.003&hourly=precipitation&daily=precipitation_sum&timezone=Asia/Bangkok&past_days=3&forecast_days=4` | Hourly + daily rainfall totals for Manila (river catchment proxy) | Hourly | none | free |
| World Bank Open Data | `https://api.worldbank.org/v2/country/PH/indicator/ER.MRN.PTMR.ZS?format=json&mrv=3` | % of PH territorial waters under marine protection (context stat for grant pitches) | Annual | none | free |
| ExchangeRate-API | `https://open.er-api.com/v6/latest/PHP` | PHP/USD rate, for translating repair-cost figures in reporting to international NGO funders | Daily | none | free |

### Database Schema (key tables only)
```
zones: id (int), name (text), lat (float), lon (float), messenger_subscriber_count (int), sms_subscriber_count (int)
daily_risk: id (int), zone_id (fk), date (date), rain_24h_mm (float), current_reversal_flag (bool), risk_level (enum: green/yellow/red)
ghost_net_reports: id (int), zone_id (fk), reported_at (timestamp), photo_url (text), reporter_contact (text, optional)
subscribers: id (int), channel (enum: messenger/sms), contact_id (text), zone_id (fk)
```

### Key Technical Decisions
1. **Rule-based scoring instead of ML:** With only a few months of ground-truth ghost-net reports available at launch, a transparent rain-lag + current-reversal rule set is more trustworthy and debuggable than a model nobody can explain to a fisherman or a CENRO officer — revisit ML once a season of reports exists.
2. **Messenger + SMS dual-channel, no app:** Matches actual device/data reality in Baseco Compound rather than assuming smartphone app adoption; this is the difference between the tool reaching zero users and reaching the intended ones.

### Hardest Technical Challenge
Open-Meteo's marine model resolution is coarse (the queried coordinates snapped to a grid point ~9km offshore, not the literal river mouth), so its current data is a regional proxy, not a precise reading of the shallow, highly localized estuarine mixing right at Baseco's shoreline. Mitigation: treat the model output as a directional/timing signal only (not exact-location truth), and close the gap with the Version 2 photo-report feature — real fisherman-reported ghost-net sightings become the ground truth the rule thresholds get tuned against over time.

## Monetization Strategy

> Note: Not every idea needs Stripe. Subsistence fishermen cannot be a revenue source — this is grant/B2G funded, free to the people who need it.

**Model chosen:** grant-funded / B2G, free to end users

| Tier | Price | What's Included | Why They Pay This |
|------|-------|-----------------|-------------------|
| Free (fishermen) | $0 | Daily Messenger/SMS risk briefing, zone subscription, ghost-net photo reporting | Never — this tier must stay free or it fails at its purpose |
| CENRO / LGU partnership | Grant or small annual contract (~$3,000-6,000/yr) | Officer dashboard, historical pulse-vs-report correlation data, skimmer-boat routing recommendations | Manila Bay's court-mandated cleanup program needs demonstrable, data-backed progress reporting |
| NGO / research partner | Data licensing or one-time grant ($5,000-15,000) | Full historical dataset, API access, multi-zone replication toolkit | Organizations like WWF-Philippines or UP Marine Science Institute studying urban river plastic flux need real citizen-reported ground truth, which is currently scarce |

**Why someone pays:** Not the fisherman — the CENRO/DENR side pays because the 2008 Supreme Court continuing-mandamus ruling on Manila Bay puts them under permanent, court-supervised pressure to show cleanup progress, and a free tool that also produces routing intelligence for their existing skimmer boats is cheap insurance against looking like they're not trying.

**12-month revenue trajectory:**
- Month 3: 1 barangay pilot, no revenue yet — proving the alert reduces reported prop damage
- Month 12: 1 CENRO contract (~$4,000/yr) + 1 NGO data-licensing grant (~$8,000 one-time) = roughly $1,000/month equivalent, enough to cover hosting/SMS costs and a part-time maintainer

**Alternative if B2G doesn't work:** Pure NGO/grant-funded nonprofit tool (e.g., funded by a Ocean Conservancy or Plastic Bank-style microgrant), run as a community service with zero expectation of sustained revenue.

## Marketing Strategy

**Exact communities to reach:**
- **Baseco Compound Fisherfolk Association** and neighboring **Isla Puting Bato barangay fisherfolk groups** — reached in person via the barangay hall, not online, since this population is not forum/Reddit-native.
- **"Manila Bay Watch" and similar DENR/EMB-adjacent Facebook pages** (several thousand followers each) that follow the Manila Bay rehabilitation program's cleanup updates — good channel for the CENRO/NGO-facing pitch.
- **r/Philippines** (over 900,000 members) for the press-angle/data-story version of the launch, aimed at journalists and NGO staff rather than fishermen directly.

**First 10 users and how you get them:**
Go in person to the Baseco Compound barangay hall with the local fisherfolk association chairperson (a role that exists in essentially every Manila coastal barangay), demonstrate the Messenger bot on a phone, and sign up the first 10 boat operators who show up for the association's regular meeting — the trust of the association leader vouching for it matters more than any online channel here.

**The press angle:**
"We used weather data to predict which mornings Manila Bay's fishermen would wreck their engines on the city's own trash — and it's not the days it rains, it's a day and a half later." A concrete, surprising lag-time finding like that is the kind of local-color data story Philippine outlets (Rappler, GMA News environment desk) run.

**Content / SEO play:**
A public, no-login page showing "today's Manila Bay debris-pulse risk by zone" as a simple map — searchable by residents, journalists, and researchers, and a natural link target for any article about Manila Bay plastic pollution.

**Launch sequence:**
1. Build the rule-based model and validate it retrospectively against a few known bad-rain days using Open-Meteo's historical data.
2. Launch quietly with the Baseco Compound fisherfolk association as a single pilot zone via Messenger + SMS.
3. After 4-6 weeks of ground-truth ghost-net reports, approach CENRO Manila and one NGO (WWF-Philippines or the UP Marine Science Institute) with the pilot's data to fund expansion.

## Competitive Landscape

| Existing Solution | What They Do | Where They Fall Short | Why This Wins |
|-------------------|-------------|----------------------|---------------|
| Manila Bay Rehabilitation Program's skimmer/interceptor boats | Physically remove trash from the bay on a routine patrol schedule | Fixed schedule, not rain/current-triggered, so they miss pulses; provides zero information back to fishermen | AgosAlerto adds the predictive timing layer neither side currently has |
| PAGASA weather advisories | Rainfall and general marine weather bulletins | General-purpose, provincial-scale, not correlated to bay-mouth debris risk or translated into fisherman-actionable zones | Purpose-built correlation + hyperlocal zone framing |
| Word-of-mouth among fishermen | Free, trusted, immediate | Stale by hours, blind to current reversal, no forecast component | Same trust channel (Messenger, community-vouched), but forward-looking instead of only backward-looking |

**Moat:** The accumulating ground-truth dataset of community-reported ghost-net sightings tied to timestamped rain/current conditions — over a season or two this becomes a uniquely granular record of Manila Bay's actual debris-flow behavior that no government dataset currently captures, valuable to exactly the NGO/research partners who'd fund it.

## Risk Factors

1. **Data — Marine model resolution too coarse for hyperlocal accuracy:** Open-Meteo's grid point is ~9km offshore, not the literal shallow river mouth. → **Mitigation:** frame all alerts as directional/timing guidance, not precise location truth, and fast-track the ghost-net photo-report feature to build a locally-calibrated correction over time.
2. **Adoption — Fishermen distrust a tool that isn't a person they know:** Rural/urban-poor Filipino communities are strongly relationship-driven. → **Mitigation:** launch exclusively through the existing barangay fisherfolk association structure, never as a cold outreach app.
3. **Funding — B2G/NGO sales cycles are slow and uncertain:** A government or NGO grant can take 6-12+ months to materialize, leaving no revenue in the interim. → **Mitigation:** keep the MVP cost near-zero (free-tier hosting, a few dollars/month of SMS credit) so the project can survive entirely unfunded during the pilot phase.

## Build Reality Check

| Phase | Realistic Timeline | What Exists at End |
|-------|-------------------|-------------------|
| Prototype | 3 weeks | Messenger bot + SMS fallback sending a daily rule-based risk briefing for one pilot zone |
| Beta | 8 weeks | Baseco Compound pilot live with real subscribers, ghost-net photo reports being collected |
| Launch | 4-5 months | CENRO or NGO conversation underway with a season of validated pulse-vs-report data behind it |

**Solo founder feasibility:** Yes — the technical build is small (a cron job, two free APIs, a Messenger bot, an SMS gateway); the harder work is the in-person community trust-building, which one person can do but slowly.
**Biggest execution risk:** Getting the first barangay association's genuine buy-in — without that vouching, no amount of correct forecasting gets a subsistence fisherman to trust an unfamiliar phone message over his own eyes.

---
*Generated: 2026-09-20 | Industry: ocean_maritime | Sub-industry: ocean_plastic | Geography: philippines*
*APIs queried for real data: Open-Meteo Marine API, Open-Meteo Forecast API, World Bank Open Data, ExchangeRate-API*

---
id: khone-li-trap-dark-moon-run-don-khon-2026-11-05
title: LiMuet — Dark-Moon Fish-Run & Falling-River Trap-Setting Planner for Li-Trap Fishing Families at Khone Falls, Si Phan Don
created: 2026-11-05T08:10:00+07:00
industry: ocean_maritime
sub_industry: fish_migration
geography: laos
apis_used: Open-Meteo Flood API, Open-Meteo Forecast API, ExchangeRate-API, World Bank Open Data
monetization_model: grant-funded
target_user: Lao and Khmer-speaking fishing families on Don Khon, Don Det and Ban Hang Khone (Khong District, Champasak) who set bamboo and net "li" traps in the Hou Sahong, Hou Sadam and Hou Xang Pheuak channels at the start of the dry season, earning most of their annual protein and cash from about 6-8 dark-moon weeks, with no weather or river-gauge information beyond what the neighbour's boat radio and Facebook say
concept_hash: li-trap-dark-moon-fish-run-and-falling-river-trap-setting-planner+khone-falls-don-khon-don-det-si-phan-don-champasak-laos+li-trap-fishing-families-and-village-fishery-co-management-committee-keepers
---

# LiMuet — Dark-Moon Fish-Run & Falling-River Trap-Setting Planner for Li-Trap Fishing Families at Khone Falls, Si Phan Don

## The Hook
- At Khone Falls the whole Mekong squeezes through a handful of rock channels, and when the river starts to fall in the dark of the moon, hundreds of fish species run upstream through the same few gaps. Families on Don Khon set bamboo "li" traps in those gaps. They get one shot per dark-moon window and decide on gut feel.
- Today the river-discharge model at the falls reads **5,507 m³/s and dropping about 150-180 m³/s a day**. On the same date last year it read **15,487 m³/s**. That is 64% lower, so the dry-season run is starting weeks earlier than most families' calendars assume.
- LiMuet turns the falling-river rate, the moon phase and a 3-day rain outlook into a plain-language "set / wait / pull" call per channel, in Lao, over a Facebook-Messenger-friendly web page or a simple Telegram/WhatsApp bot. It also keeps a trap-day catch log that the village fishery committee can hand to co-management researchers.

## Real Data Found
> Live data queried from real APIs during idea generation — not placeholders.

| Source | Data Point | Value | Queried |
|--------|-----------|-------|---------|
| Open-Meteo Flood API (GloFAS) | Mekong river discharge, Khone Falls cell (13.98N, 105.93E), 2026-11-05 | 5,507 m³/s | 2026-11-05 |
| Open-Meteo Flood API | Same cell, 7 days earlier (2026-10-29) | 6,485 m³/s (a drop of 978 m³/s in a week) | 2026-11-05 |
| Open-Meteo Flood API | Forecast 2026-11-07 | 5,199 m³/s | 2026-11-05 |
| Open-Meteo Flood API (archive) | Same cell on 2025-11-04 | 15,487 m³/s (2026 is 64% lower) | 2026-11-05 |
| Open-Meteo Flood API (archive) | Peak daily discharge, 25 Jul-10 Sep 2025 | 34,276 m³/s | 2026-11-05 |
| Open-Meteo Forecast API | Daily rain, Khone Falls area, 5 Nov 2026 | 13.6 mm; 6.8 mm on 3 Nov; 0.1 mm on 6-7 Nov | 2026-11-05 |
| Moon-phase calculation (synodic month) | Moon age 5 Nov 2026 / next new moon | 24.6 days old / new moon about 9 Nov 2026 | 2026-11-05 |
| ExchangeRate-API | USD to Lao kip | 22,329.6 LAK per USD (about 662 LAK per THB at 33.76 THB per USD) | 2026-11-04 |
| World Bank Open Data | Laos GDP per capita (current US$) | $2,324.76 (2025); $2,123.98 (2024) | 2026-11-05 |
| World Bank Open Data | Laos prevalence of undernourishment | 10% (2024), up from 8.7% (2021) | 2026-11-05 |

The river is already well into its recession. Discharge has fallen from 6,485 to 5,507 m³/s in a week, and the new moon about 9 November lines up with the drop. That is the classic window when fish that spent the flood season in the floodplain and Tonle Sap system move through the falls. The 64% gap against last year suggests that this year the recession and the dark moon coincide earlier and faster than the calendar habit most families work from. A small rain pulse (13.6 mm today) can briefly raise levels and push fish deeper, which is exactly the kind of short-term swing a trap-setter wants to see before committing bamboo and labour to a channel.

Laos GDP per capita is only about $2,325 and undernourishment is rising (8.7% to 10% since 2021). For island households in Si Phan Don, river fish is a primary protein source as well as a cash crop, so a missed run is not just lost sales.

## The Problem
On Don Khon in early November, a li-trap family has roughly one good window. They rebuild the bamboo fence and funnel trap in a rock channel, wait for the river to drop far enough that the channel flows fast and narrow, and hope the dark-moon run arrives. Set too early, with the river still too high, and the trap is torn out or sits in dead water. Set too late, and the peak has already passed. The river data above shows the water is falling about 3% a day right now, but nobody on the island sees that number. They watch the rocks, the moon and each other.

Nothing fills this gap. The Mekong River Commission publishes gauge data aimed at regional hydrologists, not Lao-language daily advice. National agencies don't cover this channel-level question. General weather apps give rain, not river recession. And the people best placed to help, the Hou Sahong co-management committees and conservation researchers, mostly get catch information from memory in meetings months later. Dam operations upstream also now shift the river's rhythm in ways that older calendars no longer capture, which is why families say "the fish don't come when they used to."

If this isn't built, families keep guessing windows from habit while the river's timing drifts, and the channel-level catch record that would let researchers and committees argue for fishing rules (or against bad dam operation schedules) stays unwritten.

## Who Uses This

**Primary user:** A li-trap fishing family on Don Khon or Don Det, with two to four adult trap-setters on a boat, a Facebook account and a mid-range Android phone. Annual cash income from fishing and small guesthouse or boat work is a few hundred to a couple of thousand dollars, so a single failed run is a big share of it.
**What they do now (and why it sucks):** Watch rocks, ask neighbours, listen to the village loudspeaker and Facebook posts, and decide trap timing from last year's pattern, which this year's 64% lower river already contradicts.
**When they pay:** They don't need to. The moment of value is the first week of November when the river drops fast and they have to choose whether to commit this week's labour and bamboo.

**Secondary user:** The village fishery co-management committee keeper and visiting fisheries researchers (e.g. NGO or university field staff) who need dated catch-per-trap data.
**Why they care:** A phone-collected catch log with river level and moon phase attached is the data they currently reconstruct from interviews.

**Who definitely won't use this:** Commercial dai or large-net operators, tourist boat operators who only need weather, and anyone who wants a "catch more fish" promise. This is a timing and recordkeeping aid for small family traps, not a yield guarantee.

## Feature Set

### MVP — Week 1-3
- **River Trend Card:** Shows today's Khone Falls discharge, the 7-day change in percent, and a 5-day forecast arrow (falling fast / falling slow / rising) in Lao and English.
- **Dark-Moon Counter:** Displays moon age, days to the new moon, and the "best" three-night window around it using the standard synodic calculation.
- **Set / Wait / Pull Call:** One of three simple verdicts per channel type (fast-narrow, slow-wide, backwater) based on trend plus a 3-day rain outlook, with a one-line reason.
- **One-Tap Catch Log:** Species group (from a picture picker, not text), approximate kilograms, trap channel and date; stored offline and synced later.
- **Messenger-friendly Share Image:** A one-image daily summary that can be posted to a village Facebook group.

### Version 2 — Month 2-3
- **Own-History Overlay:** After 2-3 seasons of a family's logs, show their own best days against river level and moon age.
- **Committee Export:** CSV and a one-page PDF of village-level catch per trap-day for the co-management committee.
- **Rain-Spike Warning:** SMS or push notice when a rain pulse could raise levels within 24-48 hours so traps can be pulled safely.

### Power User / Pro Features
- **Researcher Dashboard:** Opt-in anonymised catch, river and moon data for partner NGOs and universities.
- **Cross-Border Notes:** A shared read-only view for neighbouring Cambodian fishing communities downstream (Khmer-language).

## Technical Implementation

### Suggested Stack
**Chosen stack:** An offline-first PWA (Vite + Preact) with a small Cloudflare Workers or Vercel cron job that caches the API responses, plus an optional Telegram bot for people who prefer chat. Island connectivity is patchy; a PWA with cached last-known values and a queued catch log works without a signal, and no app-store install is needed.

### APIs & Data Sources
| API | Specific Endpoint | What It Returns | Refresh Rate | Auth | Cost |
|-----|------------------|-----------------|--------------|------|------|
| Open-Meteo Flood API | `https://flood-api.open-meteo.com/v1/flood?latitude=13.98&longitude=105.93&daily=river_discharge&past_days=7&forecast_days=7` | Daily Mekong discharge (m³/s) with forecast | daily | none | free |
| Open-Meteo Flood API (archive) | `https://flood-api.open-meteo.com/v1/flood?latitude=13.98&longitude=105.93&daily=river_discharge&start_date=2025-10-25&end_date=2025-11-14` | Same-date prior-year baseline | static | none | free |
| Open-Meteo Forecast API | `https://api.open-meteo.com/v1/forecast?latitude=13.95&longitude=105.97&daily=precipitation_sum,temperature_2m_min&timezone=Asia/Bangkok` | Local daily rain and minimum temperature | hourly | none | free |
| ExchangeRate-API | `https://open.er-api.com/v6/latest/USD` | LAK/THB for fish-price conversion (island buyers quote in kip or baht) | daily | none | free |
| World Bank Open Data | `https://api.worldbank.org/v2/country/LA/indicator/NY.GDP.PCAP.CD?format=json&mrv=2` | Context indicators for grant reporting | annual | none | free |

### Database Schema (key tables only)
```
channel: id (uuid), name_lo (text), type (enum fast_narrow|slow_wide|backwater), lat (float), lon (float)
river_obs: date (date), discharge_m3s (float), source (text), fetched_at (timestamptz)
moon_day: date (date), age_days (float), days_to_new (float)
catch_log: id (uuid), household_id (uuid), channel_id (uuid), set_date (date), pull_date (date), species_group (text), kg (float), synced (bool)
household: id (uuid), village (text), phone_hash (text), consent_research (bool)
```

### Key Technical Decisions
1. **Grid cell is a proxy, not a gauge:** The GloFAS-based discharge is a modelled value for a grid cell near the falls, not a measured reading from a staff gauge. The app labels it "model estimate" and focuses on the trend and percent change, which are more reliable than the absolute number.
2. **Offline-first catch log:** Fishers will log on a boat with no signal. IndexedDB queue with background sync.
3. **Pictorial species picker:** Many users read little Lao script on a phone. Species groups use photos (e.g. trey riel/pa soi-type small cyprinids, large catfish, eels) and local names.

### Hardest Technical Challenge
The "set / wait / pull" rule has no validated science behind it yet. It is easy to build and easy to be wrong. Mitigation: ship the first season as a river-trend-and-moon display plus a catch logger with no verdict, then calibrate verdict thresholds from at least one season of logs together with the committee and a fisheries researcher before turning it on.

## Monetization Strategy

> Note: Not every idea needs Stripe. This one only makes sense as a free, grant-funded tool.

**Model chosen:** grant-funded (free for fishing families).

| Tier | Price | What's Included | Why They Pay This |
|------|-------|-----------------|-------------------|
| Free (families) | $0 | River trend, moon window, verdict, catch log | They never pay; the committee and funders do |
| Committee | $0 under grant | Village exports and monthly summary | Evidence for co-management rules |
| Research partner | Data-sharing agreement | Anonymised catch-per-trap-day series | Replaces expensive interview-based surveys |

**Why someone pays:** A funder pays because one season of dated, channel-level catch records is a rare dataset on a migration that matters for food security in a country where undernourishment is rising.

**12-month revenue trajectory:**
- Month 3: 0 paying users; one small pilot grant (about $8,000-$15,000) covers development and a field visit.
- Month 12: 150-300 active households, 1-2 research or NGO agreements totalling about $20,000-$40,000 for the year.

**Alternative if SaaS doesn't work:** Fund as a module under an existing Mekong fisheries programme; or hand the code and data pipeline to a local NGO and provincial fisheries office as a permanent public tool.

## Marketing Strategy

**Exact communities to reach:**
- Facebook village and island groups for Don Khon, Don Det and Si Phan Don community news (names and member counts to be confirmed on first outreach; I did not verify these this session).
- Facebook groups for Champasak fisheries and Mekong fishing communities in Lao language.
- The Hou Sahong / Khone Falls fishery co-management committees and associated WWF, university or MRC field staff, reached through their regular meetings.

**First 10 users and how you get them:**
Visit Don Khon during the November run. Ask the village head and the fishery committee keeper to introduce 8-10 trap-setting households. Install the PWA on their phones in person and log the first catch together.

**The press angle:**
"Mekong at Khone Falls is running 64% lower than last year while the dark-moon fish run begins — and the island's trap families are guessing." Pitch to Mekong-region outlets and fisheries science press.

**Content / SEO play:**
A public "Khone Falls river this week" page (discharge trend, moon age, last year's comparison) that fisheries researchers, travellers and journalists can cite.

**Launch sequence:**
1. Offline season before launch: build the river and moon cards and test with 2-3 families.
2. Launch at the start of the next November dark-moon window with the catch log live.
3. Week 1: collect first catch entries; share a village-level summary at the committee meeting.

## Competitive Landscape

| Existing Solution | What They Do | Where They Fall Short | Why This Wins |
|-------------------|-------------|----------------------|---------------|
| Mekong River Commission data portals | Regional hydrology and flood forecasts | Aimed at hydrologists, not channel-level, not in simple Lao | Plain-language, trap-timing focus |
| General weather apps | Rain and temperature | No river recession or fish-run context | Combines river trend, moon and rain |
| Researcher interview surveys | Reconstruct catch after the fact | Slow, recall bias, expensive | Real-time dated catch records |

**Moat:** Trust with the village committee and a multi-season, channel-level catch dataset that nobody else has.

## Risk Factors

1. **Data:** The modelled discharge can differ from the real channel flow → **Mitigation:** show trend and percent change, label "model estimate", and let families log their own water-level notes.
2. **Adoption:** Fishing knowledge is local and trusted; a phone verdict may be ignored → **Mitigation:** present it as a second opinion alongside the committee, launch without a verdict in season one.
3. **Regulatory/Sensitivity:** Catch records could be misused for enforcement → **Mitigation:** household-level data stays private; only aggregated village data is shared, with explicit opt-in consent.

## Build Reality Check

| Phase | Realistic Timeline | What Exists at End |
|-------|-------------------|-------------------|
| Prototype | 3 weeks | River trend, moon counter and rain card as an offline PWA |
| Beta | 8 weeks | 10-20 households logging catches through one dark-moon window |
| Launch | 16 weeks | Verdict calibrated with the committee; grant reporting dashboard |

**Solo founder feasibility:** Difficult — the software is easy, but the fieldwork and the trust of the island committee need a local partner.
**Biggest execution risk:** Getting a local fisheries partner and a funder before the next dark-moon season; without them the tool has no way to reach users.

---
*Generated: 2026-11-05 | Industry: ocean_maritime | Sub-industry: fish_migration | Geography: laos*
*APIs queried for real data: Open-Meteo Flood API, Open-Meteo Forecast API, ExchangeRate-API, World Bank Open Data*

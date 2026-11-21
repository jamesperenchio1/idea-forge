---
id: lusonglog-camanava-flood-wade-2026-11-21
title: LusongLog — Flood-Wade Exposure Logger, Health-Center Doxy-PEP Referral Card & Fever-Day Countdown for Malabon–Navotas Pedicab Drivers, Scavengers and Fish-Port Porters
created: 2026-11-21T08:00:00+07:00
industry: health_medical
sub_industry: leptospirosis_flood_wading_exposure
geography: philippines
apis_used: Open-Meteo Marine API (sea_level_height_msl), Open-Meteo Forecast API, Open-Meteo Historical Archive API, World Bank Open Data API, ExchangeRate-API
monetization_model: grant-funded
target_user: Pedicab and padyak drivers, kariton scrap collectors (magbobote) and fish-port porters in Malabon, Navotas and the low barangays of Valenzuela (Tañong, Tonsuya, Catmon, San Roque, Tangos, Bangkulasi) who earn ₱400–₱700 a day, cannot stop working when the street floods, and wade calf-to-thigh-deep water 2–6 times a day during habagat rains AND during dry-sky spring high tides ("baha kahit walang ulan") — usually with cuts on their feet from bare-foot or tsinelas work — and who almost never go to the barangay health center for doxycycline because they don't know whether their wading "counts," the center is closed by the time they finish their route, and nobody tells them the 2-to-30-day fever window that follows.
concept_hash: flood-wade-leptospirosis-exposure-tally-and-doxy-pep-health-center-referral-card+malabon-navotas-valenzuela-camanava-metro-manila-philippines+pedicab-drivers-kariton-scavengers-fish-port-porters-and-barangay-health-workers
---

# LusongLog — Flood-Wade Exposure Logger, Health-Center Doxy-PEP Referral Card & Fever-Day Countdown

## The Hook
- In Malabon and Navotas the street floods **without rain**: Open-Meteo's marine model shows Manila Bay climbing from a 0.96 m evening high today to a **1.60 m spring high at 22:00 on 26 November**, while the rain forecast for the same week is 0.1–2.7 mm a day. Pedicab drivers will wade tidal water on a dry, 34 °C night and never think "lepto," because to them lepto is something that happens after a typhoon.
- LusongLog is a Facebook Messenger bot that runs on free data. Each time someone wades, they send one tap: how deep, for how long, open wound or not. The bot sorts that into the Philippine DOH low / moderate / high exposure categories. It produces a Tagalog referral card that a barangay health worker can act on in 30 seconds, and it sends check-ins through the 2-to-30-day window when fever can appear, which is exactly when people get misdiagnosed with "trangkaso lang."
- The paying customer isn't the driver. It's the city health office and the NGOs funding WASH and flood-resilience work, who currently have no exposure denominator at all. LusongLog's anonymised wade tally becomes the first street-level map of who stood in which water, and when.

## Real Data Found
> Live data queried from real APIs during idea generation — not placeholders.

| Source | Data Point | Value | Queried |
|--------|-----------|-------|---------|
| Open-Meteo Marine API | Manila Bay (14.62 N, 120.90 E) daily max sea level, 21 Nov 2026 | 0.96 m at 19:00 | 2026-11-21 |
| Open-Meteo Marine API | Daily max sea level climbing to spring tide, 22→26 Nov | 1.10 → 1.26 → 1.41 → 1.55 → **1.60 m (26 Nov, 22:00)**; 1.57 m on 27 Nov | 2026-11-21 |
| Open-Meteo Marine API | Spring low on 27 Nov (tidal range that day) | −0.31 m at 07:00 (≈1.9 m range) | 2026-11-21 |
| Open-Meteo Forecast API | Malabon (14.66 N, 120.95 E) daily rain, 22–27 Nov 2026 | 0.1, 0.9, 0.2, 0.3, 2.7, 1.8 mm | 2026-11-21 |
| Open-Meteo Forecast API | Last 7 days rain / heaviest day | 17.2 mm on 20 Nov (max temp fell to 29.0 °C that day; otherwise 32–34.6 °C) | 2026-11-21 |
| Open-Meteo Historical Archive | Malabon total rain, 1 Jul – 31 Oct 2025 (habagat + typhoon season) | 1,431.7 mm; 3 days ≥ 50 mm; wettest day 67.6 mm on 24 Jul 2025 | 2026-11-21 |
| World Bank (EN.POP.SLUM.UR.ZS) | Philippines urban population living in slums | 35.87 % (2022) | 2026-11-21 |
| World Bank (SH.XPD.OOPC.CH.ZS) | Out-of-pocket share of current health expenditure, Philippines | 44.36 % (2023) | 2026-11-21 |
| World Bank (SP.URB.TOTL.IN.ZS) | Urban population share, Philippines | 55.77 % (2025) | 2026-11-21 |
| ExchangeRate-API | USD → PHP | ₱63.76 (rates updated 20 Nov 2026 00:02 UTC) | 2026-11-21 |

The tide numbers matter most, because they break the folk model of the disease. Lepto campaigns in the Philippines fire after named storms like Ondoy, Carina and Kristine, when the whole metro is underwater and the DOH announces free doxycycline. CAMANAVA floods on a lunar schedule as well. A 1.5–1.6 m evening high pushes bay water back up the esteros and over the low streets of Tangos, Tanza and Tonsuya, and this week's forecast puts that exactly on dry, hot nights with almost no rain. That water carries the same rat-urine-contaminated drainage, but nobody gets a text alert and nobody counts it as exposure. On the 24 July 2025 rain day the archive shows 67.6 mm, and if that coincides with a spring high, the water has nowhere to drain.

The World Bank figures explain why "just go to the clinic" fails. More than a third of urban Filipinos live in slum conditions, and 44 % of health spending is still paid out of pocket. A ₱600-a-day driver who loses a day to a clinic queue loses about US$9.40 at today's rate. If they wait until they have jaundice and kidney failure, they lose the dialysis money, or their life.

## The Problem

It's 9:40 pm on 26 November on C-4 Road near the Navotas fish port. There's been no rain all week. Mang Rodel is pedalling his padyak through shin-deep, tea-brown water that rose out of the drains an hour ago with the 1.60 m spring tide. He has a split heel from the tsinelas that broke last Tuesday, and he wades the same stretch four times before midnight because that's when the fish-port porters need rides home. Twelve days later he has a fever and calf pain. The sari-sari store sells him paracetamol and he tells his wife it's trangkaso. On day 15 his eyes yellow. By the time he reaches Tondo Medical Center or San Lazaro, he needs dialysis.

The DOH protocol that should have caught him is simple. Exposure is graded low, moderate or high by wading frequency, duration and wounds, and doxycycline prophylaxis is given at the barangay health center. But two links are missing. First, nobody self-classifies. "Moderate risk" means nothing to someone who wades every night of every spring tide. Second, nobody remembers the incubation window. People get the exposure and the fever two weeks apart, and nothing connects the two. Health centers open 8–5, while tidal wading peaks in the evening. Post-typhoon doxy campaigns are announced on Facebook pages and in the news, but tide-only flooding never triggers one. Chikiting and BHW house visits happen in daylight, when these workers are out.

If this doesn't get built, the pattern repeats every year: a spike of severe cases in late July–September that the media covers, plus a steady, invisible stream of November–January tidal-flood cases that look like "dengue negative, flu" until the kidneys fail. Each one costs a family weeks of income, often a borrowed 5-6 loan for hospital deposits, and sometimes a breadwinner.

## Who Uses This

**Primary user:** Padyak, pedicab and e-trike drivers, kariton scrap collectors and fish-port porters in Malabon, Navotas and western Valenzuela, aged 18–60, earning ₱400–₱700 a day in cash. They own a prepaid Android phone with Facebook Free Mode or a ₱10–₱20 promo load, wade 2–6 times on flood days and nights, rarely wear boots, and live on Messenger.
**What they do now (and why it sucks):** Nothing until they get a fever, then paracetamol from the sari-sari store, because "baha lang yan, sanay na kami" ("it's just flood water, we're used to it").
**When they pay:** They don't. The trigger moment is the first time a TODA (tricycle operators and drivers association) member they know gets hospitalised with lepto. That's when the TODA president tells the whole group chat to join the bot.

**Secondary user:** Barangay Health Workers (BHWs) and City Health Office (CHO) epidemiology/surveillance staff in Malabon and Navotas, and NGOs running flood-resilience or WASH programs in CAMANAVA.
**Why they care:** They get a ranked list of who needs doxycycline this week, plus a street-level exposure count they can put in a PIDSR report, a grant proposal or a request for drainage pumps.

**Who definitely won't use this:** Car-owning residents of gated subdivisions in upland Valenzuela. Clinicians, who already know the protocol. And anyone looking for an app that tells them which dose to take. This is a referral tool, not a pharmacy.

## Feature Set

### MVP — Week 1-3
- **One-tap wade log ("Lumusong ako"):** Messenger quick replies for depth (bukung-bukong / binti / tuhod / hita — ankle / shin / knee / thigh), duration (<30 min / 30 min–2 h / >2 h), open wound (yes/no) and "swallowed / face splashed." Logging takes three taps, and the bot keeps a running 7-day tally.
- **DOH-category sorter:** Maps the tally onto the published DOH low / moderate / high exposure tiers. It shows the tier and a plain-Tagalog line saying the person should go to their barangay health center and show the card. It never gives a dose.
- **Referral card image:** A generated JPEG with their initials, barangay, wade dates, exposure tier, wound flag and a QR code. The BHW scans it, confirms it, and gets the full history without a long interview.
- **Spring-tide night warning:** Every afternoon the bot pulls the Open-Meteo marine sea-level curve. When the evening high is forecast above a threshold calibrated per barangay (starting at ≥1.3 m, tuned with BHW reports), it sends opted-in users "Mataas ang tubig mamayang 9pm — magsuot ng bota, takpan ang sugat" ("high water tonight at 9pm — wear boots, cover any wound").
- **Fever-day countdown:** After any logged wade, the bot checks in on days 3, 7, 10, 14, 21 and 28: "May lagnat, sakit ng binti, o paninilaw ka ba?" ("Any fever, calf pain or yellowing?"). A "yes" escalates straight to a nearest-hospital card that tells them to say "lumusong ako sa baha noong ___" ("I waded in flood water on ___") at triage.

### Version 2 — Month 2-3
- **BHW dashboard (PWA):** A per-barangay list of moderate/high-tier users this week, how many received doxy (the BHW ticks it), and how many missed check-ins. Exportable to the CHO.
- **Street flood pins:** Users drop a pin with depth when they wade. Combined with the tide curve, this builds a "which streets flood at what sea level" lookup for each barangay, which nobody has today.
- **TODA group mode:** A TODA president registers their association, and members' tiers (not names) roll up into a TODA-level card the association can bring to the CHO to request a group doxy session after spring-tide weeks.

### Power User / Pro Features
- **CHO surveillance export:** Weekly anonymised exposure counts by barangay and tide band, formatted to sit alongside PIDSR lepto case counts, so the office can see whether exposure predicts admissions 1–3 weeks later.
- **Rain + tide compound alert:** Flags the dangerous overlap, when a ≥50 mm rain day lands within ±2 days of a spring high (like the 67.6 mm day in July 2025), for NGOs to pre-position boots and run doxy days.

## Technical Implementation

### Suggested Stack
Messenger is the primary interface because Facebook Free Mode means it works with ₱0 load, and these users already run their TODA and family coordination there. A tiny PWA serves BHWs. There's no app to install.

**Chosen stack:** Facebook Messenger Platform bot (Node.js on Cloudflare Workers or a ₱300/month VPS) + Supabase Postgres + a Supabase Edge Function cron for tide/rain pulls + a Next.js PWA for the BHW dashboard. This puts the bot in the one app every user already has open, and it works on Free Mode, where images load as low-res placeholders, so the card is designed to stay readable at very low resolution.

### APIs & Data Sources
| API | Specific Endpoint | What It Returns | Refresh Rate | Auth | Cost |
|-----|------------------|-----------------|--------------|------|------|
| Open-Meteo Marine | `https://marine-api.open-meteo.com/v1/marine?latitude=14.62&longitude=120.90&hourly=sea_level_height_msl&timezone=Asia/Manila&forecast_days=7` | Hourly modelled sea level (m, MSL) for Manila Bay | Hourly model, pulled daily at 14:00 | none | free |
| Open-Meteo Forecast | `https://api.open-meteo.com/v1/forecast?latitude=14.66&longitude=120.95&daily=precipitation_sum,temperature_2m_max&timezone=Asia/Manila&forecast_days=7` | Daily rain and max temperature for Malabon | Hourly | none | free |
| Open-Meteo Archive | `https://archive-api.open-meteo.com/v1/archive?latitude=14.66&longitude=120.95&start_date=2025-07-01&end_date=2025-10-31&daily=precipitation_sum` | Historical rain to backtest compound rain+tide nights | One-off / monthly | none | free |
| World Bank | `https://api.worldbank.org/v2/country/PH/indicator/EN.POP.SLUM.UR.ZS?format=json&mrv=3` | Slum population share (grant-proposal context) | Annual | none | free |
| ExchangeRate-API | `https://open.er-api.com/v6/latest/USD` | PHP rate for grant budgeting / lost-wage figures | Daily | none | free |
| Messenger Platform | `https://graph.facebook.com/v21.0/me/messages` | Send/receive bot messages, quick replies, images | Real-time | page token | free |

### Database Schema (key tables only)
```
users: id (uuid), psid_hash (text), barangay (text), occupation (text), toda_id (uuid null), opted_tide_alerts (bool), created_at (timestamptz)
wades: id (uuid), user_id (uuid), waded_at (timestamptz), depth_band (smallint), duration_band (smallint), open_wound (bool), ingestion (bool), lat (float null), lon (float null), sea_level_at_time_m (float), rain_24h_mm (float)
exposure_tiers: user_id (uuid), week_start (date), tier (text: low|moderate|high), card_issued_at (timestamptz), bhw_confirmed_at (timestamptz null), doxy_given (bool null)
checkins: id (uuid), user_id (uuid), anchor_wade_id (uuid), day_n (smallint), sent_at (timestamptz), reply (text), escalated (bool)
tide_forecast: forecast_for (timestamptz), sea_level_m (float), pulled_at (timestamptz)
barangay_thresholds: barangay (text), alert_sea_level_m (float), calibrated_from_n_pins (int)
```

### Key Technical Decisions
1. **Never output a dose:** The bot only outputs a DOH exposure tier and a referral. Dosing stays with the BHW/nurse under the DOH protocol. That keeps the product on the legal side of the Philippine FDA/PRC line and keeps CHOs willing to endorse it.
2. **Model sea level, calibrated by crowd pins, not a tide gauge feed:** The PAGASA/NAMRIA tide tables aren't available as an open API. Open-Meteo's modelled sea level gives the shape and timing, and user depth pins learn each barangay's actual flood threshold over the first two months.
3. **Store a PSID hash, never names:** The referral card carries initials and a QR code. The full identity link exists only on the BHW's confirmation, which matters given the Data Privacy Act (RA 10173) and that health data is sensitive personal information.

### Hardest Technical Challenge
Calibrating the tide threshold. Modelled offshore sea level isn't street water depth. Flooding in Tangos depends on whether the Navotas pumping stations and floodgates are running, whether the esteros are clogged, and land subsidence (CAMANAVA is sinking several cm a year). A fixed 1.3 m threshold will cry wolf in some barangays and miss others. **Mitigation:** start with a conservative alert, use every "I waded" pin (timestamp + depth) to fit a per-barangay sea-level→depth curve, and let BHWs override the threshold for their barangay with one tap.

## Monetization Strategy

> Note: Not every idea needs Stripe. Some are better as free tools, grant-funded, or sold B2G.

**Model chosen:** Grant-funded, free to workers forever, with a small B2G subscription for CHO dashboards and exports.

| Tier | Price | What's Included | Why They Pay This |
|------|-------|-----------------|-------------------|
| Free | $0 | Messenger bot: wade log, tier sorter, referral card, tide warnings, fever countdown | Workers never pay; this is the whole public-health point |
| Barangay | $0 (grant-covered) | BHW PWA for one barangay: weekly referral list, doxy tick-off | Adoption: BHWs need it free to bother |
| City Health Office | $120/mo (~₱7,650) | All-barangay dashboard, PIDSR-aligned weekly export, compound rain+tide alerts, threshold management | Evidence for pump/drainage budgets and outbreak readiness; cheaper than one ICU-day |

**Why someone pays:** A CHO epidemiologist who has to explain a lepto admission spike to the mayor or a DOH regional office has no exposure data, only cases. LusongLog lets them show "exposure in Tangos tripled during the 24–27 Nov spring tides, and we gave doxy to 140 people." That's the line in the budget hearing that gets them boots and pumps.

**12-month revenue trajectory:**
- Month 3: 0 paying; 1 seed grant (~$15,000 from a WASH/urban-health NGO or a university epidemiology partner) funds the pilot in 6 Navotas barangays
- Month 12: 2 CHO contracts (Malabon, Navotas) × $120 = $240/month, plus a renewed grant of ~$25,000/year covering the expansion to Valenzuela and Obando/Meycauayan in Bulacan

**Alternative if SaaS doesn't work:** Run it as a research instrument with a Philippine medical school or a tropical medicine institute. A prospective exposure→case cohort in tide-flooded barangays is publishable, and grant agencies that fund climate-and-health work pay for exactly this.

## Marketing Strategy

**Exact communities to reach:**
- TODA Facebook group chats and pages in Navotas and Malabon (each TODA has its own; typical membership 50–400 drivers). Approach them through the city tricycle regulatory office's TODA list.
- City government Facebook pages: "Navotas City" (official LGU page, ~200k followers) and "Malabon City Government" (~150k followers), which already post flood and tide advisories and post-typhoon doxy drives.
- Barangay Facebook pages (Brgy. Tangos North/South, Tanza, Bangkulasi, Tonsuya, Catmon). Each has 5k–25k followers and is the real local news channel.
- Fish-port community groups around Navotas Fish Port Complex (porter and "batilyo" groups), reached through the Philippine Fisheries Development Authority's port management and the porters' cooperatives.
- r/Philippines (~2M members) and r/PinoyMedTech or Filipino nurse groups for the press/awareness angle, not for users.

**First 10 users and how you get them:**
Partner with one BHW in Tangos who already runs the barangay's flood-day doxy list on paper. Sit with them at the health center on the 26 November spring-tide evening, when pedicab drivers come back through the water, and enrol the TODA president at the terminal first. Their endorsement in the TODA chat gets the next nine. Give out one pair of rubber boots per enrolled TODA as a thank-you, funded by the pilot grant.

**The press angle:**
"Navotas floods on a dry night: the 1.6-metre tide that sends pedicab drivers into lepto water, and why nobody gives them doxy." The data story is the first chart showing wading exposure peaking on tide nights, not storm days.

**Content / SEO play:**
Tagalog pages that answer what people actually search: "lumusong sa baha ano gagawin" ("waded in flood water, what should I do"), "doxycycline baha libre saan" ("free doxycycline for flood exposure, where"), "high tide Navotas ngayon" ("high tide in Navotas today"). Add a public weekly "Tide-Flood Nights" calendar for CAMANAVA, built from the marine API plus calibrated thresholds, that LGU pages can embed.

**Launch sequence:**
1. Before launch: a two-week paper-to-bot co-design with 3 BHWs and 1 TODA, testing the three-tap log on Free Mode phones and getting the CHO's sign-off on the tier wording.
2. Launch day: enrolment at the TODA terminal on a spring-tide evening, with the barangay page cross-posting the "Mataas ang tubig mamayang gabi" ("high water tonight") alert produced by the bot.
3. Week 1: first fever-countdown check-ins go out. The BHW confirms doxy for moderate/high tiers, and the first weekly exposure count is sent to the CHO.

## Competitive Landscape

| Existing Solution | What They Do | Where They Fall Short | Why This Wins |
|-------------------|-------------|----------------------|---------------|
| DOH lepto advisories and post-typhoon free doxy drives | Public announcements after big storms | Storm-triggered only; ignores tidal flooding; no individual follow-up | Tide-aware, individual tier, follow-up window |
| PAGASA / NAMRIA tide tables and LGU flood advisories | Publish high-tide times and heights | Information only; no link to exposure or health action | Converts the tide into a personal "boots tonight / health center tomorrow" action |
| NOAH / flood hazard maps | Static flood susceptibility maps | Hazard, not exposure; no people in the data | Logs who actually waded, where and when |
| Paper BHW lists | Manual list of who to give doxy | Daytime only, lost after the campaign, no fever follow-up | Persistent, QR-confirmed, with check-ins through day 28 |

**Moat:** The calibrated per-barangay sea-level→street-depth curves and the exposure→case dataset can't be scraped. They only accumulate through BHW trust and TODA enrolment, which takes a season of showing up on flood nights.

## Risk Factors

1. **Regulatory / medical:** It could be seen as giving medical advice, or misclassify someone as low risk who then gets sick. → **Mitigation:** Wording co-signed by the CHO, tiers framed as "show this to the health center," no dosing, and every user always sees "if you have fever, go even if your tier is low."
2. **Adoption:** Workers don't log wades because "everyone wades." → **Mitigation:** Make the TODA the unit (a group card, boots as reward), keep logging to three taps, and let a BHW log on someone's behalf at the terminal.
3. **Data / privacy:** Health data plus location for poor workers under RA 10173. → **Mitigation:** PSID hash, coarse location (barangay unless the user drops a pin), retention capped at 90 days for individual rows, and only aggregates in the CHO exports.

## Build Reality Check

| Phase | Realistic Timeline | What Exists at End |
|-------|-------------------|-------------------|
| Prototype | 3 weeks | Messenger bot with wade log, tier sorter, referral card and daily tide pull, tested on Free Mode |
| Beta | 8 weeks | 6 Navotas barangays, 2 TODAs, ~150 users, BHW PWA ticking doxy, first calibrated thresholds |
| Launch | 16 weeks | CHO dashboard live in Navotas, Malabon onboarding, first exposure-vs-case report |

**Solo founder feasibility:** Yes (technically), Difficult (socially). The bot is a weekend build, but the CHO endorsement and BHW partnership take months of in-person visits.
**Biggest execution risk:** Losing the BHW champion. If the one health worker who believed in it is reassigned after a barangay election, enrolment stops, so you need at least two BHWs and the CHO signed on before scaling.

---
*Generated: 2026-11-21 | Industry: health_medical | Sub-industry: leptospirosis_flood_wading_exposure | Geography: philippines*
*APIs queried for real data: Open-Meteo Marine API, Open-Meteo Forecast API, Open-Meteo Historical Archive API, World Bank Open Data API, ExchangeRate-API*

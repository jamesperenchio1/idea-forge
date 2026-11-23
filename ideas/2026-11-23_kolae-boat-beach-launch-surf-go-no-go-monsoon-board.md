---
id: turunlaut-pattani-kolae-beach-launch-2026-11-23
title: TurunLaut — Kolae Beach-Launch Surf Go/No-Go Board, Monsoon Haul-Up Rota & Lost-Sea-Day Ledger for Pattani's Painted-Boat Fishermen
created: 2026-11-23T08:00:00+07:00
industry: ocean_maritime
sub_industry: beach_launch_surf_window_small_boats
geography: thailand
apis_used: Open-Meteo Marine API, Open-Meteo Forecast API, Open-Meteo Historical Archive API, World Bank Open Data API, ExchangeRate-API
monetization_model: grant-funded
target_user: Pattani-Malay (Muslim) small-scale fishermen in Sai Buri, Panare and Yaring districts of Pattani Province who own or crew a 7–11 m hand-painted kolae (or the plainer "kotek" variant) kept on open sand with no harbour, who decide every night between Isha prayer and ~03:00 whether to drag the boat down the beach on log rollers and punch out through the shore break for a 4–8 hour crab-net, mackerel gill-net or shrimp-trammel trip — earning ฿300–1,200 on a good day, ฿0 on a lay-up day — and who, during the northeast monsoon (roughly November–January), lose half their sea days and occasionally a boat or a man in the surf
concept_hash: kolae-beach-launch-surf-go-no-go-and-monsoon-haul-up-rota+sai-buri-panare-yaring-pattani-deep-south-thailand+pattani-malay-small-boat-fishermen-and-village-boat-group-heads
---

# TurunLaut — Kolae Beach-Launch Surf Go/No-Go Board, Monsoon Haul-Up Rota & Lost-Sea-Day Ledger for Pattani's Painted-Boat Fishermen

## The Hook
- On the Pattani coast there is no harbour for the famous painted kolae boats — they live on the sand, and every monsoon morning a dozen men decide by squinting at the dark whether a 0.9 m, 5-second wave on the bar is "turun laut" (go down to sea) or a capsized boat and a broken net. TurunLaut turns tonight's marine forecast into one village-specific answer in Pattani Malay at 03:00: **LAUNCH / LAUNCH BUT BACK BY 10:00 / HAUL BOATS HIGHER**.
- The data angle nobody uses: the Open-Meteo marine grid point off Sai Buri today shows waves of 0.92 m at 5.75 s from 70° falling to 0.48 m by Wednesday — the exact difference between a lost week and four sea days. That signal already exists for free; it has just never been translated into "this beach, this boat, this hour".
- Second half of the product: a **haul-up rota** (who helps drag whose boat above the storm line when the gusts hit 45 km/h) and a **lost-sea-day ledger** that becomes the evidence fishermen need to claim Department of Fisheries / provincial disaster relief that today gets paid on rumour.

## Real Data Found
> Live data queried from real APIs during idea generation — not placeholders.

| Source | Data Point | Value | Queried |
|--------|-----------|-------|---------|
| Open-Meteo Marine API (grid 6.958°N, 101.458°E, off Sai Buri) | Max wave height, 22 Nov (yesterday) | 1.26 m, max period 7.75 s | 2026-11-23 |
| Open-Meteo Marine API | Wave height / period / direction at 03:00 today (the launch decision hour) | 0.86 m, 5.45 s, from 68° (ENE) — swell component 0.76 m | 2026-11-23 |
| Open-Meteo Marine API | Forecast max wave height 25–29 Nov | 0.48 m / 0.48 / 0.48 / 0.48 / 0.46 m (period 4.0–4.6 s) | 2026-11-23 |
| Open-Meteo Forecast API (6.87°N, 101.25°E, Pattani town) | Wind gust max today / tomorrow | 45.4 km/h from 110° / 42.1 km/h from 104° | 2026-11-23 |
| Open-Meteo Forecast API | Rainfall 21–27 Nov (daily) | 8.6, 18.2, 12.6, 11.4, 14.5, 6.5, 17.6 mm | 2026-11-23 |
| Open-Meteo Historical Archive API | Total rain, Pattani, 1 Nov 2025 – 31 Jan 2026 (last monsoon) | 1,109.3 mm; wettest day 323.7 mm on 20 Nov 2025 | 2026-11-23 |
| Open-Meteo Historical Archive API | Days with gusts ≥ 50 km/h, last monsoon / peak gust | 6 days; 56.2 km/h on 7 Jan 2026 | 2026-11-23 |
| World Bank Open Data (ER.FSH.CAPT.MT) | Thailand total capture fisheries production | 2022: 1,428,696 t · 2023: 1,547,660 t · 2024: 1,653,592 t | 2026-11-23 |
| ExchangeRate-API | THB → USD / THB → MYR | 1 THB = 0.029461 USD · 0.121139 MYR | 2026-11-23 |

The marine series is the whole product in miniature. Over the past 72 hours the bar off Sai Buri went from 1.26 m at nearly 8-second period (a longer-period swell that stands up and dumps on a shallow sandy beach — the classic "kolae-flipper") to 0.86 m at 5 s during the hour men actually decide to launch, and the model then calls a flat 0.48 m run from Wednesday through Sunday. Meanwhile land-side gusts stay in the 42–45 km/h band from the east-southeast for two more days. A fisherman who reads only the gusts stays home all week; one who reads only "the sea looks calmer" launches into a still-running 0.8 m set. Neither has access to the period and direction numbers, which matter more on an open beach than the height.

The archive shows why this is not academic: last monsoon dropped 1,109 mm on Pattani in three months, including a single 323.7 mm day on 20 Nov 2025 (the same system that flooded Hat Yai), with six days of ≥50 km/h gusts. Thailand's national catch has climbed to 1.65 Mt (2024), but almost none of that is the beach-launched artisanal fleet — the people whose income is decided morning by morning on a strip of sand. At ฿1 = US$0.0295 / RM0.121, a ฿600 day is about US$17.70 — and the nearest alternative wage, across the border in Kelantan, is priced in ringgit, which is exactly where lay-up-week young men go.

## The Problem

It is 02:40 on a November morning at Ban Pasey Yawo in Sai Buri. Pak Ismail (54) has walked down past the row of kolae boats — curved prows painted with garuda, singha and flower motifs — to stand at the waterline with a torch. Yesterday the bar threw 1.26 m sets at 7–8 seconds; today he can hear it is quieter but cannot see the period. His son-in-law wants to go: the crab nets were set two days ago and every extra day in the water is crabs eaten by fish. Six men are needed to roll the boat down on coconut-log rollers. If they go and a set catches the boat broadside in the shore break, they lose an engine (฿25,000–40,000), maybe the net, maybe a rib. If they stay and the sea was fine, they lose ฿600–1,200 and two days of soak. The decision is made by the oldest man's gut, in the dark, every single morning of the monsoon.

The structural reason nobody has solved this: the Thai Meteorological Department issues one Gulf-wide "waves 2–3 m, small boats stay ashore" warning in central Thai that covers 800 km of coast from Chumphon to Narathiwat and is in effect for weeks at a time — it is ignored precisely because it is always on. Windy/Windguru-style apps exist but are in English, read as an offshore point, give heights without the "is this a launchable beach day" interpretation, and need data the village LINE group doesn't have. The real expertise — which wave periods and directions break badly on *this* bar at *this* tide — lives only in the heads of older men, and the Deep South's younger fishermen increasingly migrate to Malaysia rather than apprentice. The second problem is collective: when the big blow arrives, boats must be hauled well above the storm line, which takes 6–10 people per boat; who's around, whose boat goes first, and who already owes labour is negotiated by shouting.

The consequence of inaction: boats and engines lost in the shore break each monsoon (and occasional drownings in exactly the conditions — moderate height, long period — that "look OK"), lost sea days that nobody can document, and relief money from the Department of Fisheries and the provincial disaster office that gets distributed by village-head discretion because there is no record of who actually couldn't fish. The kolae itself — already a dying craft, with only a handful of builders left in Pattani and Narathiwat — loses one more reason to be kept on the beach.

## Who Uses This

**Primary user:** Pattani-Malay small-boat fishermen (age 25–65) at beach landings in Sai Buri, Panare and Yaring districts — mostly speak Pattani Malay at home and read Thai at a primary-school level, own a cheap Android phone, already belong to a 30–150 member village fishing LINE group, earn ฿300–1,200 on fishing days, and make the launch/no-launch call between ~02:00 and 04:00 after or before Subuh prayer.
**What they do now (and why it sucks):** Stand on the beach with a torch, call a cousin at the next landing, and follow the oldest man's guess — no information on wave period or what the next 6 hours bring.
**When they pay:** They don't — the trigger is the first time TurunLaut said "HAUL HIGHER" a day before a blow and every boat on the landing survived while the next village lost two engines; after that the village group head asks the Tambon office to put it on the official bulletin.

**Secondary user:** Village fishing-group heads (ประธานกลุ่มประมงพื้นบ้าน), Department of Fisheries district officers, the Federation of Thai Fisherfolk Associations' Pattani chapter, and the provincial disaster prevention office (ปภ.จังหวัดปัตตานี).
**Why they care:** The lost-sea-day ledger is the first per-household record of monsoon income loss they can use to target relief, and the haul-up rota tells them which landings are under-manned before a storm.

**Who definitely won't use this:** Commercial trawler and purse-seine operators out of Pattani Fishing Port (they have a harbour, AIS, and company weather routers), and recreational surfers — this is about getting a heavy wooden boat *through* the surf, not riding it.

## Feature Set

### MVP — Week 1-3
- **03:00 Turun/Tunggu card:** A LINE push at 02:30 per landing — one of three colours (LAUNCH / LAUNCH, BACK BY HH:MM / DON'T LAUNCH) with height, period and direction converted into a plain sentence in Pattani Malay (Rumi + Thai script) and Thai, plus a 15-second voice note.
- **Per-landing thresholds, set by elders:** Each landing's group head sets the launch limits once (e.g. "no-go if period ≥ 7 s and height ≥ 0.9 m from 50–90°"), so the rule encodes local bar knowledge rather than a generic number.
- **Back-by clock:** Uses the hourly forecast to find when wave height/gust crosses the landing's limit later in the day and states the latest safe return time, because coming *back in* through rising surf is where boats flip.
- **Haul-Higher alert + rota:** When forecast gusts ≥ 45 km/h or height ≥ landing limit + 0.5 m within 36 h, a "haul higher" message goes out with a tap-to-join list of who is available and a suggested order of boats (furthest down the beach first).
- **Lost-sea-day ledger:** One tap each morning — "went", "stayed (sea)", "stayed (other)" — building a household record of monsoon days lost, exportable as a Thai-language PDF table for the Tambon office.

### Version 2 — Month 2-3
- **Elder correction loop:** After each day, group heads mark "card was right / too cautious / too brave"; the app nudges the thresholds and shows which conditions the model mis-reads at that bar.
- **Landing-to-landing relay:** Fishermen who did launch post a 3-word sea report ("bar OK", "big sets", "came back") from the water; neighbouring landings 5–15 km along the coast see it before their own launch.
- **Tide overlay:** Adds a computed tide curve for Pattani Bay so the card says "launch before 04:30 while the tide still covers the bar".

### Power User / Pro Features
- **Relief-claim pack:** Group heads export the whole landing's lost-day ledger with forecast evidence per day, formatted for Department of Fisheries / ปภ. relief forms.
- **Boat & engine register:** Optional record of boat, engine serial and photos so storm-loss claims and kolae-repair grants (craft-heritage funds) have documentation.

## Technical Implementation

### Suggested Stack
Options considered: a native app (no — nobody installs one), a public website (no — the decision moment is 02:30 in a LINE group), a LINE Official Account bot with a tiny LIFF mini-page for the ledger and rota.

**Chosen stack:** LINE Messaging API bot + LIFF mini-app (static, Cloudflare Pages) + a Cloudflare Worker cron at 02:15 / 14:00 that pulls Open-Meteo and writes to Supabase — because every fisherman is already in a village LINE group and the only acceptable interface at 3am is a coloured card and a voice note.

### APIs & Data Sources
| API | Specific Endpoint | What It Returns | Refresh Rate | Auth | Cost |
|-----|------------------|-----------------|--------------|------|------|
| Open-Meteo Marine | `https://marine-api.open-meteo.com/v1/marine?latitude=6.95&longitude=101.45&hourly=wave_height,wave_period,wave_direction,swell_wave_height&timezone=Asia/Bangkok&forecast_days=3` | Hourly wave height, period, direction, swell component per landing grid point | Hourly model updates | none | free (non-commercial) |
| Open-Meteo Forecast | `https://api.open-meteo.com/v1/forecast?latitude=6.87&longitude=101.25&hourly=wind_gusts_10m,wind_direction_10m,precipitation&timezone=Asia/Bangkok` | Gusts, wind direction, rain for haul-up trigger | Hourly | none | free |
| Open-Meteo Historical Archive | `https://archive-api.open-meteo.com/v1/archive?latitude=6.87&longitude=101.25&start_date=2025-11-01&end_date=2026-01-31&daily=precipitation_sum,wind_gusts_10m_max` | Past-monsoon baseline for calibrating thresholds and relief evidence | Daily | none | free |
| World Bank Open Data | `https://api.worldbank.org/v2/country/TH/indicator/ER.FSH.CAPT.MT?format=json` | National capture fisheries tonnage for grant/report context | Annual | none | free |
| ExchangeRate-API | `https://open.er-api.com/v6/latest/THB` | THB/MYR/USD for income-loss reporting and cross-border wage comparison | Daily | none | free |
| LINE Messaging API | `https://api.line.me/v2/bot/message/push` | Push cards + audio to landing groups | Event | channel token | free tier ~300 msgs/mo, then paid |

### Database Schema (key tables only)
```
landings: id (uuid), name_ms (text), name_th (text), lat (float), lon (float), grid_lat (float), grid_lon (float), line_group_id (text), head_user_id (uuid)
thresholds: landing_id (uuid), max_height_m (float), max_period_s (float), bad_dir_from (int), bad_dir_to (int), haul_gust_kmh (float), updated_by (uuid)
daily_cards: landing_id (uuid), date (date), verdict (enum go|go_back_by|no_go), back_by (time), h_m (float), period_s (float), dir_deg (int), gust_kmh (float), elder_feedback (enum right|too_cautious|too_brave)
sea_days: household_id (uuid), date (date), status (enum went|stayed_sea|stayed_other), catch_baht (int, nullable)
haul_events: id (uuid), landing_id (uuid), triggered_at (timestamptz), volunteers (uuid[]), boats_order (uuid[]), completed (bool)
```

### Key Technical Decisions
1. **Elder-set thresholds instead of a "smart" model:** On an open sand beach, period and direction matter more than height, and the right limit differs bar by bar — encoding the elders' rules makes the card trusted and keeps the system explainable when it's wrong.
2. **Pre-recorded voice phrases, not TTS:** No usable Pattani-Malay TTS exists; a local volunteer records ~60 phrase fragments ("ombak", "sejengkal", "balik sebelum pukul sepuluh") which are stitched into each voice note.

### Hardest Technical Challenge
Open-Meteo's marine model resolution is coarse (~5–8 km) and doesn't model the nearshore bar; the shore break can be larger than the offshore grid point on a falling tide. **Mitigation:** treat the model as a relative signal, calibrate per landing using two seasons of elder feedback ("too brave" days pull the threshold down), and add the landing-to-landing live relay so actual observations override the model on the morning.

## Monetization Strategy

> Note: Not every idea needs Stripe. Some are better as free tools, grant-funded, or sold B2G.

**Model chosen:** grant-funded (free for fishermen, forever)

| Tier | Price | What's Included | Why They Pay This |
|------|-------|-----------------|-------------------|
| Free | $0 | All cards, rota, ledger for every fisherman and landing | Fishermen at ฿300–1,200/day will never pay; adoption is the product |
| Tambon / District bulletin | ~฿3,000/mo (≈US$88) per district via local admin budget | Relief-claim pack, landing dashboard, haul-up readiness map | Documented lost days make relief allocation defensible |
| Programme partner | Grant ~US$25,000/yr | Hosting, LINE message costs, phrase recording, field coordinator in Sai Buri | Fits small-scale fisheries resilience (FAO SSF Guidelines), SBPAC livelihood and climate-adaptation funds |

**Why someone pays:** The district office pays the first time a storm-loss relief round is challenged as unfair and they can produce a per-household, forecast-backed lost-day table instead of a village head's list.

**12-month revenue trajectory:**
- Month 3: 0 paying — pilot on 4 landings in Sai Buri, funded by a ~US$8,000 seed grant
- Month 12: ~3 district bulletins × US$88 = ~US$265/month + one ~US$25,000/yr programme grant covering ~25 landings

**Alternative if SaaS doesn't work:** Hand it to the Federation of Thai Fisherfolk Associations (สมาคมสมาพันธ์ชาวประมงพื้นบ้านแห่งประเทศไทย) or a university marine program (Prince of Songkla University, Pattani campus) as an open-source tool run on volunteer time and ~US$30/month hosting.

## Marketing Strategy

**Exact communities to reach:**
- Village fishing-group LINE groups at Sai Buri, Panare and Yaring landings (typically 30–150 members each; reached through group heads, not ads)
- Federation of Thai Fisherfolk Associations Facebook page and its southern network (est. tens of thousands of followers nationally; Pattani chapter is the entry point)
- "เรือกอและ ปัตตานี" / kolae boat heritage Facebook pages and the Pattani provincial PR page (est. 5k–50k followers) — the boats are a cultural symbol, which makes the safety story shareable
- Prince of Songkla University Pattani campus — Faculty of Science and Technology fisheries/marine students (field volunteers)

**First 10 users and how you get them:**
Sit with the group head at one Sai Buri landing after Friday prayers, show last week's actual forecast against what the boats did, and ask him to set his landing's thresholds himself. He adds the bot to his LINE group; the first 10 users are his crew and the next five boats down the beach. The second landing comes when a neighbouring group head sees the "HAUL HIGHER" message was right.

**The press angle:**
"Thailand's painted kolae boats have no harbour — so every monsoon morning, fishermen gamble boats on the surf in the dark. A LINE bot now gives them the answer in Pattani Malay at 3am." Natural fit for Thai PBS's southern desk, Isranews/Deep South Watch, and regional outlets covering Deep South livelihoods beyond conflict coverage.

**Content / SEO play:**
Public per-landing "monsoon sea-days lost" pages ("Sai Buri lost 38 of 92 sea days this monsoon") and a seasonal comparison against the archive baseline — searchable by journalists, researchers and relief agencies in Thai and English.

**Launch sequence:**
1. Before launch: record the Pattani-Malay phrase bank with a local volunteer; back-test thresholds against the last 60 days of marine data with two elders.
2. Launch day: activate the 02:30 card for 4 Sai Buri landings at the start of a monsoon week; group heads introduce it in person.
3. Week 1: collect elder feedback daily, adjust thresholds, and send the first "haul higher" alert with the rota the moment a ≥45 km/h gust day appears in the forecast.

## Competitive Landscape

| Existing Solution | What They Do | Where They Fall Short | Why This Wins |
|-------------------|-------------|----------------------|---------------|
| TMD marine warnings (กรมอุตุนิยมวิทยา) | Gulf-wide "waves 2–3 m, small boats stay ashore" notices | One warning for 800 km of coast, on for weeks, Thai-only, no period/direction or return time | Per-landing, per-hour, elder-calibrated, in Pattani Malay |
| Windy / Windguru | Global wave & wind forecasts | English, technical, offshore point, no launch interpretation, no collective tools | Turns the same numbers into one go/no-go card in the LINE group |
| Calling a cousin at the next landing | Live observation | Dark, informal, nothing written down | Kept — becomes the relay feature, plus forecast and ledger |
| Nothing exists | Haul-up coordination & lost-day records | Done by shouting; relief allocated by discretion | Rota + ledger create the first documented record |

**Moat:** Per-landing thresholds and seasons of elder feedback are local, hard-won calibration data nobody else has, and trust from group heads in the Deep South is slow to earn and very sticky once earned.

## Risk Factors

1. **Technical / Data:** A "LAUNCH" card on a day the bar is dangerous could contribute to a capsize → **Mitigation:** Card is always framed as advice, defaults conservative until two months of feedback exist, and elders can override a landing's card for the day with one tap.
2. **Adoption / Trust:** Outsider tools in the Deep South meet suspicion; a security-sensitive region makes location data touchy → **Mitigation:** Work through fishing-group heads and a local Pattani-Malay coordinator, store only landing-level location (no GPS tracking of people or boats), host the data with a Thai university partner.
3. **Market / Funding:** Grant cycles end and the bot dies → **Mitigation:** Keep running cost under US$50/month, publish open source, and hand ownership to the Fisherfolk Federation or PSU Pattani if funding lapses.

## Build Reality Check

| Phase | Realistic Timeline | What Exists at End |
|-------|-------------------|-------------------|
| Prototype | 2 weeks | LINE bot sends a 02:30 card for one landing from Open-Meteo marine + gusts, with elder-set thresholds |
| Beta | 6 weeks | 4 Sai Buri landings, voice notes, back-by clock, lost-day ledger, first haul-up rota run during a real blow |
| Launch | 12 weeks | ~15 landings across Sai Buri/Panare/Yaring, relief-claim export accepted by one Tambon office, programme grant application filed |

**Solo founder feasibility:** Difficult — the code is small, but it needs a trusted Pattani-Malay-speaking field partner on the beach; without one it won't be adopted.
**Biggest execution risk:** Building trust in a conflict-affected, linguistically distinct region where outsiders are wary, and where one wrong "LAUNCH" in the first month could end adoption for good.

---
*Generated: 2026-11-23 | Industry: ocean_maritime | Sub-industry: beach_launch_surf_window_small_boats | Geography: thailand*
*APIs queried for real data: Open-Meteo Marine API, Open-Meteo Forecast API, Open-Meteo Historical Archive API, World Bank Open Data API, ExchangeRate-API*

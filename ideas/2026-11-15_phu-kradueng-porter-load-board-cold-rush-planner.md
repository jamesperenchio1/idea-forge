---
id: haap-phu-kradueng-2026-11-15
title: KhonHaap — Porter Load-Board, Weigh-Slip & Cold-Weekend Rush Planner for Phu Kradueng's Bag Porters at Si Than Trailhead, Loei
created: 2026-11-15T08:05:00+07:00
industry: tourism_travel
sub_industry: national_park_capacity
geography: thailand
apis_used: Open-Meteo Forecast API (1,300 m summit + 255 m trailhead), Open-Meteo Historical Archive API, World Bank Open Data API (ST.INT.ARVL), ExchangeRate-API (open.er-api.com), Wikipedia REST API
monetization_model: grant-funded
target_user: Freelance bag porters (khon haap / "ลูกหาบ") from Si Than and Pha Nok Khao sub-districts, Amphoe Phu Kradueng, Loei — mostly rice and cassava smallholders aged 30–60, who register with the park and carry hikers' bags up the ~5.5 km summit trail and the ~3 km plateau stretch to the Wang Kwang campground on bamboo shoulder-poles, paid per kilogram. They work only October–May (the park closes the summit every rainy season), earn their year's cash in about eight cold-season weekends, and today learn how busy a Saturday will be by standing at the weigh station at 6am and seeing how many cars from Bangkok and Khon Kaen pull in.
concept_hash: summit-bag-porter-per-kilo-load-board-weigh-slip-and-cold-weekend-rush-planner+si-than-trailhead-wang-kwang-plateau-phu-kradueng-loei-thailand+registered-khon-haap-bag-porters-and-park-porter-desk-staff
---

# KhonHaap — Porter Load-Board, Weigh-Slip & Cold-Weekend Rush Planner for Phu Kradueng's Bag Porters

## The Hook
- Every cold-season weekend, hundreds of Thai hikers drop their tents, blankets and cases of drinking water on a scale at the foot of Phu Kradueng, Loei, and local farmers carry it up a 1,300 m sandstone mesa on bamboo poles at a per-kilo rate — and the whole system runs on a paper ledger, a megaphone and guessing how cold it will be.
- Open-Meteo shows the summit at **13.3 °C minimum on Saturday 21 November** after a week of 74–92% rain probability. Last year's coldest mornings (10.1–10.6 °C, 27 Dec–4 Jan) are what fill the trail. KhonHaap turns the summit forecast into a "how many porters do we need on Saturday" number, sent to the porters' LINE group on Wednesday night.
- It's a free LINE bot plus weigh-station tablet that replaces the paper ledger with digital weigh-slips: a hiker gets a QR claim tag for their bag, the porter gets an auditable kilo count, and the park finally learns its real daily load.

## Real Data Found
> Live data queried from real APIs during idea generation — not placeholders.

| Source | Data Point | Value | Queried |
|--------|-----------|-------|---------|
| Open-Meteo Forecast (16.87N, 101.80E, elev. 1,300 m — summit plateau) | Daily min temp, 15–21 Nov 2026 | 17.0 / 15.8 / 18.3 / 16.4 / 15.9 / 16.7 / **13.3 °C** | 2026-11-15 |
| Open-Meteo Forecast (summit) | Max precipitation probability, 15–21 Nov | 84 / 74 / 92 / 82 / 75 / **2 / 4 %** | 2026-11-15 |
| Open-Meteo Forecast (summit) | Precipitation sum, 15–21 Nov | 0.0 / 0.8 / 1.5 / **3.6** / 1.4 / 0.0 / 0.0 mm | 2026-11-15 |
| Open-Meteo Forecast (summit) | Daily max temp, Sat 21 Nov | 20.6 °C (vs 25.3 °C today) | 2026-11-15 |
| Open-Meteo Forecast (16.92N, 101.85E, elev. 255 m — Si Than trailhead) | Daily max temp, 15–21 Nov | 31.2 → 27.3 °C (≈10 °C hotter than summit) | 2026-11-15 |
| Open-Meteo Historical Archive (summit, 20 Dec 2025 – 5 Jan 2026) | Coldest daily minimums of last peak season | 10.2 °C (27 Dec), 10.1 °C (4 Jan), 10.5 °C (3 Jan); 0.0–0.3 mm rain on all 17 days | 2026-11-15 |
| World Bank Open Data (ST.INT.ARVL) | Thailand international arrivals, latest year in series | 39,916,000 (2019) — dataset last updated 2026-11-11 | 2026-11-15 |
| ExchangeRate-API | 1 THB | 0.029515 USD / 0.026723 EUR / 662.04 LAK (update 15 Nov 2026 00:02 UTC) | 2026-11-15 |
| Wikipedia REST API | Park facts | High point 1,316 m at Khok Moei; proclaimed 23 Nov 1962, Thailand's 2nd national park | 2026-11-15 |

The forecast describes the start of the porters' season. This week the summit is wet and mild (15.8–18.3 °C lows, rain on five of seven days). Then on Friday rain probability drops to 2% and Saturday's low falls to 13.3 °C. That first dry, cold weekend is when Thai social media fills with "ไปภูกระดึงกัน" posts, and the trailhead gets more hikers than there are porters. Last year's archive shows the pattern: from late December to early January the plateau sat at 10–12 °C and stayed completely dry for 17 straight days. The trailhead below is about 10 °C hotter (31 °C highs), so hikers who arrive in shorts still pack fleeces, blankets and extra water, and their bags get heavier.

Nobody turns this into a staffing number. The weather data is free and it predicts demand well, but the porters, the park's porter desk and the guesthouses in Si Than all still find out how busy a weekend is when the cars arrive. The World Bank figure is a reminder that Thailand's tourism statistics count foreign arrivals at airports. Phu Kradueng's crowd is mostly domestic and is driven by cold weather, so no national dataset tracks it.

## The Problem

At 5:40am on the Saturday after the first cold front, Somsak, a 52-year-old cassava farmer from Ban Si Than, is at the porter weigh station with his bamboo pole. About 180 hikers from Bangkok, Khon Kaen and Udon arrived overnight by bus and private car. Forty registered porters showed up because nobody told the other sixty that this would be the first big weekend. The queue to weigh bags runs past the ticket booth. Some hikers give up, carry 15 kg packs themselves and burn out at the "Sam Kaeng" rest stop. Others pay a non-registered "helper" with no claim slip, and their bags end up at the wrong tent on the plateau. Meanwhile Somsak carries three hikers' bags in two trips. Each one is written in pencil in a park clerk's ledger, and at the end of the day his kilos are added up by hand. Next Wednesday's summit forecast (13.3 °C, 2% rain) says the same thing will happen again.

This exists for structural reasons. Portering at Phu Kradueng is informal but regulated: porters register with the park and the park sets a per-kilo rate (widely reported at around 30 baht/kg; it should be verified against the current park notice before launch). But there's no digital system between the hiker, the scale and the porter. Online booking for summit camping goes through the Department of National Parks system, and it doesn't share expected headcounts with the porter desk. The porters' own coordination is a LINE group and phone calls among relatives. The hikers' side is Pantip threads asking "ลูกหาบคิดกิโลละเท่าไร" ("how much do porters charge per kilo?") and "ต้องรอคิวนานไหม" ("is the queue long?"). Workarounds fail because each piece of information is held by a different party: weather sites, the DNP booking system, the park clerk's ledger and the porters' memory.

If nothing changes, the same things keep happening. Porters lose income on the first cold weekends because they don't know to come in, and they waste a day waiting on quiet wet weekends. Hikers carry their own loads at 30 °C on the lower trail, which drives the park's heat-exhaustion and ankle-injury calls. Bags still get lost. The park has no record of how many kilos go up the mountain, which matters because everything carried up also has to come down or be dealt with as waste on the plateau.

## Who Uses This

**Primary user:** A registered Phu Kradueng porter. They live within 10 km of the trailhead in Si Than or Pha Nok Khao, farm rice or cassava in the wet season, and carry bags October–May, mainly Friday–Sunday and on Thai long weekends. Their phone is a mid-range Android with LINE and Facebook, and they're more comfortable with voice messages than typing. Their income is irregular and lumpy: a good cold weekend can be several days' farm wages, a quiet one is nothing.
**What they do now (and why it sucks):** They turn up at dawn and hope, and their kilos are tallied in a clerk's pencil ledger they can't easily check.
**When they pay:** They don't. Porters never pay. The trigger for adoption is the first weekend a Wednesday-night LINE push ("Saturday: expect busy, summit 13 °C, no rain") gets them to the trailhead on time for a full day of loads.

**Secondary user:** The park's porter desk clerk and the Phu Kradueng National Park office, plus Si Than guesthouses and the trailhead pickup drivers who shuttle hikers from the Phu Kradueng bus stop.
**Why they care:** A predicted rush lets the desk call in porters, open a second scale and pre-print claim tags, and the guesthouses get the same demand signal for Friday-night beds.

**Who definitely won't use this:** Foreign backpackers on Agoda looking for a "Phu Kradueng tour". Organised tour companies with their own logistics. The DNP head office as a buyer in year one, since it will only engage after a single park proves it works.

## Feature Set

### MVP — Week 1-3
- **Wednesday Rush Call:** A LINE broadcast to the porter group every Wednesday at 8pm with a three-level forecast (Quiet / Busy / Full rush) for Fri–Sun. It's based on the summit minimum temperature, rain probability, the Thai holiday calendar and a hand-entered count of DNP camping bookings from the desk.
- **Digital Weigh-Slip:** The clerk weighs a bag on a tablet at the scale. The app records the kg and the fare at the posted per-kilo rate, then prints or LINE-sends the hiker a QR claim tag with the porter's registration number and photo.
- **Porter Kilo Ledger:** Each porter sees their own running kilos and earnings for the day and season in LINE ("วันนี้ 62 กก."), which ends the end-of-day pencil disputes.
- **Hiker Queue Board:** A public mobile web page (no app install) that shows the current queue at the scale, how many porters are on duty and the estimated wait, so hikers in the car park can decide whether to wait or repack.
- **Delivery Confirm at Wang Kwang:** The porter scans the claim tag at the plateau drop-off. The hiker gets a "your bag has arrived at Zone X" LINE message.

### Version 2 — Month 2-3
- **Descent Booking:** Hikers book a porter for the trip down the evening before from the plateau. The porter desk sees next morning's descent load ahead of time.
- **Heat-Split Advice:** Uses the forecast gap between the trailhead (31 °C) and summit (20 °C) to tell self-carrying hikers when to start ("leave before 7:30 or hire a porter for anything over 8 kg").
- **Season Recap for Porters:** A one-page summary of each porter's kilos and earnings per season, which they can show a village fund or BAAC loan officer as proof of off-farm income.

### Power User / Pro Features
- **Park Load Dashboard:** Daily and season kilos up and down, so the park can estimate how much waste the plateau has to handle and plan rest-stop staffing.
- **Multi-park Template:** Configurable for other Thai parks and mountains with porter or pack systems (for example Doi Luang Chiang Dao trekking porters, or the Phu Soi Dao trail).

## Technical Implementation

### Suggested Stack
Porters live in LINE and won't install anything. The scale clerk needs one shared tablet that still works when the trailhead's 4G stalls on a rush morning.

**Chosen stack:** LINE Messaging API bot (porters and hikers) plus an offline-first PWA on a single Android tablet with a Bluetooth thermal printer at the weigh station, syncing to Supabase (Postgres) with a Cloudflare Worker cron for the Wednesday forecast. Chat covers the people who won't install apps, and the offline tablet covers the one place where data loss would start disputes.

### APIs & Data Sources
| API | Specific Endpoint | What It Returns | Refresh Rate | Auth | Cost |
|-----|------------------|-----------------|--------------|------|------|
| Open-Meteo Forecast | `https://api.open-meteo.com/v1/forecast?latitude=16.87&longitude=101.80&elevation=1300&daily=temperature_2m_min,temperature_2m_max,precipitation_sum,precipitation_probability_max,wind_speed_10m_max&timezone=Asia/Bangkok&forecast_days=7` | Summit plateau 7-day mins/max/rain/wind | Hourly model updates; pulled daily | none | free |
| Open-Meteo Forecast | `https://api.open-meteo.com/v1/forecast?latitude=16.92&longitude=101.85&daily=temperature_2m_max,precipitation_sum&timezone=Asia/Bangkok&forecast_days=7` | Trailhead heat for the lower trail | Daily | none | free |
| Open-Meteo Archive | `https://archive-api.open-meteo.com/v1/archive?latitude=16.87&longitude=101.80&elevation=1300&start_date=...&end_date=...&daily=temperature_2m_min,precipitation_sum` | Past seasons' weather, used to fit the weather-to-headcount model against ledger data | One-off + monthly | none | free |
| ExchangeRate-API | `https://open.er-api.com/v6/latest/THB` | THB→USD/EUR/LAK for the foreign-hiker version of the fare display | Daily | none | free |
| LINE Messaging API | `https://api.line.me/v2/bot/message/push` / `.../multicast` | Rush Call broadcasts, weigh-slip and delivery messages | Event-driven | channel token | free tier (≈300 push msgs/month on Thai free plan, then paid) |
| Thai holiday calendar (static JSON, hand-maintained from Cabinet announcements) | n/a | Long weekends, which dominate demand | Yearly | none | free |

### Database Schema (key tables only)
```
porters: id (uuid), park_reg_no (text), name_th (text), line_user_id (text), village (text), photo_url (text), active (bool)
weigh_slips: id (uuid), porter_id (uuid), hiker_line_id (text null), kg (numeric), rate_thb_per_kg (numeric), direction (enum up/down), weighed_at (timestamptz), delivered_at (timestamptz null), drop_zone (text), qr_code (text)
rush_forecasts: date (date), summit_tmin_c (numeric), rain_prob_max (int), is_holiday (bool), dnp_bookings_hint (int null), level (enum quiet/busy/full), predicted_porters_needed (int), actual_kg (numeric null)
duty_roster: date (date), porter_id (uuid), checked_in_at (timestamptz)
```

### Key Technical Decisions
1. **A rules-based rush score in season 1, a fitted model from season 2:** Until there's at least one season of digital weigh-slips, there's nothing to train on. A transparent rule (summit Tmin ≤ 14 °C, rain probability < 20%, Saturday or holiday → "Full rush") is easy for porters to understand and trust. The `actual_kg` column then provides the training data for season 2.
2. **The tablet is the source of truth, synced later:** Weigh-slips are written to IndexedDB first and printed locally, then synced. A dropped connection on a 200-hiker morning must never mean a lost slip, because lost slips are exactly what cause pay disputes.

### Hardest Technical Challenge
The hardest part isn't technical: it's getting the park's porter desk to replace its ledger. The hardest technical part is reliable thermal-printer QR tags plus offline sync with conflict-free IDs on a cheap Android tablet in a humid, dusty shed. Mitigation: use client-generated UUIDs and append-only slips (no edits, only void-and-reissue), test on one real tablet and printer for four weekends alongside the paper ledger, and keep the paper ledger as a fallback for the whole first season.

## Monetization Strategy

> Note: Not every idea needs Stripe. Some are better as free tools, grant-funded, or sold B2G.

**Model chosen:** grant-funded (with a tiny local sponsorship layer)

| Tier | Price | What's Included | Why They Pay This |
|------|-------|-----------------|-------------------|
| Free | $0 | Everything for porters, hikers and the park desk | Porters are low-income and the park won't buy unproven software |
| Guesthouse Pin | ~$9/mo (≈300 THB) | A listing on the hiker queue page plus the Friday-night demand forecast | Si Than guesthouses fill or empty on the same cold-weekend signal |
| Park/District Package | ~$150/mo (≈5,000 THB) or a one-off grant | Load dashboard, season reports, multi-park config | Supports the park's visitor-management and waste reporting |

**Why someone pays:** A guesthouse owner who was half-empty on the first cold weekend because they didn't advertise on Wednesday will pay 300 baht a month to get the same Wednesday signal as the porters.

**12-month revenue trajectory:**
- Month 3: ~8 guesthouses × $9 = $72/month (plus a seed grant)
- Month 12: ~25 guesthouses × $9 + 1 park package × $150 = $375/month

**Alternative if SaaS doesn't work:** Apply for a small grant from TAT's community-based tourism programmes, the Loei Provincial Administrative Organisation's tourism budget, or Thai Health Promotion Foundation (สสส.) funds for informal-worker safety. Or hand the tool to the porters' own group as a community asset.

## Marketing Strategy

**Exact communities to reach:**
- The Phu Kradueng National Park official Facebook page ("อุทยานแห่งชาติภูกระดึง"), which posts trail-opening and cold-weather notices to a large following (follower count to be checked at launch; it's the main channel hikers watch).
- Pantip.com Blue Planet travel forum (ห้องบลูแพลนเน็ต), where "ภูกระดึง" threads recur every October–December with porter-price and queue questions.
- Thai trekking Facebook groups such as "เดินป่า ปีนเขา" and "แบกเป้เที่ยวไทย" (each in the tens to hundreds of thousands of members; verify current counts before outreach).
- The porters' own LINE group run through the park porter desk. This is the real distribution channel, reached in person.

**First 10 users and how you get them:**
Spend the second weekend of the season at the Si Than trailhead. Ask the porter desk clerk to introduce the founder to the porter group's informal head. Sign up ten porters in person, adding them to the bot by scanning a QR code while they wait for loads. Run the tablet next to the clerk's paper ledger at no cost, and print slips for those ten porters' loads only. At the end of the day, show each porter a LINE message with their kilo total that matches the ledger.

**The press angle:**
"How many kilos does Phu Kradueng carry? We weighed the mountain." That's the first public figure for the tonnage of blankets, water and tents farmers carry up Thailand's second-oldest national park each cold season, with a weather-to-crowd chart showing every 1 °C drop at the summit.

**Content / SEO play:**
Thai-language pages that answer what hikers search for: "ภูกระดึง หนาวไหม สัปดาห์นี้" (Is Phu Kradueng cold this week?), "ลูกหาบภูกระดึง คิวยาวไหม" (Is the porter queue long?), "ภูกระดึงเปิดกี่โมง" (What time does Phu Kradueng open?). Each page is auto-generated from the live summit forecast and that day's queue board.

**Launch sequence:**
1. Before launch (Oct): Meet the park porter desk and the porter group in person, agree the per-kilo rate display and the tag format, and set up the tablet and printer.
2. Launch day: The first Wednesday Rush Call before the first forecast cold weekend (this year that's the 21–22 November window). Run the tablet alongside the paper ledger.
3. Week 1: Post the "kilos carried this weekend" figure and the queue board link on Pantip and the trekking groups. Collect porter feedback at the trailhead on Sunday afternoon.

## Competitive Landscape

| Existing Solution | What They Do | Where They Fall Short | Why This Wins |
|-------------------|-------------|----------------------|---------------|
| Paper ledger at the park weigh station | Records loads and porter tallies | Can't be checked, no claim tags, no demand forecast | Digital slips plus QR tags with the paper ledger as fallback |
| DNP national-park booking system | Takes campsite and lodging reservations | Doesn't share expected headcount with porters | Feeds a booking count into the Rush Call through the desk |
| Windy / TMD / Open-Meteo apps | Mountain weather | Weather only, nothing about porters or staffing | Turns the forecast into "come Saturday" for porters |
| Pantip/Facebook threads | Word-of-mouth porter prices and queues | Out of date, anecdotal | A live queue board |

**Moat:** It's built on trust with one specific group of porters and one park desk, and every season of weigh-slip data becomes a proprietary weather-to-headcount history that nobody else has.

## Risk Factors

1. **Adoption — porter politics:** Senior porters may see digital tallies as a threat to informal load-sharing or seniority. → **Mitigation:** The group head controls the load-allocation rules in the app and the app copies the current rotation; slips record, they don't assign.
2. **Regulatory — park authority:** The park can ban third-party systems at its weigh station. → **Mitigation:** Pitch it as the park's own tool (desk-branded, data owned by the park), and offer to hand the code to DNP.
3. **Data — forecast skill:** Open-Meteo at a 1,300 m mesa can miss local cold pooling. Last season's 10 °C mornings may have been colder on the plateau. → **Mitigation:** Put a ฿600 Bluetooth thermometer at Wang Kwang, log real lows and bias-correct the model.
4. **Market — season shortfall:** One warm, wet December or a park closure (fire, accident) wipes out the season. → **Mitigation:** Grant funding isn't tied to traffic, and the multi-park template spreads the risk.

## Build Reality Check

| Phase | Realistic Timeline | What Exists at End |
|-------|-------------------|-------------------|
| Prototype | 3 weeks | LINE bot with Wednesday Rush Call from the summit forecast; tablet PWA that issues printed QR weigh-slips offline |
| Beta | 6 weeks (4 cold weekends) | 10–30 registered porters on the bot, slips running alongside the paper ledger, first real kg-per-weekend data |
| Launch | 12 weeks | Porter desk uses the tablet as the primary record on weekends; hiker queue board public; first guesthouse pins |

**Solo founder feasibility:** Difficult. The code is small, but it only works if a Thai-speaking founder spends cold-season weekends at the Si Than trailhead building trust in person.
**Biggest execution risk:** Not being physically present. A park weigh-station workflow can't be changed by remote outreach, and a founder who doesn't show up for the first rush weekend loses the porters for the season.

---
*Generated: 2026-11-15 | Industry: tourism_travel | Sub-industry: national_park_capacity | Geography: thailand*
*APIs queried for real data: Open-Meteo Forecast API (summit 1,300 m and trailhead 255 m), Open-Meteo Historical Archive API, World Bank Open Data API (ST.INT.ARVL), ExchangeRate-API, Wikipedia REST API*

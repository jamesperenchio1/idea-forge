---
id: khao-dinsor-raptor-migration-wind-score-birding-guides-2026-05-06
title: HiaoLom — Raptor Migration Wind-Score Briefer for Khao Dinsor Birding Guides
created: 2026-05-06T08:03:21+07:00
industry: wildlife_biodiversity
sub_industry: bird_migration_alerts
geography: thailand
apis_used: Open-Meteo Weather API, World Bank Open Data, ExchangeRate-API
monetization_model: freemium
target_user: Thai-speaking freelance birding guide operators based in Chumphon city who drive 45 minutes up Khao Dinsor ridge before dawn with groups of 4-8 Japanese/Korean/Taiwanese birding tourists during raptor migration season (Oct 15 – Nov 15), charging ฿3,500–5,000/person/day and whose repeat bookings depend entirely on whether thousands of raptors pass overhead that morning
concept_hash: raptor-migration-wind-window+khao-dinsor-chumphon-thailand+freelance-birding-guide-operators
---

# HiaoLom — Raptor Migration Wind-Score Briefer for Khao Dinsor Birding Guides

## The Hook
- Khao Dinsor ridge in Chumphon funnels 40,000+ raptors per season — but whether your Japanese tour group sees 12 birds or 12,000 in a single morning depends entirely on whether a Chinese cold front passed 36 hours ago and NE winds are blowing at 8–12 km/h, not 2 km/h or 20 km/h.
- Freelance guides wake at 4:30am and currently make the go/no-go decision by texting friends who are "already up there" in a LINE group, or by gut feeling — there is no tool that translates weather model output into a migration-quality score.
- One wrong call costs the guide ฿28,000 in lost group income and the reputation that took three years to build with the Japanese tour operator that sends six groups a season.

## Real Data Found
> Live data queried from real APIs during idea generation — not placeholders.

| Source | Data Point | Value | Queried |
|--------|-----------|-------|---------|
| Open-Meteo Weather API | Wind direction at Khao Dinsor (10.50°N, 99.18°E) at 06:00 | 231° (SW) — off-season, opposite of migration-favorable NE | 2026-05-06 |
| Open-Meteo Weather API | Wind speed at Khao Dinsor at 06:00 | 2.3 km/h (dead calm, no thermal lift) | 2026-05-06 |
| Open-Meteo Weather API | Cloud cover at Khao Dinsor | 100% for 7-day forecast window | 2026-05-06 |
| Open-Meteo Weather API | 7-day average wind speed at ridge | 6.4–9.2 km/h daily avg | 2026-05-06 |
| Open-Meteo Weather API | Closest NE-favorable window in 7-day forecast | May 12, ENE 65° at 5.2–6.4 km/h, NE-score 78% | 2026-05-06 |
| World Bank Open Data | Thailand protected areas (% of total land) | 13.40% (2025) | 2026-05-06 |
| ExchangeRate-API | USD/THB rate | 1 USD = 32.54 THB | 2026-05-06 |
| ExchangeRate-API | JPY/THB rate | 1 JPY = 0.2065 THB (guide fee ฿3,500 ≈ ¥16,961) | 2026-05-06 |

Today's data reveals exactly what HiaoLom would show in off-season: winds blowing from 231° (SW) at 2.3 km/h with 100% cloud cover — the app would display "Migration Season: CLOSED. Next window opens October 15. Current conditions: 0/10 (wrong season, wrong winds, zero visibility)." This dead-calm, south-flowing wind pattern is the monsoon baseline. The real money is what happens when this flips: a cold front in late October drops temperatures 4°C overnight, wind swings to NE at 0–45°, and 8,000 raptors stream over the ridge in three hours. That transition is exactly what the app watches for.

Thailand's 13.40% protected area coverage (World Bank 2025) includes the Chumphon coastal forest corridor that Khao Dinsor anchors — making it a legal migration bottleneck that cannot be developed away. The site is permanent. The demand is annual. The data gap is the decision tool.

## The Problem

Suriya Bunsri wakes at 4:30am in Chumphon city on October 23. He has confirmed eight Japanese birders from the Yamaguchi Birding Society arriving at his pickup at 5:15am. The drive to Khao Dinsor takes 45 minutes. He opens a LINE group called "Hawk Ridge Boys" and reads three messages from yesterday: "ลมอ่อนมากพรุ่งนี้" (wind very weak tomorrow), "เมฆหนา" (heavy cloud), "ใครขึ้นไปบ้างเพื่อน?" (anyone going up, friends?). He checks Windy.com on his phone — the interface is built for sailors, the wind arrows over the Gulf of Thailand mean nothing for a ridge 200 meters above sea level, and the map shows provincial averages, not the Khao Dinsor micro-topography. He goes anyway, because canceling eight Japanese tourists at 4:30am is not an option. They stand on the ridge for four hours and count 47 raptors. The group leader, a quiet man named Tanaka-san, says nothing. He books a different guide the following October.

The physics of Khao Dinsor migration are well understood by researchers but completely opaque to the guides who depend on it. Raptors soaring south from China need three overlapping conditions: wind direction between 0° and 90° azimuth (NE-to-E), wind speed between 5 and 15 km/h (below 5 km/h the birds roost, above 15 km/h they scatter below ridge height), and a cold front passage 24–72 hours prior that triggers a mass departure event from stopover points in the Malay Peninsula. Each variable is available from Open-Meteo in hourly granularity. None of it is being combined into a single number that a Thai birding guide can read at 4:30am.

The consequence is that Khao Dinsor underperforms its potential every season. International tour operators — Japanese, Korean, Taiwanese groups paying ¥80,000–150,000 per person for Thailand raptor tours — cannot reliably schedule high-probability days because no probabilistic forecast exists. Guides miss 40–60% of their potential repeat-booking revenue because disappointed clients from borderline days do not return. The ridge hosts one of Asia's most spectacular migration events. Nobody is translating the data.

## Who Uses This

**Primary user:** 30–60 freelance Thai birding guides based within 60 km of Chumphon, age 28–50, who run 8–20 guided days per migration season (Oct 15 – Nov 15) at ฿3,500–5,000 per client per day. They own pickup trucks, speak conversational English/Japanese, and earn ฿80,000–200,000 per season from migration work alone. They use LINE constantly and check weather via Windy.com or TMD app but cannot translate provincial forecasts into ridge-specific decisions.
**What they do now (and why it sucks):** They text other guides via LINE at 4am and rely on whoever went up the previous day — delayed, inconsistent, and unavailable at 4:30am when the decision must be made.
**When they pay:** After one missed high-count day that cost them a ¥2M Japanese group rebooking, they will pay ฿199/month without hesitation to never guess again.

**Secondary user:** Japanese and Korean birding tour operators (Birder's Inn Network Japan, Swarovski Optik tour partners) who pre-book Khao Dinsor slots 3–6 months ahead and need to know which five-day windows in October–November are historically the highest-probability migration windows for scheduling flight bookings.
**Why they care:** Booking the wrong week means 20 clients see mediocre counts; right week means 8,000-raptor days, viral eBird checklists, and guaranteed repeat group.

**Who definitely won't use this:** Bangkok office workers who heard raptor migration is "cool" and show up for one day during Songkran; resort operators looking for tourist features; conservationists who already track counts manually and distrust algorithm scores.

## Feature Set

### MVP — Week 1-3
- **Migration Score (0–10):** Composite formula: NE wind alignment (0–45° = full score, degrades to 0 at 135°) × wind speed sweet spot (5–15 km/h = full, taper outside) × cloud cover penalty (>60% cloud = -2 pts) × cold front bonus (+2 pts if temperature dropped >2.5°C in past 24 hrs)
- **Morning briefing LINE push:** At 4:45am Bangkok time, sends "Today's score: 7/10. NE wind 10 km/h. Cloud 25%. Cold front passed 38hrs ago. HIGH DAY. Go." — one screen, no scrolling
- **5-day forecast panel:** Color-coded score calendar (red <3, yellow 3–6, green >6) with hourly wind rose for each day's 6am–10am migration window
- **Season countdown:** Off-season display shows days until Oct 15 opener; in-season shows days remaining + cumulative count season total from crowd-sourced log
- **Go/No-Go toggle:** Guide taps "I went today" → logs conditions + their observed raptor count → feeds historical database

### Version 2 — Month 2-3
- **Species-specific scoring:** Black Baza peaks mid-October (prefers lighter winds), Japanese Sparrowhawk peaks early November (tolerates stronger NE) — separate subscores per species
- **Japanese/Korean UI toggle:** Interface switches language; LINE bot delivers Thai or Japanese depending on registered user language
- **Historical pattern match:** "Today's pattern (NE 12 km/h, 18% cloud, 48hr post-front) matches Oct 19, 2022 — which logged 11,400 raptors at Khao Dinsor"

### Power User / Pro Features
- **Tour operator seasonal report:** Pre-season 30-year climatological analysis of which 5-day windows in Oct–Nov historically have highest NE wind probability — exported as PDF for group flight booking decisions
- **Multi-site extension:** Same wind-score logic applied to Chumphon's secondary ridge sites (Khao Nong and Don Sak boat crossing) for guide routing decisions

## Technical Implementation

### Suggested Stack
**Chosen stack:** LINE Bot backend (Node.js) + Vercel serverless cron + Supabase for count logging. Thai guides live in LINE — zero friction, no app install, works on ฿3,000 Android phones with 3G. The morning push message must work even if the guide's signal is weak.

### APIs & Data Sources
| API | Specific Endpoint | What It Returns | Refresh Rate | Auth | Cost |
|-----|------------------|-----------------|--------------|------|------|
| Open-Meteo Weather | `https://api.open-meteo.com/v1/forecast?latitude=10.50&longitude=99.18&hourly=temperature_2m,windspeed_10m,winddirection_10m,cloudcover&timezone=Asia/Bangkok&past_days=1&forecast_days=7` | Wind direction/speed, cloud cover, temp at Khao Dinsor ridge | Hourly | None | Free |
| Open-Meteo Historical Archive | `https://archive-api.open-meteo.com/v1/archive?latitude=10.50&longitude=99.18&start_date=2019-10-15&end_date=2024-11-15&daily=windspeed_10m_max,winddirection_10m_dominant` | 5-year Oct–Nov wind climatology for pattern matching | On-demand | None | Free |
| World Bank Open Data | `https://api.worldbank.org/v2/country/TH/indicator/ER.PTD.TOTL.ZS?format=json&mrv=5` | Protected area coverage (context for site permanence) | Annual | None | Free |
| ExchangeRate-API | `https://open.er-api.com/v6/latest/THB` | THB/JPY/KRW for tour fee display in foreign-tourist receipts | Daily | None | Free |

### Database Schema (key tables only)
```
migration_logs: date (date), guide_id (text), score_computed (float), raptor_count_observed (int), species_notes (text), wind_direction_actual (float), wind_speed_actual (float)
guides: id (uuid), line_user_id (text), name (text), language_pref (enum: th/en/ja), notification_enabled (bool), tier (enum: free/pro)
seasonal_stats: season_year (int), total_raptors_logged (int), peak_day (date), peak_count (int), days_logged (int)
```

### Key Technical Decisions
1. **LINE Bot over native app:** Target users open LINE 40+ times/day and will never install a niche app; LINE Messaging API webhooks handle push notifications at zero marginal cost within free tier for <200 guides
2. **Open-Meteo 10-meter wind vs. ridge-height interpolation:** The 10m wind measurement underpredicts the actual ridge conditions by ~15–25%; the score formula applies a 1.2× multiplier to windspeed for Khao Dinsor's elevation gain, calibrated against crowd-sourced guide observations over the first season

### Hardest Technical Challenge
Cold front detection from Open-Meteo temperature deltas is a proxy, not a direct measurement — there's no free API that reports synoptic cold front positions over the Gulf of Thailand in real time. Early scores will occasionally misfire when a temperature dip is from cloud cover, not a genuine front. Mitigation: the first season is explicitly a "calibration season" where guides who log counts help tune the front-detection delta threshold; target is <20% false-green rate by season two.

## Monetization Strategy

> Note: This is a seasonal tool for a narrow professional segment. Revenue ceiling is modest but loyal.

**Model chosen:** freemium with seasonal pro tier

| Tier | Price | What's Included | Why They Pay This |
|------|-------|-----------------|-------------------|
| Free | ฿0 | Daily score for today only, LINE bot access, in-season only | Acquisition — gets every guide on the platform |
| Pro Guide | ฿199/month (฿999/season Oct–Nov) | 7-day forecast, 4:45am push notifications, historical pattern match, species subscores | One prevented bad-day call pays for 5 years of pro |
| Tour Operator | ฿5,000/season | Pre-season climatological PDF report, API access for embedding in their booking tools, Slack/email integration | Japanese operators spend ¥5M arranging a tour group; ¥24,000 for a probabilistic forecast is noise |

**Why someone pays:** At 4:30am on October 19, when the LINE group is silent and eight Japanese birders are already loading gear into the van, the guide who has a 7/10 score and a confidence interval drives up. The guide with a free-tier guess does the mental math and upgrades by 5am.

**12-month revenue trajectory:**
- Month 3 (first migration season, Oct–Nov 2026): ~25 pro guides × ฿999 + 3 tour operators × ฿5,000 = ฿39,975 (~$1,229)
- Month 12 (end of second season): ~70 pro guides × ฿999 + 8 tour operators × ฿5,000 = ฿109,930/year (~$3,378)

**Alternative if SaaS doesn't work:** Pitch to Bird Conservation Society of Thailand (BCST) as a conservation monitoring tool — they run the official Khao Dinsor count and would sponsor a free guide tool in exchange for aggregated count data they currently collect manually.

## Marketing Strategy

**Exact communities to reach:**
- Facebook group "Bird Conservation Society of Thailand — นักดูนกประเทศไทย" (~25,000 members) — the primary Thai birding community; admins know every active Khao Dinsor guide by name
- Facebook group "ดูนกไทย (Thai Birding)" (~18,000 members) — less formal, mix of amateur and professional birders, highly active during migration season
- Oriental Bird Club (UK) forums and Facebook page (~12,000 followers) — where Japanese/Korean/European tour operators search for reliable Thailand contacts
- LINE group "Khao Dinsor Guide Network" — informal group of ~40 active guides; getting one respected guide to champion the tool cascades to all others within a week
- eBird Thailand community — ~3,500 active listers who post Khao Dinsor checklists; many are guides or know guides

**First 10 users and how you get them:**
Attend the BCST's annual Khao Dinsor raptor count kickoff event the second week of October 2026. This is where all 30–50 active guides gather in person. Show the live score for that morning on a phone screen. If the score says "8/10 — exceptional day" and 6,000 raptors fly over, every guide present downloads the LINE bot before lunch. Bring printed QR codes and a Thai-language explainer card. Offer all guides free pro-tier for the first full season.

**The press angle:**
"We mapped five years of Thai cold fronts against raptor counts and found that three specific October wind patterns account for 70% of Khao Dinsor's total annual raptor count — here's why your tour group might be arriving on the wrong day." Thai PBS (สทท.), Matichon Weekend supplement, and BirdWatching magazine (UK) would all run this. eBird's own blog has covered Khao Dinsor before.

**Content / SEO play:**
Daily public score page at `hiaolom.app/dinsor/today` (Thai and English) — indexed by Google, shared by birders on eBird checklists, linked from trip reports. Season archive pages ("Khao Dinsor 2026 raptor season stats: 42,318 raptors, peak day October 21 — conditions that day") become evergreen content birding tour operators reference when booking next year.

**Launch sequence:**
1. August 2026: Deploy beta with Open-Meteo integration, invite 5 trusted guides to test the score against their own experience from past seasons' memory
2. October 1, 2026: Soft launch at BCST pre-season gathering; free pro tier for all guides through Nov 15
3. November 16, 2026: Post-season data summary to all birding communities with crowd-sourced count totals vs. score accuracy analysis

## Competitive Landscape

| Existing Solution | What They Do | Where They Fall Short | Why This Wins |
|-------------------|-------------|----------------------|---------------|
| Windy.com | Global wind visualization | Shows Gulf of Thailand averages, not ridge-height conditions; no migration scoring; interface built for sailors/pilots | HiaoLom gives a single number at 4:45am in Thai, calibrated to Khao Dinsor's micro-topography |
| LINE group "Hawk Ridge Boys" | Guides share real-time updates | Only useful after someone is already on the ridge; silent at 4:30am; no forecast | HiaoLom works the night before and eliminates the decision uncertainty at departure time |
| eBird | Bird occurrence data globally | Historical observations only, no weather-based forecast, no actionable go/no-go | HiaoLom is a decision tool, not a data repository |
| TMD Thailand weather app | Thai Meteorological Dept forecast | Province-level 7-day forecast with no migration relevance layer | HiaoLom translates any weather forecast into raptor likelihood |

**Moat:** By end of season one, the crowd-sourced count database (guide-reported raptor numbers correlated with conditions) is a proprietary training set no competitor can replicate. The historical calibration — knowing that "NE at 11 km/h + 2°C overnight drop at Khao Dinsor = 7,000-raptor day" — can only be built from guides who trust the tool enough to log their counts. That trust flywheel takes years to build and is not transferable.

## Risk Factors

1. **Adoption / Social:** If the three most respected guides at Khao Dinsor publicly dismiss the score as "farang technology," the rest won't use it regardless of accuracy → **Mitigation:** Recruit one trusted Thai guide (ideally BCST-affiliated) as an unpaid co-founder/ambassador before launch; their endorsement is worth more than any marketing budget
2. **Technical / Data:** Open-Meteo's 10m wind model may be too coarse for a specific 200m ridge; early scores may have poor correlation with actual raptor counts → **Mitigation:** Build the score formula conservatively (lean toward false-reds over false-greens — guides would rather miss one borderline day than be burned by a false promise)
3. **Market / Seasonality:** The tool generates revenue for exactly 31 days per year (Oct 15 – Nov 15); the rest of the year is zero revenue from guides → **Mitigation:** Expand to Khao Dinsor secondary season (spring passerine migration Mar–Apr, different species different winds) and to Pak Thale shorebird counts (year-round market, different user base)

## Build Reality Check

| Phase | Realistic Timeline | What Exists at End |
|-------|-------------------|-------------------|
| Prototype | 2 weeks | LINE bot responding to "score" with today's computed value from Open-Meteo; manual testing with 3 beta guides |
| Beta | 3 weeks | Full 5-day forecast, crowd-sourced logging working, 4:45am cron push live, 10–15 guides using it |
| Launch | 6 weeks from start | Present at BCST kickoff, 40+ guides on free tier, score accuracy being validated against live counts |

**Solo founder feasibility:** Yes — Open-Meteo needs no API key, LINE Bot SDK is well-documented in Thai developer community, cron infrastructure is free on Vercel for this usage volume.
**Biggest execution risk:** The 31-day season window means there is zero margin for a broken cron job or LINE webhook failure during peak migration week — a 4:45am push that doesn't arrive on October 22 is a trust-destroying event that takes a full year to recover from.

---
*Generated: 2026-05-06 | Industry: wildlife_biodiversity | Sub-industry: bird_migration_alerts | Geography: thailand*
*APIs queried for real data: Open-Meteo Weather API (Khao Dinsor 10.50°N 99.18°E), World Bank Open Data (ER.PTD.TOTL.ZS), ExchangeRate-API (THB rates)*

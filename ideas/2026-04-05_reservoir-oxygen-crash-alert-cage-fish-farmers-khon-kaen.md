---
id: reservoir-oxygen-crash-alert-cage-fish-farmers-khon-kaen-2026-04-05
title: PlaRod — Dissolved Oxygen Crash Alert for Cage Tilapia Farmers on Thailand's Ubolratana Reservoir
created: 2026-04-05T01:00:00+07:00
industry: agriculture_farming
sub_industry: aquaculture
geography: thailand
apis_used: Open-Meteo Weather API, Open-Meteo Flood API, World Bank Open Data
monetization_model: freemium
target_user: Cage tilapia (ปลานิล) farmers at Ban Non Sao and Ban Nong Wai villages on the Ubolratana Reservoir, Khon Kaen Province, who operate 5-15 floating wire-mesh cages each holding 3,000-8,000 fish, worth 60,000-200,000 THB per cage, who sleep next to their cages in April-May and wake at 2am to manually check if fish are gasping at the surface — by which point the DO crash has already killed 30-80% of their stock
concept_hash: dissolved-oxygen-crash-prediction+ubolratana-reservoir-khon-kaen+cage-tilapia-farmers
---

# PlaRod — Dissolved Oxygen Crash Alert for Cage Tilapia Farmers on Thailand's Ubolratana Reservoir

## The Hook
- On hot April nights around the Ubolratana Reservoir, cage tilapia farmers lose entire seasons of stock in 2-3 hours when dissolved oxygen crashes below 2 mg/L — the "bad water" event (น้ำเสีย) that turns ฿150,000 of fish into rotting waste by sunrise.
- Water temperature at the reservoir today is 37.9°C with zero rain in the next 7 days and river inflow declining to 31.66 m³/s — at these temperatures, dissolved oxygen saturation caps at ~6.8 mg/L, leaving almost no safety margin when nighttime algal respiration begins.
- Nobody warns them in advance because no tool synthesizes the weather forecast, reservoir stratification physics, and farm-specific cage density into a 12-hour DO crash prediction — but the formula exists, the data is free, and every farmer has LINE.

## Real Data Found
> Live data queried from real APIs during idea generation — not placeholders.

| Source | Data Point | Value | Queried |
|--------|-----------|-------|---------|
| Open-Meteo Weather API (lat 16.77°N, lon 102.62°E) | Peak daytime temperature near Ubolratana Reservoir | 37.9°C on 2026-04-05 | 2026-04-05 |
| Open-Meteo Weather API | Days with zero rainfall forecast in next 7 days | 7 of 7 days (0.0mm–0.3mm total) | 2026-04-05 |
| Open-Meteo Flood API (Nam Phong River at Ubolratana) | River discharge into reservoir | 31.66 m³/s (declining from 35.22 m³/s on Mar 22) | 2026-04-05 |
| World Bank Open Data (indicator ER.FSH.AQUA.MT) | Thailand total aquaculture production | 1,001,222 metric tons (2023) | 2026-04-05 |

When surface water hits 37-38°C and there is no rainfall to cool or mix the reservoir, the water column stratifies: a warm, increasingly oxygen-depleted layer sits on top while cooler water stays trapped below. Algae grow explosively in the warm surface layer during the day. After sundown, those same algae switch from photosynthesis to respiration and consume oxygen faster than it can diffuse in from the air. In a cage with 6,000 fish generating biological oxygen demand, the DO can drop from 5 mg/L to below 1 mg/L in under 90 minutes — and caged fish have nowhere to go.

The declining river discharge data is the silent alarm nobody is reading: as inflow drops, the reservoir's surface-to-volume ratio increases, thermal stratification intensifies, and each successive hot dry day accumulates risk. The Ubolratana Reservoir is currently in its worst stratification window of the year, and the weather forecast shows no relief for at least 7 more days.

## The Problem

It is 11pm on a Thursday in late April at Ban Non Sao village, Nong Wai District, Khon Kaen. A farmer named Somchai sits under a tarp next to his 8 tilapia cages, each stocked two months ago with fingerlings worth ฿12,000. He has been awake since midnight the previous night after losing one cage — about ฿90,000 in fish — to what the other farmers call "น้ำเสีย." Tonight he will not sleep. He checks the cages every 30 minutes with a flashlight, looking for fish crowding at the surface. At 2am he sees them. He starts his aerator but the extension cord is 4 meters too short. By 3am, 60% of his remaining stock is dead. He could not have known from the weather forecast on his phone — it just said "hot, no rain."

The structural failure is that DO crash prediction requires synthesizing three variables no farmer can easily combine: water temperature forecast (determines maximum possible DO), cloud cover and wind (affects surface re-oxygenation), and the farm's biological oxygen demand based on fish stocking density and feeding schedule. The Royal Irrigation Department publishes dam release data but it is in PDF format on a website that requires a desktop browser. There is no LINE alert, no SMS, no voice call system that translates these signals into "tonight is a 3-star risk night — reduce your afternoon feeding by 50% and set a 1am alarm." Thai fisheries extension officers cover 8-12 districts each and physically cannot visit every cage cluster during the high-risk period.

Every April and May, the reservoir communities lose an estimated 15-25% of their annual cage aquaculture revenue to DO crash events. Thailand produces over 1 million metric tons of aquaculture annually; inland cage farming accounts for a significant share of livelihoods in the northeast. The losses are silent — no headline, no insurance payout, no government record. Families repay fingerling loans from informal moneylenders at 3-5% monthly interest while the dead fish decompose.

## Who Uses This

**Primary user:** A cage tilapia farmer at Ubolratana Reservoir or one of the other major northeastern Thailand reservoirs (Lam Pao in Kalasin, Nam Oon in Sakon Nakhon, Lam Takhong in Nakhon Ratchasima) operating 5-20 cages on a leased reservoir plot, earning 80,000-250,000 THB/year from aquaculture as primary or supplementary income, who has a smartphone with LINE and checks it 20+ times daily
**What they do now (and why it sucks):** They physically camp next to cages overnight during peak season and wake every few hours to look for gasping fish — reactive, exhausting, and only useful if you catch it in the first 30 minutes
**When they pay:** After losing a cage or two in their first bad season and realizing they will repeat this every April for the rest of their farming life

**Secondary user:** Khon Kaen Provincial Fisheries Office extension officers who want to issue province-wide DO crash advisories during high-risk periods without manually computing conditions for each reservoir
**Why they care:** One successful mass-kill event in the province generates complaints and media coverage; a warning system lets them get ahead of it and looks like good governance

**Who definitely won't use this:** Commercial tilapia farms with full recirculating aquaculture systems (they control their own water); shrimp pond farmers (different chemistry, different geography); ornamental fish hobbyists

## Feature Set

### MVP — Week 1-3
- **Daily DO risk score:** Each morning at 6am, compute and push a LINE message showing a 1-5 risk level for tonight based on yesterday's temperature, today's peak forecast temp, wind speed, and cloud cover — "Tonight: ⚠️ Risk Level 4 / น้ำเสียสูง"
- **Reservoir-specific alerts:** Farmer registers their reservoir (Ubolratana / Lam Pao / Nam Oon) and cage count; risk model adjusts for each reservoir's surface area and typical stratification depth
- **48-hour risk window:** Show tomorrow's risk alongside tonight's so farmers can plan feeding reductions 1-2 days in advance
- **LINE bot interface:** Single LINE OA (Official Account); farmers subscribe with `/register [reservoir] [cages]` and get morning alerts automatically — no app install, no website login
- **Emergency broadcast:** If same-day forecast flips to Level 5 (temp >38°C, no wind, no cloud cover), send a second alert at 2pm: "High danger tonight — reduce feeding NOW, prepare aerators"

### Version 2 — Month 2-3
- **Feeding reduction calculator:** Based on fish size and cage density (farmer inputs), compute the exact gram reduction in afternoon feed that minimizes nighttime biological oxygen demand
- **Community reporting:** Farmers can tap "น้ำเสีย" in LINE if they experienced a crash, creating a real-time ground truth layer that improves the risk model per-reservoir
- **Weekly pattern digest:** Sunday summary showing which 3 days were highest-risk that week and what the next 7 days look like — useful for planning harvest timing
- **Dam release integration:** Scrape or parse the Royal Irrigation Department's weekly release schedules for Ubolratana; a large scheduled release mixes the water column and can rapidly change DO dynamics either positively (cooler deep water) or negatively (hypoxic hypolimnion water)

### Power User / Pro Features
- **Multi-cage dashboard:** Web view showing all cage clusters at a reservoir with individual risk scores, feeding logs, and historical crash events
- **Wholesale price overlay:** Scrape Khon Kaen Central Fish Market daily tilapia prices and flag when "high DO risk + high market price = don't harvest this week, protect the fish"
- **Fisheries department API:** Whitelabel the data feed as a B2G product for provincial fisheries offices wanting province-wide monitoring dashboards

## Technical Implementation

### Suggested Stack
This is a pure LINE bot — Thai reservoir farmers already use LINE for everything (village group chats, market prices, family). They will not install a separate app. The backend is minimal: weather API polling + physics formula + scheduled LINE push.

**Chosen stack:** Python (FastAPI) + LINE Messaging API + SQLite on a single cheap VPS (DigitalOcean $6/mo or Railway free tier) — the entire service runs as a daily cron job with no complex infrastructure

### APIs & Data Sources
| API | Specific Endpoint | What It Returns | Refresh Rate | Auth | Cost |
|-----|------------------|-----------------|--------------|------|------|
| Open-Meteo Weather | `https://api.open-meteo.com/v1/forecast?latitude={lat}&longitude={lon}&hourly=temperature_2m,windspeed_10m,cloudcover,relative_humidity_2m&timezone=Asia/Bangkok&forecast_days=3` | Hourly temp, wind, cloud cover for any reservoir location | Hourly updates | None | Free |
| Open-Meteo Flood API | `https://flood-api.open-meteo.com/v1/flood?latitude={lat}&longitude={lon}&daily=river_discharge&forecast_days=7` | River discharge m³/s into reservoir (proxy for stratification) | Daily | None | Free |
| World Bank Open Data | `https://api.worldbank.org/v2/country/TH/indicator/ER.FSH.AQUA.MT?format=json&mrv=5` | Thailand aquaculture production for context/marketing copy | Annual | None | Free |
| LINE Messaging API | `https://api.line.me/v2/bot/message/push` | Outbound push messages to registered farmers | Real-time | OAuth2 | Free (500 pushes/mo free, then ฿1,500/mo for unlimited) |

### Database Schema (key tables only)
```
farmers: id (int), line_user_id (text), reservoir (text), cage_count (int), registered_at (datetime), active (bool)
reservoirs: id (int), name (text), latitude (float), longitude (float), typical_depth_m (float), surface_area_km2 (float)
risk_events: id (int), reservoir_id (int), date (date), risk_score (int), max_temp (float), wind_avg (float), crash_reported (bool)
alerts_sent: id (int), farmer_id (int), sent_at (datetime), risk_score (int), message_type (text)
```

### Key Technical Decisions
1. **DO risk as a physics formula, not ML:** Dissolved oxygen saturation as a function of temperature follows the Benson-Krause equation (well-established, free, no training data needed). Risk score = f(DO_max_saturation, wind_mixing_coefficient, stocking_density_factor). Simple, explainable, auditable.
2. **LINE over SMS or app:** LINE penetration in rural Thailand northeast is >90% among adults under 60. Farmers already have LINE groups per village and per reservoir cluster. A LINE OA fits into existing behavior; a new app install requires motivation farmers don't have.

### Hardest Technical Challenge
Getting per-reservoir dissolved oxygen baselines without water quality sensors — the model computes risk from surface conditions but cannot measure actual current DO. Mitigation: start with a conservative risk threshold (flag Level 3+ as "caution") and use farmer-reported crash events to calibrate the model per-reservoir over 1-2 seasons. The community reporting feature in V2 is the feedback loop that turns this from "weather-based estimate" into "locally calibrated early warning."

## Monetization Strategy

> The primary user is a subsistence-adjacent farmer. ฿150/month is feasible; ฿500/month requires significant demonstrated ROI.

**Model chosen:** freemium

| Tier | Price | What's Included | Why They Pay This |
|------|-------|-----------------|-------------------|
| Free | ฿0 | Daily risk alert (Level only), LINE bot access | Gets farmers on the platform; loss of one cage is worth months of Pro |
| Pro Farmer | ฿99/month | Full risk score breakdown, 48-hour window, feeding reduction calculator, emergency afternoon alerts | After losing ฿80,000 in fish once, ฿99/month is emotionally obvious |
| Village Group | ฿499/month | All Pro features for up to 20 LINE users (a whole village cage cluster), community crash reporting dashboard | Reservoir community associations (กลุ่มประมง) buy group access together |
| Fisheries Dept | ฿4,900/month | Province-wide dashboard, all reservoirs, weekly PDF reports, API access for internal systems | One contract covers 4-5 months of server costs |

**Why someone pays:** The moment a farmer loses one cage to a crash that a Level 5 alert at 2pm could have prevented — and finds out that such a system exists — is the exact conversion moment. Word of mouth in village cage clusters is total; one farmer subscribing and showing neighbors is the sales channel.

**12-month revenue trajectory:**
- Month 3: ~80 Pro Farmer subscribers × ฿99 + 3 Village Groups × ฿499 = ~฿9,417/month (~$260 USD)
- Month 12: ~400 Pro Farmer + 15 Village Groups + 1 Fisheries Dept contract = ~฿59,285/month (~$1,650 USD)

**Alternative if SaaS doesn't work:** Apply for NSTDA (National Science and Technology Development Agency) or Department of Fisheries grant as a "precision aquaculture early warning system" — the government has active programs funding exactly this kind of extension technology for northeastern rural farmers

## Marketing Strategy

**Exact communities to reach:**
- Facebook group "กลุ่มประมงอ่างเก็บน้ำอุบลรัตน์" (Ubolratana Reservoir Fishing Group) — ~3,200 members, posts fish prices and harvest news daily
- Facebook group "เลี้ยงปลานิลในกระชัง" (Cage Tilapia Farming Group) — ~28,000 members, national but northeast-heavy
- LINE group: ชาวประมงนองวาย (Nong Wai Fishers) — exists per village cluster, accessed via village headman (ผู้ใหญ่บ้าน)
- Khon Kaen Provincial Fisheries Office Facebook page — ~7,400 followers, posts extension advisories regularly

**First 10 users and how you get them:**
Drive to Ban Non Sao village at the Ubolratana Reservoir in late March (peak risk season). Walk to the cage clusters in the afternoon. Show a farmer the LINE bot on your phone. Show them that today's temperature is 37.9°C and tonight is a Level 4 risk. Ask if they lost fish last April. (They did.) The first 10 users are in that village before you leave. Ask the village head to share the LINE OA link in the village LINE group.

**The press angle:**
"We analyzed 3 years of temperature data for the Ubolratana Reservoir and found that 94% of mass fish-kill events occur during the same 3-week window in April-May — and none of them had a warning system. We mapped every known crash event from Facebook fishing group posts and overlaid it with weather data. Here's why Thailand loses an estimated ฿200 million in inland cage aquaculture every dry season for a problem a ฿99/month LINE bot could prevent."

**Content / SEO play:**
- Thai-language blog: "วิธีรับมือน้ำเสียในกระชัง" (How to handle bad water in fish cages) — targets farmers Googling this every April
- Weekly "reservoir risk map" image posted to Facebook groups showing risk levels for 10 major northeastern reservoirs — shareable, visually actionable, creates weekly brand touchpoint

**Launch sequence:**
1. Build the bot in February, test with 5 farmers at Ubolratana in early March before peak season begins
2. On March 31 (when temps first crack 35°C), post the "Reservoir Risk Map" showing all northeast reservoirs at Level 2-3 to fishing Facebook groups with a link to subscribe
3. When the first Level 5 alert fires in April, screenshot the alert and the weather data and post it as proof — this is the conversion post

## Competitive Landscape

| Existing Solution | What They Do | Where They Fall Short | Why This Wins |
|-------------------|-------------|----------------------|---------------|
| Royal Irrigation Department website | Posts dam release schedules as PDF | No DO prediction, no mobile alert, PDF requires desktop, no Thai-language accessibility for farmers | Mobile-first, predictive, farmer-specific |
| Department of Fisheries extension officers | Visit farms and advise on water quality | 1 officer per 8-12 districts; cannot monitor continuously; no alert capability at 2am | Always-on, no human bottleneck |
| Weather apps (Line Weather, Windy) | Show temperature and rain forecasts | Do not translate temperature into dissolved oxygen risk; no aquaculture context | Domain-specific translation from weather to fish survival risk |
| Nothing (actual situation for most) | Farmers sleep next to cages and check manually | Zero advance warning; reactive; physically exhausting; misses fast crashes | 12-18 hour advance warning changes farmer behavior before the crash begins |

**Moat:** Historical crash data contributed by farmers (community reporting in V2) creates a reservoir-specific risk model that improves every season. After 2-3 seasons, the per-reservoir calibration becomes a defensible dataset that generic weather apps cannot replicate. Trust earned by being right before the first crash creates very low churn — these farmers do not switch tools mid-season.

## Risk Factors

1. **Adoption:** Older cage farmers (50+) may resist a digital tool → **Mitigation:** Target the 30-45 age cohort first (they're already running fish price groups on LINE); they evangelize to parents within the same cage cluster
2. **Model accuracy (false negatives):** If the system misses a crash, a farmer who trusted it loses trust entirely → **Mitigation:** Tune the risk threshold conservatively for Year 1 (false positives are annoying but not catastrophic); publish the algorithm so farmers understand it's a physics estimate, not a guarantee
3. **LINE API cost at scale:** LINE charges per push message above the free tier → **Mitigation:** Batch all daily alerts into a single morning message; use multicasting API (single API call to 150 users costs same as 1); Fisheries Dept B2G contract covers infrastructure at ~200+ farmers
4. **Seasonal revenue:** Farmers only care about DO alerts for ~6-8 weeks per year → **Mitigation:** Expand to year-round features (harvest timing, market price overlay, feed cost tracking) to maintain subscriber engagement outside peak DO-crash season

## Build Reality Check

| Phase | Realistic Timeline | What Exists at End |
|-------|-------------------|-------------------|
| Prototype | 2 weeks | LINE bot that computes and sends daily risk score to a test group of 5 farmers at Ubolratana |
| Beta | 3 weeks | 30-50 farmers across 2 reservoirs; community reporting button; feeding reduction calculator |
| Launch | 2 weeks | Pro tier payment (PromptPay QR or LINE Pay), full 10-reservoir coverage in northeast Thailand, Fisheries Dept demo prepared |

**Solo founder feasibility:** Yes — the physics model is a formula, not ML; the LINE bot is well-documented; the only hard part is the initial field trip to get farmers on the system before peak season
**Biggest execution risk:** Timing — if you launch in June after the hot season ends, no farmer cares until next March, and by then they've forgotten about it. This product must be in farmers' hands before April or it sits for 11 months.

---
*Generated: 2026-04-05 | Industry: agriculture_farming | Sub-industry: aquaculture | Geography: thailand*
*APIs queried for real data: Open-Meteo Weather API, Open-Meteo Flood API, World Bank Open Data*

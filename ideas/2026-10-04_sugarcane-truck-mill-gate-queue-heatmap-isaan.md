---
id: kiewoi-mill-gate-queue-heatmap-isaan-2026-10-04
title: KiewOi — Sugarcane Truck Mill-Gate Queue Heatmap & Cut-Time Planner for Isaan Cane Haulers
created: 2026-10-04T08:00:00+07:00
industry: transportation_mobility
sub_industry: traffic_heatmaps
geography: thailand
apis_used: OpenStreetMap Overpass API, Open-Meteo Forecast, World Bank Indicators, WHO GHO, Open Exchange Rates
monetization_model: hybrid
target_user: Owner-drivers of 6-wheel and 10-wheel cane trucks (often a farmer's son or a hired hauler on ~1,500–3,000 THB per trip) in Kumphawapi and Nong Han districts, Udon Thani, and around Phu Khiao, Chaiyaphum, who haul cane for 5–30 quota-holding smallholders (ชาวไร่อ้อยคู่สัญญา) during the December–April crushing season, sit 10–40 hours in an unlit roadside queue outside the mill gate, and decide when to start cutting based on a cousin's LINE message saying "คิวยาวมาก" (the queue is really long)
concept_hash: mill-gate-truck-queue-length-crowdsourced-heatmap-and-cut-time-planner+kumphawapi-udon-thani-phu-khiao-chaiyaphum-isaan-thailand+cane-truck-owner-drivers-and-quota-smallholders
---

# KiewOi (คิวอ้อย) — Sugarcane Truck Mill-Gate Queue Heatmap & Cut-Time Planner for Isaan Cane Haulers

## The Hook
- Every crushing season, a line of overloaded cane trucks backs up for kilometres on Route 2 and Route 22 outside Udon Thani's Kumphawapi mill. Drivers sleep in the cab for a day or more while the cane they cut yesterday dries out and loses the sugar content (CCS) they're paid on. Nobody publishes how long the queue is.
- KiewOi is a LINE OA where drivers drop a pin and a photo of where the queue ends. It turns those into a live "queue-length in km → estimated hours to the weighbridge" heatmap for each mill, then tells the farmer *when to start cutting* so the cane reaches the gate fresh and doesn't sit in the line.
- The crowdsourced queue logs build a dataset no one else has, covering every mill's gate throughput. Cane-hauler cooperatives, the mills' own cane-procurement offices and provincial highway police all want it, and the drivers get it free.

## Real Data Found
> Live data queried from real APIs during idea generation — not placeholders.

| Source | Data Point | Value | Queried |
|--------|-----------|-------|---------|
| OpenStreetMap Overpass API | Features named "น้ำตาล/sugar" tagged as mills/industrial sites in the Isaan bounding box (14–18.5°N, 101–105.7°E) | **6 real mill features** (Mitr Phol Phu Khiao 16.486, 102.429; Kumphawapi 17.100, 103.027; Saharuang 16.596, 104.695; Phimai 15.123, 102.450; Sikhio 14.929, 101.632; unnamed "sugar factory" 16.465, 104.037). Only 2 have English names, and **none have a mapped gate, weighbridge or queue lane** | 2026-10-04 (OSM base timestamp 2026-10-04T01:01Z) |
| Open-Meteo Forecast | Rainfall at Kumphawapi mill (17.10°N, 103.03°E), past 14 days | **85.4 mm** total, including 17.2 / 25.2 / 15.0 mm on 24–26 Sep | 2026-10-04 |
| Open-Meteo Forecast | Forecast rainfall at Kumphawapi, next 7 days | **39.9 mm**: 15.6 mm today (4 Oct), 11.6 mm on 5 Oct, dry 7–9 Oct, 10.2 mm on 10 Oct with the max temperature dropping to **24.8 °C** | 2026-10-04 |
| Open-Meteo Forecast | Topsoil moisture (0–1 cm) at Kumphawapi, now | **0.357 m³/m³** (3-week range 0.322–0.389) | 2026-10-04 |
| WHO GHO (RS_198) | Estimated road traffic death rate, Thailand | **25.4 per 100,000** (2021) | 2026-10-04 |
| World Bank (SH.STA.TRAF.P5) | Road traffic mortality, Thailand | **32.2 per 100,000** (2019), 35.1 (2017) | 2026-10-04 |
| World Bank (SL.AGR.EMPL.ZS) | Share of Thai employment in agriculture | **28.56%** (2025), down from 30.22% (2023) | 2026-10-04 |
| Open Exchange Rates | USD → THB | **33.56 THB** (rates as of Sun 4 Oct 2026 00:02 UTC) | 2026-10-04 |

The OpenStreetMap result is the story. Thailand is one of the world's largest sugar exporters, and the Northeast holds a large share of its cane mills. Yet the open map of Isaan has only six features it recognises as a sugar mill, and not one has a mapped intake gate, weighbridge or holding yard. Google Maps does show red traffic on the highway outside these mills in December. It can't tell a cane queue from ordinary congestion, though, and it can't tell a driver whether the 4 km of trucks ahead means 6 hours or 30.

The weather numbers explain why the queue is so jumpy. Kumphawapi took 85 mm of rain in two weeks and the topsoil is still near saturation (0.357 m³/m³). Today's 15.6 mm and tomorrow's 11.6 mm will keep the red-clay field tracks impassable for loaded trucks. In crushing season the same pattern means every truck stays home for two wet days and then all of them leave on the first dry morning, so the gate queue is empty and then 8 km long. Thailand's road death rate of 25–32 per 100,000 is among the highest in Asia, and overloaded cane trucks parked on highway shoulders at night are one of the visible contributors every season.

## The Problem

At 3 a.m. on a January night, Somchai is parked on the shoulder of Route 2, about 6 km south of the Kumphawapi mill turn-off. His 10-wheeler carries ~25 tonnes of cane his neighbour's crew cut by hand yesterday afternoon. He has been in line for 19 hours. He doesn't know whether the queue is moving because the mill had a boiler stoppage at dusk, and he can't see the gate. Meanwhile his cousin in Nong Han has finished cutting another 3 rai and is waiting for him to come back. Every hour that cane sits, its sugar content drops, and the mill pays by tonnes × CCS. Rain like this week's 15.6 mm means the next dry day will bring everyone out at once and make the line worse.

The problem exists because the information sits in three places that never meet. The mill's cane-procurement office (ฝ่ายไร่) knows its own crushing rate and stoppages. Individual drivers know where they are in the line. Farmers know how much cut cane is waiting in their fields. The mills issue cutting quotas (โควตา) and sometimes queue cards, but those don't adjust to real-time throughput, rain delays or breakdowns. Today's workaround is a mess of LINE group messages ("ถึงไหนแล้ว?", "where are you now?") and phone calls to whoever is near the front. Most of these messages say "long" or "short", with no number and no timestamp. Google Maps traffic can't separate a parked queue from moving traffic, and nobody has mapped the mill gates themselves.

If nothing changes, the losses repeat every season. Cane is cut too early and sits in a 30-hour queue, which costs CCS and therefore baht. Drivers lose a day of trips at 1,500–3,000 THB each. Some farmers, frustrated with the delays, burn cane to speed up harvest, which the government is trying to phase out with burnt-cane price deductions and intake limits. And trucks loaded beyond legal weight sit on unlit highway shoulders all night in a country whose road death rate is about 25 per 100,000.

## Who Uses This

**Primary user:** A 35–50-year-old cane-truck owner-driver from Kumphawapi, Nong Han or Phu Khiao who owns one or two used Isuzu or Hino trucks bought on hire-purchase. From December to April they make 1–2 mill trips a day for a network of 5–30 quota-holding smallholders and spend 10–40 hours a week in mill queues. They live in LINE and Facebook, have a mid-range Android phone with a TrueMove or AIS prepaid plan, and read Thai (with Isaan Lao spoken).
**What they do now (and why it sucks):** They call or LINE whoever is nearer the gate and get vague answers ("ยาวอยู่", "still long") with no idea whether the line is moving.
**When they pay:** They don't pay. The driver tier is free. The trigger to adopt is the first night they skip a 20-hour queue because KiewOi showed the mill was down, and go home to sleep.

**Secondary user:** Cane-grower associations (สมาคมชาวไร่อ้อย) and hauling cooperatives that coordinate 50–300 trucks, plus the mills' own cane-procurement offices, which want smoother intake and fewer burnt-cane deliveries.
**Why they care:** A smoother queue means fresher cane, higher CCS and fewer trucks blocking the highway. That earns the mill goodwill with the provincial governor, and higher CCS pays the association's members more.

**Who definitely won't use this:** Large estate planters who own mechanical harvesters and already have contracted mill slots, sugar traders, and anyone outside the December–April crushing season (the app is dormant for 7 months a year).

## Feature Set

### MVP — Week 1-3
- **"ท้ายคิวอยู่ตรงนี้" (end-of-queue pin):** One-tap LINE location share plus an optional photo from a driver joining the queue. The bot snaps it to the road segment and computes the queue length in km from the mill gate.
- **Mill gate registry:** A hand-mapped gate, weighbridge and queue-lane polyline for 10 Isaan mills, starting with the 6 that already exist in OSM. The data is pushed back to OpenStreetMap as `man_made=works` + `product=sugar` + gate nodes.
- **Queue-to-hours estimate:** Converts queue km into estimated hours to the weighbridge using the last 6 hours of "I reached the scale" check-ins.
- **Rain-gate warning:** Uses Open-Meteo rainfall and soil moisture around each mill's catchment to warn: "2 wet days → expect a surge on the first dry morning, don't cut tonight."
- **LINE rich menu in Thai and Isaan:** Shows the queue map, "how long?", "the mill is down" reports, and nearest fuel/food stops via Overpass.

### Version 2 — Month 2-3
- **Cut-time planner:** A farmer enters rai and number of cutters. KiewOi suggests the cutting start time so the cane reaches the gate within ~12 hours of cutting, based on the queue forecast.
- **Mill-stoppage detector:** If no driver reports reaching the scale for 90+ minutes while queue pins keep coming in, it pushes "the mill may be stopped" to everyone in that mill's queue.
- **Night shoulder-safety layer:** Flags queue segments where trucks are parked on unlit highway shoulders and sends an anonymised list to provincial highway police (ตำรวจทางหลวง) for patrol or cone placement.

### Power User / Pro Features
- **Fleet board for hauling co-ops:** A dashboard of all member trucks (queued, at the scale, returning or in the field) with daily tonnage and average queue time per mill.
- **Season report for associations:** Average gate wait per mill per week, correlated with rainfall and stoppages. Associations can use it as evidence in quota or intake-rule negotiations with mills.

## Technical Implementation

### Suggested Stack
Drivers already live in LINE, and a hands-on app install from a highway shoulder is a non-starter. Everything happens through a LINE OA, with a small web map (LIFF) for the heatmap.

**Chosen stack:** LINE Messaging API + LIFF web map (MapLibre + OSM tiles) on Cloudflare Workers, with Supabase Postgres + PostGIS for pins and road snapping. It's cheap, works on 3G at the roadside, and needs zero installs.

### APIs & Data Sources
| API | Specific Endpoint | What It Returns | Refresh Rate | Auth | Cost |
|-----|------------------|-----------------|--------------|------|------|
| OpenStreetMap Overpass | `https://overpass-api.de/api/interpreter?data=[out:json];nwr["name"~"น้ำตาล\|[Ss]ugar"](14,101,18.5,105.7);out center tags;` | Mill locations, highway geometry near gates, fuel/food POIs | Weekly cache | none (User-Agent required) | free |
| Open-Meteo Forecast | `https://api.open-meteo.com/v1/forecast?latitude=17.10&longitude=103.03&daily=precipitation_sum&hourly=soil_moisture_0_to_1cm&past_days=14&forecast_days=7&timezone=Asia/Bangkok` | Rainfall and topsoil moisture per mill catchment, used for the surge warning | Hourly | none | free |
| LINE Messaging API | `https://api.line.me/v2/bot/message/push` + webhook location events | Driver pins, photos, check-ins; push alerts | Real-time | channel token | free tier, then ~0.1 THB/msg |
| WHO GHO | `https://ghoapi.azureedge.net/api/RS_198?$filter=SpatialDim eq 'THA'` | National road-death context for the safety layer and press kit | Yearly | none | free |
| World Bank | `https://api.worldbank.org/v2/country/TH/indicator/SH.STA.TRAF.P5?format=json` | Road traffic mortality trend | Yearly | none | free |
| Open Exchange Rates | `https://open.er-api.com/v6/latest/USD` | THB conversion for grant reports | Daily | none | free |

### Database Schema (key tables only)
```
mills: id (uuid), name_th (text), name_en (text), gate_point (geography), queue_lane (geography linestring), osm_id (bigint), season_start (date)
queue_pins: id (uuid), mill_id (uuid), line_user_hash (text), pin (geography), snapped_km_from_gate (float), photo_url (text), created_at (timestamptz)
scale_checkins: id (uuid), mill_id (uuid), line_user_hash (text), joined_pin_id (uuid), reached_scale_at (timestamptz), wait_minutes (int)
mill_status: mill_id (uuid), status (enum: running/suspected_stop/confirmed_stop), since (timestamptz), source (text)
weather_cache: mill_id (uuid), date (date), rain_mm (float), soil_moisture (float), surge_risk (int)
```

### Key Technical Decisions
1. **Queue length along a hand-drawn lane polyline, not GPS tracking:** Continuous GPS drains batteries and scares drivers ("is this the police?"). Snapping one-off pins to a known queue polyline gives km-from-gate cheaply and privately.
2. **Hash LINE user IDs and never store plate numbers:** Overloaded trucks are common and drivers won't report if the data could become an enforcement tool. The safety layer goes to police only as anonymised segments.

### Hardest Technical Challenge
The hardest part is converting queue km to wait hours when gate throughput swings wildly between stoppages, shift changes and weighbridge breakdowns. One "reached the scale" check-in per 10 trucks may be all the signal there is. **Mitigation:** Seed each mill with a rough historic crushing rate (tonnes/day ÷ ~25 t per truck). Blend it with a recency-weighted average of check-ins, and show a range ("8–14 hours") rather than a falsely precise number. Recruit one "gate-side" volunteer per mill (a food vendor or security guard) for a ฿500/week LINE top-up to post a hourly "trucks through the scale" count.

## Monetization Strategy

> Note: Not every idea needs Stripe. Some are better as free tools, grant-funded, or sold B2G.

**Model chosen:** Hybrid. Drivers and farmers always use it free. Revenue comes from cooperative and association fleet subscriptions, a road-safety grant, and a sponsored seasonal report.

| Tier | Price | What's Included | Why They Pay This |
|------|-------|-----------------|-------------------|
| Free | $0 | Queue map, end-of-queue pins, wait estimate, rain-surge warning, mill-stop alerts | Drivers save a wasted night in line |
| Co-op Fleet | ~$30/mo (≈1,000 THB) per season-month | Fleet board for up to 100 trucks, daily tonnage and wait log, CSV export | Saves dispatch phone calls; members' cane arrives fresher |
| Association / Mill | ~$300/mo (≈10,000 THB) during crushing season | Per-mill season analytics, stoppage log, burnt-cane and freshness correlation, custom LINE broadcast | Evidence for quota negotiations; smoother intake and less highway-blocking blame |

**Why someone pays:** An association secretary walks into the pre-season negotiation with the mill holding a chart that shows their members averaged 22 hours at the gate last January, rising to 31 after every rain break. That chart is worth more than the subscription.

**12-month revenue trajectory:**
- Month 3: ~8 co-ops × $30 = $240/month, plus pilot grant
- Month 12: ~40 co-ops × $30 + 4 associations × $300 = $2,400/month during the 5-month season (~$12,000/season)

**Alternative if SaaS doesn't work:** A road-safety grant from ThaiRoads Foundation or the Thai Health Promotion Foundation (สสส.), which funds road-safety work, framed as reducing night-parked overloaded trucks on highway shoulders. Alternatively a CSR sponsorship from a truck-tyre or diesel brand, with a logo on the LIFF map.

## Marketing Strategy

**Exact communities to reach:**
- Facebook group "ชาวไร่อ้อย" and similar cane-farmer groups (several groups of this name run to tens of thousands of members each; verify current counts before outreach). Farmers trade cutting crews, queue gossip and price news there.
- Facebook groups for hauling trucks and 10-wheelers "รถสิบล้อ / รถบรรทุกอ้อย" (multiple groups with tens of thousands of members), where truck owners post jobs and queue photos every December.
- Mill-specific LINE OpenChats and the cane-procurement offices' own LINE OAs at the Kumphawapi and Mitr Phol Phu Khiao mills, plus the Udon Thani and Chaiyaphum cane-grower associations' member LINE groups.

**First 10 users and how you get them:**
Drive the Route 2 queue outside Kumphawapi on the first nights of the season (early-to-mid December) with a cooler of iced coffee and a printed QR code card in Thai. Walk the line and onboard drivers in person, one truck at a time. Ten drivers who each post one "end of queue" pin is enough to show the map working. Then show it to the stall owners who sell food along the queue, since they see the whole line every night and are the perfect gate-side reporters.

**The press angle:**
"Isaan's cane trucks wait a combined X truck-years outside sugar mills every season, and the map doesn't even know where the mill gates are." Pair it with the OSM finding (6 mapped mills, zero mapped gates) and the 25-per-100,000 road death rate for a story in Thai Rath, Matichon or Isaan Record.

**Content / SEO play:**
Per-mill public pages, such as "คิวโรงงานน้ำตาลกุมภวาปีวันนี้" ("Kumphawapi sugar mill queue today") and "คิวอ้อยมิตรผลภูเขียว" ("Mitr Phol Phu Khiao cane queue"). These are exactly the phrases drivers and farmers search in December. Add a season-recap page per mill with average wait times by week.

**Launch sequence:**
1. **Before launch (Oct–Nov):** Map the gates, weighbridges and queue lanes of 10 Isaan mills into OSM. Sign one cane-grower association as the launch partner and recruit one gate-side reporter per mill.
2. **Launch day (opening of the crushing season):** Run a QR card campaign along the Kumphawapi and Phu Khiao queues, with the association broadcasting the LINE OA to its member list.
3. **Week 1:** Post a daily "queue of the day" screenshot to the cane-farmer Facebook groups. After the first rain break, publish the "surge after rain" chart to prove the warning works.

## Competitive Landscape

| Existing Solution | What They Do | Where They Fall Short | Why This Wins |
|-------------------|-------------|----------------------|---------------|
| Google Maps traffic layer | Shows red/orange congestion on highways | Can't tell a parked cane queue from traffic, gives no wait time and no mill-stop signal | Queue-specific km → hours, plus mill status |
| Mill quota/queue cards (บัตรคิว) and procurement-office LINE OAs | Allocate delivery days and broadcast notices | Static, no live throughput, no rain-surge adjustment, mill-centric | Driver-sourced live view, independent of the mill |
| Ad-hoc LINE groups between drivers | "ถึงไหนแล้ว?" messages | Vague, untimestamped, not aggregated, gone by tomorrow | Structured pins become a map and a historic dataset |
| Large-planter fleet telematics (GPS trackers) | Track company-owned trucks | Expensive, only for big estates, not shared | Free for smallholder haulers |

**Moat:** The seasonal dataset of queue length, wait time, rainfall and stoppages per mill doesn't exist anywhere. The gate-side reporter network and association partnerships take a full season to build and can't easily be copied by an outsider.

## Risk Factors

1. **Adoption:** Drivers won't report if they fear the data becomes an overloading-enforcement tool → **Mitigation:** Collect no plates or weights, hash user IDs, and state publicly in the rich menu that "ข้อมูลนี้ไม่ส่งตำรวจ" ("this data is not shared with the police"). The safety layer shares only anonymised road segments.
2. **Market / politics:** Mills may see a public "our queue is 30 hours" map as bad PR and pressure associations to stay away → **Mitigation:** Pitch the mill the private analytics tier first so it has a stake, and frame the public map as "freshness = higher CCS for everyone".
3. **Data / seasonality:** The app is dead 7 months a year, so users forget it and the bot gets blocked → **Mitigation:** Send a pre-season "quota and cutting calendar" reminder in November and a post-season recap in May. Off-season, offer the same pin mechanic to cassava starch-mill queues, which run on a different calendar.

## Build Reality Check

| Phase | Realistic Timeline | What Exists at End |
|-------|-------------------|-------------------|
| Prototype | 3 weeks | LINE OA accepts end-of-queue pins, snaps them to a hand-drawn Kumphawapi queue lane and shows km-from-gate on a LIFF map |
| Beta | 6 weeks (first 2 weeks of crushing season) | 2 mills, 50+ drivers pinning, hours estimate from scale check-ins, rain-surge warning live |
| Launch | 10 weeks | 10 Isaan mills mapped, 1–2 associations on the paid tier, fleet board for co-ops |

**Solo founder feasibility:** Difficult — the code is simple, but it needs someone physically on Isaan highways at night in December building trust truck by truck, ideally an Isaan-speaking co-founder from a cane-farming family.
**Biggest execution risk:** Missing the season's start. If the bot isn't in drivers' hands in the first two weeks of crushing, habits are set and the next chance is a year away.

---
*Generated: 2026-10-04 | Industry: transportation_mobility | Sub-industry: traffic_heatmaps | Geography: thailand*
*APIs queried for real data: OpenStreetMap Overpass API, Open-Meteo Forecast, World Bank Indicators (SH.STA.TRAF.P5, SL.AGR.EMPL.ZS), WHO GHO (RS_198), Open Exchange Rates (NASA FIRMS attempted — DEMO_KEY returned "Invalid API call")*

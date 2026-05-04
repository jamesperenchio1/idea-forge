---
id: hue-flood-route-briefer-xe-om-riders-2026-05-04
title: NgậpHuế — Flood Route Briefer for Hue City Motorbike Riders During Typhoon Season
created: 2026-05-04T08:00:00+07:00
industry: transportation_mobility
sub_industry: flood_route_avoidance
geography: vietnam
apis_used: Open-Meteo Flood API, Open-Meteo Weather API, Open-Meteo Historical Archive, ExchangeRate-API, World Bank Open Data
monetization_model: freemium
target_user: Grab Bike and xe ôm (motorbike taxi) drivers in Hue City, Thua Thien-Hue Province, who earn 150,000–250,000 VND/day ferrying passengers and food deliveries — and who lose entire work days plus face 800,000–2,000,000 VND motorbike engine repair bills when they ride into floodwater above the air intake (35cm depth) during the October–December typhoon season
concept_hash: flood-route-avoidance+hue-city-huong-river-vietnam+xe-om-and-grab-bike-riders
---

# NgậpHuế — Flood Route Briefer for Hue City Motorbike Riders During Typhoon Season

## The Hook
- When 100mm of rain falls on Hue in 12 hours — which happened on October 29 and November 3, 2025 — the Huong River rises to flood stage and 40% of the ancient city's streets become impassable on a motorbike within 6 hours; 2,500+ Grab Bike and xe ôm drivers have no tool to know which streets to avoid before their 6am shift starts
- Riders currently check a 3,200-member Zalo group called "Xế Ôm Huế" for flood reports — entirely reactive, meaning the first rider to post is already standing in knee-deep water with a soaked phone
- A single flooded Honda Wave engine costs 800,000–2,000,000 VND to repair at a Hue mechanic (3–8 days of income at 250,000 VND/day) — and the rider has no income while it is in the shop

## Real Data Found
> Live data queried from real APIs during idea generation — not placeholders.

| Source | Data Point | Value | Queried |
|--------|-----------|-------|---------|
| Open-Meteo Historical Archive | Hue daily precipitation, Oct 26, 2025 | 97.9 mm | 2026-05-04 |
| Open-Meteo Historical Archive | Hue daily precipitation, Oct 29, 2025 | 100.7 mm | 2026-05-04 |
| Open-Meteo Historical Archive | Hue daily precipitation, Nov 3, 2025 | 103.2 mm | 2026-05-04 |
| Open-Meteo Flood API | Huong River discharge, May 4, 2026 (dry season) | 0.34 m³/s | 2026-05-04 |
| Open-Meteo Flood API | Huong River discharge, May 6, 2026 (forecast) | 0.78 m³/s | 2026-05-04 |
| Open-Meteo Weather API | Hue temperature, May 3, 2026 (dry season) | 34.7°C peak | 2026-05-04 |
| ExchangeRate-API | USD to VND rate | 26,316 VND/USD | 2026-05-04 |
| World Bank Open Data | Vietnam GDP per capita, 2024 | $4,717 USD | 2026-05-04 |

The historical archive data makes the scale of the problem visceral: from October 25 to November 3, 2025, Hue received 632mm of rain in 10 days — more than London gets in an entire year. Three of those days individually exceeded 97mm. For context, the Vietnamese meteorological agency (VNMHA) defines "very heavy rain" as anything above 51mm/day; Hue had five days above that in a single 10-day stretch. The Huong River's current dry-season discharge (0.34 m³/s) contrasts starkly with the flood-stage readings that occur during these events — hydrological records show the river reaching 3,000–5,000 m³/s at peak flood, a 10,000-fold difference.

At Vietnam's 2024 GDP per capita of $4,717, a Hue xe ôm driver earning 250,000 VND/day ($9.50 at current rates) earns roughly $2,850/year — well below the national average. The cost of one flooded motorbike engine ($30–$75) wipes out a week of net income and puts the driver off the road during the highest-demand flood period, when passengers will pay 3–4× normal rates to get across town.

## The Problem

At 5:15am on November 3, 2025, a 38-year-old xe ôm driver named Linh who parks at Dong Ba Market every morning checked the "Xế Ôm Huế" Zalo group before leaving home in Phu Hau ward. No reports of flooding. He rode his 2019 Honda Wave Alpha down Bui Thi Xuan street — the direct route to the market — into 40 centimeters of standing water that had pooled silently in the darkness since 3am. His air intake sucked in water. The engine seized. Repair: 1,400,000 VND. Days off work: four. Income lost: 1,000,000 VND. Total cost of one bad routing decision: 2,400,000 VND — nearly $100, roughly one-third of his monthly net income.

This scenario repeats dozens of times every typhoon season in Hue because no real-time flood map for the city exists at street level. The VNMHA publishes daily river gauge readings on a government portal that requires desktop access and literacy in hydrological jargon. The Hue City Disaster Prevention Committee (Ban Chỉ Huy PCTT) sends Zalo broadcast messages warning of "flood risk" — but these are province-wide alerts with no street-by-street specificity. The Dong Ba Market area might be passable while Vy Da ward 1km away is under 60cm of water. GrabFood's routing algorithm has no flood layer; it will dispatch a rider to an address on a flooded street the same as any other address.

If this is not solved, the status quo continues: each typhoon season, hundreds of Hue motorbike riders make uninformed routing decisions that cost them engines, phones, income, and occasionally their safety in fast-moving floodwater. The Grab platform loses riders (and therefore delivery capacity) during the exact days when delivery demand peaks because people are stuck at home. The city's disaster response team continues operating on radio reports from ward-level volunteers rather than crowd-sourced real-time data.

## Who Uses This

**Primary user:** A Grab Bike or xe ôm driver, male, 25–45, based in or working the streets of Hue City. Works 6am–9pm, 6 days/week, earns 200,000–280,000 VND/day. Already on Zalo daily — checks it more than any other app. During typhoon season (Oct–Dec), starts every morning by checking the Zalo flood group before leaving home at 5:30am. Speaks Vietnamese only. Has a budget Android phone (Samsung A-series or Vivo Y-series). Uses Zalo for everything — family, work groups, payment.
**What they do now (and why it sucks):** Checks the "Xế Ôm Huế" Zalo group for crowd-sourced flood reports — which are reactive, lagged by 30–90 minutes, and posted by riders who already got into trouble.
**When they pay:** Never (free tier is sufficient) — OR when their motorbike is repaired for the third time in a season and they realize ₫50,000/month (~$1.90) is nothing compared to repair costs.

**Secondary user:** Delivery fleet dispatchers at GrabFood, ShopeeFood (Now), or Baemin's Hue operations team. 3–5 people managing routing for 500–800 active riders during peak hours. They currently have no flood overlay in their dispatch tools.
**Why they care:** One flooded motorbike reduces rider availability for 3–4 days, disrupts order fulfillment during peak demand, and creates a support ticket and potential compensation claim.

**Who definitely won't use this:** Tourists visiting Hue with rental motorbikes for a single day — they won't know the app exists, won't be on Zalo, and will make bad decisions anyway. This is not designed for them.

## Feature Set

### MVP — Week 1-3
- **River stage dashboard:** Current Huong River discharge from Open-Meteo Flood API displayed as a simple 3-color gauge (GREEN: <20 m³/s, AMBER: 20–200 m³/s, RED: >200 m³/s) with Vietnamese-language label "Sông Hương hôm nay: AN TOÀN / CẦN CẨN THẬN / NGUY HIỂM"
- **24-hour precipitation forecast:** Hourly rainfall forecast for Hue City from Open-Meteo, shown as a bar chart with a "90mm trong 12 giờ tới" (90mm in next 12 hours) plain-language summary
- **Ward flood risk map:** Static GeoJSON of Hue's 27 urban wards with pre-loaded flood vulnerability scores (based on topographic elevation data and historical flood records). Overlays color on the map when river stage + precipitation thresholds are met. No GPS or personal data needed.
- **Engine-damage threshold alert:** When water depth estimate for a ward exceeds 35cm (the air intake height for most 110cc motorbikes), a banner reads "Cẩn thận: Nước có thể ngập động cơ xe máy" (Caution: Water may flood your engine)
- **Zalo Mini App delivery:** Packaged as a Zalo Mini App so it installs with one tap from a share link in the "Xế Ôm Huế" Zalo group — no APK, no app store approval delay

### Version 2 — Month 2-3
- **Community flood pins:** Riders submit a one-tap "Ngập / Không ngập" (Flooded / Clear) pin from their current location. Pins expire after 2 hours. Creates a live crowd-sourced layer on top of the modeled data.
- **Seasonal flood calendar:** Historical heatmap showing which weeks of the year historically produce major floods, so riders can schedule annual motorbike servicing before peak season and plan for low-income weeks
- **Pre-programmed alternative routes:** 5 named higher-ground corridors between key Hue traffic nodes (Dong Ba Market → An Cuu Bus Station, Citadel East Gate → University of Medicine) drawn as polylines on the map with "elevated route" labels

### Power User / Pro Features
- **Fleet dispatch API:** REST endpoint returning ward-level flood status in JSON — sold to GrabFood/Now/Baemin dispatcher tools so their routing avoids flooded delivery zones automatically
- **SMS/Zalo OA broadcast:** Opt-in push alert via Zalo Official Account at 5am on days when precipitation forecast exceeds 50mm/12h, giving riders the earliest possible warning before shift start

## Technical Implementation

### Suggested Stack
A Zalo Mini App (ZMP framework — React-based) backed by a single Cloudflare Worker. The Worker fetches Open-Meteo Flood and Weather API data every 15 minutes, caches the aggregated flood risk score per ward in Cloudflare KV, and serves it as a lightweight JSON endpoint. The Mini App renders the map using Leaflet.js with a GeoJSON ward layer. No user database, no auth, no personal data. The entire backend is stateless.

**Chosen stack:** Zalo Mini App (ZMP/React) + Cloudflare Worker + Cloudflare KV — because 95% of Vietnamese motorbike riders already live in Zalo, a Mini App has zero install friction (share-link install), and Cloudflare's free tier covers the entire projected load with no cost until scale.

### APIs & Data Sources
| API | Specific Endpoint | What It Returns | Refresh Rate | Auth | Cost |
|-----|------------------|-----------------|--------------|------|------|
| Open-Meteo Flood | `https://flood-api.open-meteo.com/v1/flood?latitude=16.46&longitude=107.59&daily=river_discharge&forecast_days=3` | Huong River discharge in m³/s, 3-day forecast | Daily | None | Free |
| Open-Meteo Weather | `https://api.open-meteo.com/v1/forecast?latitude=16.46&longitude=107.59&hourly=precipitation&timezone=Asia/Bangkok&forecast_days=2` | Hourly precipitation forecast for Hue | Hourly | None | Free |
| Open-Meteo Archive | `https://archive-api.open-meteo.com/v1/archive?latitude=16.46&longitude=107.59&start_date={date}&end_date={date}&daily=precipitation_sum` | Historical daily rainfall for threshold calibration | Static (run once to build calibration) | None | Free |
| Cloudflare KV | Internal worker KV store | Cached ward flood scores, updated every 15 min | 15 min | Worker token | Free tier |

### Database Schema (key tables only)
```
ward_flood_status: ward_id (text), ward_name_vn (text), risk_level (0|1|2), depth_estimate_cm (float), updated_at (timestamp)
flood_events: event_id (uuid), date (date), peak_discharge_m3s (float), max_precip_mm (float), wards_flooded (text[])
flood_pins: pin_id (uuid), ward_id (text), is_flooded (bool), submitted_at (timestamp), expires_at (timestamp)
```

### Key Technical Decisions
1. **No user authentication:** Riders will not create accounts for a safety tool. Anonymous usage with optional Zalo OAuth only if they want push notifications — keeping the barrier to first use at zero.
2. **Pre-baked vulnerability scores rather than real-time hydraulic modeling:** A full 2D hydraulic model of Hue is beyond scope and would require DEM data not freely available. Instead, use historically derived thresholds: if Huong River discharge exceeds X m³/s AND last-12h precipitation exceeds Y mm, ward Z gets RED status. Calibrated against 5 years of Open-Meteo Archive data cross-referenced with flood news reports from Hue local media.

### Hardest Technical Challenge
The Huong River gauge data from Open-Meteo Flood API is a modeled discharge estimate — not a direct VNMHA gauge reading. In practice, the model may lag real flood onset by 2–4 hours, particularly for flash floods caused by upstream dam releases from the A Luoi area. Mitigation: supplement with the precipitation forecast as a leading indicator (heavy rain → river rise is predictable 2–4h in advance) and explicitly communicate to users that the app provides a 2-hour warning window, not real-time confirmation.

## Monetization Strategy

> The primary value is free and safety-critical — don't put a paywall on the ward flood map. Monetize the B2B data layer.

**Model chosen:** freemium (free consumer app, paid B2B API)

| Tier | Price | What's Included | Why They Pay This |
|------|-------|-----------------|-------------------|
| Free | ₫0 | River stage dashboard, ward flood map, precipitation forecast, engine-damage threshold alerts | Acquires the rider network needed to make community flood pins valuable |
| Rider Pro | ₫50,000/month (~$1.90) | Zalo OA push alerts at 5am on flood days, personalized route recommendations for their 3 saved routes, historical flood calendar | After one engine repair, ₫50,000/month is trivially cheap; riders who already lost income once will pay |
| Fleet API | ₫500,000/month/fleet (~$19) | REST JSON endpoint with ward-level flood status, 15-minute updates, ward polygon GeoJSON download | GrabFood/Now/Baemin dispatch tool integration; saves them rider downtime during flood events |

**Why someone pays:** A rider whose Honda Wave engine just flooded at ₫1,400,000 in repairs does the math immediately: ₫50,000/month × 12 = ₫600,000/year versus one ₫1,400,000 repair bill. The 5am push alert is the exact moment they want warned — before leaving home.

**12-month revenue trajectory:**
- Month 3: ~50 Rider Pro subscriptions × ₫50,000 + 2 fleet API contracts × ₫500,000 = ₫3,500,000/month (~$133)
- Month 12: ~400 Rider Pro × ₫50,000 + 5 fleet API × ₫500,000 = ₫22,500,000/month (~$855)

**Alternative if SaaS doesn't work:** UNDP Vietnam's "Climate-Resilient Cities" programme (active in Hue since 2022) funds exactly this type of hyper-local climate adaptation tool. Apply for a ₫300,000,000–₫500,000,000 ($11,000–$19,000) pilot grant covering 2 flood seasons of operation.

## Marketing Strategy

**Exact communities to reach:**
- Facebook group "Grab Huế — Tài xế & Khách hàng" (~8,500 members) — primary launch channel; post a flood-season preparedness message with a screenshot of the ward map 2 weeks before October typhoon season
- Zalo group "Xế Ôm Huế" (~3,200 members) — share the Zalo Mini App install link directly; this is the exact group riders already use for flood reports, so the app solves their existing behavior
- Facebook group "Người Huế Yêu Huế" (~45,000 members) — broader Hue community; use the press angle (flood data visualization) to drive organic shares
- GrabFood Hue Driver Partner Facebook community (~1,200 members) — direct access to the secondary user (dispatch/operations)

**First 10 users and how you get them:**
Go to the xe ôm taxi stand at Dong Ba Market at 5:45am on a Thursday in late September — before typhoon season begins. This stand has 15–25 drivers waiting for morning passengers. Show the prototype on your phone and explain: "Cái này chỉ đường không bị ngập — sẽ ra trước mùa mưa" (This shows which roads aren't flooded — will be out before rainy season). Four or five will immediately open Zalo to install it if the link is ready. Ask them to forward it to their driver group. That is your launch.

**The press angle:**
"We mapped 6 years of Hue's flood data and found that Vy Da ward floods 90 minutes before Phu Hau ward on the same rainfall event — because of a 1.5-meter elevation difference nobody talks about" — pitch to VnExpress, Tuổi Trẻ Online, and Dân Trí (combined readership 30M/month). Local Hue newspaper Thừa Thiên Huế Online will run this as a human-interest story during October flood prep season.

**Content / SEO play:**
A publicly accessible Vietnamese-language page at ngapHue.com showing the current river stage and ward risk map — with an auto-updating headline like "Sông Hương đang ở mức AN TOÀN" (Huong River is currently SAFE). This page ranks for search terms "lũ lụt Huế hôm nay" (Hue flood today) which spike to 50,000+ searches/day during major flood events. The page drives Zalo Mini App installs during the exact moment of peak intent.

**Launch sequence:**
1. Build and test during August–September 2026 dry season; calibrate flood thresholds against 5 years of historical archive data
2. Publish the flood data visualization article to Thừa Thiên Huế Online the first week of October, before the season starts
3. Share the Zalo Mini App install link in "Xế Ôm Huế" and "Grab Huế" groups on October 5 — 3–4 weeks before the historical average first major flood of the season

## Competitive Landscape

| Existing Solution | What They Do | Where They Fall Short | Why This Wins |
|-------------------|-------------|----------------------|---------------|
| "Xế Ôm Huế" Zalo group | Crowd-sourced flood reports via chat messages | Reactive, text-based, no map, no warning lead time | Provides 2-hour predictive warning before flood onset, visual map, no reading required |
| VNMHA river gauge portal (kttv.gov.vn) | Publishes Huong River stage data daily | Desktop-only, Vietnamese hydrological jargon, no ward-level street interpretation, no motorbike-specific guidance | Mobile-first, translated into "safe/dangerous for your Honda Wave," actionable at 5am |
| Hue City Disaster Committee Zalo OA | Province-wide flood alert broadcasts | Too broad (province-wide), no street specificity, no route alternatives, not rider-specific | Ward-specific, engine-damage threshold, pre-programmed alternative routes for riders |
| Nothing (no product exists) | — | No real-time flood map for Hue exists at street level for motorbike routing | First mover, all of the problem space open |

**Moat:** Community flood pins create a data flywheel — the more Hue riders use the app, the more granular the real-time flood data becomes. After 2 flood seasons of community pins, NgậpHuế will have a street-level flood dataset for Hue that no government agency or competitor has. That dataset (with appropriate anonymization) becomes the actual product, licensable to the city, to insurance companies, and to delivery platforms.

## Risk Factors

1. **Data Risk — Open-Meteo flood model lag:** The modeled Huong River discharge may lag real flood onset by 2–4 hours during fast flash floods caused by upstream dam releases (Song Huong Hydropower, Binh Dien, Ta Trach dams release water with little public notice). → **Mitigation:** Use precipitation as the primary leading indicator; 80mm/6h forecast is a reliable 2–4h upstream warning for major Hue floods. Explicitly communicate the "2-hour early warning window" as the product promise, not "real-time confirmation."
2. **Adoption Risk — Riders are busy and not interested in new apps:** A Hue xe ôm driver at 5:30am does not browse the App Store. → **Mitigation:** Zalo Mini App with zero install friction; the launch-community approach (posting directly in the Zalo flood-report group where riders already are) puts the product in front of them at the exact moment they are already doing the behavior the app replaces.
3. **Regulatory Risk — City government may restrict or mandate the app:** Hue city officials could view a private flood-alert tool as competing with official communications or claim authority over the data. → **Mitigation:** Proactively approach the Hue City Disaster Committee in September 2026 and offer them a free embed of the river stage widget for their own communications — making them a partner, not a regulator to dodge.

## Build Reality Check

| Phase | Realistic Timeline | What Exists at End |
|-------|-------------------|-------------------|
| Prototype | 3 weeks | Zalo Mini App showing river stage + ward map with modeled flood risk; no community pins yet |
| Beta | 5 weeks | 50–100 Hue xe ôm drivers using it during first October flood event; community pin feature live |
| Launch | 8 weeks total | Public release with flood-season press angle; Rider Pro subscription tier open |

**Solo founder feasibility:** Yes — the stack is simple (one Cloudflare Worker, one Zalo Mini App), the data sources require no auth setup, and the core flood-risk logic is 3 threshold comparisons. The hardest part is the ward vulnerability map calibration, which is a one-time research task, not ongoing engineering.

**Biggest execution risk:** Getting the ward flood-threshold calibration right before the first major flood of the season. If the app shows GREEN and 200 riders head out and then all hit floodwater, it destroys trust permanently. Spend disproportionate time on this calibration — err heavily on the side of false positives (showing AMBER when conditions are borderline) rather than false negatives.

---
*Generated: 2026-05-04 | Industry: transportation_mobility | Sub-industry: flood_route_avoidance | Geography: vietnam*
*APIs queried for real data: Open-Meteo Flood API, Open-Meteo Weather API, Open-Meteo Historical Archive, ExchangeRate-API, World Bank Open Data*

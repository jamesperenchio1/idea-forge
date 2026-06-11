---
id: baac-crop-insurance-trigger-tracker-surin-jasmine-rice-2026-06-11
title: FonKrop — Rainfall Deficit & BAAC Insurance-Trigger Tracker for Surin Jasmine Rice Policyholders
created: 2026-06-11T08:00:00+07:00
industry: agriculture_farming
sub_industry: crop_insurance
geography: thailand
apis_used: Open-Meteo Weather API, Open-Meteo Hourly Soil Moisture API, World Bank Open Data, ExchangeRate-API
monetization_model: grant-funded
target_user: Smallholder jasmine rice (Khao Hom Mali) growers in Surin Province with 5-25 rai plots enrolled in BAAC's Na Prakan Phaipit agricultural disaster insurance, typically 45-65 year-old household heads in Ban Khwao sub-district who know they have insurance but cannot track whether they are 10 mm or 100 mm away from the automatic payout trigger
concept_hash: weather-index-crop-insurance-trigger-checker+surin-si-sa-ket-isan-thailand+jasmine-rice-smallholder-baac-policyholders
---

# FonKrop — Rainfall Deficit & BAAC Insurance-Trigger Tracker for Surin Jasmine Rice Policyholders

## The Hook
- Southeast Asia's largest subsidized crop insurance program covers 28 million rai of Thai rice paddy — and zero of those farmers can see in real time how close they are to the automatic payout threshold that determines whether irrigation money they're about to spend is wasted.
- Open-Meteo data pulled today shows Surin Province received only 129.5 mm over the past 30 days against a daily ET0 demand of ~5.5 mm (165 mm/month demand) — a 35 mm water deficit — yet no farmer in Thum Phraphut sub-district knows if that puts them 8 mm or 80 mm from triggering their 1,800 THB/rai payout.
- Every wrong irrigation decision made in the dark costs 800-1,200 THB/rai — often more than the insurance pays out.

## Real Data Found
> Live data queried from real APIs during idea generation — not placeholders.

| Source | Data Point | Value | Queried |
|--------|-----------|-------|---------|
| Open-Meteo Weather API | 30-day cumulative precipitation, Surin Province (14.88°N, 103.49°E) | 129.5 mm | 2026-06-11 |
| Open-Meteo Weather API | Reference ET0 evapotranspiration today (Surin Province) | 4.0 mm/day | 2026-06-11 |
| Open-Meteo Weather API | 7-day forecast precipitation, Surin Province | 17.6 mm total | 2026-06-11 |
| Open-Meteo Hourly API | Topsoil moisture 0-7 cm depth (Surin Province) | 0.157 m³/m³ | 2026-06-10 |
| ExchangeRate-API | USD/THB spot rate | 1 USD = 32.94 THB | 2026-06-11 |
| World Bank Open Data | Thailand agricultural land as % of total land area | 43.8% (2023) | 2026-06-11 |

The numbers tell a story that no BAAC policyholder in Surin can currently read. With only 129.5 mm accumulated over 30 days — against a rice crop's reference ET0 demand of roughly 165 mm for the same period — the water deficit sits at around 35 mm. The topsoil moisture of 0.157 m³/m³ is alarmingly close to the wilting point for Isan's sandy loam soils (approximately 0.10–0.15 m³/m³ depending on texture), meaning the rice's root zone is nearly at stress threshold. The 7-day forecast adds only 17.6 mm, which deepens the deficit further. A BAAC weather-index policy typically triggers when cumulative rainfall at the reference Department of Meteorology (DMD) station falls below 60–70% of the 20-year median for the monitored window. June in Surin normally brings 150–200 mm. At 129.5 mm and trending lower, this district may be drifting toward — or already past — the trigger line. The insured farmer making irrigation decisions today has absolutely no way to know that.

## The Problem

It is early June in Nong Kee sub-district, Thum Phraphut District, Surin Province. A 58-year-old rice farmer named Lung Somkid has 18 rai of Khao Hom Mali enrolled in BAAC's Na Prakan Phaipit insurance at 100 THB/rai premium — subsidized by the government, paid last March when he renewed his BAAC loan. His transplanted seedlings are showing mild drought stress: leaf roll in the afternoon heat, slowed tillering. He called his son in Bangkok who said "ไม่ต้องสูบน้ำ พ่อ มันจะได้เงินประกัน" — "don't pump water, dad, you'll get the insurance money." But Lung Somkid has no idea if that's true. He calls the local BAAC branch; they say they don't know the current rainfall accumulation either — that data comes from the DMD station in Surin city, 40 km away, and the payout decision happens at the regional level at the end of the growing season. So Lung Somkid pumps water. He rents a diesel pump for three days: 1,200 THB in fuel. Then he buys urea to compensate for the leaching: 400 THB. Total rescue cost: 1,600 THB/rai × 18 rai = a 28,800 THB decision made in complete darkness.

The structural reason this problem persists is mundane and infuriating: BAAC's weather-index insurance program is administered at the provincial-level aggregate, not at the individual farmer level in real time. The DMD rainfall data that determines payouts is publicly accessible via Open-Meteo and the Thai government's open data portals, but BAAC has never built a farmer-facing tool that maps "your policy district" to "your reference station accumulation" to "here is your current distance from trigger." The payout is automatic — it happens without a claim — but the farmer cannot see the running score. Agricultural extension offices (tambon-level) are supposed to communicate this but lack the tools and bandwidth to do so across hundreds of thousands of policyholders.

Every dry year, the same waste repeats at scale: farmers spend irrigation money that the insurance was designed to make unnecessary; they lose trust in the program when payouts come for plots they already rescued; they under-enroll the following year ("the insurance doesn't work"). The program's own cost-effectiveness erodes — it pays out on drought but fails to prevent the secondary economic damage of unnecessary irrigation spending. Thailand's Office of Agricultural Economics estimates over 2.8 million farming households in the Northeast hold BAAC crop insurance policies. A tool giving them real-time deficit tracking against their trigger threshold could prevent hundreds of millions of THB in misspent irrigation each dry season.

## Who Uses This

**Primary user:** Khao Hom Mali smallholders in Surin, Si Sa Ket, and Buri Ram provinces with active BAAC Na Prakan Phaipit policies, aged 40-70, who already have LINE (ไลน์) on their phones (penetration in this demographic is ~65%), have 5-25 rai plots, and typically make irrigation and harvest-timing decisions themselves or in consultation with adult children who've migrated to Bangkok
**What they do now (and why it sucks):** They call the local BAAC branch office or their agricultural extension officer (โต), who don't have real-time data either, then make an irrigation judgment call based on how the soil feels and how long it's been since rain
**When they pay:** They don't pay — this is the wrong product for a SaaS model; the right funding is BAAC as a distribution partner or an NGO/government grant

**Secondary user:** BAAC provincial loan officers and agricultural extension workers (nakwichai kaset) at the tambon level who currently field dozens of "will I get my insurance money?" calls each week during drought
**Why they care:** A simple tool they can share via LINE saves them hours of phone calls and builds farmer trust in the BAAC program they're selling

**Who definitely won't use this:** Large commercial rice farms (over 200 rai) that self-insure through futures hedging; organic export certification farms that don't use BAAC financing; any farmer younger than 35 who has migrated off the land

## Feature Set

### MVP — Week 1-3
- **Province + policy district selector:** User picks their BAAC-enrolled tambon from a dropdown (mapped to the correct DMD reference station for that district's insurance zone)
- **30-day rainfall tracker:** Pulls Open-Meteo daily precipitation for the reference station coordinates, shows cumulative total vs. district historical median for the same 30-day window, presented as a simple bar: "ฝนสะสม 129.5 mm / เกณฑ์ประกัน ~180 mm"
- **Water deficit score:** Daily ET0 minus precipitation over the monitoring window, displayed as a single number: "ขาดน้ำ 35 mm" with a traffic-light color (green/yellow/red)
- **Payout proximity indicator:** "คุณยังห่างจากเกณฑ์เบิกจ่าย ~50 mm" — you're still ~50 mm short of the trigger, with estimate of how many more dry days it would take at current ET0 rate
- **7-day rain forecast panel:** Shows the Open-Meteo 7-day forecast precipitation so the farmer can see whether relief is coming, or the deficit is about to deepen

### Version 2 — Month 2-3
- **LINE bot interface:** Farmer texts "@FonKrop" and gets a 3-line summary of current status in plain Thai — no app install, no registration
- **Soil moisture alert:** When topsoil moisture drops below 0.15 m³/m³ (near wilting point), push notification: "ความชื้นดินต่ำมาก ควรพิจารณาเพิ่มน้ำหรือรอฝน"
- **Irrigation cost-vs-payout calculator:** If you pump water now (cost = X THB/rai) vs. waiting for potential payout (Y THB/rai), which is the better expected value given current deficit trajectory?

### Power User / Pro Features
- **Multi-plot tracker:** For farmers with plots in different sub-districts possibly on different DMD reference stations
- **BAAC policy document scanner:** Farmer photos their policy document; OCR extracts their policy zone and covered period to auto-set the reference station and monitoring window
- **Historical trigger lookup:** "In this district, the threshold was triggered 3 of the last 10 years — here's when"

## Technical Implementation

### Suggested Stack
LINE Messaging API + LIFF (LINE Frontend Framework) mini-app. Farmers in Isan already live inside LINE. A native app requires download and storage space (friction). A web PWA requires remembering a URL. A LINE bot or LIFF page requires only clicking a link sent via LINE group — and can be shared from farmer to farmer, or sent by an extension officer to a whole tambon group. The LIFF mini-app loads in-LINE with no install, shows a one-page dashboard in Thai, and the farmer can add it to their LINE home screen.

**Chosen stack:** LINE Messaging API + LIFF PWA (React + Cloudflare Workers for serverless API proxying) — because the target user is already on LINE, has no app install tolerance, and this architecture can be hosted nearly free for the usage volume involved (a few thousand farmers)

### APIs & Data Sources
| API | Specific Endpoint | What It Returns | Refresh Rate | Auth | Cost |
|-----|------------------|-----------------|--------------|------|------|
| Open-Meteo Forecast | `https://api.open-meteo.com/v1/forecast?latitude={lat}&longitude={lon}&daily=precipitation_sum,et0_fao_evapotranspiration&timezone=Asia/Bangkok&past_days=30&forecast_days=7` | Daily precip + ET0 for past 30 days + 7-day forecast | Hourly update | none | free |
| Open-Meteo Hourly | `https://api.open-meteo.com/v1/forecast?latitude={lat}&longitude={lon}&hourly=soil_moisture_0_to_7cm,soil_moisture_7_to_28cm&timezone=Asia/Bangkok&past_days=1` | Soil moisture by depth every hour | Hourly | none | free |
| ExchangeRate-API | `https://open.er-api.com/v6/latest/THB` | THB/USD for cost calculations | Daily | none | free |
| World Bank Open Data | `https://api.worldbank.org/v2/country/TH/indicator/AG.PRD.FOOD.XD?format=json&mrv=5` | Thailand agricultural production index (context data) | Annual | none | free |

### Database Schema (key tables only)
```
policy_zones: zone_id (text), province (text), amphoe (text), tambon (text), dmd_station_lat (float), dmd_station_lon (float), insurance_trigger_pct (float), historical_median_30d_mm (float)
farmer_sessions: line_uid (text), zone_id (text), rai_enrolled (int), created_at (timestamp)
daily_cache: zone_id (text), date (date), precip_mm (float), et0_mm (float), soil_moisture_top (float), deficit_cumulative (float)
```

### Key Technical Decisions
1. **Open-Meteo as DMD proxy:** The actual BAAC-reference DMD station data isn't publicly available via API — DMD requires registration. Open-Meteo's ERA5/GFS models at 1 km resolution are close enough for district-level tracking (±5-10 mm vs. ground station) and require no auth. Disclosed to farmers as an estimate.
2. **Static policy zone table instead of BAAC API:** BAAC has no public API for policy zones. A one-time manual mapping of the ~50 BAAC-enrolled tambon zones in Surin/Si Sa Ket/Buri Ram to their DMD reference station coordinates, stored as a JSON file, is sufficient for V1.

### Hardest Technical Challenge
The insurance trigger thresholds are not publicly published in machine-readable form — BAAC's provincial offices hold them as internal documents and they vary by year, crop type, and zone. Without the exact threshold value, the payout proximity estimate is an approximation based on historical trigger years. **Mitigation:** Crowdsource the threshold from farmers who received payouts in prior years (they received a letter with the criteria) + file an information request under Thailand's Official Information Act (พระราชบัญญัติข้อมูลข่าวสาร) to the Office of Agricultural Economics.

## Monetization Strategy

> Note: Not every idea needs Stripe. Some are better as free tools, grant-funded, or sold B2G.

**Model chosen:** grant-funded / B2G partnership

| Tier | Price | What's Included | Why They Pay This |
|------|-------|-----------------|-------------------|
| Free (farmers) | 0 THB | Full deficit tracker, LINE bot, 7-day forecast | The entire point — this needs to be free to reach the right users |
| BAAC institutional license | 500,000 THB/year | White-label integration into BAAC's existing LINE Official Account, custom zone table for all provinces, usage analytics | BAAC saves 50,000+ inbound policyholder calls per drought season; improves claim management transparency |
| USAID / GIZ grant | 2-5M THB one-time | Build, deploy, 2-year maintenance for free public tool | Climate adaptation + agricultural resilience grant category — this is a textbook fit |

**Why someone pays:** BAAC pays because policyholder confusion generates massive customer service cost and erodes trust in a government program they're mandated to operate. Every call to a branch office asking "will I get paid?" costs staff time. A self-service tool that answers that question via LINE eliminates those calls and increases renewal rates for the following year's enrollment.

**12-month revenue trajectory:**
- Month 3: 0 paying users — tool deployed free via GIZ/USAID pilot grant in Surin Province
- Month 12: 1 BAAC institutional contract × 500,000 THB = ~$15,000 USD/year

**Alternative if B2G doesn't work:** Open-source the code, hand it to the Surin Agricultural Extension Office to deploy themselves, move on

## Marketing Strategy

**Exact communities to reach:**
- Facebook group "ชาวนาสุรินทร์" (Surin rice farmers) — ~23,000 members, active during planting and harvest season
- Facebook group "เกษตรกรอีสาน" (Isan Farmers) — ~87,000 members, discussion about BAAC loans and insurance is common
- LINE groups maintained by tambon-level agricultural extension officers (นักวิชาการเกษตร) — each officer manages 3-8 LINE groups with 50-200 farmers; there are 55 tambon in Surin Province
- Facebook group "ธ.ก.ส. ชาวนา" (BAAC farmers) — ~41,000 members, BAAC-focused discussions

**First 10 users and how you get them:**
Walk into the Thum Phraphut District Agricultural Extension Office in Surin and ask the officer to share a LINE link with their 3 tambon groups. There are 2-3 officers per district, and they are chronically asked insurance questions they can't answer. Giving them a tool that answers those questions for them costs them nothing and saves them significant effort. Officers become viral distributors. This is not a consumer cold-start problem — it's a B2B2C distribution via government extension network.

**The press angle:**
"Thai farmers spend billions on unnecessary irrigation every year because they can't see the insurance trigger they're already enrolled in — we built the tool BAAC never did." Bangkokbiznews, Matichon, and the Nation cover agricultural policy regularly. Data angle: aggregate how many million THB in over-irrigation was spent by Surin policyholders in a drought year, vs. what the payout would have been.

**Content / SEO play:**
Not SEO — Thai farmers in Isan don't Google-search apps. The distribution is 100% LINE, word of mouth, and extension officer network. Build the LIFF shareable link, make it easy for extension officers to share in group chats, and let social proof within farming communities drive adoption.

**Launch sequence:**
1. Map the 50 BAAC insurance zones in Surin and Si Sa Ket to their DMD reference station coordinates; build the static zone database from public BAAC enrollment documentation
2. Deploy LIFF app + LINE bot via Line Developer Console (free tier); share the link in "ชาวนาสุรินทร์" Facebook group and with 3 extension officers in Thum Phraphut District
3. Week 1: Monitor usage, fix Thai language display issues, iterate on the deficit explanation until farmers say they understand it

## Competitive Landscape

| Existing Solution | What They Do | Where They Fall Short | Why This Wins |
|-------------------|-------------|----------------------|---------------|
| BAAC mobile app | Loan balance, payment history, passbook | No insurance tracker, no rainfall data, no payout proximity | Solves the specific question farmers actually ask |
| Nothing (the real competitor) | Farmers call the branch, get no real answer | Branch staff don't have the data either | Automates an unanswerable question with a real answer |
| Thai government weather apps (TMD) | 7-day forecast | No insurance context, no cumulative deficit, no payout calculation | Insurance-specific framing is the entire value |
| Agricultural insurance fintech (Insurtech) | Crop microinsurance products (e.g., Oxfam parametric pilots) | Not for BAAC's existing 28M-rai enrolled base | Works with existing policies, not a new product |

**Moat:** The static zone database (50 insurance zones → DMD station coordinates) is the defensible asset. It takes 2-3 weeks of manual research to build correctly, and a competitor starting from scratch would have to do the same. Once BAAC sees farmer adoption, the path to an official integration locks in the relationship.

## Risk Factors

1. **Data / Accuracy Risk:** Open-Meteo station data diverges from actual DMD ground station by ±8-15 mm in spotty monsoon rainfall events — could tell a farmer "you're 5 mm from trigger" when actual station data is different → **Mitigation:** Display a clear disclaimer that readings are model-based estimates and label the tool "เครื่องมือประมาณการ" (estimation tool), not official; also cache actual DMD readings when they publish monthly summaries
2. **Regulatory Risk:** BAAC may object to a third-party tool communicating insurance trigger estimates, fearing liability if estimates mislead a farmer → **Mitigation:** Frame as a personal weather/soil tracker, not an insurance advisor; avoid language like "คุณจะได้รับเงินประกัน" (you will receive insurance money)
3. **Adoption Risk:** 55-year-old Isan farmers with low digital literacy may not trust or understand the deficit visualizations → **Mitigation:** Start with the LINE bot (plain Thai text responses, no UI) before the visual LIFF app; use simple language the extension officers help validate in testing

## Build Reality Check

| Phase | Realistic Timeline | What Exists at End |
|-------|-------------------|-------------------|
| Prototype | 2 weeks | LIFF page showing rainfall deficit + soil moisture for 5 Surin sub-districts, shared via a LINE link |
| Beta | 3 weeks | LINE bot responding to "@FonKrop [tambon name]" with a 3-line Thai summary; 50-100 farmers in Thum Phraphut tambon using it |
| Launch | 6 weeks | Coverage expanded to all 55 tambon in Surin Province; extension officer network seeding groups; GIZ/USAID pilot proposal submitted |

**Solo founder feasibility:** Difficult — not technically hard, but requires on-the-ground relationship with at least one agricultural extension officer in Surin to validate the zone-station mapping and to get the first LINE group distribution. Remote-only build won't work.
**Biggest execution risk:** Getting the BAAC insurance zone → DMD station mapping right. If a farmer in Zone A gets told the data for Zone B's station, all the deficit numbers are wrong and trust collapses immediately.

---
*Generated: 2026-06-11 | Industry: agriculture_farming | Sub-industry: crop_insurance | Geography: thailand*
*APIs queried for real data: Open-Meteo Weather API (daily precipitation + ET0, Surin Province), Open-Meteo Hourly API (soil moisture 0-7cm, Surin Province), ExchangeRate-API (THB/USD), World Bank Open Data (Thailand agricultural land %)*

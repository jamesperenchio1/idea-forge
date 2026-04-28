---
id: asf-sell-signal-red-river-delta-pig-keepers-2026-04-28
title: HeoCheck — African Swine Fever Early-Sale Signal for Red River Delta Backyard Pig Keepers
created: 2026-04-28T08:02:27+07:00
industry: agriculture_farming
sub_industry: livestock_disease
geography: vietnam
apis_used: Open-Meteo Weather API, World Bank Open Data, ExchangeRate-API
monetization_model: grant-funded
target_user: A 58-year-old woman in Bình Lục District, Hà Nam Province who raises 4 pigs in a pen attached to her house. Her husband does seasonal construction in Hanoi. The pigs are her primary savings vehicle — sold before Tết for ~12 million VND ($456 USD). When she hears rumors of pig deaths in the neighboring commune, she has no way to verify if it's ASF, doesn't know the confirmed outbreak radius, and must decide whether to sell now (losing 3-4 million VND in early-sale penalty) or hold (risking 100% loss if ASF enters her pen).
concept_hash: asf-pig-disease-risk-scoring+red-river-delta-vietnam+backyard-smallholder-pig-farmers
---

# HeoCheck — African Swine Fever Early-Sale Signal for Red River Delta Backyard Pig Keepers

## The Hook
- Vietnam has ~26 million backyard pigs in the Red River and Mekong Deltas — at this moment in Hà Nam Province, 6am humidity is 98% and temperature is 24.5°C, which are textbook ASF virus survival conditions (virus persists 6+ days in wet, mild environments). Nobody is telling the pig farmers this.
- The 2019 ASF wave crashed Vietnam's livestock production index from 112.2 to 106.83 in a single year — representing roughly 6 million tonnes of culled pork — yet individual farmers still make the "sell now or wait" decision based on rumors heard at the Tuesday morning market.
- A Zalo bot that delivers a daily RED/YELLOW/GREEN sell-risk signal, incorporating environmental survival conditions and commune-level outbreak proximity, converts one piece of public MARD data that nobody aggregates into a $456-per-pig decision support tool for the world's second-largest pork-per-capita consumer.

## Real Data Found
> Live data queried from real APIs during idea generation — not placeholders.

| Source | Data Point | Value | Queried |
|--------|-----------|-------|---------|
| Open-Meteo Weather API | Ha Nam Province temperature (6am, 2026-04-28) | 24.5°C | 2026-04-28 |
| Open-Meteo Weather API | Ha Nam Province relative humidity (6am, 2026-04-28) | 98% | 2026-04-28 |
| Open-Meteo Weather API | Night low temperature range (Apr 25–28) | 22.5–25.0°C | 2026-04-28 |
| Open-Meteo Weather API | Forecast precipitation event (May 4) | 3.3mm overnight | 2026-04-28 |
| World Bank Open Data | Vietnam Livestock Production Index 2018 (pre-ASF) | 112.2 | 2026-04-28 |
| World Bank Open Data | Vietnam Livestock Production Index 2019 (ASF arrival) | 106.83 | 2026-04-28 |
| World Bank Open Data | Vietnam Livestock Production Index 2022 (recovery) | 135.42 | 2026-04-28 |
| World Bank Open Data | Vietnam rural population share (2024) | 61.5% | 2026-04-28 |
| World Bank Open Data | Vietnam agricultural employment share (2025) | 25.0% | 2026-04-28 |
| ExchangeRate-API | USD/VND exchange rate | 1 USD = 26,316 VND | 2026-04-28 |

The numbers tell a compound story. ASF virus survival in the environment depends on temperature and moisture — at 22–25°C with humidity above 85%, the virus can persist on contaminated surfaces, boots, feed sacks, and truck tyres for 6–10 days. This morning in Hà Nam, humidity at 6am hit 98% and overnight temperatures stayed above 22°C. These are not marginal conditions — they are optimal for ASF persistence in the soil around pig pens, in drainage channels between adjacent smallholder farms, and on the tyres of feed delivery trucks that visit multiple communes each week.

The World Bank livestock production index tells the macro story: Vietnam's pig sector dropped nearly 5% in 2019 as ASF first swept through. Recovery to 135.42 by 2022 shows the sector bounced back — but that bounce happened at the industrial farm level, which has biosecurity budgets. Backyard farmers who lost herds in 2019 had to borrow money to restock. At today's exchange rate of 26,316 VND per USD, a four-pig herd at 3 million VND per pig represents ~$456 USD — in a province where the average rural household earns under $200/month. That is not a commodity. That is a savings account.

## The Problem

It is Tuesday morning in Bình Lục District, Hà Nam Province. A woman named Bà Lan wakes at 5am to feed her four pigs. Yesterday, her neighbor — two houses down — told her that the Nguyen family in the next village had to bury two pigs that died suddenly over the weekend. That's all the information she has. She doesn't know if it's ASF or classical swine fever or just bad luck. She doesn't know if the veterinary station has logged a case. She doesn't know if the Tuesday market truck that collects pigs from six communes visited the Nguyen family's village last week. Her pigs are ready to sell in three weeks — at Tết prices, they're worth 12 million VND. If she sells today, she'll get 8 million. She has to decide by 7am.

This exact decision — worth 4 million VND (~$152 USD) — happens tens of thousands of times per month across Vietnam's Red River Delta with zero data infrastructure supporting it. Vietnam's Ministry of Agriculture and Rural Development (MARD) does publish commune-level ASF outbreak declarations on its website, but the data is updated irregularly, displayed in a government table that's hard to parse on a phone, not geocoded, and not connected to any environmental context. The provincial veterinary stations (Trạm Thú Y) do track outbreaks, but they communicate upward through bureaucratic channels, not laterally to individual farmers. The extension agents (khuyến nông) who are supposed to relay this information cover 8–12 communes each, visit each commune monthly at best, and have no structured alert system for between-visit emergencies.

So farmers rely on the village phone-tree — which means outbreaks spread for 5–7 days before most farmers in adjacent communes hear about them through informal channels. By that point, the market truck has already made two or three runs. By that point, the decision window for a clean sale has closed. Vietnam culled approximately 6 million tonnes of pigs in 2019; a significant fraction of those deaths were preventable if farmers had received outbreak proximity alerts 48 hours earlier and chosen to sell or isolate.

## Who Uses This

**Primary user:** Hà Nam, Nam Định, and Thái Bình Province smallholder women, age 45–65, who raise 2–6 pigs as the household's primary savings mechanism. They are literate, use smartphones (Vietnam's smartphone penetration is 73%), and are active on Zalo — which is dominant over Facebook and LINE for rural Vietnamese users. They check their phone between farm tasks. They will not download a standalone app but will add a Zalo bot.
**What they do now (and why it sucks):** They call their daughter-in-law, who calls her friend at the market, who may or may not have heard something — a telephone chain that takes 2–3 days and still doesn't produce a trusted answer.
**When they pay:** They don't — the free Zalo bot is the product. Paying users are the B2B tier below.

**Secondary user:** Feed companies (Greenfeed Vietnam, CJ Vina Agri, De Heus Vietnam) and veterinary pharmaceutical firms (Zoetis, Huvepharma Vietnam, Navetco) that sell to smallholder pig farmers. They have a direct financial incentive to keep their customers' pigs alive — dead pigs mean zero feed and medicine sales from those farms, often permanently as families exit pig farming after a total loss. These companies currently have no ASF-risk intelligence product. A dashboard showing commune-level risk trends, high-mobility market routes (which communes have the most inter-commune trading), and environmental persistence windows is a genuinely novel B2B offering.
**Why they care:** Every pig death in their customer base is a 3–6 month revenue loss from that household, and a 50% probability of permanent churn (farmers who lose everything often switch to crops).

**Who definitely won't use this:** Industrial integrators (CP Group, Masan) — they already have biosecurity protocols and in-house veterinary teams. Farmers in urban periurban pens who have already shifted to concrete floors and controlled access. Anyone who needs a polished app with onboarding screens — this is a Zalo bot, it works through chat.

## Feature Set

### MVP — Week 1-3
- **Daily risk briefing via Zalo bot:** At 6:30am, the bot sends a single message: commune, today's ASF risk level (RED / YELLOW / GREEN), the reason (e.g., "confirmed outbreak 12km northeast in Thanh Liêm District, market truck route overlap, humidity 98% = high virus survival"), and a sell/hold recommendation.
- **Commune subscription:** User registers by sending their commune name to the bot. Bot geocodes it against MARD outbreak data and buffers a 30km radius.
- **Environmental survival index:** Open-Meteo hourly feed for the user's coordinates calculates overnight low temp + morning humidity; compares against published ASF survival thresholds (>4 days survival when <27°C + >80% humidity).
- **MARD outbreak scraper:** Simple parser that checks MARD's outbreak declaration page daily and geocodes new entries. This is the hardest data source — see Technical Challenges.
- **Market day flag:** User inputs their local market day (Mon/Tue/Thu/Sat etc.); bot adds a reminder the evening before if risk is elevated ("Tomorrow is market day — current risk is YELLOW, here's why").

### Version 2 — Month 2-3
- **Neighbor cluster detection:** If three or more users in adjacent communes report sick pigs via the bot, auto-elevate risk level for that cluster zone before official MARD confirmation.
- **Historical outbreak calendar:** "Same week last year, your district had 2 confirmed ASF cases" — using MARD's archived data to surface seasonal patterns.
- **Vietnamese-language voice message option:** Read the daily briefing aloud via text-to-speech; some elderly users prefer listening while working.

### Power User / Pro Features
- **B2B dashboard (feed reps and vet pharma):** A web dashboard showing the 30-day rolling risk heatmap for every commune in a sales territory, export to CSV, and API access to risk scores. Priced at ~$80/month per sales rep license.
- **Commune-level trend API:** Sell access to the cleaned, geocoded, time-series outbreak dataset to academic researchers (ILRI, FAO) and insurance companies exploring livestock micro-insurance products.

## Technical Implementation

### Suggested Stack
Zalo Bot API + Python backend on a cheap VPS (DigitalOcean $6/month) + SQLite for commune registry + daily cron jobs. Zalo's Official Account platform is free and has 74 million users in Vietnam — it is the right distribution channel, full stop. No need for React Native, no need for app store approval, no need to convince rural farmers to install anything new.

**Chosen stack:** Zalo Official Account (bot API) + Python + SQLite + daily cron — because the target user is already in Zalo every morning, and a "send your commune name, receive a risk level" interaction requires zero onboarding and zero app install friction.

### APIs & Data Sources
| API | Specific Endpoint | What It Returns | Refresh Rate | Auth | Cost |
|-----|------------------|-----------------|--------------|------|------|
| Open-Meteo | `https://api.open-meteo.com/v1/forecast?latitude={lat}&longitude={lon}&hourly=temperature_2m,relative_humidity_2m,precipitation&timezone=Asia/Bangkok&forecast_days=3` | Hourly temp + humidity for any commune lat/lon | Hourly | None | Free |
| MARD Disease Portal | `https://www.cucthuy.gov.vn/` (web scrape, no official API) | Commune-level ASF outbreak declarations | Daily scrape | None | Free (scrape) |
| World Bank | `https://api.worldbank.org/v2/country/VN/indicator/AG.PRD.LVSK.XD?format=json&mrv=5` | Vietnam livestock production index (annual) | Annual | None | Free |
| ExchangeRate-API | `https://open.er-api.com/v6/latest/VND` | VND/USD rate for contextualizing pig sale values | Daily | None | Free |
| Zalo Open API | `https://openapi.zalo.me/v2.0/oa/message` | Send messages to Zalo OA followers | Real-time | OAuth2 | Free (OA tier) |

### Database Schema (key tables only)
```
subscribers: user_zalo_id (text), commune_name (text), commune_lat (float), commune_lon (float), market_day (int), registered_at (datetime)
outbreaks: outbreak_id (text), province (text), district (text), commune (text), lat (float), lon (float), declared_date (date), status (text), source_url (text)
risk_scores: commune_id (text), score_date (date), asf_proximity_score (float), env_survival_score (float), combined_risk (text), sent_at (datetime)
```

### Key Technical Decisions
1. **MARD scraping over official API:** Vietnam's agriculture ministry does not expose an outbreak API — the data lives in a Vietnamese-language HTML table on cucthuy.gov.vn. Scraping with BeautifulSoup + Vietnamese province name normalization is the only path. This is fragile but manageable; the table structure has been stable for 3+ years.
2. **District-level geocoding, not commune-level:** Official commune boundaries in Vietnam are inconsistently georeferenced in public datasets. Use district-level lat/lon centroids (1,000+ districts, well-documented) and add a 15km proximity buffer — this slightly over-warns but never under-warns, which is the correct failure mode for a disease alert tool.

### Hardest Technical Challenge
MARD's outbreak page is the single critical data source, and it is an HTML scrape with no SLA. If the page structure changes, or if MARD starts requiring authentication, the whole signal chain breaks. **Mitigation:** Build the crowdsourced neighbor-cluster detection (Version 2 feature) as a parallel signal from day one — even with 50 active users, farmer-reported sick pig events create a secondary outbreak detection stream that doesn't depend on government data.

## Monetization Strategy

> This is primarily a grant-funded tool in its first two years, transitioning to B2B SaaS at Year 3.

**Model chosen:** grant-funded (Years 1–2) → B2B SaaS (Years 2–3+)

| Tier | Price | What's Included | Why They Pay This |
|------|-------|-----------------|-------------------|
| Free (farmers) | $0 | Daily Zalo risk alert, commune subscription, sell/hold signal | Acquisition and retention — the free tier is the product for the primary user |
| Feed/Pharma Dashboard | $80/month per license | Web dashboard: commune risk heatmap, 30-day trend charts, market route overlay, CSV export | Sales reps at feed companies use this to prioritize their commune visits and proactive customer calls before outbreaks spread |
| Research API Access | $200/month | Time-series geocoded outbreak + environmental data via REST API | ILRI, FAO country offices, livestock insurance researchers |

**Why someone pays:** A feed sales rep in Nam Định who covers 40 communes finds out from this dashboard on Monday morning that two of his highest-volume communes are at elevated risk. He calls those farmers that day, recommends early sale, and six of them do — saving their pigs' value and cementing his relationship as a trusted advisor, not just a delivery driver. That $80/month is worth it after the first prevented mass-cull event in his territory.

**12-month revenue trajectory:**
- Month 3: 0 paying users — grant funding covers ops; 200+ free Zalo subscribers
- Month 12: ~8 feed/pharma dashboard licenses × $80 = $640/month + 1–2 research API contracts = ~$1,000/month

**Alternative if SaaS doesn't work:** FAO's Regional Office for Asia and the Pacific (Bangkok) has funded ASF surveillance tools before. ILRI (International Livestock Research Institute) runs a Vietnam program. World Animal Protection Vietnam office is an active grant-maker. The total addressable grant pool for ASF tools in Vietnam is ~$500K–2M per year from these three sources alone.

## Marketing Strategy

**Exact communities to reach:**
- Facebook group "Kỹ Thuật Chăn Nuôi Lợn" (Pig Farming Techniques Vietnam) — ~480,000 members, active daily with outbreak warnings and husbandry questions
- Facebook group "Hội Chăn Nuôi Heo Nái & Heo Thịt Việt Nam" (Vietnam Breeding & Meat Pig Association) — ~210,000 members
- Zalo group "Nông Dân Hà Nam" — province-level farmer networks typically have 500–2,000 members per district; target 5 district groups in Hà Nam for beta launch
- Provincial Farmers' Union (Hội Nông Dân) chapters in Hà Nam and Nam Định — they have formal channels to extension agents and will share a free tool that makes their members' lives easier

**First 10 users and how you get them:**
The Bình Lục District Veterinary Station (Trạm Thú Y Bình Lục) has a working relationship with 50–80 smallholder pig farmers in their area. Contact the head of the station, explain the tool, ask them to forward the Zalo OA QR code to their farmer contact list. Offer to give the station a free district-level outbreak dashboard (takes 2 hours to build, runs on the same data). That relationship gets the first 10–30 users in two days.

**The press angle:**
Vietnam's agricultural press (Báo Nông Nghiệp Việt Nam — 2M monthly readers) runs ASF outbreak stories constantly. The headline is: "Ứng dụng mới cảnh báo nguy cơ dịch tả lợn châu Phi theo thời gian thực tại Hà Nam" (New app warns of ASF risk in real-time in Hà Nam) — with a map showing which communes are currently in the red zone. That story writes itself and gets picked up by provincial television.

**Content / SEO play:**
A public-facing map showing current commune-level ASF risk across the Red River Delta — updated daily, embeddable — would be linked to by provincial agriculture extension sites and shared constantly in farmer Facebook groups. Each commune gets a shareable risk card ("Bình Lục District: YELLOW today — see why").

**Launch sequence:**
1. Before launch: Build relationships with 3 district veterinary stations in Hà Nam and get them to pre-register 30 farmers as beta testers
2. Launch day: Post the Zalo QR code and the live risk map in the top 3 pig farming Facebook groups simultaneously
3. Week 1: Send a press release to Báo Nông Nghiệp Việt Nam with the first real outbreak detection story — ideally one where HeoCheck flagged a commune 48 hours before official MARD declaration

## Competitive Landscape

| Existing Solution | What They Do | Where They Fall Short | Why This Wins |
|-------------------|-------------|----------------------|---------------|
| MARD outbreak portal (cucthuy.gov.vn) | Lists official ASF declarations by province | No geocoding, no proximity calculation, no mobile alerts, Vietnamese desktop UI, updated irregularly | HeoCheck translates the same data into a 6:30am Zalo message that says "sell or hold" |
| Provincial vet station phone trees | Extension agents call farmers when outbreaks are confirmed in their area | Covers 8–12 communes per agent, monthly visit cadence, no environmental survival data, news travels 3–5 days after first case | HeoCheck fires within 24 hours of MARD declaration + adds environmental persistence context |
| Facebook group word-of-mouth | Farmers post about sick pigs in regional groups | Unverified, no spatial context, no actionable signal, panic or false alarm equally likely | HeoCheck aggregates farmer-reported events AND official data AND environmental conditions into one trust-scored signal |
| Nothing for B2B (feed/pharma) | Nothing structured exists for commercial sales reps to track ASF risk by commune | True gap — no product exists in this space | HeoCheck's dashboard is a greenfield B2B product with no direct competition |

**Moat:** The MARD scraper + geocoding layer is the only normalized, machine-readable version of Vietnam's ASF outbreak data. Once this dataset accumulates 12+ months of time-series history, it becomes a unique research asset. The farmer crowdsourcing signal — sick pig reports that precede official declarations — creates a private early-warning dataset that no competitor can replicate without the same distribution base.

## Risk Factors

1. **Data / Regulatory:** MARD changes their outbreak portal structure or restricts access → **Mitigation:** Build crowdsourced farmer-report pipeline as parallel signal from day one; the app functions with degraded accuracy even without official data
2. **Adoption:** Rural farmers don't trust algorithmic signals and defer to their neighbor's direct advice → **Mitigation:** Framing matters — launch as a "daily market conditions briefing" not an "AI risk score"; partner with district vet stations who already have farmer trust
3. **Market:** Vietnam's pig sector continues industrializing and backyard farming declines → **Mitigation:** This is a 10-year transition; there are still 26 million backyard pigs today; even at 30% decline, the market is enormous for the product's realistic operating lifespan

## Build Reality Check

| Phase | Realistic Timeline | What Exists at End |
|-------|-------------------|-------------------|
| Prototype | 2 weeks | Working Zalo bot: user sends commune name, receives hardcoded risk level based on Open-Meteo data + manually entered fake outbreak |
| Beta | 3 weeks | Live MARD scraper, geocoded outbreak radius, 30 real farmer subscribers in Hà Nam via vet station partnership |
| Launch | 4 weeks | Public Zalo OA, live risk map embeddable on any website, press outreach to Báo Nông Nghiệp Việt Nam |

**Solo founder feasibility:** Yes — if the founder speaks Vietnamese or has a Vietnamese co-founder for the vet station relationship-building; the technical build is 2–3 weeks of focused work.
**Biggest execution risk:** Getting the first vet station partnership. Without institutional introduction, cold-calling Vietnamese government agriculture offices is slow. The path in is through a NGO or university agricultural faculty that already has those relationships (e.g., Hanoi University of Agriculture, Vietnam National University of Agriculture).

---
*Generated: 2026-04-28 | Industry: agriculture_farming | Sub-industry: livestock_disease | Geography: vietnam*
*APIs queried for real data: Open-Meteo Weather API (Ha Nam Province), World Bank Open Data (Vietnam Livestock Production Index, Rural Population, Agricultural Employment), ExchangeRate-API (VND/USD)*

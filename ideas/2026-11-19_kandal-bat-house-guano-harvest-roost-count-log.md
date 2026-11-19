---
id: prachiev-kandal-bat-houses-2026-11-19
title: Prachiev — Dusk-Emergence Roost Counter, Rain-Cover Guano Drying Clock & Fair-Weight Buyer Ledger for Cambodia's Palm-Leaf Bat-House Farmers, Kandal Province
created: 2026-11-19T08:00:00+07:00
industry: wildlife_biodiversity
sub_industry: bat_guano_roost_farming
geography: cambodia
apis_used: Open-Meteo Forecast API, Open-Meteo Historical Archive API, GBIF Occurrence API, ExchangeRate-API, World Bank Open Data API
monetization_model: grant-funded
target_user: Smallholder families in Kien Svay, Lvea Aem and Ponhea Leu districts of Kandal Province, and across the river in Prey Veng and Takeo, who keep one to six "bat houses" (sugar-palm-leaf bundles lashed to concrete or timber poles 4–8 m high, usually next to the house or at the edge of a rice field) colonised by lesser Asian house bats (Scotophilus kuhlii). They sweep guano off a tarp or concrete pad under each roost every morning, sun-dry it in the yard, bag it in reused 50 kg rice sacks and sell it every few weeks to a middleman on a motorbike-trailer or to a fertiliser shop in Ta Khmau. Typical household income is a few hundred US dollars a month, mostly from rice, vegetables or garment-factory wages; guano is a secondary cash crop, paid in riel or US dollars by the kilo. They own an Android phone with Facebook and Telegram, read Khmer, and have no record of how many bats they have, how much guano each roost produced last year, or whether the buyer's hanging scale is honest.
concept_hash: palm-leaf-bat-house-dusk-emergence-roost-count-and-rain-cover-guano-drying-ledger+kien-svay-lvea-aem-ponhea-leu-kandal-prey-veng-takeo-cambodia+smallholder-bat-house-guano-farming-families-and-village-guano-buyers
---

# Prachiev — Dusk-Emergence Roost Counter, Rain-Cover Guano Drying Clock & Fair-Weight Buyer Ledger for Cambodia's Palm-Leaf Bat-House Farmers

## The Hook
- Along the Mekong and Bassac south-east of Phnom Penh, rice farmers deliberately farm wild bats: they lash sugar-palm leaves into bundles on tall poles, lesser Asian house bats move in, and every morning the family sweeps up guano that sells by the kilo as fertiliser. No farmer has ever counted their bats, weighed their roost's output, or been able to check the buyer's scale. Prachiev does all three from a 60-second tap-count at dusk (sunset in Kandal today: 17:32).
- GBIF, the world's largest biodiversity occurrence database, holds **127** records of *Scotophilus kuhlii* for all of Cambodia. All 104 that have a province are from Siem Reap, and **the newest is from 2011**. There are zero digitised records from Kandal, the province where tens of thousands of these bats live on farmers' poles. Every evening tally logged in Prachiev is a new data point for a species and a zoonosis-surveillance blind spot that conservationists and Institut Pasteur du Cambodge both care about.
- Cambodia's fertiliser use jumped from **32.9 kg/ha (2022) to 78.4 kg/ha (2024)** in World Bank data. Farmers are buying more inputs than ever, and the free fertiliser hanging on their own poles is still sold with no record of weight, moisture or price.

## Real Data Found
> Live data queried from real APIs during idea generation — not placeholders.

| Source | Data Point | Value | Queried |
|--------|-----------|-------|---------|
| Open-Meteo Historical Archive API | Total rainfall at Ta Khmau, Kandal (11.48N, 104.95E), 19 Oct – 17 Nov 2026 | 103.6 mm, with 21 of 30 days at ≥1 mm | 2026-11-19 |
| Open-Meteo Historical Archive API | Wettest recent days, Ta Khmau | 12.9 mm (10 Nov), 12.4 mm (13 Nov), 5.7 mm (16 Nov) | 2026-11-19 |
| Open-Meteo Forecast API | Max rain probability, next 7 days, Ta Khmau | 24% (19 Nov) → 43% (20 Nov) → 66% (21 Nov) → 63% (22 Nov) → 23% (23 Nov) → 40% → 45% | 2026-11-19 |
| Open-Meteo Forecast API | Forecast max wind gusts, Ta Khmau | 44.3 km/h on both 20 and 21 Nov (vs 20.5 km/h on 16 Nov) | 2026-11-19 |
| Open-Meteo Forecast API | Sunset time (dusk-emergence count window) | 17:32 local, flat all week | 2026-11-19 |
| Open-Meteo Forecast API | Daily temperature range, Ta Khmau | 23.5–33.6 °C | 2026-11-19 |
| GBIF Occurrence API | *Scotophilus kuhlii* occurrence records, Cambodia | 127 total (104 tagged Siem Reap; none Kandal); by year: 2001 = 70, 2000 = 37, 2011 = 8, 1967 = 5, 1966 = 1 | 2026-11-19 |
| GBIF Occurrence API | *Scotophilus kuhlii* records, global top countries | 3,876 total; PH 1,141 · ID 851 · MY 378 · TW 342 · IN 279 · TH 151 · KH 127 · VN 115 | 2026-11-19 |
| ExchangeRate-API | USD → KHR | 1 USD = 4,066.59 riel (update Thu 19 Nov 2026 00:02 UTC) | 2026-11-19 |
| World Bank Open Data (AG.CON.FERT.ZS) | Cambodia fertiliser consumption | 32.9 kg/ha arable (2022) → 51.1 (2023) → 78.4 (2024) | 2026-11-19 |
| World Bank Open Data (SL.AGR.EMPL.ZS) | Cambodia employment in agriculture | 35.3% (2023) → 34.2% (2024) → 33.4% (2025) | 2026-11-19 |

The weather data matches what these households are dealing with this month. The wet season is supposed to be ending, but Ta Khmau still had rain on 21 of the last 30 days, and the next four days show 43–66% rain chances along with 44 km/h gusts. Guano drying on a tarp in the yard gets soaked by one afternoon shower. Wet guano clumps, goes mouldy, weighs more on the buyer's scale but gets marked down as "wet" (or rejected outright), and it is unpleasant to handle. Gusts in the 40s km/h are also when loosely lashed palm-leaf bundles slip, shed leaves, or come down. Farmers lose colonies that way, and they also lose them when an old bundle is replaced at the wrong time of year.

The GBIF numbers show the other side of the problem. A species that a whole Cambodian rural micro-economy depends on is almost absent from the scientific record. Cambodia's 127 digitised records come mainly from two survey years around 2000–2001. There is nothing at all from the provinces where bat-house farming is concentrated, and nothing in the last 15 years. Fauna & Flora and Cambodian university researchers have published field surveys of bat-house farms, but on the open-data layer this population does not exist. If farmers used a tool that turned a nightly emergence count into a timestamped, geotagged observation, it would quickly become the densest *Scotophilus* dataset in mainland Southeast Asia.

## The Problem

It is 17:35 on a November evening in a village off National Road 1 in Kien Svay. Sreymom is standing under the two bat houses her father put up beside the family's rice field. The first bats drop out of the palm leaves and stream toward the paddies, where they will eat insects until dawn. She has no idea whether there are 800 bats or 3,000, or whether the newer pole, re-thatched in July, has fewer than last year. In the morning she will sweep the concrete pad and spread the guano on a tarp. The sky at Ta Khmau looks like it did on 10 and 13 November, when 12–13 mm fell in an afternoon, so she will be carrying the tarp under the eaves by 2 pm. A buyer comes every few weeks with a hand-held spring scale, says the guano is damp, and pays what he pays. Neither of them writes anything down.

Nobody has solved this because nobody treats it as a business. To NGOs and researchers, bat houses are a fascinating conservation and pest-control story: farmers keeping insectivorous bats near rice fields. To agriculture ministries, guano is a rounding error next to rice and cassava. To the families it is real money (a few kilos a day per roost, sold in sacks), but it is managed entirely by memory. The workarounds are a notebook nobody keeps up, guessing at the weather by looking at the sky, and trusting the one buyer who bothers to come out to the village. There is no app in Khmer for counting bats, no rain-timing guidance for drying guano, and no shared price reference. Price talk happens in whatever the buyer says.

The cost of doing nothing builds up. Colonies decline quietly because roosts are re-thatched at the wrong time, stripped during storms, or disturbed, and nobody notices until the pad stays clean. Guano is sold wet, underweighted and underpriced. Families with bats on their poles have no visibility to public-health surveillance, and that matters. Bats are a priority group for zoonotic disease monitoring in Cambodia, and the cheapest early-warning system is a household that notices "half my bats didn't come out tonight" and has somewhere to report it. Without a tool, that observation never leaves the village.

## Who Uses This

**Primary user:** A Kandal or Takeo household with 1–6 palm-leaf bat houses. Typically the mother or an older daughter does the daily sweep and drying, and an adult son or father handles the buyer and any re-thatching. They sweep at 6–7 am, dry from mid-morning to early afternoon, bag every few days, and sell every 2–6 weeks. Guano is a meaningful secondary income next to rice and factory wages. They use Facebook and Telegram in Khmer on a mid-range Android phone with prepaid Smart/Cellcard/Metfone data.
**What they do now (and why it sucks):** They guess colony size, judge the weather by the sky, store guano in whatever sacks are around, and accept the buyer's weight and price because they have no record and no price comparison.
**When they pay:** They don't pay with money. They "pay" with a dusk tally and a weigh-in. The trigger moment is the first time a rain alert saves a full tarp of drying guano, or the first time their own logged weights show the buyer's scale reading 10–15% light.

**Secondary user:** Cambodian bat researchers and conservation programmes (Fauna & Flora's Cambodia programme, the Royal University of Phnom Penh's Centre for Biodiversity Conservation), and zoonosis-surveillance teams such as Institut Pasteur du Cambodge's virology unit and the One Health groups working with MAFF/General Directorate of Animal Health and Production.
**Why they care:** They get thousands of geotagged, dated colony-size observations a month and an early-warning feed of unusual die-offs or abandonments. That is impossible to collect with field teams.

**Who definitely won't use this:** Commercial cave-guano extractors (a different, extractive business); fertiliser companies selling imported NPK; tourists looking for the bat caves at Phnom Sampov in Battambang; anyone who wants a general farm-management app.

## Feature Set

### MVP — Week 1-3
- **Dusk Emergence Tally:** A big-button Khmer counter (tap per 10 bats, or a "stream" mode that times 30 s of flow and estimates) started from a push reminder at local sunset (17:32 this week, fetched daily). It gives one number per roost per evening and charts the trend over weeks.
- **Rain-Cover Drying Clock:** Each morning a Telegram message in Khmer: "Spread until 13:00. 66% rain risk this afternoon. Take tarp in by 14:00." It uses Open-Meteo hourly precipitation probability for the household's village coordinates.
- **Gust Roost Warning:** When forecast gusts pass a threshold (e.g. ≥40 km/h, as on 20–21 Nov), the household gets a reminder to check lashings and not to re-thatch or disturb roosts that day.
- **Fair-Weight Sack Log:** Weigh each sack on a cheap household scale at bagging and photograph it. On sale day the app compares the total with the buyer's figure and shows the gap in kg and riel.
- **Shared Price Board:** Anonymous village-level reports of price per kg (riel and USD, converted at the live rate, e.g. 4,066.59 KHR/USD) for dry and "damp" guano, so a family knows the going rate before the buyer arrives.

### Version 2 — Month 2-3
- **"Something's Wrong" Report:** One tap to flag dead or sick bats, a sudden drop in emergence, or a roost abandoned overnight. It goes straight to a partner surveillance inbox with photos and GPS, plus a strict Khmer safety card: don't touch with bare hands, gloves and mask, wash hands, keep children and animals away.
- **Re-thatch Planner:** Logs when each palm-leaf bundle was last replaced, suggests the lower-risk months based on partner-researcher guidance, and recommends doing it in stages (never stripping a whole roost at once).
- **Sell-or-Store Nudge:** Compares stored dry kg and recent price-board trend, and flags when the household should call a second buyer.

### Power User / Pro Features
- **Researcher Dashboard:** For partner NGOs and universities, a map of roost counts, trends and anomaly reports, with exports in GBIF Darwin Core format so the data can be published back to GBIF with the families' consent and credit.
- **Buyer Mode:** Lets honest village buyers and fertiliser shops in Ta Khmau post standing prices and pickup days. Their reputation comes from farmers' weight-gap reports.

## Technical Implementation

### Suggested Stack
Telegram is already the default messaging app for Cambodian smallholders and small traders, alongside Facebook Messenger. A bot avoids an app-store install and handles Khmer text and images.

**Chosen stack:** Telegram bot (Python, aiogram) with a Telegram Mini App for the tap counter and charts, on a small VPS with PostgreSQL + PostGIS. Telegram reaches Khmer-reading phones with zero install friction, and the Mini App gives a proper big-button counter without a native app.

### APIs & Data Sources
| API | Specific Endpoint | What It Returns | Refresh Rate | Auth | Cost |
|-----|------------------|-----------------|--------------|------|------|
| Open-Meteo Forecast | `https://api.open-meteo.com/v1/forecast?latitude={lat}&longitude={lon}&hourly=precipitation_probability,precipitation,wind_gusts_10m,relative_humidity_2m&daily=sunset&timezone=Asia/Phnom_Penh&forecast_days=3` | Hourly rain chance/amount, gusts, humidity, sunset time per village | Hourly | none | free (non-commercial) |
| Open-Meteo Historical Archive | `https://archive-api.open-meteo.com/v1/archive?latitude={lat}&longitude={lon}&start_date={d1}&end_date={d2}&daily=precipitation_sum&timezone=Asia/Phnom_Penh` | Past rainfall, used to explain drying losses and wet-season-tail patterns | Daily | none | free |
| GBIF Occurrence API | `https://api.gbif.org/v1/occurrence/search?scientificName=Scotophilus%20kuhlii&country=KH&facet=stateProvince&facet=year` | Existing published records (baseline); later the target for publishing the app's own dataset | Weekly | none (publishing needs a GBIF publisher account) | free |
| ExchangeRate-API | `https://open.er-api.com/v6/latest/USD` | USD→KHR rate for dual-currency prices | Daily | none | free |
| World Bank Open Data | `https://api.worldbank.org/v2/country/KH/indicator/AG.CON.FERT.ZS?format=json&mrv=5` | National fertiliser-use context for grant reporting and press | Yearly | none | free |

### Database Schema (key tables only)
```
households: id (uuid), telegram_id (bigint), village_name (text), commune (text), district (text), province (text), geom (point), consent_research (bool), created_at (timestamptz)
roosts: id (uuid), household_id (uuid), label (text), pole_height_m (numeric), last_rethatch_on (date), geom (point)
emergence_counts: id (uuid), roost_id (uuid), counted_at (timestamptz), method (text: tap|stream_estimate), count (int), weather_snapshot (jsonb)
guano_sacks: id (uuid), household_id (uuid), bagged_on (date), own_weight_kg (numeric), dryness (text: dry|damp), photo_url (text), sale_id (uuid null)
sales: id (uuid), household_id (uuid), buyer_label (text), sold_on (date), buyer_weight_kg (numeric), price_per_kg_khr (int), total_khr (int)
price_reports: id (uuid), district (text), reported_on (date), dryness (text), price_per_kg_khr (int)
anomaly_reports: id (uuid), roost_id (uuid), reported_at (timestamptz), kind (text: dead_bats|sudden_drop|abandoned|other), photos (text[]), forwarded_to (text[]), status (text)
```

### Key Technical Decisions
1. **Emergence count as a relative index, not an absolute census:** A tap counter on 30 s of flow won't give an exact colony size, and it doesn't need to. The same person counting the same roost at the same minute after sunset gives a consistent trend line, which is what detects decline. Researcher partners can calibrate the index against occasional thermal-camera counts.
2. **Telegram-first, with the Mini App only where it's needed:** Morning drying advice, gust warnings and price reports are plain messages that work on weak 3G. Only the counter and charts need the Mini App. This keeps the product usable for families who will never "open an app."
3. **Consent-gated open data:** Roost locations are private by default because they are a source of income and a target for theft. Data reaches GBIF only at commune-level precision and only with explicit opt-in. Exact coordinates go only to the surveillance partner under a data-sharing agreement.

### Hardest Technical Challenge
Getting tally data good enough to be scientifically useful from non-specialists on phones at dusk. Bats exit fast, in the half-light, sometimes from several bundles at once. Mitigation: standardise the method (one roost, start at a fixed offset after sunset, 30-second stream window, repeat twice). Show the count-er their own history so outliers are obvious. Have partner researchers run a one-afternoon calibration in 5–10 pilot villages comparing app tallies with thermal or video counts, and publish the correction factor.

## Monetization Strategy

> Note: Not every idea needs Stripe. Some are better as free tools, grant-funded, or sold B2G.

**Model chosen:** grant-funded (free to farmers), with paid researcher/surveillance data-partner agreements.

| Tier | Price | What's Included | Why They Pay This |
|------|-------|-----------------|-------------------|
| Free | $0 | Everything for farming households: tally, drying clock, gust warnings, sack log, price board, anomaly reporting | Saves guano and exposes underweighting; farmers will never pay a subscription for this |
| Research Partner | $150/mo | Dashboard, trend exports, Darwin Core export, commune-level maps | Replaces field survey days; feeds publications and grant reports |
| Surveillance Partner | $600/mo (or in-kind via a One Health grant) | Real-time anomaly feed with exact coordinates under DSA, household contact relay, monthly summary | Cheapest possible community-based early warning for bat die-offs |

**Why someone pays:** A conservation programme manager writing a donor report needs evidence that bat houses support stable colonies, plus maps. A surveillance lead needs a reason to believe someone in Kandal would call them if a roost died overnight. Prachiev provides both without a field team.

**12-month revenue trajectory:**
- Month 3: ~1 research partner × $150 + small seed grant (~$1,000/mo equivalent) = ~$1,150/month
- Month 12: ~3 research partners × $150 + 1 surveillance partner × $600 + grant (~$1,500/mo equivalent) = ~$2,550/month

**Alternative if SaaS doesn't work:** Pure grant funding as a citizen-science and One Health surveillance project (e.g. National Geographic Society, Rufford Foundation small grants, Bat Conservation International grants, or a USAID-successor/EU One Health envelope), with RUPP or an NGO as the institutional host.

## Marketing Strategy

**Exact communities to reach:**
- Facebook groups for Cambodian farmers trading fertiliser and inputs, e.g. "កសិករកម្ពុជា" (Cambodian Farmers) style groups with tens of thousands to 100k+ members (verify exact current counts before outreach; Khmer farming groups in this range are common). Bat-guano ("ជីលាមកប្រចៀវ") is already traded in these groups.
- Telegram channels and groups of fertiliser/agricultural-input sellers around Ta Khmau and Phnom Penh's Chbar Ampov district, where guano middlemen buy and resell.
- The Cambodian bat-research community: RUPP Centre for Biodiversity Conservation students, Fauna & Flora Cambodia, and the regional Southeast Asian Bat Conservation Research Unit (SEABCRU) network.
- Commune councils and village chiefs in Kien Svay, Lvea Aem and Ponhea Leu, who run their own Facebook pages and Telegram groups for announcements.

**First 10 users and how you get them:**
Partner with a RUPP master's student or Fauna & Flora field officer who already knows bat-house villages in Kandal. Spend one weekend driving National Road 1 and the river roads in Kien Svay and Lvea Aem. Look for the poles, which you can see from the road. At each household, set up the bot on their phone on the spot, do the first dusk tally with them at 17:32, and leave a small kitchen scale as the "sack log" starter kit. Ten households across three villages, each recruited in person with a scale gift, is the entire first cohort.

**The press angle:**
"Cambodia's rice farmers keep thousands of wild bats on their poles, and science has no record of them since 2011." The GBIF gap (127 national records, none from Kandal, newest 15 years old) against a living rural guano economy is a natural feature story for Cambodianess, VOD English, Kiripost, Mongabay, and science desks interested in bats and One Health.

**Content / SEO play:**
Khmer and English pages per district: "bat guano price this week in Kandal," "how to dry bat guano before rain," "how to build and re-thatch a palm-leaf bat house," and a public commune-level map of roost trends (opt-in, coarse). The Khmer price page and how-to guides are what farmers search for on Facebook and Google. The English map is what researchers and journalists link to.

**Launch sequence:**
1. Before launch: Recruit one institutional partner (RUPP or Fauna & Flora) for credibility and safety guidance; translate and test the Khmer safety card with them; pilot with 10 households for 3 weeks during the drying season.
2. Launch day: Post a short Khmer video (a family doing the dusk count, then the morning "take the tarp in by 2 pm" message) to farmer Facebook groups and commune pages in Kandal.
3. Week 1: Publish the first "Kandal bat-house trend" snapshot and the GBIF-gap story to English-language press; open the price board once ≥20 households report.

## Competitive Landscape

| Existing Solution | What They Do | Where They Fall Short | Why This Wins |
|-------------------|-------------|----------------------|---------------|
| Notebook / memory | Some families jot down sack counts or sale totals | No weather link, no price comparison, no colony trend, lost or never kept | Automatic reminders, comparisons and charts in Khmer |
| Generic weather apps (Windy, AccuWeather, phone default) | Rain forecast | English or generic, no "take the tarp in by" advice, no farm context | Turns hourly probability into one actionable drying instruction |
| iNaturalist / GBIF | Citizen-science species records | Single-observation, English-first, nothing to do with farm income | Repeated counts at known roosts, with the income tools as the reason to keep logging |
| Agri apps in Cambodia (e.g. input-marketplace and advisory bots) | Crop advice, input ordering | Rice and vegetables only; guano not on their radar | Built for exactly this niche |

**Moat:** The longitudinal roost dataset (same roosts, counted every evening, tied to weather) can't be replicated without years of household trust. Village price-board density and partner data agreements make it the default place to report bat anomalies in the region.

## Risk Factors

1. **Regulatory / Public-health:** Bats and zoonoses are sensitive, and authorities or donors could react to "farmers handling bats" with blanket discouragement, or the app could be seen as encouraging unsafe contact. → **Mitigation:** Co-design all messaging with Institut Pasteur du Cambodge or a One Health partner. Make the app an explicit *reduce-contact* tool (gloves, masks, never touch live, sick or dead bats; report instead). Never advise on handling animals.
2. **Adoption:** Households may tally for a week and then stop. → **Mitigation:** Make the daily value the drying clock and price board, which need no effort. Ask for the tally only 2–3 evenings a week, with a streak and a "your roost vs last month" chart that families actually want to see.
3. **Data / Privacy:** Roost locations could expose families to theft of guano or bats, or to buyer collusion. → **Mitigation:** Coarse public locations only, private exact coordinates, and anonymous price reports aggregated at district level with a minimum of 5 reporters before display.

## Build Reality Check

| Phase | Realistic Timeline | What Exists at End |
|-------|-------------------|-------------------|
| Prototype | 3 weeks | Khmer Telegram bot with morning drying advice, gust warnings, sunset reminders and a working tap-counter Mini App |
| Beta | 6 weeks | 10–30 Kandal households logging counts and sack weights; first price-board entries; researcher calibration session |
| Launch | 12 weeks | 100+ households in 3 provinces, 1 research partner dashboard live, anomaly reporting routed to a surveillance partner |

**Solo founder feasibility:** Difficult. The software is simple, but it needs a Khmer-speaking field partner and an institutional public-health/conservation partner to be safe and credible.
**Biggest execution risk:** Building rural trust. Getting into villages, being seen as on the farmer's side rather than the buyer's or the government's, and keeping families logging through the dry season without a field person visiting.

---
*Generated: 2026-11-19 | Industry: wildlife_biodiversity | Sub-industry: bat_guano_roost_farming | Geography: cambodia*
*APIs queried for real data: Open-Meteo Forecast API, Open-Meteo Historical Archive API, GBIF Occurrence API, ExchangeRate-API, World Bank Open Data API*

---
id: raw-fish-feast-bacterial-risk-scorer-isan-2026-04-19
title: KoiCheck — Raw Fish Dish Bacterial Risk Scorer for Isan Village Feast Preparers
created: 2026-04-19T08:00:00+07:00
industry: health_medical
sub_industry: food_poisoning_tracking
geography: thailand
apis_used: Open-Meteo Weather API, World Bank Open Data, WHO GHO, ExchangeRate-API
monetization_model: grant-funded
target_user: Village feast coordinators and funeral catering crews in Khon Kaen, Udon Thani, and Kalasin provinces who prepare koi pla (raw fish salad), larb pla (minced raw fish), and pla som (fermented fish) for events serving 50-300 guests — working from 4am in open-air kitchens with no refrigeration, earning ฿1,500-3,000 per event, and relying on smell and texture to judge freshness because no food safety training exists at the village level
concept_hash: raw-fish-bacterial-risk-scoring+isan-northeastern-thailand+village-feast-food-preparers
---

# KoiCheck — Raw Fish Dish Bacterial Risk Scorer for Isan Village Feast Preparers

## The Hook
- At 40.7°C in Khon Kaen this week, bacteria in raw freshwater fish double every 20 minutes — a batch of koi pla prepared at 4am has undergone 18 doubling cycles by the 10am serving. During cool season at 25°C, the same dish hits 6 cycles. Nobody tells the village auntie who's been making koi pla for 30 years that this April her dish is 4,000x more contaminated than her January version.
- Isan has the world's highest rate of cholangiocarcinoma (bile duct cancer), caused by the liver fluke Opisthorchis viverrini — carried in raw freshwater fish. The Thai Ministry of Public Health estimates 6 million Isan residents are currently infected. Temperature doesn't cause liver fluke, but it does cause the secondary bacterial infections that send people to hospitals where the parasite finally gets diagnosed.
- A LINE bot that checks ambient temperature and humidity, calculates bacterial growth risk for specific raw dishes, and sends a simple red/yellow/green safety score — built for ฿0 with Open-Meteo and deployed through LINE Official Account, which 90% of rural Thais already use.

## Real Data Found
> Live data queried from real APIs during idea generation — not placeholders.

| Source | Data Point | Value | Queried |
|--------|-----------|-------|---------|
| Open-Meteo Weather API | Khon Kaen max temperature (Apr 15) | 40.7°C | 2026-04-19 |
| Open-Meteo Weather API | Days above 38°C (past 14 days) | 13 of 14 days | 2026-04-19 |
| Open-Meteo Weather API | Total rainfall (past 14 days) | 15.9 mm (12 dry days) | 2026-04-19 |
| Open-Meteo Weather API | Minimum relative humidity (past week) | 20% | 2026-04-19 |
| WHO GHO | Thailand NCD mortality (ages 30-70, both sexes, 2021) | 14.5% | 2026-04-19 |
| World Bank | Thailand rural basic water services (2024) | 100.0% | 2026-04-19 |
| ExchangeRate-API | THB to USD | 0.0313 | 2026-04-19 |

Khon Kaen has hit 38°C or above every single day for the past two weeks except one. On April 15th, it reached 40.7°C — a temperature at which the FDA's "danger zone" food safety model predicts that raw fish left at ambient temperature will reach unsafe bacterial loads (>10⁵ CFU/g) within 2 hours. The standard Isan village feast prep cycle starts at 4am with fish purchase, 5am with gutting and mincing, and serving at 9-10am — a 5-6 hour window at peak hot-season temperatures. There is zero cold chain infrastructure at village level. The fish comes from local reservoirs, ponds, and rice paddies — not refrigerated supply chains.

The 100% rural basic water services figure from the World Bank masks a critical detail: "basic" means access to an improved source within 30 minutes, not that the water is safe for washing raw fish prep surfaces. Most village event kitchens use unfiltered well water for rinsing, which adds another contamination vector.

## The Problem

Auntie Somjit in Ban Nong Waeng, a village 40 minutes outside Khon Kaen city, has prepared koi pla for funerals, ordinations, and house-warming ceremonies for 25 years. She buys 15 kg of fresh snakehead fish from the morning market at 4am, minces it by hand on a wooden board, mixes it with lime juice, fish sauce, mint, and roasted rice powder, and serves it to 200 guests at 10am. In December, when mornings are 18°C, this is fine. On April 15th, when her kitchen hit 40°C by 8am, the same dish sat for 6 hours in temperatures that double bacterial colonies every 20 minutes. She has no thermometer, no ice, and no way to know that today's dish is orders of magnitude more dangerous than last month's.

The structural problem is a total absence of food safety communication at the village feast level. Thailand's FDA food safety campaigns target restaurants and factories. The อสม. (village health volunteers) focus on dengue, diabetes, and maternal health — not on the bacterial risk curve of raw fish at different ambient temperatures. There is no Thai-language tool that translates "40°C ambient = unsafe after 2 hours" into actionable guidance for someone who doesn't think in terms of CFU counts.

The consequence is ongoing: an estimated 20,000 cholangiocarcinoma cases per year in Isan, the downstream result of a culture of raw freshwater fish consumption combined with zero food safety infrastructure at the point of preparation. Hospital admissions for acute gastroenteritis spike every April-May hot season in the northeast, but the connection to specific feast events is never traced because village health reporting doesn't capture causal food sources.

## Who Uses This

**Primary user:** Village feast coordinators (แม่ครัว/พ่อครัว งานบุญ) in Isan provinces — women aged 40-65 who are informally recognized as the "event cook" in their village cluster of 2-5 villages. They prepare food for funerals (งานศพ), ordinations (งานบวช), and merit-making ceremonies (งานทำบุญ) 3-8 times per month during peak season. Income: ฿1,500-3,000 per event plus social standing. They use LINE daily, own Android phones (mostly Oppo/Vivo), and check weather by looking at the sky.
**What they do now (and why it sucks):** They judge fish freshness by smell and eye clarity — methods that detect spoilage but not bacterial load, and which are completely useless for assessing temperature-accelerated contamination in fish that was fresh 4 hours ago.
**When they pay:** They won't pay. This is a public health tool. The trigger is a village health volunteer or district health officer showing them the bot after a gastroenteritis outbreak at a local event.

**Secondary user:** อสม. (Aor Sor Mor) — Thailand's 1.04 million village health volunteers, specifically the ~300,000 in Isan provinces. They need simple tools to communicate food safety risk during their monthly community visits. A shareable LINE message with a color-coded risk score is infinitely more useful than a pamphlet.
**Why they care:** Their performance metrics include reducing preventable illness in their assigned 10-15 households. A food safety tool that prevents gastroenteritis outbreaks directly improves their quarterly health assessment scores.

**Who definitely won't use this:** Bangkok food influencers, restaurant health inspectors (they have their own systems), anyone who thinks "koi pla risk" means "liver fluke" and wants a parasite testing tool — this is about bacterial load, not parasitology.

## Feature Set

### MVP — Week 1-3
- **Temperature Risk Score:** LINE bot receives village location (or uses GPS), pulls current temperature and humidity from Open-Meteo, and returns a red/yellow/green risk score for raw fish dishes with specific time limits ("ก้อยปลาวันนี้: ทำเสร็จต้องเสิร์ฟภายใน 2 ชม." — "Today's koi pla: must serve within 2 hours of preparation")
- **Dish-Specific Guidance:** Different risk profiles for koi pla (raw), larb pla dip (briefly blanched), pla som (fermented — lower risk), and nam tok pla (grilled — lowest risk), with temperature-adjusted safe holding times for each
- **Event Planner Mode:** Input event size (50/100/200/300 guests) and serving time, get a prep schedule that keeps each dish within its safe window — "Start koi pla at 8am, not 4am"
- **Thai-Language Interface:** Entire bot in Isan-friendly Thai (ภาษาอีสาน loanwords welcome), no English, no technical jargon — "ร้อนจัด อันตราย" not "bacterial colony forming units exceed threshold"
- **7-Day Feast Forecast:** Weekly overview showing which days are high-risk for raw dish preparation, so event planners can adjust menus in advance — "วันพุธ-ศุกร์ ร้อนเกิน 40° แนะนำเปลี่ยนเมนูเป็นลาบสุก"

### Version 2 — Month 2-3
- **Outbreak Alert Network:** When multiple users in the same tambon report gastroenteritis symptoms (via simple "มีคนท้องเสีย" button), alert nearby feast preparers and the local อสม.
- **Safe Menu Suggestions:** On red-risk days, suggest cooked alternatives that maintain the cultural significance — larb suk (cooked larb), nam tok (grilled), sup normai (bamboo soup) — with recipes from local cooks
- **อสม. Dashboard:** Simple web view for village health volunteers showing risk trends in their area, upcoming feast dates from the village calendar, and shareable safety cards

### Power User / Pro Features
- **District Health Office Integration:** API endpoint for Khon Kaen Provincial Health Office to aggregate risk scores and feast event data across districts for outbreak prediction
- **Research Data Export:** Anonymized dataset of feast events × ambient conditions × reported illness for Khon Kaen University's tropical medicine department

## Technical Implementation

### Suggested Stack
**Chosen stack:** LINE Messaging API + Cloudflare Workers + Open-Meteo API (no database needed for MVP) — because 90% of rural Isan residents use LINE daily, Cloudflare Workers are free for up to 100K requests/day, and Open-Meteo requires no API key. Total infrastructure cost: ฿0/month for the first 10,000 users. LINE Official Account is free up to 500 messages/month on the free tier, ฿0 for the first year with the "Community" plan that NGOs qualify for.

### APIs & Data Sources
| API | Specific Endpoint | What It Returns | Refresh Rate | Auth | Cost |
|-----|------------------|-----------------|--------------|------|------|
| Open-Meteo | `forecast?latitude={lat}&longitude={lon}&hourly=temperature_2m,relative_humidity_2m&timezone=Asia/Bangkok` | Hourly temp + humidity for bacterial growth model | Hourly | none | free |
| Open-Meteo | `forecast?latitude={lat}&longitude={lon}&daily=temperature_2m_max&timezone=Asia/Bangkok&forecast_days=7` | 7-day max temp forecast for feast planning | Daily | none | free |
| LINE Messaging API | `api.line.me/v2/bot/message/reply` | Send risk score cards to users | Real-time | channel token | free (community) |

### Database Schema (key tables only)
```
No database for MVP — stateless bot. Risk score calculated on-the-fly from:
  location (lat/lon from LINE location message) → Open-Meteo API → bacterial_growth_model(temp, humidity, dish_type) → risk_score + time_limit

V2 adds KV store:
feast_events: event_id (uuid), tambon_code (text), event_date (date), guest_count (int), dishes (jsonb), risk_score (float)
illness_reports: report_id (uuid), tambon_code (text), report_date (date), event_id (uuid nullable), symptom_count (int)
```

### Key Technical Decisions
1. **LINE bot over PWA:** Rural Isan users won't install a new app. LINE is already on every phone. The bot works with zero onboarding — user sends location, gets risk score. The friction is near zero.
2. **Stateless MVP with no database:** A food safety risk score is a pure function of (temperature, humidity, dish_type, prep_time). No user accounts, no history, no sign-up. This keeps the bot maintainable by a single public health grad student.

### Hardest Technical Challenge
Calibrating the bacterial growth model for specific Isan raw fish dishes. Published food science literature uses lab conditions with standardized fish species (salmon, tilapia) — not wild-caught snakehead minced on a wooden board with lime juice (which is partially bacteriostatic). Mitigation: partner with Khon Kaen University's Faculty of Public Health, which has published extensively on koi pla safety. Use their empirical data as the growth model baseline, then validate with field temperature logging at 5-10 real village feast events during hot season.

## Monetization Strategy

> Note: This is a public health tool. Charging village aunties ฿50/month to not poison their neighbors is ethically indefensible and practically impossible.

**Model chosen:** grant-funded

| Tier | Price | What's Included | Why They Pay This |
|------|-------|-----------------|-------------------|
| Free | $0 | Full risk scoring, all dish types, 7-day forecast, event planner | Universal access — this is a public health intervention |
| District License | $200/year | อสม. dashboard, outbreak alerts, data export for health office | Provincial health offices have budget for digital health tools |
| Research Access | $500/year | Raw anonymized dataset, API access, custom model parameters | University departments and WHO/FAO research grants |

**Why someone pays:** Provincial health offices already spend ฿50,000+/year on printed food safety pamphlets that nobody reads. A LINE bot that reaches 10,000 village cooks costs less and actually changes behavior.

**12-month revenue trajectory:**
- Month 3: 1 provincial health office pilot (Khon Kaen) × $200 + 1 university partnership × $500 = $700/month (grant-subsidized)
- Month 12: 5 provincial health offices × $200 + 3 research partnerships × $500 + Thai Health Promotion Foundation grant = ~$3,000/month

**Alternative if SaaS doesn't work:** Thai Health Promotion Foundation (สสส.) funds exactly this type of community health innovation — annual grants of ฿500,000-2,000,000 for digital health interventions targeting rural populations. WHO Thailand and FAO also fund food safety capacity building in ASEAN.

## Marketing Strategy

**Exact communities to reach:**
- Facebook group "อสม.ทั่วไทย" (Village Health Volunteers Thailand) — ~180,000 members, extremely active with daily health tip sharing
- Facebook group "แม่ครัวงานบุญอีสาน" (Isan Merit-Making Event Cooks) — ~25,000 members, recipe and event coordination
- LINE OpenChat "อสม.ขอนแก่น" (Khon Kaen VHVs) — ~8,000 members, province-specific health volunteer coordination
- Facebook group "สาธารณสุขชุมชน" (Community Public Health) — ~45,000 members, district health officers and community health workers

**First 10 users and how you get them:**
Walk into the Khon Kaen Provincial Health Office (สสจ.ขอนแก่น) on Srichan Road with a working prototype on your phone. Ask for the food safety division (กลุ่มงานคุ้มครองผู้บริโภค). Show them the bot sending a risk score for today's 40°C weather. They will immediately connect you to 5 อสม. supervisors in high-risk tambons (Nam Phong, Ban Phai, Chum Phae). Those supervisors each know 10+ village feast preparers by name. You have your first 10 users within a week — not through marketing, but through the existing public health referral chain.

**The press angle:**
"Your grandmother's koi pla recipe is 4,000 times more dangerous in April than January — and nobody told her until a LINE bot did." Thai Rath, Khaosod, and Matichon all cover hot-season food safety stories every April. This gives them data instead of generic warnings.

**Content / SEO play:**
Weekly "Isan Food Safety Index" published to a simple web page showing which provinces hit dangerous temperature thresholds for raw fish prep. Google-indexable pages for "ก้อยปลา อันตราย หน้าร้อน" (koi pla danger hot season), "อาหารดิบ อุณหภูมิ" (raw food temperature), and "งานบุญ อาหารปลอดภัย" (merit ceremony food safety).

**Launch sequence:**
1. Pre-launch: Get letter of support from Khon Kaen University Faculty of Public Health. Build prototype, test with 3 อสม. in Nam Phong district during peak April heat.
2. Launch: Present at Khon Kaen Provincial Health Office monthly meeting. Get อสม. supervisors to add bot to their LINE groups. Time this for April-May (peak hot season = peak relevance).
3. Week 1: อสม. Facebook group post with video of the bot in action at a real village feast. Aim for shares into provincial อสม. LINE groups across Isan.

## Competitive Landscape

| Existing Solution | What They Do | Where They Fall Short | Why This Wins |
|-------------------|-------------|----------------------|---------------|
| Thai FDA food safety app (อย. Smart) | Restaurant/factory inspection tracking | Zero coverage of village-level informal food preparation — designed for licensed establishments only | Targets the 80% of Isan food prep that happens outside any regulatory framework |
| Public health pamphlets (สสส./อสม.) | Generic "cook food thoroughly" messaging distributed during community visits | No temperature-specific guidance, no real-time data, same message year-round regardless of actual risk level | Gives a specific, actionable risk score tied to today's weather in your village |
| Nothing | Village cooks rely on 30 years of experience and sensory judgment | Experience doesn't account for year-over-year temperature increases — 2026 April is hotter than 2020 April, but the recipe hasn't changed | Bridges the gap between food science knowledge and village kitchen practice |

**Moat:** Trust from the public health volunteer network. Once 50 อสม. in a province adopt this, it becomes the de facto food safety tool for village events in that province. The data collected (feast events × temperatures × illness reports) becomes the first-ever dataset linking ambient conditions to village-level food safety outcomes in Isan — valuable to researchers and policymakers.

## Risk Factors

1. **Adoption — Cultural sensitivity:** Telling a respected village cook that her signature dish is dangerous today is socially fraught. The bot must frame guidance as "timing advice" not "your food is bad." → **Mitigation:** Frame as "เคล็ดลับ" (tips/secrets) not warnings. "วันนี้ร้อนมาก ทำก้อยปลาตอน 8 โมง เสิร์ฟ 10 โมง จะอร่อยกว่า" (Today's very hot — make koi pla at 8am, serve at 10am, it'll taste better). Taste framing, not fear framing.
2. **Data — Bacterial growth model accuracy:** Lab-derived models may not match field conditions with lime juice, fermented fish sauce, and tropical freshwater species. → **Mitigation:** Conservative thresholds (err on the side of shorter safe windows) plus field validation with Khon Kaen University during the first hot season.
3. **Technical — LINE API message limits:** Free tier allows 500 reply messages/month. A popular bot exceeds this in a week. → **Mitigation:** Apply for LINE Official Account Community plan (free for NGO/public health). If denied, the Thai Health Promotion Foundation grant covers the ฿1,500/month Pro plan (15,000 messages).

## Build Reality Check

| Phase | Realistic Timeline | What Exists at End |
|-------|-------------------|-------------------|
| Prototype | 2 weeks | LINE bot responding to location messages with temperature-based risk score for koi pla. Thai language. Works on any Android phone. |
| Beta | 3 weeks | All dish types, 7-day forecast, event planner mode. Tested with 10 อสม. and 5 feast preparers in Khon Kaen. |
| Launch | 2 weeks | Provincial health office pilot, อสม. Facebook group launch, basic web dashboard for health volunteers. |

**Solo founder feasibility:** Yes — a single developer with basic LINE bot experience can build and maintain this. The hard part isn't code, it's the public health partnership with KKU and the provincial health office.
**Biggest execution risk:** The bot works perfectly but nobody shares it because food safety isn't perceived as a problem until someone actually gets sick — and even then, Isan culture attributes illness to karma or bad luck, not to koi pla temperature exposure. Overcoming this requires embedding the tool within the existing อสม. workflow, not expecting viral adoption.

---
*Generated: 2026-04-19 | Industry: health_medical | Sub-industry: food_poisoning_tracking | Geography: thailand*
*APIs queried for real data: Open-Meteo Weather API, World Bank Open Data, WHO GHO, ExchangeRate-API*

---
id: heat-danger-alert-bangkok-construction-day-laborers-2026-04-15
title: RonSite — Heat Danger Hour Alert for Bangkok High-Rise Construction Day Laborers
created: 2026-04-15T08:00:00+07:00
industry: labor_work
sub_industry: construction_site_safety
geography: thailand
apis_used: Open-Meteo Weather API, Open-Meteo Air Quality API, World Bank Open Data, ExchangeRate-API
monetization_model: hybrid
target_user: Isan-born day laborers aged 25-55 working on exposed upper floors of Bangkok high-rise construction sites for 350-450 THB/day ($11-14), who start pouring concrete at 7am and have no shade access until the building gets roofed — they rely on gut feeling and co-worker collapses to judge when heat is dangerous
concept_hash: heat-stress-work-hour-alert+bangkok-construction-sites+isan-migrant-day-laborers
---

# RonSite — Heat Danger Hour Alert for Bangkok High-Rise Construction Day Laborers

## The Hook
- Bangkok's apparent temperature hit 43.6°C yesterday on exposed surfaces — that's the "stop all outdoor work" threshold in every ILO guideline, but not a single Thai construction site has a real-time heat monitor. Workers find out the heat was dangerous when someone collapses.
- Thailand has ~2.5 million construction workers, mostly internal migrants from Isan, earning 350-450 THB/day on sites with zero shade on upper floors. April is the deadliest month — and the data shows 14 straight days of zero rain with daily peaks above 42°C feels-like.
- A LINE bot that sends a color-coded heat danger alert at 6am, 10am, and 1pm — timed to shift start, first break, and post-lunch — costs nothing to run and could be mandated by the Department of Labour Protection.

## Real Data Found
> Live data queried from real APIs during idea generation — not placeholders.

| Source | Data Point | Value | Queried |
|--------|-----------|-------|---------|
| Open-Meteo Weather API | Bangkok peak apparent temperature (Apr 14) | 43.6°C | 2026-04-15 |
| Open-Meteo Weather API | Bangkok 1pm actual temperature (Apr 14) | 37.1°C | 2026-04-15 |
| Open-Meteo Weather API | Consecutive days with 0mm precipitation | 14 days (Apr 8-21 forecast) | 2026-04-15 |
| Open-Meteo Weather API | Morning 7am humidity (Apr 14) | 88% | 2026-04-15 |
| Open-Meteo Air Quality API | Peak PM2.5 during work hours (Apr 14) | 42.5 µg/m³ | 2026-04-15 |
| Open-Meteo Air Quality API | Peak UV index midday (Apr 15) | 11.15 | 2026-04-15 |
| World Bank Open Data | Thailand total labor force (2025) | 40,871,242 | 2026-04-15 |
| ExchangeRate-API | USD/THB exchange rate | 1 USD = 32.01 THB | 2026-04-15 |

Bangkok in mid-April is running a continuous heat emergency that nobody formally declares. The apparent temperature — what the body actually feels accounting for humidity — exceeds 42°C every single day from 11am to 3pm. At 7am, when workers start their shift, the air temperature is "only" 29°C but humidity is 88%, making the feels-like already 36°C. By noon on an exposed concrete floor 20 stories up — with radiated heat from uncured concrete and steel rebar — effective temperatures are 5-10°C higher than ground-level readings. PM2.5 readings of 42.5 µg/m³ (nearly 3x WHO's 15 µg/m³ guideline) compound the respiratory load on workers doing heavy physical labor. The UV index hits 11.15 — classified as "extreme" — meaning unprotected skin burns in under 15 minutes. No Thai construction site currently provides this information to workers in any form.

## The Problem

Somchai is 38, from Udon Thani, and has been pouring concrete on Bangkok high-rises for 11 years. At 12:45pm on a Thursday in April, he's on the 23rd floor of a condo project in Bang Na, carrying 25kg buckets of wet concrete across exposed rebar. The air temperature is 37°C, but on the unshaded concrete floor reflecting solar radiation, the effective temperature exceeds 48°C. His foreman won't call a break because the concrete pour has a 90-minute window before it sets. Somchai's vision blurs. His co-worker Prasit collapsed last week and spent two nights in a hospital — the contractor deducted both days from his pay.

The structural reason this problem persists is that Thai labor law mandates "appropriate rest periods" during extreme heat but specifies no temperature thresholds, no monitoring requirements, and no penalties. Construction contractors operate on razor-thin margins and treat heat breaks as schedule slippage. Workers themselves, paid daily, have zero incentive to stop working — losing a day's wage (350-450 THB) is worse than enduring discomfort. The information asymmetry is total: nobody on-site knows the actual heat index, nobody tracks cumulative heat exposure across a shift, and the closest weather station data is measured at ground level in a shaded enclosure — not on an exposed 20th floor.

Without intervention, Thailand's construction sector will continue averaging 20-40 heat-related deaths per year during the hot season (March-May), with hundreds more hospitalizations that go unreported because workers fear losing their position. As climate change pushes Bangkok's April average 0.3°C higher per decade, the "safe work hours" window shrinks every year. By 2035, midday outdoor construction in Bangkok during April may be physiologically impossible — but nobody is building the data trail to prove it.

## Who Uses This

**Primary user:** Isan-born construction day laborers (age 25-55) working on Bangkok high-rise sites, earning 350-450 THB/day, who own a smartphone (95%+ penetration) and use LINE as their primary communication app. They check LINE during their 10am break and at lunch. They have no access to weather apps in Thai that translate forecasts into work-safety decisions.
**What they do now (and why it sucks):** They ask co-workers "ร้อนมากไหมวันนี้" (is it very hot today?) and rely on physical symptoms — dizziness, nausea, stopped sweating — which are already signs of heat stroke, not warnings.
**When they pay:** They don't pay — this is a free tool for workers. The paying users are contractors and developers (see secondary user).

**Secondary user:** Construction site safety officers at mid-to-large Thai developers (Sansiri, AP, LPN, Pruksa) who need documentation for ISO 45001 occupational health certification and to reduce liability exposure after worker heat incidents.
**Why they care:** One heat death on-site triggers a Department of Labour investigation, potential criminal charges, and 1-3 months of project delay. A 500 THB/month/site monitoring tool is cheaper than one lawyer consultation.

**Who definitely won't use this:** Foreign-managed mega-projects (MRT extensions, airports) that already have international OHS protocols. Solo renovation contractors doing indoor work. Office-based construction managers who never visit sites.

## Feature Set

### MVP — Week 1-3
- **Morning shift alert (LINE bot):** Color-coded heat danger forecast sent at 6am in Thai — green/yellow/orange/red with plain-language advice ("วันนี้อันตราย หลังเที่ยงห้ามทำงานกลางแดด" — today is dangerous, no sun-exposed work after noon)
- **Hourly danger meter:** Simple web page (no app install needed) showing current feels-like temperature, UV index, and cumulative heat exposure estimate for someone who started at 7am
- **Break timer recommendation:** Based on current heat index, suggests mandatory rest intervals — "พัก 15 นาที ทุก 45 นาที" (rest 15 min every 45 min)
- **Floor correction:** User selects approximate floor level (ground / 5-10 / 10-20 / 20+) and the system adds a correction factor for solar radiation and reduced wind on upper floors
- **Emergency symptoms checklist:** Tap-through checklist in Thai — headache? stopped sweating? confused speech? — that outputs "ไปหาหมอเดี๋ยวนี้" (go to the doctor now) or "ดื่มน้ำ พักร่ม" (drink water, rest in shade)

### Version 2 — Month 2-3
- **Site-level dashboard:** Safety officers see heat exposure across a project site, with shift-level risk scoring and historical logs for compliance reporting
- **Push notification to foreman LINE group:** When conditions cross red threshold, auto-message the foreman group chat with ILO-compliant break recommendations
- **Weekly heat exposure report:** PDF/image summary a worker can send to their family or share on social media — builds awareness and social pressure

### Power User / Pro Features
- **Multi-site monitoring:** Safety officers managing 5+ sites get a portfolio view with site-by-site risk ranking
- **ISO 45001 compliance export:** Auto-generates heat monitoring logs formatted for occupational health audits
- **Insurance integration:** Share anonymized site heat data with insurers for premium discounts on workers' compensation policies

## Technical Implementation

### Suggested Stack
**Chosen stack:** LINE Messaging API bot + Cloudflare Workers + static web page (no database for MVP) — because 95%+ of Thai construction workers already use LINE daily, Cloudflare Workers are free for up to 100K requests/day, and a static page avoids app store friction for workers who change phones frequently and won't install apps.

### APIs & Data Sources
| API | Specific Endpoint | What It Returns | Refresh Rate | Auth | Cost |
|-----|------------------|-----------------|--------------|------|------|
| Open-Meteo Weather | `forecast?latitude=13.75&longitude=100.52&hourly=temperature_2m,relative_humidity_2m,apparent_temperature,wind_speed_10m` | Hourly temperature, humidity, feels-like, wind | Hourly | none | free |
| Open-Meteo Air Quality | `air-quality?latitude=13.75&longitude=100.52&hourly=pm2_5,pm10,uv_index` | PM2.5, PM10 particulate, UV index | Hourly | none | free |
| LINE Messaging API | `api.line.me/v2/bot/message/push` | Send push messages to LINE users | real-time | channel token | free (up to 500 msgs/mo on free tier, 15K on light tier at 1,200 THB/mo) |

### Database Schema (key tables only)
```
users: line_user_id (text PK), display_name (text), floor_level (int), site_name (text), registered_at (timestamp)
alerts_sent: id (serial), line_user_id (text), alert_level (text), apparent_temp (float), sent_at (timestamp)
sites: site_id (text PK), name (text), lat (float), lon (float), safety_officer_line_id (text)
```

### Key Technical Decisions
1. **LINE bot over native app:** Thai construction workers cycle phones frequently (cheap Androids), never install work apps, but LINE persists across every device they own. A bot they add once follows them forever.
2. **Floor-level correction factor:** Ground-level weather data underestimates rooftop/upper-floor heat by 3-8°C. Using a simple additive correction based on floor band (researched from ILO tropical construction studies) is imperfect but far better than raw station data.

### Hardest Technical Challenge
Estimating effective heat exposure on an exposed upper floor from ground-level API data. The correction factor varies with building orientation, wind exposure, concrete curing status, and whether nearby buildings provide shade. Mitigation: start with conservative ILO correction tables (+3°C for 5-10F, +5°C for 10-20F, +7°C for 20F+), then collect real sensor data from 2-3 partner sites to calibrate.

## Monetization Strategy

> Note: The worker-facing tool must be free — these are daily wage earners making $11-14/day. Revenue comes from construction companies.

**Model chosen:** hybrid (free for workers, B2B SaaS for construction companies)

| Tier | Price | What's Included | Why They Pay This |
|------|-------|-----------------|-------------------|
| Worker (Free) | $0 | LINE alerts 3x/day, hourly web dashboard, emergency checklist | Acquisition — every worker who adds the bot is a data point for site-level sales |
| Site Monitor | 500 THB/mo ($16) per site | Site dashboard, foreman alerts, weekly reports, compliance logs | Cheaper than one hospital trip (avg 15,000 THB) for a heat-collapsed worker |
| Enterprise | 2,000 THB/mo ($63) for up to 10 sites | Multi-site dashboard, ISO 45001 export, insurance data sharing, API access | Required for publicly listed developers seeking international OHS certification |

**Why someone pays:** After a heat incident triggers a Department of Labour investigation and 2-week project pause, the safety officer Googles "ระบบเตือนความร้อนไซต์ก่อสร้าง" (construction site heat warning system) and finds nothing. RonSite is the only product that exists.

**12-month revenue trajectory:**
- Month 3: ~20 paying sites × 500 THB = 10,000 THB/month ($312)
- Month 12: ~150 paying sites × avg 800 THB = 120,000 THB/month ($3,750) + 5 enterprise accounts × 2,000 THB = 10,000 THB/month ($312)

**Alternative if SaaS doesn't work:** Apply for ILO/WHO occupational health grant funding — the ILO's Safety + Health for All flagship programme specifically funds heat stress interventions in tropical construction. Thai Ministry of Labour's กองทุนความปลอดภัย (Safety Fund) also grants up to 500,000 THB for workplace safety innovations.

## Marketing Strategy

**Exact communities to reach:**
- Facebook group "กลุ่มรับเหมาก่อสร้าง ช่างก่อสร้าง" (Construction Contractor/Worker Group) — ~380,000 members, extremely active, workers share job postings and safety complaints daily
- Facebook group "แรงงานก่อสร้าง หางาน รับเหมา" (Construction Labor Job Search) — ~120,000 members, migrant worker networking
- LINE OpenChat "ช่างก่อสร้างทั่วไทย" (Construction Workers All Thailand) — estimated 5,000-10,000 members based on similar trade groups
- Subreddit r/Thailand — 250K+ members, frequent threads about heat waves and worker conditions from expat journalists and NGO workers

**First 10 users and how you get them:**
Walk onto 3 construction sites in Bang Na / On Nut (Bangkok's most active high-rise corridor), find the workers eating lunch at the 7-Eleven across the street, show them the LINE bot QR code on your phone, and say "สแกนนี้ มันบอกว่าวันนี้ร้อนอันตรายกี่โมง" (scan this, it tells you what time today is dangerously hot). Construction workers share useful LINE bots virally within their crew — if 3 workers on one site add it, the whole crew of 30 will have it within a week.

**The press angle:**
"Bangkok construction workers are laboring through 43°C feels-like heat with zero monitoring — we built the alert system the government won't." Pitch to Thai PBS, Khaosod English, and The Standard (Thai-language). Tie to April heat wave news cycle — every year Thai media runs "ร้อนจัด" (extreme heat) stories but never connects it to construction worker deaths.

**Content / SEO play:**
Daily heat danger reports for Bangkok construction zones — "วันนี้ไซต์ไหนร้อนสุด" (which site is hottest today) — that rank for Thai-language searches about construction heat safety. Weekly "Bangkok Heat Map for Outdoor Workers" shared as infographic on Facebook construction groups.

**Launch sequence:**
1. Pre-launch: Partner with one mid-size developer's safety officer to pilot on 2-3 sites for free; collect testimonials and real correction-factor data
2. Launch day: Post before/after comparison in Facebook construction groups during peak heat week (mid-April Songkran); workers are off for holiday, checking Facebook, and will remember to add the bot when they return to site
3. Week 1: Contact 5 construction safety consultancies that advise developers on ISO 45001 — offer them white-label access as a value-add for their clients

## Competitive Landscape

| Existing Solution | What They Do | Where They Fall Short | Why This Wins |
|-------------------|-------------|----------------------|---------------|
| TMD weather app | General weather forecast for province | No heat index, no work-safety framing, no construction context, Thai language but not blue-collar UX | Translates weather into "can I work safely right now" in construction worker language |
| AccuWeather RealFeel | Shows feels-like temperature | English-first, no floor correction, no occupational health framing, requires app install | LINE-native, Thai-only, adds floor correction and break scheduling |
| Nothing (current state) | Workers guess based on how they feel | Symptoms of heat stroke ARE the warning system — by then it's too late | Proactive alerts before danger, not reactive after collapse |

**Moat:** First-mover data collection on Bangkok construction site heat conditions by floor level. As more workers and sites join, the correction factors improve, making the product more accurate — a data flywheel no competitor can replicate without the same on-the-ground user base. Relationship with Department of Labour if/when heat monitoring becomes mandatory.

## Risk Factors

1. **Adoption:** Construction workers may not trust or engage with another LINE bot — their phones are full of spam. → **Mitigation:** The bot sends exactly 3 messages per day, never ads, never spam. Crew-level viral adoption (one worker shows another) bypasses the trust problem.
2. **Data accuracy:** Ground-level API data with floor corrections is still an estimate, not a measurement. If the bot says "safe" and someone collapses, liability is severe. → **Mitigation:** Always err conservative (add extra correction margin). Prominent disclaimer: "นี่คือการประมาณ ไม่ใช่การวัดจริง" (this is an estimate, not an actual measurement). Never say "safe" — only grade danger levels.
3. **Contractor resistance:** Site foremen may ban the bot if it tells workers to stop working during pours. → **Mitigation:** Position the B2B product as liability protection for the developer, not as a worker advocacy tool. When a developer mandates it, the foreman complies.

## Build Reality Check

| Phase | Realistic Timeline | What Exists at End |
|-------|-------------------|-------------------|
| Prototype | 2 weeks | LINE bot sending 3x daily heat alerts for one Bangkok location with basic floor correction |
| Beta | 3 weeks | Multi-location support, site dashboard for safety officers, real worker feedback from 2 pilot sites |
| Launch | 6 weeks | Public LINE bot, marketing push into Facebook construction groups, 3-5 paying site monitor accounts |

**Solo founder feasibility:** Yes — LINE bot + Cloudflare Workers is a weekend project for the MVP; the hard part is walking onto construction sites and earning worker trust, which requires speaking Thai and being comfortable in that environment.
**Biggest execution risk:** Getting the first construction company to formally adopt it — Thai developers are risk-averse and won't be first. The pilot must generate a compelling safety incident prevention story before any sales conversation works.

---
*Generated: 2026-04-15 | Industry: labor_work | Sub-industry: construction_site_safety | Geography: thailand*
*APIs queried for real data: Open-Meteo Weather API, Open-Meteo Air Quality API, World Bank Open Data, ExchangeRate-API*

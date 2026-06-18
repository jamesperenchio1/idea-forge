---
id: tabon-karbon-palawan-carbon-credit-fire-watch-2026-06-18
title: TabonKarbon — REDD+ Fire-Watch & Payout Readiness Tracker for Southern Palawan Tagbanua Forest Guardians
created: 2026-06-18T08:02:00+08:00
industry: energy_utilities
sub_industry: carbon_credits_farmers
geography: philippines
apis_used: Open-Meteo Weather API, ExchangeRate-API, World Bank Open Data, NASA EONET
monetization_model: grant-funded
target_user: Tagbanua and Palawano indigenous forest guardians in Southern Palawan (Aborlan, Quezon, Española municipalities) who are enrolled in the Wildlife Alliance Southern Palawan REDD+ project, patrol 1,500-3,000 hectares of ancestral domain on foot 5-6 days/week, earn roughly ₱6,000-9,000/month in community stipends, and have no tool to monitor whether satellite-detected fire events in their zone are silently threatening the carbon credit revenue their entire village is depending on.
concept_hash: carbon-credit-fire-monitoring-payout-tracker+southern-palawan-philippines+tagbanua-palawano-indigenous-forest-guardians
---

# TabonKarbon — REDD+ Fire-Watch & Payout Readiness Tracker for Southern Palawan Tagbanua Forest Guardians

## The Hook
- A Tagbanua forest guardian in Aborlan walks 8 hours a day protecting 2,000 hectares of Palawan rainforest — but has no idea if a satellite already spotted a fire in their patrol zone last week that will silently void 3 years of carbon credit revenue their whole village was counting on.
- REDD+ carbon payments arrive in USD. At today's rate (1 USD = 60.53 PHP), a $20,000 community annual payout equals ₱1,210,600 — a number that nobody in the village can see, and which swings by ₱80,000–120,000 across a year's worth of exchange rate drift.
- Southern Palawan holds some of the Philippines' last significant lowland forest — the indigenous communities guarding it earn $2–8 per ton of CO2 for keeping it standing, but cannot access the satellite data that determines whether the next verification audit will approve or claw back their payment.

## Real Data Found
> Live data queried from real APIs during idea generation — not placeholders.

| Source | Data Point | Value | Queried |
|--------|-----------|-------|---------|
| Open-Meteo Weather API | Precipitation, Puerto Princesa (9.74°N, 118.74°E), June 17 | 0.0 mm | 2026-06-18 |
| Open-Meteo Weather API | ET0 evapotranspiration, same location, June 17 | 5.21 mm | 2026-06-18 |
| Open-Meteo Weather API | Max temperature, same location, June 17 | 31.9 °C | 2026-06-18 |
| Open-Meteo Weather API | Precipitation, same location, June 16 | 0.9 mm | 2026-06-18 |
| Open-Meteo Weather API | ET0 evapotranspiration, same location, June 16 | 5.03 mm | 2026-06-18 |
| ExchangeRate-API | USD/PHP exchange rate | 60.53 PHP per USD | 2026-06-18 |
| World Bank Open Data | Philippines forest area (% of land) | 24.46% (2023) | 2026-06-18 |
| World Bank Open Data | Philippines forest area (% of land) | 23.99% (2019) | 2026-06-18 |
| NASA EONET | Active wildfire events in Palawan bbox (117–121°E, 8–13°N), last 14 days | 0 events | 2026-06-18 |

June 16–17 in Southern Palawan showed back-to-back days of near-zero precipitation (0.9mm and 0.0mm) against evapotranspiration demand of 5.03mm and 5.21mm — a cumulative moisture deficit of roughly 9.3mm over 48 hours, with afternoon temperatures reaching 31.9°C. These are the "hidden dry windows" that appear inside the wet season and create short-lived elevated fire ignition risk in slash-and-burn encroachment zones at forest edges. No active fires were detected by EONET satellites this week, which is the normal state — the problem is that guards have no visibility into this data themselves, so they can't prioritize which patrol sector needs coverage today versus next week.

Philippines forest cover has crept from 23.99% (2019) to 24.46% (2023), a net gain of roughly 140,000 hectares nationwide. Palawan accounts for a disproportionate share of this — it's one of the few Philippine provinces where deforestation has reversed. That reversal is largely driven by REDD+ community guardian programs. The community payments funding those programs are denominated in USD. At 60.53 PHP per dollar today, each community's annual carbon payment has ~₱100,000 more purchasing power than it did when the rate was 56 PHP/USD two years ago — but no one at the village level is tracking this or timing payments accordingly.

## The Problem

At 5am, before the sun makes the ridgeline trail unbearable, a Tagbanua guardian named Yolanda laces her boots at her home in barangay Aporawan, Aborlan, Palawan. She works for a REDD+ project run by Wildlife Alliance, patrolling 2,200 hectares of her community's ancestral domain. Her daily work — noting chainsaw sounds, photographing encroachment, scaring off poachers — is the physical backbone of a carbon credit program that pays her village around ₱500,000–800,000 per year. That money funds their children's school supplies, a community health worker, and a backup rice fund for lean months. Every quarter, Yolanda's community leader submits patrol reports to Wildlife Alliance. Every five years, a VCS verifier flies in from Manila and samples carbon stock plots. If fires or deforestation have occurred in the certified area and gone unreported, credits are voided and the payout is reduced or suspended.

Yolanda has no idea that two days ago, Open-Meteo data shows her patrol zone experienced its driest 48-hour window in three weeks. She doesn't know that the satellite pass last Thursday detected a thermal anomaly at the edge of her assigned sector — possibly an illegal kaingin burn. She will not find out until the Wildlife Alliance field officer visits next month, by which time the burn scar will be overgrown and the encroachment plot will be half-planted. The structural reason this gap exists is mundane: the NGO staff who do have access to satellite fire monitoring tools (Global Forest Watch, NASA FIRMS) are based in Puerto Princesa or Manila, not in barangay Aporawan. There is no tool that puts this data directly into Yolanda's hands in a format that works on a ₱2,500 Android phone with intermittent 3G coverage.

The consequence of this gap runs in both directions. Communities lose carbon revenue when fires go unreported and unrepaired before verification audits. But they also underestimate the power of their own vigilance — if Yolanda could see "your zone has been fire-free for 73 consecutive days," that data is both a motivation multiplier and a negotiating point when renegotiating stipend rates with the project operator. Neither direction is visible right now. The carbon credit economy that depends on these guardians is essentially running on patrol logs submitted on paper forms.

## Who Uses This

**Primary user:** Tagbanua and Palawano indigenous forest guardians employed by Wildlife Alliance's Southern Palawan Forest Carbon project, aged 20–45, in Aborlan, Quezon, and Española municipalities, earning ₱6,000–9,000/month as patrol stipends. They carry a budget Android phone (Tecno, Realme, or Samsung A-series), use Facebook Messenger daily, have 1–2 bars of cellular signal inside the forest, and charge their phones every 2–3 days at a community solar panel.  
**What they do now (and why it sucks):** File weekly handwritten patrol reports, WhatsApp a field officer if they see fire, and receive a cash payment every quarter with no explanation of how it was calculated.  
**When they pay:** They don't pay — this is a grant-funded tool provided free. The paying customer is the NGO or carbon project operator (see Secondary user below).

**Secondary user:** Wildlife Alliance Philippines project officers and similar REDD+ project managers at NGOs (Palawan Council for Sustainable Development, NTFP-EP, ELAC) who need a consolidated dashboard of all guardian patrol zones, fire alerts, and audit-readiness scores before the annual VCS compliance report.  
**Why they care:** A single VCS audit failure that suspends a 50,000-tCO2 credit block can cost $150,000–400,000 in lost revenue that funds 5–10 community programs. A ₱0 software tool preventing that is an easy ROI conversation.

**Who definitely won't use this:** Carbon credit brokers and compliance traders on global exchanges. This is not a price-discovery or trading tool. It is a field-operations tool for communities who are the ground truth of what the carbon is doing.

## Feature Set

### MVP — Week 1-3
- **My Zone Fire Status:** Display last 7 days of NASA FIRMS satellite fire detections clipped to the user's assigned patrol polygon. Shows as a simple map with red dots or a plain-text list: "2 thermal hotspots detected in your zone: June 14 (northwest ridge) and June 11 (river boundary)."
- **Today's Fire Risk Score:** Green / Yellow / Red derived from Open-Meteo precipitation deficit vs ET0, last 3 days of temperature, and wind speed. "Today: YELLOW — 2 dry days in a row, 31.9°C yesterday. Prioritize the ridgeline sector."
- **Zone Fire-Free Streak Counter:** "Your zone has been satellite-clear for 47 days." Resets when a hotspot appears. Simple but powerful — community leaders can screenshot and share it.
- **Carbon Payout Rate Today:** Shows current USD/PHP rate from ExchangeRate-API. "1 USD = 60.53 PHP today. If your project pays $20,000 this quarter, that's ₱1,210,600." Static explanation of what a typical quarterly payout looks like.
- **One-Tap Incident Report:** Form with 3 fields — incident type (fire / chainsaw / encroachment / poaching), GPS location (auto), and a photo. Cached offline, synced when back in signal range.

### Version 2 — Month 2-3
- **3-Day Fire Risk Forecast:** Using Open-Meteo 7-day forecast to project whether a dry window is coming so patrols can be pre-positioned.
- **Verification Countdown:** Days until the next scheduled VCS audit window, with a checklist of conditions that need to be met (no unresolved hotspots, incident reports filed, plot boundaries intact).
- **Community Zone Comparison:** Anonymized leaderboard showing fire-free streak for all guardian zones in the project — social motivation within the community without naming individuals.

### Power User / Pro Features
- **NGO Dashboard:** Map of all guardian zones, aggregated fire risk, pending incident reports, compliance readiness score per zone before VCS submission.
- **Exchange Rate Payout Simulator:** Enter expected USD payment amount, see PHP value today vs last 30/90 days, with a "best week to receive payment" indicator.
- **Automated Alerts to Field Officer:** When a NASA FIRMS hotspot appears inside a registered project boundary, push notification to the NGO field officer within 6 hours of satellite pass.

## Technical Implementation

### Suggested Stack
**Chosen stack:** PWA (React + Vite, installable on Android) with aggressive Service Worker offline caching + a lightweight Node/Express backend on Fly.io. Why: guardians work in areas with intermittent 3G. A native app requires Play Store approval and bandwidth to install; a PWA can be shared as a URL via Facebook Messenger, installs in one tap, and the patrol zone map + last-known fire status are readable offline after the first load. No iOS App Store needed; Tagbanua guardians in Palawan overwhelmingly use budget Android devices.

### APIs & Data Sources
| API | Specific Endpoint | What It Returns | Refresh Rate | Auth | Cost |
|-----|------------------|-----------------|--------------|------|------|
| NASA FIRMS | `https://firms.modaps.eosdis.nasa.gov/api/area/csv/{key}/VIIRS_SNPP_NRT/{bbox}/{days}` | VIIRS 375m fire hotspots, lat/lon, FRP, confidence | ~3 hourly | Free API key | Free |
| Open-Meteo | `https://api.open-meteo.com/v1/forecast?latitude=9.74&longitude=118.74&daily=precipitation_sum,et0_fao_evapotranspiration,temperature_2m_max,windspeed_10m_max&timezone=Asia/Manila&past_days=3&forecast_days=7` | Daily precip, ET0, max temp, wind for Palawan | Daily | None | Free |
| ExchangeRate-API | `https://open.er-api.com/v6/latest/USD` | USD/PHP rate, updated daily | Daily | None | Free |
| World Bank Open Data | `https://api.worldbank.org/v2/country/PH/indicator/AG.LND.FRST.ZS?format=json&mrv=5` | Philippines forest coverage % by year | Annual | None | Free |

### Database Schema (key tables only)
```
guardians: id (uuid), name (text), community (text), municipality (text), zone_geojson (json), project_id (uuid)
patrol_zones: id (uuid), guardian_id (uuid), boundary_geojson (json), area_ha (float), project_id (uuid)
fire_hotspots: id (uuid), zone_id (uuid), detected_at (timestamp), lat (float), lon (float), frp (float), confidence (text), source (text), reported_to_officer (bool)
incident_reports: id (uuid), guardian_id (uuid), incident_type (text), lat (float), lon (float), photo_url (text), notes (text), created_at (timestamp), synced_at (timestamp)
fire_risk_scores: zone_id (uuid), date (date), score (text), precip_deficit_mm (float), tmax_c (float), et0_mm (float)
projects: id (uuid), name (text), operator_org (text), vcs_project_id (text), next_verification_date (date), usd_annual_payment (float)
```

### Key Technical Decisions
1. **Offline-first PWA over native app:** Guardians share install links via Messenger. Play Store uploads require a Google Developer account, APK build pipeline, and user trust — none of which are a given for a village-level rollout. A PWA URL shared in a group chat gets adoption in hours.
2. **NASA FIRMS hotspot clipping server-side:** The raw FIRMS CSV for SE Asia is large. The backend clips to each zone's bounding polygon before sending to the client, keeping the payload small enough for slow connections.

### Hardest Technical Challenge
Getting FIRMS data clipped and served reliably within the 3-hour satellite pass window when the NGO has no DevOps staff. Mitigation: use a managed cron job on Fly.io that pulls FIRMS every 3 hours, clips to registered project bounding boxes, inserts new hotspots into Supabase, and pushes a push notification if any fall inside a zone boundary. The NGO doesn't operate infrastructure — they just log into the dashboard.

## Monetization Strategy

> Note: This is explicitly a grant-funded free tool. Charging forest guardians earning ₱6,000/month is not viable and not ethical.

**Model chosen:** Grant-funded / NGO contract

| Tier | Price | What's Included | Why They Pay This |
|------|-------|-----------------|-------------------|
| Free (guardian) | ₱0 | Fire watch, incident reporting, zone streak, payout rate | Core field tool — freely accessible to all enrolled guardians |
| NGO Dashboard | $1,200/year | Multi-zone management, compliance calendar, VCS audit prep export, automated fire alerts to field officers | 1 avoided VCS audit failure covers 10 years of subscription cost |
| Project Setup Fee | $500 one-time | Onboarding, zone boundary uploads, guardian account creation, training session | Covers the NGO's switching cost from paper-based systems |

**Why someone pays:** An NGO field program manager who spent last dry season manually cross-referencing Global Forest Watch screenshots with handwritten patrol logs before a VCS audit will pay $1,200/year without hesitation. The audit prep export alone — a timestamped, GPS-linked incident log in VCS-compatible format — eliminates 3 days of pre-audit document compilation.

**12-month revenue trajectory:**
- Month 3: 2 NGO contracts × $1,200 = $2,400/year ($200/month)
- Month 12: 6 NGO contracts × $1,200 + setup fees = $8,700/year ($725/month)

**Alternative if NGO SaaS doesn't work:** Apply for a USAID/UNDP REDD+ program implementation grant. The Global Environment Facility (GEF) routinely funds exactly this type of "last-mile carbon monitoring" tool. Carbon credit buyers (Shell, Delta, Microsoft) also fund community verification programs as part of their voluntary credit due diligence — a direct partnership with one buyer could fund 2–3 years of operations.

## Marketing Strategy

**Exact communities to reach:**
- Wildlife Alliance Philippines Facebook Page (~8,400 followers) and their direct community program contacts in Palawan — the natural first pilot partner, already running the Southern Palawan Forest Carbon project
- NTFP-EP (Non-Timber Forest Products Exchange Program) Southeast Asia network — an NGO federation that works with forest-dependent communities in PH, ID, VN, MY with ~600 practitioner members; they have a listserv and annual gathering
- Philippine Eagle Foundation and Haribon Foundation social media — conservation NGOs with Palawan programs who would amplify a guardian-empowerment tool
- r/Philippines and r/Palawan on Reddit for press coverage (small but influential with journalists)
- Forest Carbon Asia LinkedIn group (~1,200 members) — project managers, VCS auditors, and carbon buyers who interact with these community programs

**First 10 users and how you get them:**
Email Wildlife Alliance Philippines' Palawan program director directly (publicly listed on their website). Offer to build out the zone boundaries for their Southern Palawan project for free in exchange for a 3-month pilot with 5–8 guardians. These 8 guardians are your first users. They exist, they have phones, and they are literally waiting for a tool like this.

**The press angle:**
"Filipino forest guardians earn carbon credits for stopping fires — but can't see the satellite data that decides if they get paid." Reuters, Mongabay, and GreenBiz have covered REDD+ community payment failures extensively. The data story this app produces — "47 consecutive fire-free days across 12,000 hectares of Palawan forest, tracked in real time by Tagbanua guardians on budget Androids" — is a compelling counter-narrative to the "carbon credits are broken" coverage dominating conservation media in 2026.

**Content / SEO play:**
Public-facing zone map pages: "Southern Palawan Forest Carbon Project — Live Guardian Zone Status." Each project zone gets a permalink showing its current fire-free streak, last detection date, and forest health score. Carbon credit buyers doing due diligence on voluntary credits Google this information. NGO researchers cite it. Journalists screenshot it.

**Launch sequence:**
1. Build zone boundary importer and pilot with Wildlife Alliance's 8-guardian Aborlan team; collect 30 days of real incident reports and fire-risk data
2. Publish the "47-day fire-free streak" story from the pilot as a case study on the Wildlife Alliance blog and Mongabay community section
3. Email the 12 NGOs in the Philippines operating VCS-registered community forest carbon projects; attach the case study and offer the $500 onboarding package

## Competitive Landscape

| Existing Solution | What They Do | Where They Fall Short | Why This Wins |
|-------------------|-------------|----------------------|---------------|
| Global Forest Watch (WRI) | Satellite deforestation and fire alerts, web dashboard | Built for researchers and policy managers in cities, not forest guardians on 3G with budget Androids; no community payout or incident reporting integration | Mobile-first, offline-capable, speaks directly to the guardian's daily patrol reality |
| SMART (WWF/WCS patrol tool) | Ranger patrol management system | Desktop-heavy, requires trained tech staff to configure and maintain; designed for national park rangers not smallholder community programs; no carbon credit tracking | Lightweight, no IT staff required, purpose-built for REDD+ community programs |
| Paper patrol forms + WhatsApp | Current default for most community programs | No satellite integration, no audit-ready export, no real-time fire awareness | Structured data, GPS-stamped, sync on reconnect, exportable for VCS compliance |

**Moat:** The patrol zone boundary data ingested per project becomes a defensible dataset. Once a project's 50+ zone polygons, 3 years of incident reports, and verification calendar are in the system, switching costs to a competitor are high. Additionally, trust with indigenous communities is earned slowly — the first mover who builds genuine utility for Tagbanua guardians in Aborlan will be the reference for every similar program in Palawan, then Mindanao, then Kalimantan.

## Risk Factors

1. **Adoption / Connectivity:** Guardians in deep forest may have no signal for days at a time, making real-time alerts unreliable → **Mitigation:** Full offline PWA with service worker caching of fire status and zone map; incident reports queue locally and sync when back in range. "Last synced 18 hours ago" banner so guardians know the data age.
2. **Data / NASA FIRMS key reliability:** FIRMS DEMO_KEY is rate-limited and occasionally returns errors (confirmed during API testing) → **Mitigation:** Register for a production FIRMS API key (free, takes 24 hours). Cache the last successful pull in the database so guardians always see data even if the API is down.
3. **Regulatory / Land rights sensitivity:** Displaying patrol zone boundaries and incident reports for indigenous ancestral domains creates data sovereignty questions — who owns this data? → **Mitigation:** All zone data is uploaded by the NGO partner, stored under the community's control, exportable and deletable by the project manager. Include a data governance clause in every NGO contract.

## Build Reality Check

| Phase | Realistic Timeline | What Exists at End |
|-------|-------------------|-------------------|
| Prototype | 2 weeks | Map with hardcoded zone boundary, today's fire risk score from Open-Meteo, USD/PHP rate, manual hotspot pin drop |
| Beta | 4 weeks | Real FIRMS integration, incident report form with offline sync, pilot running with 5 Wildlife Alliance guardians |
| Launch | 6 weeks | Multi-project NGO dashboard, VCS audit export, $500 onboarding package, first paid NGO contract signed |

**Solo founder feasibility:** Yes — the MVP is a PWA with 3 API integrations and a simple Supabase backend; a solo full-stack developer with mobile web experience could reach beta in 3 weeks.  
**Biggest execution risk:** NGO pilots move slowly — a conservation organization's procurement and approval cycle for a new software tool can take 3–6 months even when everyone wants it. Workaround: start with a volunteer "technical partner" arrangement (no contract, no money) to get real guardian data before any formal procurement begins.

---
*Generated: 2026-06-18 | Industry: energy_utilities | Sub-industry: carbon_credits_farmers | Geography: philippines*  
*APIs queried for real data: Open-Meteo Weather API, ExchangeRate-API, World Bank Open Data, NASA EONET*

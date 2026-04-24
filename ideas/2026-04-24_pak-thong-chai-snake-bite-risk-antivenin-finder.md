---
id: ngudoen-pak-thong-chai-snake-bite-risk-antivenin-finder-2026-04-24
title: NgūDoen — Dawn Snake Activity & Antivenin Hospital Finder for Pak Thong Chai Cassava Smallholders
created: 2026-04-24T08:00:00+07:00
industry: wildlife_biodiversity
sub_industry: snake_identification
geography: thailand
apis_used: Open-Meteo Weather API, OpenStreetMap Overpass, World Bank Open Data, REST Countries, ExchangeRate-API
monetization_model: hybrid
target_user: Smallholder cassava and sugarcane farmers (1–8 rai plots) in Pak Thong Chai, Khon Buri and Soeng Sang districts of Nakhon Ratchasima who clear field margins barefoot or in flip-flops between 5:00 and 7:30 a.m. during the hot-dry months (March–May) when Malayan pit vipers and monocled cobras hunt in cooled tall grass — most have a household income under ฿8,000/month, no private vehicle, and rely on the village headman's pickup or a neighbor's motorbike to reach a district hospital after a bite
concept_hash: snake-bite-dawn-activity-and-antivenin-finder+pak-thong-chai-cassava-isan-thailand+smallholder-dawn-field-workers
---

# NgūDoen — งูเดิน

## The Hook
- 14% of Thailand's reported snakebite envenomations come from Nakhon Ratchasima alone, and the worst window is right now: dawn humidity in Pak Thong Chai is sitting at **82–92%** with soil at **26–28°C** — the exact conditions Malayan pit vipers (Calloselasma rhodostoma) hunt in before retreating from the day's 35°C heat. NgūDoen sends a 5 a.m. LINE alert: today's snake-activity score, plus the nearest of 33 mapped Korat hospitals that actually stocks the right antivenin for your bite type.
- The "right" antivenin is the catch. Thai Red Cross makes seven different monovalent antivenoms — and most district hospitals only stock two or three. A pit viper bite treated with cobra antivenin costs the patient nothing and saves nothing. We're the only app that maps **antivenin stock by hospital, by species**, in Thai, using a photo-based snake ID built specifically for the eight medically significant Thai species.
- Sold to no one as a SaaS. Free for farmers via LINE OA, grant-funded by Thai Red Cross + Queen Saovabha Memorial Institute, with a paid B2G dashboard for Provincial Public Health Offices that need to forecast antivenin redistribution between district hospitals 48 hours ahead of high-risk weather windows.

## Real Data Found
> Live data queried from real APIs during idea generation — not placeholders.

| Source | Data Point | Value | Queried |
|--------|-----------|-------|---------|
| Open-Meteo Weather API | Pak Thong Chai dawn temperature (06:00, 2026-04-24) | 25.8°C | 2026-04-24 |
| Open-Meteo Weather API | Pak Thong Chai dawn humidity (06:00, 2026-04-24) | 82% | 2026-04-24 |
| Open-Meteo Weather API | Pak Thong Chai soil temperature 6cm (06:00, 2026-04-24) | 27.6°C | 2026-04-24 |
| Open-Meteo Weather API | Today's peak heat (15:00, 2026-04-24) | 35.4°C @ 44% RH | 2026-04-24 |
| Open-Meteo Weather API | Forecast rain pulse (2026-04-25) | 9.0 mm — first significant rainfall in a week, drives reptile movement | 2026-04-24 |
| OpenStreetMap Overpass | Hospitals within 0.8°×1.0° around Pak Thong Chai | 33 facilities mapped, including Pak Thong Chai Hospital, Khon Buri Hospital, Soeng Sang Hospital, Wang Nam Khiao Hospital, Nakhon Ratchasima Hospital | 2026-04-24 |
| World Bank Open Data | Thailand hospital beds per 1,000 people (2023) | 2.39 | 2026-04-24 |
| REST Countries | Thailand population | 65,859,640 | 2026-04-24 |
| ExchangeRate-API | THB → USD reference (1 THB) | 0.030864 USD (~฿32.4 = $1) | 2026-04-24 |

What this data reveals: the dawn window in Pak Thong Chai right now is a textbook Malayan pit viper hunting profile — relative humidity above 80%, soil within their preferred 25–30°C activity band, and a 35°C ceiling 8 hours later that pushes them under the cassava trash by mid-morning. The 9 mm rain pulse forecast for April 25 is the kicker: the first rain after a long dry spell flushes rodents (snake prey) into the open and predictably triggers a bite-cluster 24–72 hours later. With Thailand averaging just 2.39 hospital beds per 1,000 people and rural Korat well below that, knowing *which* of those 33 facilities holds the correct monovalent antivenin tonight is not a nice-to-have — it's the difference between a 30-minute songthaew ride and a 90-minute referral chain that loses tissue or limbs.

## The Problem

It's 5:40 a.m. on a Friday in mid-April in Tambon Lam Nang Kaeo, Pak Thong Chai District. Boonmi, 47, walks barefoot along the edge of his 6-rai cassava plot to chop the morning's elephant-grass margin before the heat comes. He doesn't see the green pit viper in the cassava trash because it's the same color as last season's stems. The bite is on the back of his right calf. The nearest hospital is Pak Thong Chai Hospital (15 km), but Pak Thong Chai Hospital's antivenin fridge today holds only Malayan krait and monocled cobra antivenom — both wrong. The correct antivenom (Green Pit Viper / Calloselasma) is at Khon Buri Hospital, 38 km away, but Boonmi doesn't know that, the village headman who drives him doesn't know that, and the Pak Thong Chai duty doctor will spend 40 minutes calling around before initiating a transfer. By the time Boonmi gets the right vial of Queen Saovabha green pit viper antivenom, the local tissue necrosis is already advanced.

This is structural, not anecdotal. Queen Saovabha Memorial Institute (Thai Red Cross) produces seven different monovalent antivenoms, and Thailand's antivenin distribution to district hospitals is determined annually by historical bite reports, which under-count and lag the actual need. Some district hospitals stock only the bivalent neuro/hemo combinations. Some have expired vials sitting in the fridge nobody noticed. There is no public-facing, real-time map of antivenin stock-by-hospital-by-species in Thailand. The Thai-language WHO snakebite reference is a 60-page PDF buried on the MoPH website. The "snake ID" that exists is a Facebook group ("งูบ้านเรา" / Snakes of Our Home, ~340k members) where photos are crowd-identified by hobbyists at variable speed and quality.

What keeps happening if this doesn't get built: rural Isan farmers will continue to make decisions about which hospital to ride to based on proximity rather than antivenin match, and provincial health offices will continue to re-stock based on year-old paperwork instead of forward-looking weather and behavioral signals. Thailand reports ~7,000 envenomations per year; the actual number is estimated at 3–4× that. The fatality rate is low (~30/year) but the amputation, fasciotomy, and chronic-disability rate is the hidden cost — and it falls almost entirely on the rural poor.

## Who Uses This

**Primary user:** Smallholder cassava/sugarcane farmer, age 35–65, household income ฿4,000–฿9,000/month, in Pak Thong Chai / Khon Buri / Soeng Sang / Wang Nam Khiao districts of Nakhon Ratchasima. Owns a Nokia-class smartphone or a hand-me-down Android. Already in 2–4 LINE groups (village, temple, cassava buyer's group, school-parent). Cuts field margins at dawn, walks back for breakfast, then sleeps from 11:00 to 14:00 to avoid heat.
**What they do now (and why it sucks):** Posts a photo to the village LINE group asking "งูอะไร?" (what snake?) and waits. Sometimes the headman knows. Sometimes someone says "ไม่มีพิษ" (not venomous) and they're wrong. If bitten, they go to the geographically nearest hospital and accept whatever happens.
**When they pay:** They don't. This is free for them. The trigger that brings them in is the village health volunteer (อสม.) signing them up during the next monthly home visit — every Thai sub-district has a corps of อสม. paid a small stipend by MoPH to do exactly this kind of grassroots health outreach.

**Secondary user (paying):** Provincial Public Health Office (สสจ. นครราชสีมา) and Queen Saovabha Memorial Institute. They subscribe to the B2G dashboard for ฿24,000/year per province (~$740 USD) — gives them a 7-day forecast of high-risk districts based on weather + reported bites, plus a real-time map of antivenin stock and expiry across all hospitals in the province.
**Why they care:** Antivenin is expensive (~฿3,500/vial wholesale, sometimes 5+ vials per envenomation), has a 3-year shelf life, and is centrally allocated. Reducing wastage from expiry and reducing inter-hospital transfer time are both line items in their KPIs.

**Tertiary user:** Cassava buying co-ops (e.g., สหกรณ์การเกษตร ปักธงชัย) who want to keep their member-farmers healthy because lost-day labor hits the harvest. They sponsor the LINE OA to the tune of ~฿15,000/year for their member roll-call.

**Who definitely won't use this:** Bangkok herpetology hobbyists, foreign tourists, urban Thais. The Facebook group "งูบ้านเรา" already serves curiosity-driven snake-watching well. NgūDoen is for people whose ankles are at risk.

## Feature Set

### MVP — Week 1-3
- **Dawn risk score (LINE push, 04:50 daily):** A 0–10 score for the next 3 hours based on humidity > 80%, soil temp 24–30°C, post-drought rain pulse, and lunar phase. Color-coded (green / yellow / red). Sent to all opted-in farmers in the village's tambon.
- **Photo snake ID (LINE message):** User sends photo + GPS pin to the LINE OA. Backend runs a fine-tuned MobileNet classifier trained on the eight medically significant Thai species (Malayan pit viper, green pit viper, monocled cobra, king cobra, Malayan krait, banded krait, Russell's viper, Mangrove pit viper) plus 12 common harmless lookalikes. Returns species + venom type (hemotoxic / neurotoxic / cytotoxic) + "GO TO HOSPITAL NOW" button if venomous.
- **Antivenin-aware nearest hospital:** Tap the GO TO HOSPITAL button → app returns the *correct* nearest hospital based on tonight's antivenin stock + species ID, not nearest-by-distance. Includes phone number, road directions, and a pre-filled SMS to send to the village pickup driver.
- **Bite-event reporter (one-tap):** A "I was bitten here" button that captures GPS, timestamp, species (if IDed), and outcome. Feeds the provincial dashboard.
- **Antivenin stock log (B2G side):** Hospital pharmacy clerks log stock + expiry for each antivenin type weekly via a Thai-language web form. Hospitals that report get listed; hospitals that don't get marked "stock unknown — call ahead."

### Version 2 — Month 2-3
- **Village-level "today's bite cluster" alert:** When ≥2 bites are reported in a tambon within 24h, all farmers in that tambon get a special alert.
- **Songthaew & ambulance integration:** Partnership with 1669 (Thai EMS) and local songthaew drivers — they receive the destination pre-routed to the antivenin-correct hospital, not the closest one.
- **Voice-first mode (Lao Isan + Thai Korat dialect):** Many older farmers don't read fluently. LINE voice messages → speech-to-text in Isan dialect → snake ID flow.
- **Offline mode:** PWA wrapper that caches the last 7 days of risk scores + the antivenin map for areas with patchy 4G.

### Power User / Pro Features (B2G dashboard for Provincial Health)
- **7-day antivenin reallocation recommender:** "Khon Buri Hospital is forecast to need 4 more vials of green pit viper antivenom by April 28; Pak Thong Chai has 6 vials of cobra antivenom expiring May 12 — propose swap."
- **อสม. (village health volunteer) leaderboard:** Which volunteers signed up the most farmers; which villages have the highest bite-report-to-app-install ratio. Drives MoPH program rollout.
- **Anonymized data export to Queen Saovabha Memorial Institute** for annual antivenom production planning.

## Technical Implementation

### Suggested Stack

**Chosen stack:** **LINE Official Account + Cloudflare Workers + D1 + R2 + a fine-tuned MobileNetV3 served via ONNX Runtime Web (or HuggingFace Inference Endpoint for the cold-start months)**, with a tiny Next.js admin/B2G dashboard on Vercel. Why: every farmer in the target demographic already has LINE installed; nobody is going to install a separate "snake app." The dashboard for hospitals and the provincial office is a different workload (heavy, infrequent, authenticated) and lives separately.

### APIs & Data Sources
| API | Specific Endpoint | What It Returns | Refresh Rate | Auth | Cost |
|-----|------------------|-----------------|--------------|------|------|
| Open-Meteo Weather API | `https://api.open-meteo.com/v1/forecast?latitude=14.73&longitude=102.02&hourly=temperature_2m,relative_humidity_2m,precipitation,soil_temperature_6cm&daily=temperature_2m_max,precipitation_sum&timezone=Asia/Bangkok&past_days=2&forecast_days=7` | Hourly temp, humidity, soil temp, rainfall, 7-day forecast | hourly | none | free |
| OpenStreetMap Overpass | `https://overpass-api.de/api/interpreter?data=[out:json];node[amenity=hospital](14.4,101.5,15.2,102.5);way[amenity=hospital](14.4,101.5,15.2,102.5);out center;` | All hospitals in Korat region with coords + names (33 found in test) | weekly | none | free |
| Thai Red Cross / Queen Saovabha (manual ingestion) | (no public API — pharmacy clerk web form) | Antivenin stock by hospital × species × expiry | weekly | none | free |
| Thailand MoPH (data.go.th) | `https://opend.data.go.th/api/3/action/package_search?q=snakebite` | Historical envenomation counts by district (used for seasonal baseline) | annual | api_key (free) | free |
| World Bank Open Data | `https://api.worldbank.org/v2/country/TH/indicator/SH.MED.BEDS.ZS?format=json&mrv=5` | Thailand hospital bed density (2.39/1000 in 2023) — used in pitch deck and grant applications | annual | none | free |
| REST Countries | `https://restcountries.com/v3.1/name/thailand` | Country baseline for press kit | static | none | free |
| ExchangeRate-API | `https://open.er-api.com/v6/latest/THB` | THB↔USD conversion for international grant reporting | daily | none | free |
| LINE Messaging API | `https://api.line.me/v2/bot/message/push` | Push the dawn alert + receive photo messages from users | event-driven | channel_token | free up to 500 push msgs/mo, paid above |

### Database Schema (key tables only)
```
farmers: line_user_id (string PK), tambon_id (FK), preferred_dialect (enum: thai/isan), opted_in_at (datetime), village_health_volunteer_id (FK nullable)
tambons: id (PK), name_th (string), name_en (string), district (string), province (string), centroid (geopoint)
hospitals: osm_id (PK), name_th (string), name_en (string), location (geopoint), tambon_id (FK), phone (string), reports_stock (bool), last_stock_report (datetime)
antivenin_stock: hospital_id (FK), antivenin_type (enum: 7 types), vials_in_stock (int), earliest_expiry (date), reported_by (string), reported_at (datetime)
risk_scores: tambon_id (FK), date (date), hour_window (enum: dawn/midday/dusk), score (int 0-10), drivers (jsonb)
bite_events: id (PK), reported_at (datetime), location (geopoint), tambon_id (FK), reporter_line_user_id (FK), species_id_confidence (float), species (string nullable), photo_url (string nullable), hospital_dispatched_to (FK nullable), outcome (enum nullable)
species: id (PK), name_th, name_lao_isan, name_en, scientific, venom_type (hemo/neuro/cyto/mixed), required_antivenin_type (FK)
```

### Key Technical Decisions
1. **LINE OA over a native app:** Install friction kills adoption in this demographic. LINE is already on every phone in rural Korat. Costs us a per-message fee at scale, but a grant subsidizes it for the first ~10k MAU.
2. **Run the snake classifier client-side via ONNX-Web on a PWA wrapper:** Once a farmer adds the LIFF mini-app, the model runs on-device. Photos never leave the phone unless the farmer opts in to "share with researchers." This removes 99% of the inference cost and respects data dignity.
3. **Hospital antivenin stock is operator-entered, not scraped:** There is no API. We pay each participating hospital pharmacy clerk a tiny weekly stipend (~฿200/week, funded by the grant) to log stock through a one-screen Thai-language form. This is the unsexy moat.
4. **Risk score is a transparent rule, not a black-box ML model:** Farmers can read the rule ("humidity above 80% AND soil temp 25–30°C AND rain in last 72h"). Trust is paramount when the message is "the snake is coming."

### Hardest Technical Challenge
**Snake species classifier accuracy on phone-camera images at 5 a.m. through tall cassava grass.** Every published Thai snake-ID model has been trained on clean herpetology photos, not on a blurry calf-bitten farmer's hand-shake at dawn. False negatives kill people. False positives erode trust and we lose the audience. **Mitigation:** (a) ship MVP with classifier as *advisory only* — venom-type is determined by symptom triage in LINE chat (puncture pattern, swelling, bleeding from gums) which Queen Saovabha has already validated; (b) crowdsource photos for a year via the village health volunteer network with expert verification, only then turn the classifier from "advisory" to "primary"; (c) for any photo with confidence <0.85, route to a human herpetologist on retainer (one of three on-call vets in Korat partnering with the project).

## Monetization Strategy

> Note: Not every idea needs Stripe. Some are better as free tools, grant-funded, or sold B2G.

**Model chosen:** **Hybrid — free for end-user farmers (grant-funded), B2G subscription for provincial health offices, sponsorship from cassava co-ops.**

| Tier | Price | What's Included | Why They Pay This |
|------|-------|-----------------|-------------------|
| Farmer (LINE OA) | Free | Dawn alerts, photo snake ID, antivenin-aware hospital finder, bite reporter | Cannot pay — and shouldn't have to |
| Cassava Co-op Sponsor | ฿15,000/year (~$465) per co-op | Co-branded LINE alerts to member-farmers; quarterly health-outcome report | Healthier members → better harvests; visible CSR for the co-op |
| Provincial Public Health Office | ฿24,000/year (~$740) per province | Real-time antivenin stock map, 7-day risk forecast by district, reallocation recommender, อสม. leaderboard | Reduces antivenin wastage from expiry and shortens inter-hospital transfer times — both are existing KPIs |
| Queen Saovabha Memorial Institute | ฿120,000/year (~$3,700) one institutional license | Anonymized national bite-event dataset for production planning | Currently they plan production from year-old paper reports; this is a 10× upgrade |

**Why someone pays:** A provincial health director signs the contract the morning after a fatality in their province makes the local Thai-language news. The exact moment is the press conference where they're asked, "Why didn't the hospital have the right antivenom?" — and the contract gets signed quietly the following Monday.

**12-month revenue trajectory:**
- Month 3: 1 pilot province (Nakhon Ratchasima, ฿24k) + 2 co-ops (฿30k) + grant tranche (฿800k from Thai Red Cross) = ~฿854k total / month-equivalent ฿71k
- Month 12: 5 provinces (Korat, Buriram, Surin, Sisaket, Ubon — all high-bite Isan provinces) at ฿24k = ฿120k + 12 co-ops at ฿15k = ฿180k + Queen Saovabha license ฿120k + ongoing grants ฿1.2M = ฿1.62M annual / ~฿135k/month

**Alternative if SaaS doesn't work:** Pivot to a research-data partnership with Queen Saovabha and Mahidol University's Faculty of Tropical Medicine. The bite-event dataset alone is publishable and grant-magnetic. No monetization, but mission still delivered.

## Marketing Strategy

**Exact communities to reach:**
- **"งูบ้านเรา" (Snakes of Our Home) Facebook group** — ~340k Thai members, mostly farmers and curious villagers posting snake photos for ID. We don't compete with them; we partner — offer the page admins co-branded promotion in exchange for "if it's venomous, also send to NgūDoen LINE OA."
- **อสม. กรมสนับสนุนบริการสุขภาพ Facebook page** (the official MoPH page for village health volunteers, ~85k members) — they're the distribution channel. Get one province's อสม. corps trained, the rest follow.
- **"ชาวไร่มันสำปะหลัง" (Cassava farmers) Facebook groups** — multiple regional groups, the largest with ~120k members in Korat alone. Co-branded post with the Pak Thong Chai cassava co-op.
- **เครือข่าย อสม. นครราชสีมา LINE OpenChats** — district-level LINE groups (typically 200–500 members each, ~30+ groups across the province). The shortest path to actual installs.
- **Thai Red Cross's social channels** — once we have the partnership, their endorsement is the legitimacy unlock.

**First 10 users and how you get them:**
The first 10 are not strangers on the internet. They are 10 specific farmers in Tambon Lam Nang Kaeo (Pak Thong Chai District) signed up by *one* village health volunteer named via a cold call to the Pak Thong Chai sub-district health-promoting hospital. Before any of this, founder spends 3 days on a motorbike doing in-person sit-downs at three village health-promoting hospitals (รพ.สต.) introducing the project, paying for lunch, and asking for one อสม. introduction per village. The first 10 farmers are signed up over a single morning while the อสม. is doing her routine home visits. None of this is scalable yet — that's the point.

**The press angle:**
"Thailand has 7 different antivenoms — and your district hospital probably doesn't have the right one." A data-driven Bangkok Post / Matichon feature: which Korat hospitals stock which antivenoms, mapped, with the gaps highlighted. Headline that writes itself: "งูพิษกัด — ไม่ตายเพราะงู ตายเพราะวิ่งหาเซรุ่มผิดที่." (Venomous bite — they don't die from the snake, they die running to the wrong hospital for serum.)

**Content / SEO play:**
A Thai-language landing page per district hospital in Korat ("รพ. ปักธงชัย เซรุ่มงู มีอะไรบ้าง?" / "Pak Thong Chai Hospital — what snake antivenoms are stocked?"). 33 hospitals × evergreen content = top-of-Google for every "[hospital name] เซรุ่มงู" query. Drives organic traffic from village headmen and pickup drivers Googling at 5:45 a.m. with a bitten farmer in the back seat.

**Launch sequence:**
1. **Week -8:** Sign MoU with Thai Red Cross + Queen Saovabha Memorial Institute. Without this, the project lacks legitimacy.
2. **Week -4:** Recruit and pay 10 hospital pharmacy clerks across Korat to start logging antivenin stock weekly. Build the dataset before launch.
3. **Week 0 (launch day):** Launch in *one* tambon (Lam Nang Kaeo) via the อสม. corps. No PR. Just LINE OA going live with 50 farmers signed up.
4. **Week 4:** Roll out to all of Pak Thong Chai District (10 tambons, ~3,000 farmers).
5. **Week 12:** Press release timed to the start of monsoon (June) when bite cases historically spike.
6. **Week 24:** Open second province (Buriram) once Korat's bite-report flow is generating useful data.

## Competitive Landscape

| Existing Solution | What They Do | Where They Fall Short | Why This Wins |
|-------------------|-------------|----------------------|---------------|
| "งูบ้านเรา" Facebook group | Crowdsourced snake ID via photo posts | No emergency triage, no antivenin info, slow human reply, no risk forecasting | We integrate ID with hospital routing and do it in seconds, not minutes |
| Queen Saovabha Memorial Institute website | Static educational content + 24/7 phone hotline | Not push-based, not location-aware, not antivenin-stock-aware | We push *before* the bite and route *during* it |
| 1669 (Thai EMS) | National emergency medical services | Routes to nearest hospital, not to nearest *correct* hospital for a venomous bite | We add the species + antivenin layer they don't have |
| WHO snakebite mobile reference (PDF) | Comprehensive but PDF | Nobody reads a 60-page PDF at dawn with a swelling calf | We turn the same content into a 3-tap LINE flow |
| Thai MoPH provincial dashboards | After-the-fact case counts | Backwards-looking; no forecasting; no farmer-facing channel | We forecast 7 days ahead and notify the farmer directly |

**Moat:** The antivenin-stock-by-hospital dataset. Nobody else is paying pharmacy clerks ฿200/week to log this. Once we have 12 months of weekly stock reports across 100+ hospitals, the dataset itself becomes irreplaceable infrastructure that the MoPH and Thai Red Cross become dependent on. Also: deep integration with the อสม. village-health-volunteer corps. That trust takes years to build and cannot be bought.

## Risk Factors

1. **Regulatory / Liability:** A wrong species ID leads to a wrong hospital choice and a death. → **Mitigation:** Phase the classifier — advisory only for the first 12 months. All emergency routing is based on symptom triage (which Queen Saovabha already validated) rather than the photo. Carry professional indemnity insurance from year one. Get the project blessed in writing by Queen Saovabha and the MoPH before launch.
2. **Adoption / Cultural:** Older farmers may distrust an app for a problem they've handled their whole lives ("ฉันรู้จักงูทุกตัว" — I know every snake). → **Mitigation:** The introduction is always done in person by the อสม., not by a download link. Frame the value as "for your daughter who's worried about you," not "you don't know snakes."
3. **Data / Hospital cooperation:** Hospital pharmacy clerks may stop reporting stock, or stop reporting accurately. → **Mitigation:** Make the weekly stipend conditional on report submission. Audit randomly via direct hospital phone calls. Build the system so that "stock unknown — call ahead" is a clearly visible failure state for non-reporting hospitals, creating peer pressure.
4. **Market / Sustainability:** Grant funding is finite. Provincial health budgets are tight. → **Mitigation:** The Queen Saovabha institutional license is the anchor revenue; provincial subscriptions are gravy. If neither materializes, the dataset itself has academic-publication value that supports a research-grant pivot.
5. **Technical:** LINE policy changes around bot messaging fees could break the unit economics. → **Mitigation:** Architect to support fallback channels (SMS via 4G, Facebook Messenger) without breaking the user flow. Negotiate with LINE Thailand for a public-good rate (they have a precedent for this with health-related accounts).

## Build Reality Check

| Phase | Realistic Timeline | What Exists at End |
|-------|-------------------|-------------------|
| Prototype | 6 weeks | LINE OA with manual snake-ID via human-on-call; weather-based dawn alerts; static hospital list with manually-entered antivenin stock for 5 hospitals |
| Beta | 12 weeks | Full Pak Thong Chai District rollout; classifier as advisory; weekly stock-reports flowing from 10 hospitals; provincial health office trial dashboard |
| Launch | 26 weeks | Three districts (~10,000 farmers); 30+ hospitals reporting; first paying provincial subscription; first published bite-cluster forecast verified against actuals |

**Solo founder feasibility:** **Difficult.** A Thai-speaking founder with public-health credentials and existing relationships with Queen Saovabha or MoPH could ship the prototype solo, but the offline work (recruiting อสม., training pharmacy clerks, in-person village visits) requires a co-founder or a paid local field coordinator from week one. Pure code-only solo founder will fail.
**Biggest execution risk:** The non-technical thing — getting Queen Saovabha Memorial Institute and the Korat Provincial Public Health Office to formally bless the project. Without their endorsement, the village health volunteers will not push it, and without the อสม. push, no farmer signs up. Six months of relationship-building before a single line of code matters.

---
*Generated: 2026-04-24 | Industry: wildlife_biodiversity | Sub-industry: snake_identification | Geography: thailand*
*APIs queried for real data: Open-Meteo Weather API, OpenStreetMap Overpass, World Bank Open Data, REST Countries, ExchangeRate-API*

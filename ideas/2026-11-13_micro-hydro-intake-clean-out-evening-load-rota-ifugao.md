---
id: bantaydanum-ifugao-kalinga-2026-11-13
title: BantayDanum — Micro-Hydro Intake Clean-Out Clock & Evening Load-Rota Planner for Barangay Power Association Operators in Ifugao and Kalinga, Cordillera
created: 2026-11-13T08:00:00+07:00
industry: energy_utilities
sub_industry: community_micro_hydro
geography: philippines
apis_used: Open-Meteo Forecast API, Open-Meteo Flood API (GloFAS river discharge), World Bank Open Data API, Open Exchange Rates (open.er-api.com)
monetization_model: grant-funded
target_user: Volunteer or lightly paid "operators" (often one or two men in their 30s–50s who also farm terraced rice and tend a woodlot) of 5–50 kW community micro-hydro systems in off-grid sitios of Kiangan, Hungduan and Asipulo (Ifugao) and Balbalan/Pasil (Kalinga). They walk 20–60 minutes uphill to a concrete weir intake after every hard rain to pull out leaves, bamboo and silt; open/close the forebay gate before typhoons; and between 5pm and 9pm decide whose rice cooker, flat iron or welding job gets switched off when the turbine sags. Plus the power association treasurer, who collects ₱100–₱300/household/month in cash and fields every complaint when the lights brown out.
concept_hash: micro-hydro-intake-debris-clean-out-clock-and-evening-load-shedding-rota+kiangan-hungduan-asipulo-ifugao-balbalan-kalinga-cordillera-philippines+barangay-micro-hydro-power-association-operators-and-treasurers
---

# BantayDanum — Micro-Hydro Intake Clean-Out Clock & Evening Load-Rota Planner

## The Hook
- In the Ifugao hills above Kiangan, the stream that turns a village's turbine is forecast to fall from **0.69 m³/s on 10 Nov to 0.01 m³/s by 19 Nov 2026** (GloFAS model, nearest grid cell) — the wet-to-dry handover is happening *this week*, and nobody in the sitio has a number for it, only a feeling that "the lights are getting weak."
- Every community micro-hydro has the same two invisible jobs — *when to climb to the intake* (right after rain, before leaves choke the trashrack) and *who gets cut first at 6pm* when the flow can't carry everybody's rice cooker. Both are run on memory and shouting. BantayDanum turns rain + modelled river flow into a one-line SMS/Messenger card: "Climb to intake tomorrow 7am. Tonight: Group B no rice cookers 5:30–7:00."
- Not a business — a grant-funded field tool for the NGOs, LGU energy desks and DOE/NEA rural-electrification programmes that built these systems and are tired of seeing them abandoned three years after the ribbon-cutting.

## Real Data Found
> Live data queried from real APIs during idea generation — not placeholders.

| Source | Data Point | Value | Queried |
|--------|-----------|-------|---------|
| Open-Meteo Forecast API (16.83°N, 121.11°E, Kiangan/Ifugao uplands) | Daily rainfall, 6–12 Nov 2026 | 0.0 / 0.6 / 5.0 / **14.0** / 7.1 / 2.6 / 1.0 mm (30.3 mm in 7 days, peak 9 Nov) | 2026-11-13 |
| Open-Meteo Forecast API | Forecast rainfall 13–19 Nov 2026 | 0.0 / 0.0 / 1.1 / 0.0 / 0.0 / 0.0 / 1.2 mm (2.3 mm total); precip probability falls to 4% on 17 Nov | 2026-11-13 |
| Open-Meteo Forecast API | Max wind gust, 8 Nov 2026 | 31.0 km/h (vs 20.9 km/h forecast 17 Nov) | 2026-11-13 |
| Open-Meteo Forecast API (past 92 days) | Monthly rainfall totals | Sep 2026: 211.6 mm · Oct 2026: 140.0 mm · 1–13 Nov 2026: 58.3 mm | 2026-11-13 |
| Open-Meteo Flood API (GloFAS v4, cell 16.825°N, 121.125°E) | Modelled river discharge | 0.02 m³/s (8 Nov) → **0.69 m³/s ensemble max / 0.28 median (10 Nov)** → 0.52 (13 Nov) → **0.01 m³/s (19 Nov forecast)** | 2026-11-13 |
| World Bank Open Data (EG.ELC.ACCS.RU.ZS) | Philippines rural electricity access | 88.5% (2024), down from 97.6% (2023) and 91.1% (2022) | 2026-11-13 |
| World Bank Open Data (EG.ELC.ACCS.ZS) | Philippines national electricity access | 98.0% (2023), 94.8% (2022) | 2026-11-13 |
| Open Exchange Rates (open.er-api.com) | USD → PHP | ₱63.31 per USD (rates updated 12 Nov 2026 00:02 UTC) | 2026-11-13 |

The rainfall series shows the Cordillera shifting out of the wet season in real time: September dumped 211.6 mm on this grid point, October 140.0 mm, and the next seven days are forecast to bring just 2.3 mm. GloFAS's modelled discharge for the local catchment cell spiked roughly 35× in two days after the 14 mm rain of 9 November (0.02 → 0.69 m³/s ensemble max) and is forecast to collapse to 0.01 m³/s by 19 November. The absolute GloFAS number is a coarse ~5 km model value, not an intake gauge — but the *shape* is exactly what an operator lives through: a flash of debris-laden high water, then a long slide where the turbine can no longer carry evening peak load. A 20 kW crossflow turbine that ran every household comfortably in October may only have flow for half of them by December.

The World Bank figures explain why these tiny systems still matter: the Philippines reports 98% national access, but the rural figure is noisier and lower (88.5% in 2024). The remaining gap is disproportionately the sitios that the electric cooperative's lines will never economically reach — exactly where NGO- and LGU-built micro-hydro is the only grid. At ₱63.31/USD, a single replaced turbine bearing or burnt generator winding (₱15,000–₱60,000) can equal a year of a 40-household association's collections, so every avoidable overload or debris-jam actually bankrupts the system.

## The Problem

It's 5:40pm on a dry-season evening in a sitio above Kiangan. Thirty-eight households switch on at once: rice cookers, a karaoke set at the sari-sari store, someone's angle grinder finishing a woodcarving order for Banaue. The stream is lower than last week — the 14 mm rain of 9 November is already draining away — and the ballast-load controller can't hold voltage. Bulbs drop to orange, two refrigerators chatter, the operator's phone lights up with Messenger complaints, and he jogs down to the powerhouse to drop the breaker on the whole upper line. The next morning nobody knows whose turn it is to be cut; the treasurer gets accused of favouring her cousins; three households stop paying their ₱150 monthly fee. Meanwhile, nobody walked up to the intake after Monday's rain, and a mat of leaves has been sitting on the trashrack, choking off another 20% of the flow.

This exists because community micro-hydro in the Cordillera was built project-by-project — by NGOs (SIBAT, Yamog-type renewable energy groups), LGUs, DOE/NEA rural-electrification and church programmes — each with a ribbon-cutting, a training week and a laminated O&M manual that sits in a plastic bag in the powerhouse. There is no flow gauge at most intakes, no shared data, and the operator's knowledge is in his legs. Electric cooperatives and utility software ignore systems this small; flood apps are for lowlanders worried about too much water, not uplanders worried about too little. The workaround is a barangay assembly every few months where the loudest households win.

If nothing changes, the pattern continues: systems run hot through the dry season, generators burn out, associations collapse over unpaid fees and accusations, and the turbine becomes another rusting "proyekto" — while the same sitio goes back to kerosene and diesel gensets at ₱70+/litre. Donors read it as "micro-hydro doesn't work," when the real failure was operational: no clean-out timing, no fair rationing, no record.

## Who Uses This

**Primary user:** The operator of a 5–50 kW community micro-hydro in an off-grid sitio of Ifugao (Kiangan, Hungduan, Asipulo, Tinoc) or Kalinga (Balbalan, Pasil). A terrace farmer with a basic Android phone, intermittent Smart/Globe signal near the barangay hall, fluent in Tuwali Ifugao or Kalinga plus Ilocano and some Tagalog. Receives a token honorarium (₱1,000–₱3,000/month) or none at all. Climbs to the intake after heavy rain "when he remembers" and handles evening brownouts by shouting or tripping breakers.
**What they do now (and why it sucks):** Guesses intake clean-outs from the colour of the stream and cuts power line-by-line when voltage sags — which is unfair, unpredictable and triggers fee strikes.
**When they pay:** They don't — the trigger is the *association* or its NGO/LGU sponsor: right after the first dry-season generator burnout or the first barangay assembly that ends in an argument over who keeps getting cut.

**Secondary user:** NGO and LGU programme officers (provincial energy/environment desks, DOE Energy Regulations & rural-electrification teams, NEA-supported cooperatives like IFELCO/KAELCO exploring off-grid partnerships) who are responsible for 5–40 scattered systems and currently learn about failures months late.
**Why they care:** A dashboard of which systems are running hot, skipping clean-outs or losing fee collections lets them send a technician *before* the turbine burns out — and gives them sustainability evidence for the next grant report.

**Who definitely won't use this:** Grid-connected households, large IPP run-of-river plants (they have SCADA), and lowland electric cooperatives with metered customers.

## Feature Set

### MVP — Week 1-3
- **Intake Clean-Out Clock:** For each registered system (GPS of intake), pulls Open-Meteo hourly rain + GloFAS discharge; when 24h rain exceeds a site threshold (default 10 mm) or modelled discharge spikes >3× its 7-day median, sends "Climb to intake tomorrow morning, after the stream drops" with the safe window (first dry morning after the peak).
- **Flow Band Card (Tubig Level):** Each evening at 4pm, converts the modelled discharge trend + operator's last weekly "stick reading" at the weir notch into a simple band — *Puno (full) / Kulang (short) / Hirap (very short)* — and the number of household groups the turbine can carry 5–9pm.
- **Fair Load Rota:** Households split into groups A–D; when the band is *Kulang* or *Hirap*, the app rotates which group goes "no rice cooker / no iron / no grinder" in the peak window, posts it to the association's Messenger group chat, and keeps a public tally so no group is cut twice in a row.
- **Typhoon Gate Alert:** When forecast gusts or 24h rainfall cross thresholds (PAGASA-style), reminds the operator to close the forebay gate and lift the penstock valve before the storm, then reopen once flow recedes.
- **Paper-first fallback:** Prints a weekly A4 "rota + clean-out" sheet for the powerhouse wall and works fully by SMS keyword (`DANUM BAND`, `DANUM ROTA`) for phones without data.

### Version 2 — Month 2-3
- **Fee & Fault Ledger:** Treasurer logs monthly collections and operator logs faults (trashrack jam, belt slip, bearing noise, brownout) by voice note or button; the app correlates arrears with how often a household's group was cut.
- **Dry-Season Outlook:** 3–6 week flow outlook from GloFAS seasonal data, so the association can vote on rules (e.g., "no welding after 4pm from December") *before* the crisis.
- **Ifugao/Kalinga voice cards:** Recorded voice versions of every alert in Tuwali Ifugao, Kalinga and Ilocano for operators who prefer listening.

### Power User / Pro Features
- **Programme Officer Dashboard:** Map of all systems in a portfolio with flow band, missed clean-outs, fault frequency and fee collection rate — exportable for donor reports.
- **Per-site rating calibration:** Technician enters turbine rated flow/head; the app learns the relationship between GloFAS discharge and observed weir stick readings to give each site its own kW estimate.

## Technical Implementation

### Suggested Stack
**Chosen stack:** Facebook Messenger bot + SMS gateway (Semaphore PH) on a tiny Cloudflare Workers/Supabase backend, plus an offline-capable PWA for the programme-officer dashboard — because Cordillera villagers live in Messenger (Facebook Free Data / "Free Mode" works on Smart/Globe with low signal), and SMS covers the flip-phone operators.

### APIs & Data Sources
| API | Specific Endpoint | What It Returns | Refresh Rate | Auth | Cost |
|-----|------------------|-----------------|--------------|------|------|
| Open-Meteo Forecast | `https://api.open-meteo.com/v1/forecast?latitude=16.83&longitude=121.11&hourly=precipitation&daily=precipitation_sum,precipitation_probability_max,wind_gusts_10m_max&timezone=Asia/Manila&past_days=7&forecast_days=7` | Hourly/daily rain, probability, gusts at the intake | Hourly | None | Free (non-commercial) |
| Open-Meteo Flood (GloFAS) | `https://flood-api.open-meteo.com/v1/flood?latitude=16.83&longitude=121.11&daily=river_discharge,river_discharge_mean,river_discharge_max&past_days=7&forecast_days=30` | Modelled daily river discharge (ensemble median/mean/max) | Daily | None | Free |
| World Bank Open Data | `https://api.worldbank.org/v2/country/PH/indicator/EG.ELC.ACCS.RU.ZS?format=json&mrv=5` | Rural electricity access % (for grant reports/context) | Annual | None | Free |
| Open Exchange Rates | `https://open.er-api.com/v6/latest/USD` | USD→PHP for donor-currency reporting | Daily | None | Free |
| PAGASA tropical cyclone bulletins | `https://www.pagasa.dost.gov.ph/tropical-cyclone/severe-weather-bulletin` (scraped) | Active storm signals per province | Per bulletin | None | Free |
| Semaphore SMS | `https://api.semaphore.co/api/v4/messages` | Outbound SMS to operators | On send | Key | ~₱0.50/SMS |

### Database Schema (key tables only)
```
systems: id (uuid), name (text), barangay (text), municipality (text), intake_lat (float), intake_lon (float), rated_kw (float), rated_flow_lps (float), head_m (float), rain_threshold_mm (float)
households: id (uuid), system_id (fk), label (text), rota_group (char), phone (text), active (bool)
flow_readings: id, system_id, date (date), glofas_median (float), glofas_max (float), stick_reading_cm (float, nullable), band (enum puno|kulang|hirap)
rota_events: id, system_id, date, group_cut (char), window_start (time), window_end (time), posted_at (timestamptz)
cleanouts: id, system_id, alerted_at (timestamptz), done_at (timestamptz, nullable), debris_note (text)
fees: id, household_id, month (date), amount_php (int), paid_at (date, nullable)
```

### Key Technical Decisions
1. **Bands, not kilowatts:** Operators won't trust a "12.4 kW available" number from a satellite model; a three-level band calibrated weekly with a painted stick at the weir notch is honest about the model's coarseness and still drives the rota.
2. **Messenger + SMS over a native app:** No one in a sitio will install and update an app on a ₱3,000 phone with 2 GB storage; Messenger group chats are already where association business happens.

### Hardest Technical Challenge
GloFAS cells (~0.05°) are far coarser than a 2 km² mountain catchment feeding a single intake, so absolute discharge values (0.01–0.69 m³/s here) don't map to the intake's litres-per-second. **Mitigation:** treat GloFAS purely as a relative trend signal (ratio to its own 7-day median), combine with on-site rain, and calibrate per site with weekly weir-notch stick readings sent by SMS (`DANUM STICK 14`). After 6–8 weeks, a simple regression per site gives a usable band forecast.

## Monetization Strategy

> Note: Not every idea needs Stripe. Some are better as free tools, grant-funded, or sold B2G.

**Model chosen:** grant-funded (free to associations), with modest programme-officer licences paid by NGOs/LGUs.

| Tier | Price | What's Included | Why They Pay This |
|------|-------|-----------------|-------------------|
| Free | $0 | Clean-out clock, flow band, fair rota, typhoon gate alerts, SMS/Messenger for one system | Associations can't pay; free removes all friction |
| Programme | $15/mo per 10 systems (~₱950) | Portfolio dashboard, fault/fee ledger, donor-report exports | NGO/LGU officers need sustainability evidence for funders |
| Partner | $150/mo (~₱9,500) | Per-site calibration support, dry-season outlook briefings, custom local-language voice cards | Provincial energy programmes or donors running 30+ systems |

**Why someone pays:** The programme officer who has to write "system operational" in a donor report and secretly doesn't know whether three of their turbines are still turning.

**12-month revenue trajectory:**
- Month 3: ~2 NGO programmes × $15 = $30/month (pilot in 6–10 systems)
- Month 12: ~8 programmes × $15–$150 = ~$400/month — not a business; the real funding is a $20k–$60k grant line.

**Alternative if SaaS doesn't work:** Fold into a renewable-energy access grant (e.g., UNDP/GEF small grants, USAID/ADB energy-access windows, DOE's Energy Regulation 1-94 funds via host LGUs) or hand the code to a Cordillera university (Ifugao State University, Kalinga State University) engineering department to maintain as an extension project.

## Marketing Strategy

**Exact communities to reach:**
- "Ifugao Province" and "Proud to be Ifugao" Facebook community groups (each roughly tens of thousands of members — the de facto province noticeboard)
- "Kalinga Province Updates"-style Facebook pages and municipal LGU pages for Kiangan, Hungduan, Balbalan and Pasil (municipal information offices post every outage notice)
- r/Philippines and r/phinvest threads on off-grid power and micro-hydro (r/Philippines ~2M+ members)
- Facebook groups "Off-Grid Solar & Hydro Philippines"/"Renewable Energy Philippines" (DIY installer communities, several thousand members each)
- Engineering student orgs at Ifugao State University and Kalinga State University (field-thesis partners)

**First 10 users and how you get them:**
Partner with one NGO that has built or rehabilitated Cordillera micro-hydro systems (e.g., SIBAT's community renewable energy programme) and ask for introductions to 3 of their operator associations. Ride along on a maintenance visit, paint the weir stick, register households into rota groups at the next association assembly, and leave the A4 sheet on the powerhouse wall. Then add the municipal energy/environment officer in Kiangan and Balbalan as dashboard users — that's 10 operators/treasurers/officers inside a month.

**The press angle:**
"The Philippines says 98% of people have electricity. In the Cordillera, a farmer climbs a mountain after every rainstorm to keep his village's lights on — and decides each night who can cook rice." Rappler, Inquirer Northern Luzon and Philippine Daily Inquirer's climate desk love this framing, especially in the November–December dry-season shift.

**Content / SEO play:**
Public, anonymised "Cordillera micro-hydro dry-season tracker" pages per municipality showing flow band history and clean-out counts — searchable for "micro hydro Ifugao", "micro hydro maintenance Philippines", "turbine load shedding schedule" — plus Tagalog/Ilocano how-to guides on trashrack cleaning and fair rotas.

**Launch sequence:**
1. Before launch: pilot two systems through the November–December wet-to-dry transition; collect weekly stick readings to calibrate bands.
2. Launch day: present the first "dry-season month" results (clean-outs done, brownouts avoided, rota fairness tally) at a barangay assembly and a provincial LGU energy meeting.
3. Week 1: Open sign-up to other associations via the NGO partner and the municipal pages; publish the press story with photos from the intake.

## Competitive Landscape

| Existing Solution | What They Do | Where They Fall Short | Why This Wins |
|-------------------|-------------|----------------------|---------------|
| Laminated O&M manual from the build NGO | Describes cleaning and overload rules | Static, forgotten, no timing, no fairness record | Turns rules into dated, weather-driven alerts |
| Electronic load controllers (ELC/IGC) | Dump excess power to ballast heaters to keep voltage stable | Can't create flow; when flow is short they just let voltage sag | Adds the *human* load-shedding layer before the ELC is overwhelmed |
| PAGASA / NDRRMC flood alerts | Warn lowlands of too much water | Nothing about low flow or intake debris for tiny upland systems | Built for the opposite problem: keeping water *in* the turbine |
| Commercial hydro SCADA | Telemetry for MW-scale plants | Costs more than the entire village system | Zero hardware, uses free models + a painted stick |

**Moat:** The per-site calibration data (GloFAS trend ↔ weir stick ↔ observed brownouts) accumulated over dry seasons — nobody else has it — plus trust with associations and the NGOs who built the systems.

## Risk Factors

1. **Data:** GloFAS and gridded rainfall can miss localised orographic storms in steep valleys → **Mitigation:** operator SMS overrides (`DANUM ULAN` = heavy rain here) and stick readings always take priority over the model.
2. **Adoption:** Operators distrust anything that implies they've been doing it wrong, and rotas are politically sensitive → **Mitigation:** the association votes the rota rules at an assembly; the app only enforces and records what they decided.
3. **Safety:** An alert might push an operator to climb to the intake during dangerous high water → **Mitigation:** clean-out alerts only fire for the *first dry window after the peak*, with explicit "do not go while the stream is brown and rising" wording; typhoon mode suppresses climb alerts entirely.

## Build Reality Check

| Phase | Realistic Timeline | What Exists at End |
|-------|-------------------|-------------------|
| Prototype | 3 weeks | Messenger/SMS bot sending clean-out and rota cards for one test system |
| Beta | 8 weeks | 2–3 Ifugao/Kalinga systems calibrated through the dry-season transition, printed rota sheets in powerhouses |
| Launch | 16 weeks | 10+ systems, NGO dashboard live, first grant-report export |

**Solo founder feasibility:** Difficult — the software is easy, but it needs a field partner willing to walk to intakes and run assemblies.
**Biggest execution risk:** Association politics. If the rota is perceived as favouring one clan or purok, the tool gets blamed and abandoned, so the rules have to come from the community, not the app.

---
*Generated: 2026-11-13 | Industry: energy_utilities | Sub-industry: community_micro_hydro | Geography: philippines*
*APIs queried for real data: Open-Meteo Forecast API, Open-Meteo Flood API (GloFAS), World Bank Open Data API, Open Exchange Rates*

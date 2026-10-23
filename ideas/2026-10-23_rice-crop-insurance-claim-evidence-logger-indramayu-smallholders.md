---
id: autp-bukti-indramayu-2026-10-23
title: BuktiAUTP — Dry-Spell & Flood Claim-Evidence Logger with 7-Day Reporting Clock for Indramayu Smallholder Rice Farmers Insured Under AUTP
created: 2026-10-23T08:05:00+07:00
industry: agriculture_farming
sub_industry: crop_insurance
geography: indonesia
apis_used: Open-Meteo Forecast API, Open-Meteo Flood API, ExchangeRate-API, World Bank Open Data
monetization_model: grant-funded
target_user: Smallholder rice farmers (0.3-1 ha plots, many are penggarap/sharecroppers) in Indramayu Regency, West Java, insured under the government-subsidised AUTP rice insurance scheme via their kelompok tani, who must report crop damage to the local agricultural extension officer (PPL) within a short window and often miss it because no one tells them the exact day the clock started
concept_hash: rice-insurance-claim-evidence-logger-with-reporting-deadline-clock+indramayu-pantura-west-java-indonesia+kelompok-tani-smallholder-and-sharecropper-rice-farmers-insured-under-autp
---

# BuktiAUTP — Dry-Spell & Flood Claim-Evidence Logger with 7-Day Reporting Clock for Indramayu Smallholder Rice Farmers Insured Under AUTP

## The Hook
- Indramayu farmers pay roughly Rp36,000 per hectare for rice insurance the government subsidises to cover up to Rp6,000,000 — and a large share of drought and flood claims die not because the damage wasn't real, but because nobody filed within the reporting window or could prove *when* the damage started.
- The weather record already contains the proof: the last 14 days in Indramayu logged 1.5 mm of total rain while evapotranspiration burned 6+ mm a day. BuktiAUTP turns that into a dated, timestamped, geotagged evidence pack the extension officer can attach to the claim.
- A LINE-less, WhatsApp-first bot used through the kelompok tani chairman — free to farmers, funded by cooperatives/insurer-side or agricultural-extension grants.

## Real Data Found
> Live data queried from real APIs during idea generation — not placeholders.

| Source | Data Point | Value | Queried |
|--------|-----------|-------|---------|
| Open-Meteo Forecast API (lat -6.33, lon 108.32, Indramayu) | Total rainfall, 9–22 Oct 2026 (14 days) | 1.5 mm total (0.5, 0.3, 0.2, 0.5 mm on 9–12 Oct, then 0.0 mm for 10 straight days 13–22 Oct) | 2026-10-23 |
| Open-Meteo Forecast API | Reference evapotranspiration (ET0), same 14 days | 5.8–6.91 mm/day, roughly 91 mm lost total vs 1.5 mm rain in | 2026-10-23 |
| Open-Meteo Forecast API | Soil moisture 0–1 cm, last hours of window | 0.205 m³/m³ (rising from ~0.094 at the start of the series after the forecast rain begins) | 2026-10-23 |
| Open-Meteo Forecast API | Forecast rain 27–28 Oct | 10.4 mm and 8.1 mm daily totals | 2026-10-23 |
| Open-Meteo Flood API | Modelled river discharge, 23 Oct → 29 Oct | 0.24 → 0.74 m³/s (about 3x rise in 6 days) | 2026-10-23 |
| ExchangeRate-API | USD→IDR | 18,082.48 IDR per USD (last update 23 Oct 2026) | 2026-10-23 |
| World Bank Open Data | Indonesia agriculture, forestry & fishing value added | 13.1% of GDP (2025), 12.6% (2024) | 2026-10-23 |

A fourteen-day window with 1.5 mm of rain against ~91 mm of evaporative demand is the kind of dry spell that stresses a rice plot at tillering or booting — and it ends on 27 October with a first real rain pulse and a three-fold rise in modelled river discharge. That is exactly the switch from "drought claim" to "flood claim" window in which a farmer can end up with two kinds of damage on the same plot in the same fortnight, and no clean record of which came first.

Nobody in the village holds this record. The extension officer (PPL) covers many villages and arrives after the fact; the farmer remembers "it was dry for a long time". Insurers want dates, plot IDs and photos. The data to anchor those dates is free and exists — it just isn't packaged for a farmer holding a cracked Android phone.

## The Problem
It is late October in a dry-season-extended planting cycle on the Pantura coast. Pak Carsa, who sharecrops 0.6 ha of rice in a village near Indramayu, watches his tillering paddy crack and yellow after two weeks with almost no rain, because the irrigation canal turn didn't reach his block. He is insured under AUTP via the kelompok tani, but he doesn't know the exact day he is supposed to have reported, what the officer needs from him, or whether yellowing from drought counts differently from yellowing from pests. When he finally mentions it at the mosque on Friday, ten days have passed.

The structural reason this goes unsolved: AUTP is administered through cooperatives, the extension officer (PPL), and an insurer, while the person who actually experiences damage is a smallholder with no record-keeping habit. Claim eligibility depends on reporting promptly after damage is discovered, documenting affected area, and an officer verifying the plot. Workarounds today are voice notes in WhatsApp groups and a notebook with the kelompok tani chairman — undated, unverifiable, and impossible to reconcile with weather.

If nothing changes, subsidised insurance quietly under-delivers: farmers conclude "insurance never pays", stop enrolling, and the programme's real purpose — shielding the cheapest, most exposed producers from a bad fortnight — erodes. Indonesia still draws 13.1% of GDP from agriculture, and these are the plots at its base.

## Who Uses This
**Primary user:** An Indramayu smallholder or sharecropper (0.3–1 ha), 40–60 years old, uses WhatsApp daily, rarely installs apps, belongs to a kelompok tani whose chairman (ketua) holds the insurance enrolment list.
**What they do now (and why it sucks):** Tell the ketua verbally, hope the PPL visits in time, and have no dated proof of when the damage began.
**When they pay:** They don't pay — the trigger is the first time a claim is approved with the evidence pack attached and the ketua tells the whole group.

**Secondary user:** The PPL (extension officer) and the kelompok tani ketua, who today receive scattered messages and have to reconstruct a claim file from memory.
**Why they care:** A structured, dated case file per plot cuts verification visits and rejected claims.

**Who definitely won't use this:** Large estates and commercial farms with their own agronomists, and farmers outside AUTP coverage.

## Feature Set

### MVP — Week 1-3
- **Plot registration via WhatsApp:** Ketua or farmer sends a location pin and plot size once; the bot stores a plot ID and village.
- **Daily dry-spell counter:** For each plot, pulls Open-Meteo rain and ET0 and sends a Bahasa Indonesia alert such as "14 hari tanpa hujan berarti (1,5 mm). Catat kondisi tanaman sekarang."
- **Damage-start button:** Farmer replies "RUSAK" with a photo; the bot stamps the date, GPS pin and weather context, and starts a visible 7-day reporting countdown.
- **Evidence pack PDF:** One page with plot ID, dated photos, rainfall/ET0 chart, and a modelled river-discharge line, ready to hand to the PPL.
- **Ketua dashboard:** A simple shared sheet listing which members' plots have open clocks.

### Version 2 — Month 2-3
- **Drought vs flood vs pest tagging:** Guided questions that sort damage type, since each routes differently.
- **Reminder to the PPL:** One-tap message to the officer with the evidence pack attached.
- **Village summary:** Anonymised view for the district agriculture office of how many plots had open clocks in a given week.

### Power User / Pro Features
- **Multi-village roll-up for cooperatives and extension offices:** Exportable claim-readiness reports.
- **Insurer sandbox export:** Structured file format for loss adjusters to ingest.

## Technical Implementation

### Suggested Stack
Farmers live in WhatsApp; a bot beats an app.

**Chosen stack:** WhatsApp Business Cloud API + a small Node/Python serverless backend on a cheap host + Supabase (Postgres + storage for photos). No app install; works on low-end Android.

### APIs & Data Sources
| API | Specific Endpoint | What It Returns | Refresh Rate | Auth | Cost |
|-----|------------------|-----------------|--------------|------|------|
| Open-Meteo Forecast | `https://api.open-meteo.com/v1/forecast?latitude=-6.33&longitude=108.32&daily=precipitation_sum,et0_fao_evapotranspiration&hourly=soil_moisture_0_to_1cm&timezone=Asia/Jakarta&past_days=14&forecast_days=7` | Daily rain, ET0, hourly soil moisture | hourly | none | free |
| Open-Meteo Flood | `https://flood-api.open-meteo.com/v1/flood?latitude=-6.33&longitude=108.32&daily=river_discharge&past_days=14&forecast_days=7` | Modelled river discharge | daily | none | free |
| ExchangeRate-API | `https://open.er-api.com/v6/latest/USD` | IDR rate for grant budgeting | daily | none | free |
| World Bank | `https://api.worldbank.org/v2/country/ID/indicator/NV.AGR.TOTL.ZS?format=json&mrv=3` | Agriculture share of GDP | yearly | none | free |

### Database Schema (key tables only)
```
plots: id (uuid), farmer_phone (text), ketua_id (uuid), village (text), lat (float), lon (float), area_ha (numeric)
damage_events: id (uuid), plot_id (uuid), reported_at (timestamptz), damage_type (text), photo_url (text), reporting_deadline (timestamptz)
weather_snapshots: plot_id (uuid), date (date), rain_mm (numeric), et0_mm (numeric), soil_moisture (numeric), river_discharge (numeric)
claims: id (uuid), damage_event_id (uuid), status (text), ppl_notified_at (timestamptz)
```

### Key Technical Decisions
1. **WhatsApp over an app:** Target users won't install anything new; the ketua group chat already exists.
2. **Store the weather snapshot at event time:** Model reruns change numbers; freezing the values at report time keeps the evidence stable.

### Hardest Technical Challenge
Satellite/model weather at ~10 km resolution is not a plot-level measurement and an insurer may not accept it as proof. Mitigation: position it strictly as supporting context next to dated geotagged photos and PPL verification, never as the claim basis; validate against local rain-gauge records from the district office.

## Monetization Strategy

> Note: This is a public-good tool. Charging smallholders would defeat the point.

**Model chosen:** grant-funded (extension-office, cooperative, or agri-insurance-literacy funding)

| Tier | Price | What's Included | Why They Pay This |
|------|-------|-----------------|-------------------|
| Free | $0 | Farmer bot, reporting clock, evidence pack | Adoption through the ketua |
| Kelompok Tani | $5/mo (about Rp90,000) | Ketua dashboard, group roll-ups | Saves the ketua hours of chasing members |
| District / Insurer | $150/mo | Multi-village reporting, structured exports | Fewer rejected and late claims |

**Why someone pays:** A ketua who has been blamed for "lost" claims wants a paper trail that protects them.

**12-month revenue trajectory:**
- Month 3: ~8 kelompok tani × $5 = $40/month (plus pilot grant)
- Month 12: ~120 kelompok tani × $5 + 3 district contracts × $150 = ~$1,050/month

**Alternative if SaaS doesn't work:** Provincial agriculture department pilot grant, university KKN community-service partnership, or an agri-insurtech partner covering the group tier.

## Marketing Strategy

**Exact communities to reach:**
- Facebook groups for Indonesian farmers such as "Petani Padi Indonesia" and Indramayu-based "Info Indramayu" style community pages (member counts vary; verify before outreach).
- WhatsApp kelompok tani and Gapoktan groups reached through PPLs.
- Indonesian-language agriculture subreddits/forums are thin; focus on offline extension networks.

**First 10 users and how you get them:**
Visit one Indramayu kelompok tani meeting through a local PPL contact, enrol the ketua and 9 members' plots on the spot, and run through their next dry spell together.

**The press angle:**
"The dry spell was real — the paperwork wasn't": a district-level map of how many insured plots had open claim windows during a 14-day rain drought.

**Content / SEO play:**
Bahasa Indonesia explainers such as "cara klaim AUTP kekeringan" and "batas waktu lapor AUTP" aimed at farmers searching on phones.

**Launch sequence:**
1. Pilot with one PPL and one kelompok tani during the next dry spell.
2. Add a visible reporting countdown and hand out one-page printed guides.
3. After the first approved claim, share the story in the cooperative network.

## Competitive Landscape

| Existing Solution | What They Do | Where They Fall Short | Why This Wins |
|-------------------|-------------|----------------------|---------------|
| AUTP programme channels (PPL, insurer, cooperative) | Enrol and process claims | Rely on manual reporting and memory; no per-plot dated evidence | Adds the evidence layer without changing the programme |
| Generic farm apps | Weather, prices, tips | Not tied to insurance deadlines | Built around the claim clock |
| WhatsApp groups | Chat | No structure, no timestamps that hold up | Structured, frozen records |

**Moat:** Trust inside kelompok tani and PPL networks, plus an accumulating dataset of dated damage events that insurers and districts can validate.

## Risk Factors

1. **Regulatory/Programme:** AUTP rules (premium, coverage amounts, deadlines, damage thresholds) are set by the ministry and insurer and can change; figures quoted here must be verified against current guidelines → **Mitigation:** Make deadlines configurable per season and confirm with the district office before launch.
2. **Data:** Model weather may disagree with what farmers see → **Mitigation:** Always show it as context and invite local gauge data.
3. **Adoption:** Farmers may distrust anything that looks like government paperwork → **Mitigation:** Deliver through the ketua and PPL, not as a standalone brand.

## Build Reality Check

| Phase | Realistic Timeline | What Exists at End |
|-------|-------------------|-------------------|
| Prototype | 3 weeks | WhatsApp bot with plot registration, dry-spell counter, damage button |
| Beta | 6 weeks | One kelompok tani using it through a real dry or wet spell |
| Launch | 12 weeks | Several villages plus a district pilot agreement |

**Solo founder feasibility:** Difficult — the software is easy, but access to PPL and cooperative networks needs a local partner.
**Biggest execution risk:** Getting insurers and extension offices to accept the evidence pack as input.

---
*Generated: 2026-10-23 | Industry: agriculture_farming | Sub-industry: crop_insurance | Geography: indonesia*
*APIs queried for real data: Open-Meteo Forecast API, Open-Meteo Flood API, ExchangeRate-API, World Bank Open Data*

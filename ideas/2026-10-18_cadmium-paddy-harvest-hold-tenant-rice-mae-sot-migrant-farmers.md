---
id: mae-tao-cadmium-paddy-tenant-checker-2026-10-18
title: KhaoKham — Cadmium Paddy-Plot Harvest-Hold & Irrigation-Source Checker for Burmese Tenant Rice Farmers Around Mae Sot's Mae Tao Creek
created: 2026-10-18T08:04:00+07:00
industry: environment_ecology
sub_industry: soil_contamination
geography: thailand_myanmar_border
apis_used: Open-Meteo Forecast API, Open-Meteo Flood API, World Bank Open Data, ExchangeRate-API
monetization_model: grant-funded
target_user: Burmese (Karen, Mon, Bamar) migrant households in Phop Phra and Mae Sot districts, Tak Province, who lease 3-10 rai of paddy from Thai landowners on a share-of-harvest or fixed-rent basis, irrigate from Mae Tao creek or its canals, sell milled rice to local mills at 10-14 baht/kg, and have never been told which plots sit in the cadmium-affected zone around the old Padaeng zinc mine catchment
concept_hash: cadmium-paddy-plot-harvest-hold-and-irrigation-source-checker+mae-tao-creek-mae-sot-phop-phra-tak-thailand+burmese-migrant-tenant-rice-farmers
---

# KhaoKham — Cadmium Paddy-Plot Harvest-Hold & Irrigation-Source Checker

## The Hook
- Cadmium from zinc-mining waste in the Mae Tao creek catchment near Mae Sot has been documented in paddy soil and rice for two decades, yet the Burmese tenants who actually eat and sell that rice are rarely told which plots, canals or irrigation weeks are the risky ones.
- A tenant farmer deciding which of three leased paddies to feed her own family from, versus sell to the mill, has no plot-level information at all, only the landowner's word. KhaoKham turns published soil-survey zones plus this week's rain and creek-flow data into a Burmese/Karen-language "eat / sell / ask-to-test" card per plot.
- Not a lab replacement: it routes farmers to the free testing that exists and records results so the next tenant on the same plot inherits the knowledge.

## Real Data Found
> Live data queried from real APIs during idea generation — not placeholders.

| Source | Data Point | Value | Queried |
|--------|-----------|-------|---------|
| Open-Meteo Forecast API (16.72N, 98.57E, Mae Sot area) | Rainfall, past 7 days (11-17 Oct) | 18.5 mm total (peak 6.3 mm on 17 Oct) | 2026-10-18 |
| Open-Meteo Forecast API | Forecast rainfall next 7 days (18-24 Oct) | 10.4 mm total, 6.1 mm of it on 23 Oct | 2026-10-18 |
| Open-Meteo Forecast API | Soil moisture 0-7 cm, daily range | 0.209 to 0.317 m³/m³ | 2026-10-18 |
| Open-Meteo Flood API | Modelled river discharge at the Mae Sot cell | 2.81 m³/s (11 Oct) falling to 2.00 m³/s (24 Oct) | 2026-10-18 |
| World Bank Open Data | Myanmar employment in agriculture | 45.4% of total employment (2024) | 2026-10-18 |
| World Bank Open Data | Thailand arable land | 30.8% of land area (2024) | 2026-10-18 |
| ExchangeRate-API | THB to MMK | 1 THB = 62.54 MMK (updated 18 Oct 2026) | 2026-10-18 |

The creek is at a low, falling flow and rain is thin, which is exactly when late-season paddies are drained and canal water is most concentrated and least flushed. A farmer is choosing between draining, re-flooding from the creek, and harvesting during a window when the data shows almost no dilution. The soil moisture swing (0.21 to 0.32) shows how quickly surface conditions change after the single 6 mm days, which matters for deciding when dust-borne and splash-borne soil contact is highest during harvest and threshing.

The exchange rate matters for a second reason: at 62.5 kyat per baht, a household that loses a sale to a mill rejection or holds back rice loses a sum that is far larger in the kyat remittance it was meant to cover.

## The Problem
In Mae Tao and Phop Phra paddies, a Karen tenant farmer checks the creek level each morning, opens the canal gate, and floods her leased 6 rai. She does not know that the plot next to the old drainage channel is in a zone the published soil surveys flagged, while the plot two canals over is not. The landowner may not know either, and the mill buys on moisture and broken-grain percentage, never on heavy metals. She keeps the best rice for her own table.

The problem persists because the information exists in the wrong form. Soil surveys and academic papers are in English or technical Thai, indexed by sampling point rather than by plot, and aimed at the state and researchers. Tenants are mostly undocumented or on short-term permits, move between plots yearly, and cannot walk into an agricultural office to ask for a test. Workarounds today are word of mouth, which has no source, and ignoring the question, which has a cost.

If nothing is built, the exposure stays invisible: farm families keep eating the rice from the worst plot because it is the nearest one, new tenants take over high-risk paddies on cheap rent without knowing why they are cheap, and each season's hard-won local knowledge leaves with the family that moves on.

## Who Uses This

**Primary user:** A Burmese tenant farming household in Phop Phra or Mae Sot district, Tak, leasing 3-10 rai, irrigating from Mae Tao creek, harvesting Nov-Dec, one smartphone in the household running Facebook and Viber.
**What they do now (and why it sucks):** Ask the landowner and neighbours which field is "good", and eat from whichever is closest.
**When they pay:** They do not pay; a community health organisation or funder does. The trigger is a health-worker visit, a mill rejection, or a neighbour's illness.

**Secondary user:** Community health workers and migrant-focused NGOs in Mae Sot who already run clinics and village visits.
**Why they care:** They get a defensible, sourced plot-risk view and a reason to book testing for specific plots instead of everywhere.

**Who definitely won't use this:** Large Thai landowners with leased-out parcels who prefer not to know, and anyone expecting a medical diagnosis.

## Feature Set

### MVP — Week 1-3
- **Plot card:** Farmer drops a pin or picks a village canal; app shows the published zone class (higher concern / unclear / lower concern) with the source and survey year.
- **Eat / sell / ask-to-test guidance:** Plain-language Burmese and S'gaw Karen text per zone, never stating a plot is "safe".
- **Weekly creek and rain card:** Rain, soil moisture and creek flow from Open-Meteo, with a note when flow is low and canal water is least diluted.
- **Harvest-hold reminder:** Suggests keeping rice from higher-concern plots out of household and child food until tested.
- **Voice playback:** Audio versions for low-literacy users.

### Version 2 — Month 2-3
- **Test-result log:** Farmers or NGOs record lab results per plot, with consent, so the next tenant inherits them.
- **Testing queue request:** One-tap request to partner NGOs for sampling at a chosen plot.
- **Rent-and-risk note:** A plain comparison of what a similar low-concern plot rents for.

### Power User / Pro Features
- **NGO dashboard:** Heat view of requests, results and unknown plots for planning sampling days.
- **Offline pack:** Downloadable village map set for areas with no signal.

## Technical Implementation

### Suggested Stack
**Chosen stack:** A Facebook-Messenger-first Burmese/Karen bot backed by a light PWA, because this population lives in Facebook and Viber, not app stores, and data volume is tiny.

### APIs & Data Sources
| API | Specific Endpoint | What It Returns | Refresh Rate | Auth | Cost |
|-----|------------------|-----------------|--------------|------|------|
| Open-Meteo Forecast | `https://api.open-meteo.com/v1/forecast?latitude=16.72&longitude=98.57&hourly=precipitation,soil_moisture_0_to_7cm&daily=precipitation_sum&timezone=Asia/Bangkok&past_days=7&forecast_days=7` | Rain and soil moisture | hourly | none | free |
| Open-Meteo Flood | `https://flood-api.open-meteo.com/v1/flood?latitude=16.72&longitude=98.57&daily=river_discharge,river_discharge_max` | Modelled river discharge | daily | none | free |
| World Bank | `https://api.worldbank.org/v2/country/MM/indicator/SL.AGR.EMPL.ZS?format=json` | Context statistics | yearly | none | free |
| ExchangeRate-API | `https://open.er-api.com/v6/latest/THB` | THB to MMK | daily | none | free |

### Database Schema (key tables only)
```
plot: id (uuid), village (text), geom (point), zone_class (enum), source_ref (text)
survey_source: id, title, year (int), url (text), licence (text)
result: id, plot_id, sample_date, metal (text), value_mg_kg (numeric), lab (text), consent (bool)
weekly_card: date, rain_mm_7d (numeric), soil_moisture (numeric), flow_m3s (numeric)
```

### Key Technical Decisions
1. **Zone classes, not point values:** Published sampling is sparse, so the app shows coarse classes and always says "unknown" where data is thin.
2. **Results are consent-gated and plot-level only:** Tenants are often undocumented; no names are stored with results.

### Hardest Technical Challenge
Getting usable, licensable plot-level soil data. Mitigation: start from published peer-reviewed survey maps with permission, and treat farmer-commissioned tests as the growing dataset.

## Monetization Strategy

> Note: This is a public-health tool for a population with little cash; it makes sense only as grant or NGO funded.

**Model chosen:** grant-funded

| Tier | Price | What's Included | Why They Pay This |
|------|-------|-----------------|-------------------|
| Free | $0 | Everything for farmers | Trust and adoption |
| NGO | $40/mo | Dashboard, request queue, exports | Plans sampling days |
| Funder | grant | Hosting, translation, field testing | Measurable exposure reduction |

**Why someone pays:** A health NGO wants to point scarce testing at the right plots before harvest.

**12-month revenue trajectory:**
- Month 3: ~2 NGO subscribers × $40 = $80/month
- Month 12: ~6 NGO subscribers × $40 = $240/month, plus a $15-25k translation and testing grant

**Alternative if SaaS doesn't work:** University partnership with a toxicology or soil science department, or a one-off donor grant.

## Marketing Strategy

**Exact communities to reach:**
- Burmese-language Facebook groups for Mae Sot migrant workers (several tens of thousands of members each; verify before outreach)
- Karen community Facebook pages around Mae Sot (thousands of members; verify)
- Community health organisations and clinics already working in Mae Sot with migrant patients

**First 10 users and how you get them:**
Ten tenant households introduced by community health workers in two or three Phop Phra villages, onboarded at a village meeting with a phone in hand.

**The press angle:**
"Two decades after the cadmium rice was found, the people farming it still can't see which plot it came from."

**Content / SEO play:**
Burmese and Karen explainers on cadmium in rice, plus a public map of what is known and unknown.

**Launch sequence:**
1. Pilot with one NGO in two villages before harvest.
2. Launch bot and audio guidance.
3. Collect first consented test results by week 4.

## Competitive Landscape

| Existing Solution | What They Do | Where They Fall Short | Why This Wins |
|-------------------|-------------|----------------------|---------------|
| Academic papers and government surveys | Document contamination | English/technical, not plot-level, not reaching tenants | Plain-language, per-plot |
| NGO outreach visits | Education and testing | Cannot scale to every plot | Prioritises where to test |

**Moat:** Trust with local health workers and a growing consented plot-result dataset.

## Risk Factors

1. **Regulatory:** Landowners or authorities may resist plot-level labels → **Mitigation:** show coarse zones with sources, no plot ownership data.
2. **Data:** Surveys may be dated or sparse → **Mitigation:** display survey year and "unknown" prominently.
3. **Safety:** Users may read "lower concern" as "safe" → **Mitigation:** wording never says safe; recommends testing.

## Build Reality Check

| Phase | Realistic Timeline | What Exists at End |
|-------|-------------------|-------------------|
| Prototype | 3 weeks | Bot with zone cards and weekly creek card |
| Beta | 8 weeks | 10-30 households and one NGO |
| Launch | 16 weeks | Translated, audio-enabled tool with result log |

**Solo founder feasibility:** Difficult — the software is easy, but data access, translation and field trust take local partners.
**Biggest execution risk:** Getting plot-level data and a community partner to vouch for the tool.

---
*Generated: 2026-10-18 | Industry: environment_ecology | Sub-industry: soil_contamination | Geography: thailand_myanmar_border*
*APIs queried for real data: Open-Meteo Forecast API, Open-Meteo Flood API, World Bank Open Data, ExchangeRate-API*

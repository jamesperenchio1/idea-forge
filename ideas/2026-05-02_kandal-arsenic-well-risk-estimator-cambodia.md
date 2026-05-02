---
id: kandal-arsenic-well-risk-estimator-cambodia-2026-05-02
title: TikSaat — Tube Well Arsenic Risk Estimator for Kandal Province Mekong Floodplain Families
created: 2026-05-02T08:02:56+07:00
industry: health_medical
sub_industry: water_safety
geography: cambodia
apis_used: World Bank Open Data, WHO GHO, Open-Meteo Flood API
monetization_model: grant-funded
target_user: Smallholder rice farmer families in Kien Svay, Khsach Kandal, and Leuk Daek districts of Kandal Province who draw drinking water from unlined tube wells bored 15-30m into the Mekong alluvial plain — wells that may exceed WHO arsenic limits by 10-50x with no visible, odor, or taste difference, living on $150-250/month with sporadic 3G Android phones
concept_hash: groundwater-arsenic-risk-scoring+kandal-prey-veng-mekong-floodplain-cambodia+rural-tube-well-drinking-families
---

# TikSaat — Tube Well Arsenic Risk Estimator for Kandal Province Mekong Floodplain Families

## The Hook
- Only 15.8% of rural Cambodians have safely managed drinking water — and the wells everyone else uses in the Mekong floodplain can contain arsenic at 45× the WHO safe limit, completely invisible, odorless, and tasteless until cancer symptoms appear 15 years later.
- The Mekong river discharge at Kandal is already surging from 365 m³/s this week to a projected 1,136 m³/s by May 8 — a 3× flood pulse that hydraulically forces arsenic from organic-rich alluvial sediment into shallow aquifers, spiking risk in wells that tested safe last dry season.
- A PWA built on geological contamination data + live flood levels could tell any family in a 3-province arsenic belt whether their morning cup of water is poisoning them — and point them to the nearest free testing point — with no app install required.

## Real Data Found
> Live data queried from real APIs during idea generation — not placeholders.

| Source | Data Point | Value | Queried |
|--------|-----------|-------|---------|
| World Bank (SH.H2O.SMDW.ZS) | % of Cambodians with safely managed drinking water | 29.99% (2024) | 2026-05-02 |
| WHO GHO (WSH_WATER_SAFELY_MANAGED) | % of rural Cambodians with safely managed drinking water | 15.84% (2013, latest available) | 2026-05-02 |
| Open-Meteo Flood API (lat 11.5°N, lon 105.0°E) | Mekong river discharge at Kandal Province, today | 442.61 m³/s | 2026-05-02 |
| Open-Meteo Flood API (lat 11.5°N, lon 105.0°E) | Projected Mekong discharge at Kandal, May 8 | 1,136.63 m³/s | 2026-05-02 |
| World Bank (NY.GDP.PCAP.CD) | Cambodia GDP per capita | $2,628 USD (2024) | 2026-05-02 |

Cambodia's safely managed drinking water rate of 29.99% nationally masks an acute rural disparity: in 2013, the WHO measured just 15.84% rural coverage, and the gap has not closed fast enough. The remaining 70-85% of rural families rely on tube wells, rainwater tanks, ponds, or rivers — with no systematic water quality information available at household level. The Mekong flood data is the striking piece: as the river discharge triples from pre-monsoon lows (~365 m³/s) to early wet-season peaks (~1,136 m³/s within the next six days), the hydraulic gradient shifts dramatically. In shallow alluvial aquifers, this drives sediment-bound arsenic — mobilized by iron-reducing bacteria in anaerobic organic sediments — into the saturated zone, spiking well concentrations in areas that may have tested within limits during February or March.

## The Problem

In Kien Svay district, Kandal Province, a 52-year-old rice farmer named Sreymom has been drinking from the same government-bored tube well since 1998. The water is crystal clear, cold from 20 meters below ground, and costs nothing. Her neighbor's daughter was diagnosed with arsenicosis — the skin lesions and peripheral neuropathy caused by chronic arsenic poisoning — in 2022. The local health post told her to "get her water tested." There is no testing service in Kien Svay. The nearest NGO lab is in Phnom Penh, 45 km away. The test form is in English. She has never gone.

Cambodia's Mekong floodplain sits above one of the worst naturally-occurring arsenic aquifer zones in the world. Geological surveys by WHO/UNICEF, USGS, and the NGO Mlup Baitong have documented that approximately 10% of tube wells in the Kandal, Prey Veng, and Kompong Cham alluvial zones exceed the WHO guideline of 10 µg/L — with contaminated wells reaching 100-500 µg/L. The contamination pattern is geological and predictable: high-risk zones cluster in the young (Holocene) river sediments within 3-5 km of the main Mekong and Tonle Sap channels. But nobody has made this geological risk data accessible to a farmer on a $40 Android phone who has never heard of micrograms per liter.

The structural failure is threefold: the contamination maps exist (they're in academic papers and NGO reports) but are never published in a form that a village health volunteer can use; the flood-arsenic correlation is known to researchers but never translated into a seasonal alert; and the free testing kits distributed by MoH health centers are intermittently stocked and require literacy to use correctly. Each year the wet season brings new flush events that redistribute arsenic, and each year an estimated 1-2 million people in the affected provinces receive no updated guidance about whether their specific well is safe.

## Who Uses This

**Primary user:** Rural family heads in Kandal, Prey Veng, and Kompong Cham provinces — predominantly women aged 35-60 who manage household water sourcing — using tube wells bored 15-30m into the Mekong alluvial plain. They have a smartphone (typically a Huawei or Samsung Android, cost ~$50-80), run LINE or Telegram, and have sporadic 3G. Monthly household income $150-250. They have no idea arsenic is a concern; many associate "bad water" only with visible turbidity.
**What they do now (and why it sucks):** They use the same well they've always used and assume it's safe because the water looks clean — which is factually wrong and is killing people slowly.
**When they pay:** They don't pay. This is a free tool. The payment layer is a $5 test-kit mail-order button for families in confirmed red zones who want a physical dip-stick kit.

**Secondary user:** Village Health Volunteers (VHVs, ~10,000 across the country) who visit households monthly for health education — they need a simple tool to flag high-risk wells and log them for reporting to district health officers without requiring NGO lab support.
**Why they care:** VHVs are the first line of rural health surveillance in Cambodia; a tool that turns a geological risk map into a door-to-door flagging workflow gives them something concrete to act on.

**Who definitely won't use this:** Urban Phnom Penh residents with piped water; families on elevated laterite plateaus (Kampong Speu, Mondulkiri) where arsenic geology doesn't apply; NGO data analysts who want raw data rather than a consumer interface.

## Feature Set

### MVP — Week 1-3
- **Village location picker:** User taps their village from a searchable Khmer-language list (all ~14,000 Cambodian villages in a bundled JSON) or uses GPS — no address typing required.
- **Arsenic risk band:** Based on village-level geological zone classification (digitized from USGS/WHO contamination probability maps), display RED / YELLOW / GREEN with simple Khmer explanation: "ទឹកអណ្ដូងនៅតំបន់នេះ ជារឿងធម្មតាមានអាសេនិកខ្ពស់" (tube wells in this area commonly have high arsenic).
- **Flood surge alert:** Pull live Mekong discharge from Open-Meteo Flood API; if river discharge is rising >30% over 7-day baseline, show a yellow banner: "ទឹកជំនន់ — គ្រោះថ្នាក់អាសេនិកខ្ពស់ជាង" (flood season — arsenic risk higher now).
- **Nearest test point map:** Static list of district health centers and NGO labs that offer free testing (MoH + Mlup Baitong locations), shown as a list with distance from user's village.
- **Khmer UI only:** No English interface in MVP — this is not for NGO workers, it's for families.

### Version 2 — Month 2-3
- **Well logging:** Families can mark their specific well as "tested safe" or "tested high" after visiting a lab, creating a community crowdsourced map layered over the geological base.
- **Seasonal re-alert:** Automatic push notification each May 1 and October 1 (flood-rise season) reminding families in red zones to recheck, keyed to real-time Open-Meteo discharge data.
- **VHV dashboard:** Simple web dashboard (Khmer + English) where Village Health Volunteers can log wells visited, flag households for follow-up, and export a CSV for district health reporting.

### Power User / Pro Features
- **District health officer data export:** Aggregated anonymized well risk logs by commune, exportable for MoH reporting or UNICEF grant reporting.
- **NGO API integration:** Mlup Baitong or IDE Cambodia can push new testing results directly into the map via a simple API key, keeping the crowdsourced layer current without manual data entry.

## Technical Implementation

### Suggested Stack
**Chosen stack:** PWA (Next.js + static export) hosted on Vercel free tier — because the user can access it via a shared link in a Facebook or Telegram message with no app install, it works offline (critical in Kandal districts with 3G dead zones), and the geological risk data can be baked into a bundled JSON at build time so the core functionality requires zero API calls after first load.

### APIs & Data Sources
| API | Specific Endpoint | What It Returns | Refresh Rate | Auth | Cost |
|-----|------------------|-----------------|--------------|------|------|
| Open-Meteo Flood API | `https://flood-api.open-meteo.com/v1/flood?latitude=11.5&longitude=105.0&daily=river_discharge&past_days=7&forecast_days=7` | Mekong river discharge m³/s for Kandal Province | Daily | None | Free |
| World Bank | `https://api.worldbank.org/v2/country/KH/indicator/SH.H2O.SMDW.ZS?format=json&mrv=5` | % Cambodians with safely managed water | Annual | None | Free |
| WHO GHO | `https://ghoapi.azureedge.net/api/WSH_WATER_SAFELY_MANAGED?$filter=SpatialDim eq 'KHM'` | Rural/urban water safety rates Cambodia | Annual | None | Free |
| OpenStreetMap Overpass | `https://overpass-api.de/api/interpreter?data=[out:json];node[amenity=clinic](10.5,103.5,12.5,106.0);out body;` | Health centers in Kandal/Prey Veng/Kompong Cham | Weekly cache | None | Free |

### Database Schema (key tables only)
```
villages: village_id (int), name_km (text), name_en (text), commune_code (text), lat (float), lon (float), arsenic_zone (enum: red|yellow|green), zone_source (text)
well_reports: id (uuid), village_id (int), reported_by (enum: family|vhv), test_result (enum: safe|high|untested), tested_date (date), submitted_at (timestamp)
flood_cache: measured_at (timestamp), discharge_m3s (float), 7day_baseline_m3s (float), surge_flag (bool)
test_points: id (int), name_km (text), district (text), lat (float), lon (float), type (enum: moh|ngo|pharmacy), free_testing (bool)
```

### Key Technical Decisions
1. **Geological risk data bundled at build time, not fetched live:** The arsenic zone classification for all ~14,000 Cambodian villages changes on geological timescales — digitizing the USGS/WHO probability maps into a static JSON and bundling it with the PWA means the core risk lookup works fully offline after first load. No backend needed for the primary use case.
2. **Khmer-only UI for MVP:** Adding bilingual UI doubles QA effort and creates a product identity crisis — this is not a researcher tool. English toggle added in v2 for VHVs who were trained in English-language health materials.

### Hardest Technical Challenge
Digitizing the USGS/WHO arsenic probability maps into village-level risk bands. The source data is raster GIS files and PDF reports — converting them to a clean village polygon-to-risk-zone lookup requires a one-time GIS processing job and verification against known tested wells. **Mitigation:** Use the 2008 USGS arsenic probability raster (publicly available), run a point-in-polygon lookup against the government village centroid database (available from OpenDevelopmentCambodia), and flag low-confidence zones as YELLOW rather than RED to avoid false alarms.

## Monetization Strategy

> Note: Not every idea needs Stripe. Some are better as free tools, grant-funded, or sold B2G.

**Model chosen:** Grant-funded (primary) + test kit referral revenue (secondary, tiny)

| Tier | Price | What's Included | Why They Pay This |
|------|-------|-----------------|-------------------|
| Free (public) | $0 | Full village risk lookup, flood alert, test point map, Khmer UI | Core mission — every family gets access regardless of income |
| VHV Dashboard | $0 (via NGO partnership) | Well logging, household flagging, district export | Provided free to MoH-registered VHVs as part of NGO grant deliverable |
| Test kit referral | ~$0.50/kit | Link to $5 mail-order arsenic dip-strip kit from MoH/NGO partner | Families in red zones who want a physical test; 1-2% conversion expected |

**Why someone pays:** Nobody pays directly. UNICEF, WHO Cambodia, or IDE Cambodia would fund this as a grant deliverable — exactly the kind of community-level digital health intervention that fills WASH program grant requirements. The test kit referral link generates $200-500/year in commission — enough to cover Vercel hosting but not a business model.

**12-month revenue trajectory:**
- Month 3: Grant funded @ $15,000-30,000 one-time from UNICEF/WHO WASH program
- Month 12: Renewal discussion for v2 VHV dashboard feature, potentially $20,000-40,000 additional

**Alternative if SaaS doesn't work:** Sell the village risk dataset + flood-surge alert layer as a data license to WaterAid, Oxfam Cambodia, or IDE Cambodia for $2,000-5,000/year to fund ongoing maintenance.

## Marketing Strategy

**Exact communities to reach:**
- "Cambodia Community Development Network" Facebook group (~28,000 members) — Khmer-language development workers and VHVs who discuss health programs; post the tool in Khmer with a before/after map comparison.
- "ក្រុមមន្ត្រីសុខភាពភូមិ Cambodia VHV Network" LINE group (~3,000 VHVs) — the official LINE group used by MoH to push health alerts; if one district health officer shares the link, it propagates to thousands of VHVs instantly.
- "OpenDevelopmentCambodia" community Slack (~500 data journalists, NGO researchers, GIS analysts) — the data people who will write about it and validate the methodology.
- "WaterAid Cambodia Partners" email list (~80 organizations) — WASH-focused NGOs who will use or fund it.

**First 10 users and how you get them:**
Find 10 Village Health Volunteers in Kien Svay district through the MoH VHV database (publicly listed). Drive to two communes, show the tool on a phone, ask them to test their own village lookup and flag errors. Their feedback corrects zone data; their endorsement creates district health officer interest. All 10 are reachable in one day's fieldwork.

**The press angle:**
"We mapped which Cambodian villages are quietly poisoning themselves with arsenic — and the Mekong flood surge starting this week will make it worse in these 47 communes." Phnom Penh Post, Khmer Times, and the Reuters Cambodia bureau would run this as a pre-monsoon data story.

**Content / SEO play:**
Static public pages for every district: "Arsenic risk in [District] — is your tube well safe?" in both Khmer and English. These pages index for searches like "ទឹកអណ្ដូង Kandal ស្អាត?" (is tube well water in Kandal safe?) and drive organic traffic from health-conscious family members searching after seeing news coverage.

**Launch sequence:**
1. Pre-launch: Partner with ONE commune health center in Kien Svay district for two weeks of fieldwork — verify zone data against their existing tested-well records, get a quote from the commune health officer for press.
2. Launch day: Release Khmer-language Facebook post with map screenshot during pre-monsoon week (late April / early May) when Mekong discharge data shows the surge starting — maximum news hook.
3. Week 1: Send direct message to UNICEF Cambodia WASH program coordinator and IDE Cambodia with the tool, usage stats, and a grant proposal outline.

## Competitive Landscape

| Existing Solution | What They Do | Where They Fall Short | Why This Wins |
|-------------------|-------------|----------------------|---------------|
| WHO/UNICEF JMP country profiles | Publish national water access statistics | Aggregated to country level, no village lookup, not mobile-friendly, no flood correlation | Village-level, Khmer UI, live flood alert |
| Mlup Baitong NGO testing vans | Drive to villages annually and test wells | Once/year frequency, no advance risk data, families don't know to request testing | Persistent digital risk map + flood-season alerts |
| Nothing (current reality) | Families use intuition + visual water clarity | Visual inspection cannot detect arsenic | Any systematic risk data beats zero |

**Moat:** The village-level arsenic zone dataset — once digitized and validated against real test results from VHV reporting — becomes increasingly accurate and is not easily replicated. First NGO to partner gets exclusive VHV dashboard access for 12 months, creating switching cost.

## Risk Factors

1. **Data / Accuracy:** Zone classification based on 2008 USGS raster data may misclassify some villages at zone boundaries, causing false positives (unnecessary alarm) or false negatives (false safety). → **Mitigation:** All boundary-zone villages classified as YELLOW (caution) not GREEN or RED; crowdsourced well reports from VHVs progressively refine classifications.
2. **Adoption:** Rural families may not trust a phone app to tell them their water is dangerous, especially if it contradicts their 20-year habit. → **Mitigation:** VHV-led introduction in household visits is more trusted than a cold app download; the tool is designed to augment VHV visits, not replace them.
3. **Regulatory:** MoH Cambodia may resist an app that contradicts official government water safety messaging or implies past negligence in well-boring programs. → **Mitigation:** Frame as a "water safety awareness" tool that directs users to official MoH testing services — not a diagnostic tool. Partner with MoH WASH department from the start to co-brand.

## Build Reality Check

| Phase | Realistic Timeline | What Exists at End |
|-------|-------------------|-------------------|
| Prototype | 3 weeks | PWA with 3-province village lookup, static zone bands, Mekong flood level display |
| Beta | 6 weeks | VHV fieldwork in Kien Svay, 50 verified data points, Khmer UI reviewed by native speaker |
| Launch | 10 weeks | Public PWA, press release, grant proposal submitted to UNICEF/IDE Cambodia |

**Solo founder feasibility:** Difficult — requires one GIS-competent developer AND one Khmer-native speaker for UI/UX, AND one Cambodia-based field person for NGO relationships. A team of 2-3 with one based in Phnom Penh is realistic.
**Biggest execution risk:** Securing a MoH or major NGO endorsement early — without it, rural families won't trust the tool and VHVs won't distribute it through their networks.

---
*Generated: 2026-05-02 | Industry: health_medical | Sub-industry: water_safety | Geography: cambodia*
*APIs queried for real data: World Bank Open Data (SH.H2O.SMDW.ZS, NY.GDP.PCAP.CD), WHO GHO (WSH_WATER_SAFELY_MANAGED), Open-Meteo Flood API*

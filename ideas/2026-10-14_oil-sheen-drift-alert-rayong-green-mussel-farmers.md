---
id: khlaep-mussel-rayong-map-ta-phut-2026-10-14
title: KlapHoi — Oil-Sheen Drift & Harvest-Hold Alert for Green Mussel Raft Farmers Downcurrent of Map Ta Phut, Rayong
created: 2026-10-14T08:04:00+07:00
industry: disaster_emergency
sub_industry: chemical_spill_tracking
geography: thailand
apis_used: Open-Meteo Marine API, Open-Meteo Forecast API, Open-Meteo Air Quality API, ExchangeRate-API, World Bank Open Data
monetization_model: grant-funded
target_user: Family green-mussel (hoi mangluk) raft farmers working 20-60 bamboo-pole rafts off Ban Phe, Mae Ramphueng and Ban Chang in Rayong, who sell to Rayong seafood wholesalers and Bangkok restaurant buyers, live 3-8 km downcurrent of the Map Ta Phut petrochemical port, and lose a whole 8-month crop if buyers hear "oil" before the farmer has proof the rafts were clean
concept_hash: oil-sheen-drift-and-mussel-harvest-hold-alert+map-ta-phut-ban-phe-mae-ramphueng-rayong-thailand+family-green-mussel-raft-farmers
---

# KlapHoi — Oil-Sheen Drift & Harvest-Hold Alert for Green Mussel Raft Farmers

## The Hook
- Rayong's mussel rafts sit within a few km of one of Asia's densest petrochemical ports, and when a pipeline or buoy leaks, farmers learn from Facebook rumours, not from anyone with a current map.
- KlapHoi turns free marine-current and wind forecasts into a simple "will a sheen reach my raft line in the next 6/12/24 hours" strip, and keeps a timestamped log so a farmer can prove to a wholesaler that their harvest day was upcurrent of any reported incident.
- Sold to nobody at first: this is an NGO/provincial-fisheries tool where the ledger is the product.

## Real Data Found
> Live data queried from real APIs during idea generation — not placeholders.

| Source | Data Point | Value | Queried |
|--------|-----------|-------|---------|
| Open-Meteo Marine API (12.65N, 101.20E, off Ban Phe) | Surface ocean current speed, first 6 hours of 2026-10-14 | 0.6, 1.2, 1.5, 1.7, 1.7, 1.5 km/h | 2026-10-14 |
| Open-Meteo Marine API | Ocean current direction, same hours | 304°, 297°, 291°, 288°, 288°, 284° (toward the west-northwest) | 2026-10-14 |
| Open-Meteo Marine API | Wave height, same hours | 0.12 to 0.20 m | 2026-10-14 |
| Open-Meteo Forecast API (12.68N, 101.15E, Map Ta Phut coast) | 10 m wind, first 12 hours | 2.6 to 7.2 km/h, direction swinging 34° to 127° (onshore/variable) | 2026-10-14 |
| Open-Meteo Forecast API | Forecast rainfall, next 48 h | 7.1 mm total | 2026-10-14 |
| Open-Meteo Air Quality API (12.70N, 101.15E) | SO2 across the day | 2.8 to 10.6 µg/m³ (minimum 2.8 midday, rising to 10.6 by late evening) | 2026-10-14 |
| Open-Meteo Air Quality API | NO2 across the day | 2.1 to 22.4 µg/m³, climbing through the evening | 2026-10-14 |
| ExchangeRate-API | THB to USD | 0.029783 | 2026-10-14 |
| World Bank | Thailand GDP per capita | US$8,056.56 (2025), up from US$7,386.64 (2024) | 2026-10-14 |

Today's current is gentle: about 1.7 km/h at peak, running toward the west-northwest, with waves under 0.2 m. At that speed a sheen released at the port covers roughly 10 km in about 6 hours, which is exactly the Ban Phe-to-Map Ta Phut spacing, so the decision window for a farmer is hours, not days. The same wind that flips between 34° and 127° over a morning decides whether slick material is pushed onto the rafts or away.

The industrial air signal (evening NO2 rising from 2.1 to 22.4 µg/m³ and SO2 from 2.8 to 10.6 µg/m³ in one day) shows how strongly the daily cycle of port activity shows up even on a quiet day. A gradient like this is not a spill indicator, but it gives the app an honest "port is busy" context line that farmers currently have no access to.

## The Problem
A mussel raft farmer off Ban Phe wakes at 4 a.m. to pull ropes before the heat. On a morning when a rumour is spreading that "oil is coming from Map Ta Phut", they have to decide in minutes whether to harvest 3 tonnes now or hold. Today's currents run 1.7 km/h toward the west-northwest and the wind is variable, so the answer genuinely depends on direction and timing, but nobody gives them a per-raft-line reading.

The structural reason is that spill modelling is done by agencies and companies for incident response, not for the 400-odd family farms that stand to lose a crop. Official announcements arrive late and describe "the coast of Rayong" in general, so a buyer in Bangkok cancels the whole province. Farmers' current workaround is a LINE group where photos of the sea circulate unlabelled, and wholesalers cut prices on rumour. A farmer who harvested safely upcurrent gets the same discount as one whose rafts were actually oiled.

If nothing is built, every incident repeats the same pattern: panic dumping, price collapse for clean farms, no evidence for compensation claims, and slow-moving damage assessments that cannot tell which raft lines were hit and when.

## Who Uses This
**Primary user:** Family green-mussel raft farmers at Ban Phe, Mae Ramphueng and Ban Chang, Rayong; 20-60 rafts each, 2-4 family members, income roughly 15,000-40,000 THB per month per household in good cycles, harvesting at pre-dawn and selling by pickup or boat to wholesalers.
**What they do now (and why it sucks):** Check LINE rumours and the horizon by eye, then guess; a wrong "hold" costs a week of price decay, a wrong "harvest" risks an unsellable lot.
**When they pay:** They don't pay; the trigger is the first rumour day when a wholesaler asks "is yours clean?" and they can show a log.

**Secondary user:** Rayong provincial fisheries office and local coastal-conservation NGOs who want a farmer-sourced incident timeline.
**Why they care:** Faster, geotagged, timestamped reports than their phone trees produce.

**Who definitely won't use this:** Industrial spill-response teams and anyone expecting certified contamination testing; KlapHoi is a drift forecast and evidence log, not a lab result.

## Feature Set

### MVP — Week 1-3
- **Raft-line drift strip:** For each saved raft-line location, shows 6/12/24 hour current direction and speed with a plain-language "could reach you / unlikely" label.
- **Wind-push indicator:** Combines wind direction with current to flag onshore push versus offshore push.
- **Sighting report in LINE:** Farmer sends a photo and pin to a LINE bot; it timestamps and plots it.
- **Harvest log:** One-tap "harvested at HH:MM from line X" stored with the forecast at that moment.
- **Port-activity context line:** NO2 and SO2 pulled from the air-quality API for the Map Ta Phut grid cell.

### Version 2 — Month 2-3
- **Wholesaler-share card:** Generates a one-page image showing where and when a lot was harvested versus all reported sightings.
- **Neighbour confirmation:** Farmers in the same group can confirm or dispute a sighting.
- **Thai/English voice notes:** Spoken report transcribed for older farmers.

### Power User / Pro Features
- **Compensation evidence export:** PDF of timestamped logs, sightings and forecasts for fisheries-office filings.
- **Cooperative dashboard:** Aggregated view for the farmer cooperative leader.

## Technical Implementation

### Suggested Stack
Farmers live in LINE and mostly won't install anything new.

**Chosen stack:** LINE Messaging API bot + Cloudflare Workers + D1 database + a small static map (Leaflet) for the cooperative leader; no native app.

### APIs & Data Sources
| API | Specific Endpoint | What It Returns | Refresh Rate | Auth | Cost |
|-----|------------------|-----------------|--------------|------|------|
| Open-Meteo Marine | `https://marine-api.open-meteo.com/v1/marine?latitude=12.65&longitude=101.20&hourly=wave_height,ocean_current_velocity,ocean_current_direction` | Current speed/direction, waves | hourly | none | free |
| Open-Meteo Forecast | `https://api.open-meteo.com/v1/forecast?latitude=12.68&longitude=101.15&hourly=wind_speed_10m,wind_direction_10m,precipitation` | Wind and rain | hourly | none | free |
| Open-Meteo Air Quality | `https://air-quality-api.open-meteo.com/v1/air-quality?latitude=12.70&longitude=101.15&hourly=pm2_5,sulphur_dioxide,nitrogen_dioxide` | Port-adjacent pollutants | hourly | none | free |

### Database Schema (key tables only)
```
raft_lines: id (uuid), owner_line_id (text), name (text), lat (real), lon (real)
forecasts: id (uuid), raft_line_id (uuid), generated_at (timestamp), reach_6h (bool), reach_12h (bool), reach_24h (bool), current_kmh (real), current_dir (int), wind_dir (int)
sightings: id (uuid), reporter_line_id (text), lat (real), lon (real), photo_url (text), reported_at (timestamp), confirmations (int)
harvests: id (uuid), raft_line_id (uuid), harvested_at (timestamp), forecast_id (uuid), tonnes (real)
```

### Key Technical Decisions
1. **Simple vector drift, not a full oil-spill model:** Open-Meteo currents are coarse (about 8 km grid class), so honest uncertainty labels beat false precision.
2. **Store the forecast with every harvest:** The log's value is that the forecast could not have been written after the fact.

### Hardest Technical Challenge
Coastal currents from a global ocean model are poorly resolved right at the shore where the rafts are, so the arrival time estimate can be wrong by hours. Mitigation: show ranges not points, always label "forecast", and let farmer sightings override the model within the app.

## Monetization Strategy

> This only works as a free, grant-funded tool; farmers cannot pay and a paywall would defeat the evidence-log purpose.

**Model chosen:** grant-funded

| Tier | Price | What's Included | Why They Pay This |
|------|-------|-----------------|-------------------|
| Free | $0 | Drift strip, sighting reports, harvest log | Core safety value |
| Cooperative | $15/mo (about 500 THB) | Cooperative dashboard, export, shared logs | Group leader time saved |
| Agency | grant/contract | Aggregate sighting data and training | Fisheries office needs incident data |

**Why someone pays:** A cooperative leader fielding forty "is it safe?" calls in one day pays to stop answering them individually.

**12-month revenue trajectory:**
- Month 3: ~2 cooperatives × $15 = $30/month (plus seed grant)
- Month 12: ~12 cooperatives × $15 = $180/month, plus one small NGO or university grant covering development

**Alternative if SaaS doesn't work:** Coastal-resilience NGO grant, university marine-science partnership, or provincial fisheries office pilot.

## Marketing Strategy

**Exact communities to reach:**
- Rayong mussel-farmer and fishery LINE groups reached through the Ban Phe fishing community leaders (small closed groups, tens to low hundreds of members)
- Facebook pages for Rayong local news and fishermen's groups (search "ชาวประมงระยอง"), sizes vary widely
- Thai Sea Watch-style coastal NGO networks and Rayong provincial fisheries contacts

**First 10 users and how you get them:**
Visit the Ban Phe and Mae Ramphueng piers at dawn, meet three raft owners via the cooperative head, onboard their family LINE accounts in person, then add seven neighbours through them.

**The press angle:**
"Rayong's mussel farmers can now prove their harvests were clean before the panic started" — a local-impact story with a clear timestamped-data hook.

**Content / SEO play:**
Thai-language pages: "ทะเลระยองวันนี้ น้ำมันมาทางไหม" with the daily drift strip, which gets searched during any rumour.

**Launch sequence:**
1. Pilot with one cooperative for a full month, verifying forecasts against farmers' own observations.
2. Public daily page and LINE bot launch.
3. Present logs to the fisheries office and ask for a 6-month pilot.

## Competitive Landscape

| Existing Solution | What They Do | Where They Fall Short | Why This Wins |
|-------------------|-------------|----------------------|---------------|
| Government incident announcements | Province-wide statements after a spill | Late, not per raft line | Per-line, hourly, farmer-driven |
| Satellite oil-slick products | Detect large slicks | Not farmer-facing, not Thai-language | LINE-first, simple |
| Facebook rumours | Fast but unverifiable | Hurt clean farms | Timestamped, confirmable |

**Moat:** The accumulated, farmer-confirmed sighting archive and cooperative trust.

## Risk Factors

1. **Data:** Coarse coastal current model could mislead → **Mitigation:** show ranges and let sightings override.
2. **Regulatory/Political:** Industrial interests may dislike public sighting logs → **Mitigation:** require photo, pin and neighbour confirmation, and keep tone factual.
3. **Adoption:** Older farmers may not use LINE bots → **Mitigation:** voice notes and a cooperative-leader proxy account.

## Build Reality Check

| Phase | Realistic Timeline | What Exists at End |
|-------|-------------------|-------------------|
| Prototype | 3 weeks | Drift strip and LINE bot for 5 raft lines |
| Beta | 6 weeks | One cooperative using it through a monsoon month |
| Launch | 12 weeks | Public page plus agency pilot |

**Solo founder feasibility:** Yes — the stack is small and all data is free.
**Biggest execution risk:** Earning farmers' trust without a Rayong fishing contact who can vouch for the app.

---
*Generated: 2026-10-14 | Industry: disaster_emergency | Sub-industry: chemical_spill_tracking | Geography: thailand*
*APIs queried for real data: Open-Meteo Marine API, Open-Meteo Forecast API, Open-Meteo Air Quality API, ExchangeRate-API, World Bank Open Data*

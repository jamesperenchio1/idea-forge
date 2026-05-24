---
id: hutan-jaga-dayak-forest-fire-hotspot-alert-kalimantan-2026-05-24
title: HutanJaga — Satellite Fire-Hotspot Boundary Alert Bot for Dayak Adat Forest Community Rangers in East Kalimantan
created: 2026-05-24T08:00:00+07:00
industry: environment_ecology
sub_industry: deforestation
geography: indonesia
apis_used: Open-Meteo Weather API, Open-Meteo Air Quality API, World Bank Open Data, ExchangeRate-API, NASA EONET
monetization_model: grant-funded
target_user: Dayak Bahau and Benuaq community forest rangers (kader kehutanan masyarakat) in Kutai Barat and Mahakam Ulu regencies of East Kalimantan who patrol mapped hutan adat (customary forest) boundaries — typically 2-4 rangers per community earning Rp 500,000–800,000/month (~$28–45) from NGO stipends, responsible for reporting illegal clearing and fire starts to KLHK and BPBD before company bulldozers reach the tree line
concept_hash: satellite-fire-hotspot-boundary-alert+kutai-barat-mahakam-ulu-east-kalimantan+dayak-adat-community-forest-rangers
---

# HutanJaga — Satellite Fire-Hotspot Boundary Alert Bot for Dayak Adat Forest Community Rangers in East Kalimantan

## The Hook
- Indonesia's forest area shrank from 49.4% to 47.7% of total land between 2019 and 2023 — that's roughly 3.3 million hectares gone in four years, much of it in East Kalimantan — while the rangers responsible for catching illegal clearing get no satellite data, only group chats.
- A Dayak Benuaq kader in Kutai Barat can walk 8 km of forest boundary in a day; a VIIRS satellite hotspot from NASA can detect a fire within 375m accuracy every 3 hours. Nobody has connected these two things for the communities that need it most.
- Norway's NICFI forest fund and USAID GREEN Invest have poured hundreds of millions into Kalimantan forest protection — yet the community rangers who are legally empowered by Constitutional Court Ruling No. 35/PUU-X/2012 to guard their hutan adat receive no automated hotspot alerts, only phone calls when the smoke is already visible.

## Real Data Found
> Live data queried from real APIs during idea generation — not placeholders.

| Source | Data Point | Value | Queried |
|--------|-----------|-------|---------|
| World Bank Open Data | Indonesia forest area as % of land (2023) | 47.7% | 2026-05-24 |
| World Bank Open Data | Indonesia forest area as % of land (2019) | 49.4% | 2026-05-24 |
| Open-Meteo Air Quality | East Kalimantan (lat -0.5, lon 115.5) peak PM2.5 past 3 days | 28.3 µg/m³ | 2026-05-24 |
| Open-Meteo Air Quality | East Kalimantan current 24h avg PM2.5 | 4.4 µg/m³ | 2026-05-24 |
| Open-Meteo Weather | East Kalimantan 5-day precipitation total | 47.6 mm | 2026-05-24 |
| Open-Meteo Weather | East Kalimantan minimum humidity (5-day forecast) | 67% | 2026-05-24 |
| ExchangeRate-API | USD/IDR exchange rate | 1 USD = 17,857 IDR | 2026-05-24 |

Indonesia lost 1.7 percentage points of forest cover in just four years (2019–2023) — at the pace of roughly 400,000 hectares per year nationwide. East Kalimantan bears an outsized share of this: it hosts the new national capital (IKN Nusantara), which has accelerated road-building and land-clearing deep into the Mahakam watershed. The PM2.5 spike to 28.3 µg/m³ recorded on May 21–22 in the Kutai Barat area is notable — it's almost double WHO's 24-hour guideline of 15 µg/m³ — and occurred in the wet season. Dry season (July–October) routinely pushes PM2.5 past 300 µg/m³ in Kalimantan during bad fire years like 2019. Currently (May 24) the area is in deep wet season with 47.6 mm of rain expected over 5 days, humidity floor at 67%. This is exactly the window — while the forest is wet and fire risk is low — when community rangers should be setting up their monitoring systems for the dry season threat that is 6 weeks away.

## The Problem

Pak Martinus, a Dayak Bahau kader kehutanan in Long Pahangai subdistrict of Mahakam Ulu, gets a Rp 600,000/month stipend from WWF-Indonesia to walk his community's 3,400-hectare hutan adat boundary twice a week. When fire season starts in July, he relies on three signals: smoke visible from the longhouse porch, a phone call from another village upriver, or a WhatsApp message from a BPBD officer who may or may not be paying attention. By the time any of these arrive, a new clearing started by a palm oil land broker operating ahead of a concession application may already be 10–20 hectares in. The encroachment happened while Pak Martinus was sleeping.

The structural gap is that satellite fire hotspot data from NASA FIRMS (updated every 3 hours, 375m resolution) is technically public, but the interface to access it assumes a desktop browser, GIS literacy, and reliable internet — none of which Pak Martinus has. Government agencies like KLHK and BPBD receive the same satellite data but have no system to cross-reference it against community forest polygon boundaries and notify the specific ranger group. NGOs like AMAN (Aliansi Masyarakat Adat Nusantara) and BRWA have mapped thousands of adat territory polygons but don't have the engineering capacity to build real-time alerting on top of that data. So everyone has the data. Nobody has the last-mile connection to the ranger's phone.

The consequence is predictable: by the time a community has documented an encroachment well enough to file a report with KLHK, the clearing is complete, the peat is burning, and the company's land broker has moved on. Legal remedies take years. Pak Martinus's community wins in court in 2028 over something that burned in 2026. Meanwhile, Kalimantan's forest area percentage ticks down another 0.4%.

## Who Uses This

**Primary user:** A Dayak Benuaq or Bahau community forest kader (ranger) in Kutai Barat or Mahakam Ulu regency, East Kalimantan. 30–55 years old. Uses a mid-range Android phone (Rp 1–2 million, ~$56–112). Telegram is already installed because the local BPBD group chat uses it. Has basic literacy in Bahasa Indonesia. Earns a stipend of Rp 500,000–800,000/month from an NGO or village government for patrol duties. Responsible for 1,500–5,000 hectares of customary forest. Currently walks boundary twice a week and takes photos of suspected clearing with phone GPS-tagged location.
**What they do now (and why it sucks):** They watch for smoke, ask relatives in nearby villages, and call the BPBD officer — all reactive, all after the fact, none actionable at the 3-hour window when a new hotspot is still a small fire that can be documented before it spreads.
**When they pay:** They don't — the stipend is already thin. The NGO or local government that funds their patrol pays for the service (see monetization).

**Secondary user:** NGO field coordinators at WWF-Indonesia, AMAN, BRWA, or TNC (The Nature Conservancy) who are responsible for multiple community ranger groups across a regency. They want a single dashboard to see all communities' boundary alert status, which groups have responded to alerts, and which hotspots are new vs. previously reported.

**Who definitely won't use this:** KLHK central office bureaucrats in Jakarta who already have their own SIPONGI+ fire monitoring system but won't share polygon-level access with communities. Also: communities that have not yet had their hutan adat boundaries legally mapped and registered — this tool requires a prior polygon, which roughly 30% of recognized adat communities in East Kalimantan have.

## Feature Set

### MVP — Week 1-3
- **Boundary registration:** NGO field coordinator uploads a community's GeoJSON polygon via a simple web form; the bot stores it linked to the community's Telegram group ID.
- **3-hour hotspot scan:** Bot queries NASA FIRMS VIIRS NRT data every 3 hours; computes which new hotspots fall within or within 2km of each registered polygon.
- **Telegram group alert:** When a new hotspot is detected, bot sends a message to the community's Telegram group with: coordinates, distance from boundary, FRP (fire radiative power in MW), and a Google Maps link showing the hotspot location relative to the forest boundary.
- **Wind direction context:** Bot appends Open-Meteo wind data (direction + speed) to the alert: "Wind is blowing SW at 12 km/h — smoke will drift toward Desa Long Pahangai in approximately 3 hours."
- **Report template generator:** One-tap command in Telegram generates a pre-filled KLHK incident report text (in Bahasa Indonesia) with hotspot coordinates, timestamp, and community name — ready to paste or screenshot and send to the officer's WhatsApp.

### Version 2 — Month 2-3
- **Alert history log:** Web page (no login required) showing each community's alert history — timestamp, hotspot count, FRP, response logged by ranger (seen / investigating / reported to authorities).
- **Dry-season risk score:** Daily briefing at 6am showing 7-day fire weather forecast (temperature, humidity, wind, precipitation) for the community's boundary area, with a plain-language risk level: AMAN / WASPADA / BAHAYA.
- **Multi-community NGO dashboard:** Simple authenticated web dashboard for NGO coordinators to see all their registered communities and alert status in one view.

### Power User / Pro Features
- **Deforestation trend map:** Monthly satellite-derived canopy change (using Sentinel-2 NDVI difference via Google Earth Engine) overlaid on community boundary — shows slow clearing that doesn't produce fire hotspots (mechanical clearing in wet season).
- **Hotspot cluster analysis:** Flags when multiple hotspots appear in a linear pattern (corridor burning) vs. random scatter — linear is strong signal of deliberate land clearing vs. lightning strike.

## Technical Implementation

### Suggested Stack
This is a field-use tool for people with intermittent mobile data in remote forest areas. A Telegram bot is the right delivery channel — they're already in Telegram, it works on low bandwidth, messages cache offline. The backend is a simple Python process, not a full web app.

**Chosen stack:** Python (python-telegram-bot v20) + FastAPI for the polygon-registration web endpoint + SQLite (or PostgreSQL on Railway.app free tier) + Railway.app free hosting. No React, no Vercel, no complexity. The entire backend is ~500 lines of Python. Telegram handles all the UI.

### APIs & Data Sources
| API | Specific Endpoint | What It Returns | Refresh Rate | Auth | Cost |
|-----|------------------|-----------------|--------------|------|------|
| NASA FIRMS | `https://firms.modaps.eosdis.nasa.gov/api/area/csv/{key}/VIIRS_SNPP_NRT/{bbox}/{days}` | Active fire hotspots (lat, lon, FRP, confidence) | Every 3 hours | API key (free) | Free |
| Open-Meteo Forecast | `https://api.open-meteo.com/v1/forecast?latitude={lat}&longitude={lon}&hourly=windspeed_10m,winddirection_10m,relative_humidity_2m,precipitation&timezone=Asia/Jakarta` | Wind, humidity, rain forecast | Hourly | None | Free |
| Open-Meteo Air Quality | `https://air-quality-api.open-meteo.com/v1/air-quality?latitude={lat}&longitude={lon}&hourly=pm2_5&timezone=Asia/Jakarta` | PM2.5 at community centroid | Hourly | None | Free |
| World Bank | `https://api.worldbank.org/v2/country/IDN/indicator/AG.LND.FRST.ZS?format=json&mrv=5` | Indonesia forest cover trend | Annual | None | Free |

### Database Schema (key tables only)
```
communities: id (int), name (text), telegram_group_id (text), polygon_geojson (text), centroid_lat (float), centroid_lon (float), ngo_coordinator_id (int), created_at (datetime)
hotspot_alerts: id (int), community_id (int), firms_latitude (float), firms_longitude (float), frp_mw (float), confidence (text), distance_km (float), alert_sent_at (datetime), ranger_response (text)
alert_responses: id (int), hotspot_alert_id (int), responder_telegram_id (text), action (text), timestamp (datetime)
```

### Key Technical Decisions
1. **Telegram bot over custom app:** Rangers won't install a new app. They use Telegram daily. Bot commands (/status, /laporan) are simpler than any app UI, and group alerts reach all rangers simultaneously without push notification setup.
2. **Polygon stored as GeoJSON string in SQLite, intersection computed with Shapely:** Avoids PostGIS complexity. A community forest of 5,000 hectares = a polygon with ~20 vertices. Shapely point-in-polygon and distance checks on 100 communities with 3-hour FIRMS data takes < 2 seconds on a $5/month VPS.

### Hardest Technical Challenge
NASA FIRMS API requires a MAP_KEY (free registration), but the DEMO_KEY rate-limits heavily and returns errors. If FIRMS is slow or down during fire season peak (August-September), alerts delay. Mitigation: maintain a backup using EONET API for confirmed wildfire events as a coarser fallback; cache last 6 hours of FIRMS data locally so a single API blip doesn't miss an alert.

## Monetization Strategy

> This is a life-safety tool for communities with no disposable income. The paying customer is the conservation ecosystem around them.

**Model chosen:** Grant-funded / B2NGO SaaS hybrid

| Tier | Price | What's Included | Why They Pay This |
|------|-------|-----------------|-------------------|
| Community Free | $0 | Unlimited hotspot alerts, basic report generator, 1 polygon | Acquisition — get rangers using it before funding conversations |
| NGO Coordinator | $49/month | Dashboard for up to 20 communities, alert history export, SMS fallback | WWF-Indonesia field offices have budget for tools under Rp 1M/month; this fits |
| Government / Donor Bundle | $299/month | Unlimited communities, API access for integration with SIPONGI+, monthly deforestation trend report | KLHK provincial offices or NICFI-funded projects; framed as "community monitoring layer" |

**Why someone pays:** An NGO coordinator managing 15 communities across Kutai Barat currently gets a panicked WhatsApp from a kader after smoke is already visible. They pay $49/month so they can see all 15 communities' alert status in one place and tell their donor report "we had early detection on 4 incidents this dry season."

**12-month revenue trajectory:**
- Month 3: ~3 NGO coordinator accounts × $49 = $147/month (proof of concept; funded by a GIZ grant for tool development)
- Month 12: ~8 NGO coordinator accounts + 1 government bundle × $299 = ~$691/month; supplemented by $40,000 USAID seed grant

**Alternative if SaaS doesn't work:** Submit to NICFI (Norway's International Climate and Forests Initiative) as a funded tool under their community forest monitoring mandate — they have $1B+ committed to tropical forest countries through 2030 and fund exactly this type of last-mile community tool.

## Marketing Strategy

**Exact communities to reach:**
- Facebook: "AMAN — Aliansi Masyarakat Adat Nusantara" official page (~147,000 followers) — the largest national indigenous peoples' organization; their digital coordinator is reachable
- Facebook group: "Komunitas Pemantau Hutan Kalimantan" (~8,200 members) — active foresters, kader, and NGO workers discussing hotspot maps
- Telegram: BPBD Kutai Barat official group + adjacent ranger WhatsApp groups (introduced via BRWA field contacts)
- LinkedIn: GIZ Indonesia, WWF-Indonesia, TNC Indonesia — their project officers who manage REDD+ community forestry budgets

**First 10 users and how you get them:**
Contact BRWA (Badan Registrasi Wilayah Adat) directly — they have a database of 971 mapped adat territories in Kalimantan and relationships with the ranger kader in each. Ask for 3 communities in Kutai Barat with active fire seasons as pilot sites. Attend the next AMAN national congress (held annually, last one in Samarinda) and demo the bot live with a real community polygon on a laptop. The first 10 users come from 3 pilot communities × 3 rangers each = 9, plus the BRWA field officer who facilitates = 10.

**The press angle:**
"We mapped all 971 adat territory boundaries in Kalimantan against NASA satellite fire data — here are the 47 communities that received zero alerts last dry season despite having hotspots within 500m of their forest." This is a data story that Mongabay Indonesia, The Guardian's environment desk, and Context Indonesia would run immediately.

**Content / SEO play:**
A public map (Leaflet.js, embeddable) showing all registered community boundaries and their most recent hotspot alert status — updated in real time. Indexed by Google for searches like "kebakaran hutan Kutai Barat" (forest fire Kutai Barat) and "hotspot kalimantan hari ini." Journalists embed it; government agencies cite it in their reports.

**Launch sequence:**
1. Before launch: Register 3 pilot communities via BRWA contacts; run silently through one dry-season month to validate alert accuracy and confirm rangers actually read and respond to Telegram messages
2. Launch day: Publish the "971 territories, 0 alerts" data story on Mongabay Indonesia with a link to the public map; announce to AMAN's digital channels simultaneously
3. Week 1: Do a live demo in a Zoom call with 20 NGO field coordinators organized by BRWA — show a community's fire season history on a map, show what an alert looks like in Telegram, take registrations for the coordinator dashboard waitlist

## Competitive Landscape

| Existing Solution | What They Do | Where They Fall Short | Why This Wins |
|-------------------|-------------|----------------------|---------------|
| SIPONGI+ (KLHK) | Government fire monitoring dashboard with national hotspot data | No community polygon layer; no automated alerts to ranger groups; government-only access; desktop browser required | Community-specific alerts via Telegram; works on mobile, low bandwidth |
| Global Forest Watch Fires | Web map of FIRMS hotspots with country/region alerts | Email alerts only; no custom polygon for individual communities; no Bahasa Indonesia; no report generator | Polygon-level precision for each hutan adat; Telegram delivery; Bahasa Indonesia; one-tap KLHK report template |
| INARISK (BNPB) | National disaster risk platform | Not real-time; no community-specific alerts; no fire focus | Real-time 3-hour FIRMS data; community-focused; fire-specific |
| WhatsApp broadcast by BPBD | Manual human-relayed alerts from government officers | Hours-to-days delay; depends on BPBD officer's attention; no satellite data | Automated, satellite-sourced, immediate, polygon-specific |

**Moat:** The polygon database. Once 50 communities have registered their hutan adat boundaries in HutanJaga, that becomes the most complete and legally-verified community forest polygon dataset in Kalimantan, more current than BRWA's registry (which lags 6–18 months). Every NGO that wants accurate community-level fire monitoring will need to be inside this system. The data flywheel is the boundary dataset, not the alert bot itself.

## Risk Factors

1. **Adoption / Connectivity:** Rangers in Mahakam Ulu often have 2G coverage only; Telegram messages may delay significantly. → **Mitigation:** Telegram buffers messages for offline delivery; additionally implement SMS fallback via Twilio for critical BAHAYA alerts (costs $0.01/SMS; NGO tier includes 100 SMS/month)
2. **Data / NASA FIRMS access:** FIRMS API rate limits or service outages during peak fire season (Aug-Sep) could cause missed alerts at the worst moment. → **Mitigation:** Dual-source hotspot data (FIRMS + EONET as fallback); cache last 6 hours of FIRMS data locally; alert rangers if data feed is >3 hours stale
3. **Regulatory / Land politics:** Palm oil companies operating near adat territories have influenced local government officials; a tool that generates documented evidence of encroachment may trigger pressure on NGO partners to shut it down. → **Mitigation:** Store all alert data and ranger responses on a server outside Indonesia (Railway.app, US-hosted); partner with legal organizations (LBH) to ensure evidence chain-of-custody from day one
4. **Adoption / Language:** Some Dayak kader in remote communities have limited Bahasa Indonesia literacy; commands must be extremely simple. → **Mitigation:** MVP requires only one command: /status — everything else is pushed automatically; no ranger needs to type anything complex

## Build Reality Check

| Phase | Realistic Timeline | What Exists at End |
|-------|-------------------|-------------------|
| Prototype | 2 weeks | Telegram bot polls FIRMS every 3 hours for a hardcoded test polygon, sends alert to a test group with hotspot location and wind data |
| Beta | 6 weeks | 3 real communities registered; alert history stored; NGO coordinator can see all 3 on a simple web page; KLHK report template works |
| Launch | 12 weeks | 10+ communities; coordinator dashboard live; public map embed live; presented at AMAN event |

**Solo founder feasibility:** Yes — if that founder has Python experience and basic GIS familiarity (Shapely). The bot is < 500 lines of Python. The hardest part is relationship-building with BRWA and AMAN to get pilot communities, not the code.
**Biggest execution risk:** The communities are the moat but also the bottleneck. A solo founder without existing NGO relationships in Kalimantan will spend 3–4 months just getting the first 3 polygons registered. Partnership with BRWA or a WWF-Indonesia field officer from day one is not optional — it's the critical path.

---
*Generated: 2026-05-24 | Industry: environment_ecology | Sub-industry: deforestation | Geography: indonesia*
*APIs queried for real data: Open-Meteo Weather API (East Kalimantan lat -0.5 lon 115.5), Open-Meteo Air Quality API (East Kalimantan), World Bank Open Data (IDN forest cover AG.LND.FRST.ZS, IDN PM2.5 EN.ATM.PM25.MC.M3), ExchangeRate-API (IDR/USD), NASA EONET (wildfire events Borneo bbox)*

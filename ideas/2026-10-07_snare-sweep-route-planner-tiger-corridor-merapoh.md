---
id: sapujerat-merapoh-2026-10-07
title: SapuJerat — Rain-Window Snare-Sweep Route Planner for Citizen Tiger-Corridor Walkers in Sungai Yu, Merapoh, Pahang
created: 2026-10-07T08:00:00+07:00
industry: environment_ecology
sub_industry: wildlife_poaching
geography: malaysia
apis_used: Open-Meteo Forecast API, GBIF Occurrence API, World Bank Indicators API, Open Exchange Rates (open.er-api.com), NASA FIRMS (attempted — DEMO_KEY rejected)
monetization_model: grant-funded
target_user: Weekend volunteer "CAT Walkers" (Citizen Action for Tigers) — mostly Kuala Lumpur and Kuantan office workers, university students, and Merapoh-based Orang Asli Batek guides paid a day rate of roughly RM100–150. They drive 3.5 hours up the Central Spine (Federal Route 8) on Friday night, stay in Merapoh homestays, and walk 8–12 km of forest edge and river line in the Sungai Yu Tiger Corridor on Saturday and Sunday from about 07:30 until mid-afternoon. They look for wire snares, poacher camps, and agarwood (gaharu) collector trails. Right now they choose transects from a WhatsApp group thread, a laminated printout map, and whoever led last month. In the monsoon transition (October–December), half of the planned river crossings turn out to be impassable when they arrive.
concept_hash: snare-sweep-rain-window-route-planner+sungai-yu-corridor-merapoh-pahang-malaysia+citizen-volunteer-tiger-corridor-snare-walkers
---

# SapuJerat — Rain-Window Snare-Sweep Route Planner for Citizen Tiger-Corridor Walkers in Sungai Yu, Merapoh, Pahang

## The Hook
- Malaysia has fewer than 150 wild Malayan tigers left (2016–2020 National Tiger Survey estimate). The main thing killing them is not guns but cheap steel wire snares, set by the hundred along the 1–2 km wide Sungai Yu corridor between Taman Negara and the Main Range. The volunteers who walk that corridor to pull snares still pick routes by WhatsApp vote.
- SapuJerat ("sweep the snares") combines the 7-day rain forecast for the corridor, river-crossing passability, every snare/camp/track logged on past walks, and the 2–3 days after a heavy rain spell when poachers return to re-set lines. Each weekend's limited boots go to the transects with the most snare risk that can actually be walked.
- It's a free field tool funded by conservation grants, not a SaaS business. The same data layer, aggregated and anonymised, becomes a snare-pressure heatmap that state wildlife officials (PERHILITAN) and corridor-restoration funders currently have no way to see.

## Real Data Found
> Live data queried from real APIs during idea generation — not placeholders.

| Source | Data Point | Value | Queried |
|--------|-----------|-------|---------|
| Open-Meteo Forecast API | Daily rainfall, Merapoh/Sungai Yu (4.70°N, 101.98°E), 30 Sep 2026 | 33.4 mm (100% precip. probability) | 2026-10-07 |
| Open-Meteo Forecast API | Daily rainfall, 1–9 Oct 2026 (observed + forecast) | 7.8 / 6.0 / 7.3 / 4.9 / 4.5 / 2.4 / 4.3 / 3.2 / 2.4 mm — a 9-day low-rain window | 2026-10-07 |
| Open-Meteo Forecast API | Forecast rainfall, 10–13 Oct 2026 | 13.9 / 4.5 / 11.7 / 16.2 mm (96–100% probability) — the wet return begins this weekend | 2026-10-07 |
| Open-Meteo Forecast API | Sunrise / sunset at Merapoh, 7 Oct 2026 | 06:58 / 19:01 (≈12h daylight walking window) | 2026-10-07 |
| GBIF Occurrence API | Total *Panthera tigris* occurrence records, Malaysia (all years) | 49 records | 2026-10-07 |
| GBIF Occurrence API | *Panthera tigris* records by year, recent | 2023: 1 · 2024: 1 · 2025: 4 · 2026: 1 (all iNaturalist research-grade, Pahang & Perak) | 2026-10-07 |
| GBIF Occurrence API | *Panthera tigris* records with stateProvince = Pahang | 4 records | 2026-10-07 |
| GBIF Occurrence API | Sunda pangolin (*Manis javanica*) records, Malaysia | 171 records | 2026-10-07 |
| World Bank Indicators API | Forest area, Malaysia (% of land) | 58.02% (2021) → 57.87% (2022) → 57.72% (2023) | 2026-10-07 |
| Open Exchange Rates | USD → MYR | 4.0854 (updated 7 Oct 2026 00:02 UTC) | 2026-10-07 |
| NASA FIRMS | VIIRS active fires, Malaysia, 7 days | Not retrieved — DEMO_KEY returned "Invalid API call"; needs a free MAP_KEY | 2026-10-07 |

The rainfall series shows the problem. Merapoh had 33.4 mm on 30 Sep, then nine dry-ish days (2.4–7.8 mm), and the forecast turns wet again from 10 Oct (13.9 mm), 12 Oct (11.7 mm) and 13 Oct (16.2 mm). For snare walkers, the coming weekend of 10–11 Oct is the last easy access before river crossings swell. Corridor volunteers have long reported that poachers re-set lines just after a wet spell, once animals move to the forest edge and ground tracks are fresh. If the walkers are going to sweep the high-risk river lines, this weekend is the time. Nobody is telling them that.

The GBIF numbers show how blind the public record is. All of Malaysia has only 49 open tiger occurrence records, ever, including 4 for Pahang and 7 across 2023–2026. The country's most endangered big cat is almost invisible in open biodiversity data, so the snare and track logs volunteers collect on foot are one of the few dense, recurring data sources on where the animals and the threats actually are. Today those logs end up in paper notebooks and WhatsApp photos. Forest cover is also slipping: 58.02% → 57.72% in two years. That narrows the corridors further and concentrates both tigers and snares into fewer passable strips.

## The Problem

It's 05:40 on a Saturday at a homestay in Merapoh. Nine CAT Walk volunteers, a Batek guide and the team leader are drinking teh tarik and arguing about which transect to walk. Last month's team found 14 snares on the eastern river line, but it rained 33 mm three days ago and nobody knows if the Sungai Yu tributary crossing is waist-deep or knee-deep. The leader scrolls through 400 WhatsApp messages looking for the GPS pin of a poacher camp someone photographed in August. They pick the "safe" ridge transect because it is walkable. They find nothing. On the river line they skipped, a new set of wire snares catches a sambar deer on Tuesday. If the timing is bad, it catches a tigress.

This hasn't been solved because the people with the most at stake have the least tooling. Ranger agencies and big NGOs use SMART (Spatial Monitoring and Reporting Tool), but SMART is a desktop-first patrol database for trained, salaried ranger teams. Weekend citizen volunteers aren't licensed to use it and don't own the rugged phones it expects. Volunteers fall back on WhatsApp threads, Google My Maps pins nobody maintains, and the leader's memory. Weather comes from the generic Malaysian Meteorological Department app, which forecasts "Lipis district" rather than a river crossing, and nobody connects rain timing to poacher behaviour or crossing safety. Snares are tiny, cheap and re-set constantly, so a find only matters if the same line gets swept again within days, and no one remembers what was found where four weekends ago.

If this stays as it is, the volunteer movement, which is one of the few things actually reducing snares in a corridor this narrow, keeps spending its limited weekends on safe, low-yield routes. Its field data stays unusable, and it can't show funders or PERHILITAN a credible map of where the pressure is. Volunteer burnout follows when walks keep coming back empty. With fewer than 150 tigers left, losing even one breeding female to a snare on an unswept river line is measurable damage to the whole population.

## Who Uses This

**Primary user:** CAT Walk team leaders, usually 3–5 years in, one or two per weekend team. They are KL-based professionals (engineers, teachers, designers) earning RM5,000–9,000/month who drive up to Merapoh one or two weekends a month. On Thursday night they decide the route, brief 6–12 volunteers (some first-timers), and coordinate with a Batek or Malay village guide by WhatsApp voice note.
**What they do now (and why it sucks):** They scroll months of WhatsApp photos and pins, check a district-level weather app, and pick whatever transect feels safe. They have no memory of snare density or re-set timing, and no idea whether a crossing is passable until they reach it.
**When they pay:** They never pay personally. The trigger is the second weekend in a row that comes back empty while the next team finds a fresh snare cluster on the line that was skipped. Then the leader asks the coordinator for "something better than the WhatsApp group", and the coordinator writes it into the next grant proposal.

**Secondary user:** Conservation programme managers and corridor-restoration funders, e.g. MYCAT/Rimba-type NGO staff, the Central Forest Spine programme, and PERHILITAN Pahang enforcement planners.
**Why they care:** For the first time they get a defensible, time-stamped snare-pressure heatmap and effort-normalised capture data (snares found per km walked) to direct ranger raids and justify funding.

**Who definitely won't use this:** Tourists on the Gua Musang–Merapoh cave-tour circuit, Taman Negara jungle-trek operators selling canopy-walk packages, and salaried ranger units already locked into SMART (SapuJerat exports to them but won't replace their system).

## Feature Set

### MVP — Week 1-3
- **Weekend Sweep Score:** Each Thursday at 18:00 it ranks the corridor's predefined transects (river line, ridge, plantation edge, old logging road) by a score combining days since last swept, snares found there historically, rainfall over the last 72 hours (re-set likelihood) and forecast weekend rain (access).
- **Crossing Passability Flag:** Uses 72-hour accumulated rainfall from Open-Meteo plus leader-calibrated thresholds per crossing (e.g. "Tributary C goes waist-deep above ~25 mm in 48h") to mark each river crossing green/amber/red before anyone drives up from KL.
- **Offline Snare Logger:** Works with no signal. One tap logs a GPS point, photo, snare type (neck/foot/wire gauge), active/inactive, and whether it was removed or left in place for enforcement. Data syncs at the homestay wifi.
- **Line Memory:** A transect map shows every snare, poacher camp, gaharu cut-mark and tiger/prey track from all past walks, fading by age, so the leader can see a cluster set four weekends ago that is due a re-check.
- **WhatsApp Briefing Export:** Generates a one-image route card (map, crossings, sunrise/sunset 06:58/19:01, turn-back time, guide contact) to paste into the team's existing WhatsApp group. It meets volunteers where they already are.

### Version 2 — Month 2-3
- **Re-set Window Alert:** Sends a push/Telegram alert when a heavy rain spell (e.g. >30 mm/day) is followed by 2+ drier days, the pattern volunteers associate with poachers re-setting lines, along with "This Saturday is a high-value sweep weekend" and the top 3 transects.
- **Effort-Normalised Dashboard:** Snares per km walked, per transect, per month, so a quiet transect that nobody walked isn't mistaken for a safe one.
- **Fire & Clearing Overlay:** Pulls NASA FIRMS VIIRS hotspots (with a proper MAP_KEY) inside a 5 km buffer of the corridor, since a new small fire on the forest edge often marks a camp or a fresh clearing.

### Power User / Pro Features
- **Enforcement Packet:** A one-click PDF/CSV export of selected active snares (GPS, photos, timestamps, chain-of-custody note) formatted for handing to PERHILITAN, plus a SMART-compatible CSV for ranger units.
- **Corridor Health Report:** A quarterly auto-generated funder report with walks done, km covered, snares removed, a trend chart and a heatmap. This is the asset that keeps the grant renewing.

## Technical Implementation

### Suggested Stack
**Chosen stack:** An offline-first PWA (SvelteKit + IndexedDB, MapLibre with pre-cached vector tiles for the corridor), a Supabase backend (Postgres + PostGIS) and a scheduled Supabase Edge Function for the Thursday scoring run. The users don't need an app store, the forest has no signal so offline-first is mandatory, and a single small corridor means the whole basemap fits in about 40 MB of cached tiles.

### APIs & Data Sources
| API | Specific Endpoint | What It Returns | Refresh Rate | Auth | Cost |
|-----|------------------|-----------------|--------------|------|------|
| Open-Meteo Forecast | `https://api.open-meteo.com/v1/forecast?latitude=4.70&longitude=101.98&daily=precipitation_sum,precipitation_probability_max,sunrise,sunset&timezone=Asia/Kuala_Lumpur&past_days=7&forecast_days=7` | 7 days past + 7 days forecast rainfall, rain probability, sunrise/sunset for the corridor | Hourly (pull daily) | none | free |
| GBIF Occurrence | `https://api.gbif.org/v1/occurrence/search?country=MY&stateProvince=Pahang&scientificName=Panthera%20tigris` | Public tiger/prey occurrence records for context layers | Daily | none | free |
| NASA FIRMS | `https://firms.modaps.eosdis.nasa.gov/api/area/csv/{MAP_KEY}/VIIRS_SNPP_NRT/101.8,4.5,102.2,4.9/3` | VIIRS fire hotspots in the corridor bounding box | ~3h | free MAP_KEY | free |
| World Bank Indicators | `https://api.worldbank.org/v2/country/MY/indicator/AG.LND.FRST.ZS?format=json&mrv=5` | National forest-cover % for funder reports | Annual | none | free |
| Open Exchange Rates | `https://open.er-api.com/v6/latest/USD` | USD→MYR for grant budget reporting | Daily | none | free |

### Database Schema (key tables only)
```
transects: id (uuid), name (text), type (enum river/ridge/edge/road), geom (linestring), length_km (numeric)
crossings: id (uuid), transect_id (uuid), geom (point), red_threshold_mm_48h (numeric), amber_threshold_mm_48h (numeric)
walks: id (uuid), transect_id (uuid), date (date), team_size (int), km_walked (numeric), leader_id (uuid), crossings_passable (jsonb)
findings: id (uuid), walk_id (uuid), kind (enum snare/camp/gaharu_cut/tiger_track/prey_track/carcass), geom (point), status (enum active/inactive/removed/left_for_enforcement), photo_url (text), notes (text), found_at (timestamptz)
weather_daily: date (date), precip_mm (numeric), precip_prob (int), is_forecast (bool)
sweep_scores: run_at (timestamptz), transect_id (uuid), score (numeric), components (jsonb)
```

### Key Technical Decisions
1. **Snare locations are never public:** Precise points are visible only to vetted leaders and exported only in enforcement packets, and the public/funder heatmap is aggregated to 1 km hexes with a 30-day delay. A live public snare map would be a free intelligence service for poachers looking for where volunteers *aren't*.
2. **A transparent scoring formula, not ML:** The sweep score is a hand-weighted sum (recency, historical density, re-set rain pattern, access) that leaders can see and adjust. With tens of walks per year there is far too little data for a model, and leaders won't trust a black box over their own experience.

### Hardest Technical Challenge
Calibrating crossing passability. A grid-cell rainfall forecast doesn't directly predict how deep a specific tributary will be, because that depends on upstream catchment, soil saturation and local thunderstorms the 11 km model grid misses. Mitigation: at every crossing, the walker records "ankle/knee/waist/turned back" as a one-tap field. After 15–20 walks per crossing, fit a simple per-crossing threshold on 48h/72h rainfall. Until then, show the raw accumulation along with the last crossing-depth reports at similar rain totals, rather than pretending to be confident.

## Monetization Strategy

> Note: Not every idea needs Stripe. Some are better as free tools, grant-funded, or sold B2G.

**Model chosen:** Grant-funded, with a small paid tier for NGOs that want to run it on their own corridors.

| Tier | Price | What's Included | Why They Pay This |
|------|-------|-----------------|-------------------|
| Free | $0 | Full field app for volunteer teams: sweep scores, crossing flags, offline logger, WhatsApp briefing cards | Volunteers must never pay; adoption is the whole point |
| Corridor Programme | $49/mo (≈RM200 at 4.0854) | Additional corridor setup (transects/crossings), effort-normalised dashboard, quarterly funder report, enforcement packet exports | Saves the coordinator 2–3 days per quarter writing donor reports and gives them a credible map for the next grant |
| Landscape / Agency | $250/mo (≈RM1,020) | Multi-corridor view, SMART-compatible export, FIRMS overlay, API access, data-sharing agreement support | Enforcement planning across several Central Forest Spine linkages from one place |

**Why someone pays:** A programme coordinator has a donor report due in two weeks and a funder asking, "How do you know the corridor is safer?" SapuJerat produces the snares-per-km trend chart in one click, the evidence their funding depends on.

**12-month revenue trajectory:**
- Month 3: ~0 paying users (pilot on one corridor, funded by a single small grant of ~US$5,000–10,000)
- Month 12: ~4 Corridor Programme orgs × $49 + 1 Landscape contract × $250 = ~$446/month, plus grant funding. That covers hosting and part-time maintenance, not a salary.

**Alternative if SaaS doesn't work:** Package it as an open-source "corridor snare-sweep kit" funded by conservation-tech grants or tiger-conservation funds (e.g. small-grants windows from IUCN Integrated Tiger Habitat Conservation Programme-type sources, Rufford Foundation small grants, or corporate CSR from Pahang plantation companies with sustainability-certification obligations near forest edges), and offer paid setup and training days for new corridors in Malaysia, Sumatra or Thailand's Western Forest Complex.

## Marketing Strategy

**Exact communities to reach:**
- MYCAT (Malaysian Conservation Alliance for Tigers) official Facebook page and CAT Walk volunteer networks, roughly tens of thousands of followers; the CAT Walk programme is the direct target.
- r/malaysia (~500k+ members), for the "weekend volunteers pull snares out of the last tiger corridor" story, which drives volunteer sign-ups rather than paying users.
- Malaysian Nature Society (MNS) branch groups, especially the Selangor and Pahang branches, with thousands of members on Facebook and branch WhatsApp groups.
- "Hiking Malaysia" / Malaysian hiking Facebook groups (several with 100k+ members): fit, outdoorsy people already used to forest walking, the best recruitment pool for new CAT Walkers.
- WILDCAT/WildTech communities: the WILDLABS.NET forum's "Conservation Tech" and "Human-Wildlife Conflict / Anti-poaching" groups, where SMART and conservation-tech practitioners gather.

**First 10 users and how you get them:**
Join a CAT Walk as an ordinary volunteer, twice, with no app and no pitch. Watch the Thursday route argument and the Saturday crossing turn-back first-hand. Then go back to the 2–3 leaders from those walks with a prototype pre-loaded with their own transects and the last month's rainfall. Those 3 leaders, the 2 Batek guides who walk most often (whose one-tap crossing reports matter most), the programme coordinator, and 4 regular volunteers who already keep the most detailed notebooks are the first 10.

**The press angle:**
"Fewer than 150 tigers left, and the volunteers protecting them were picking routes by WhatsApp vote. Now a rainfall model tells them which weekend poachers will be back." A second, data-driven story after 6 months: "Snares per kilometre in Malaysia's most important tiger corridor, mapped for the first time." Pitch to The Star's environment desk, Malaysiakini, Mongabay (which covers Malayan tigers regularly) and CodeBlue/Macaranga.

**Content / SEO play:**
Public, aggregated, 30-day-delayed monthly corridor pages: "Sungai Yu Corridor — October 2026: 42 km walked, X snares removed, risk trend". Also evergreen Malay/English explainers people actually search: "apa itu jerat harimau" (what is a tiger snare), "volunteer tiger conservation Malaysia", "CAT Walk Merapoh how to join". These rank because almost nothing else exists for those queries, and they funnel readers into volunteering.

**Launch sequence:**
1. Before launch: Walk two CAT Walks, map the transects and crossings with the leaders, and back-fill the past 6 months of findings from WhatsApp photos (with permission) so the app is useful on day one.
2. Launch day: Use it live on a real Saturday walk, timed to a forecast "re-set window" weekend like 10–11 Oct 2026. The team leader posts the WhatsApp briefing card, and the app is credited in the walk's own Facebook recap.
3. Week 1: Publish the first aggregated corridor page and the "why we chose this river line" story to the hiking and MNS Facebook groups, with a direct sign-up link for the next CAT Walk.

## Competitive Landscape

| Existing Solution | What They Do | Where They Fall Short | Why This Wins |
|-------------------|-------------|----------------------|---------------|
| SMART (Spatial Monitoring and Reporting Tool) + SMART Mobile | Global standard patrol database for ranger agencies | Built for trained, salaried ranger units; heavy setup; not designed for rotating weekend citizen volunteers; no weather/access planning | Volunteer-grade simplicity + rain-window planning, and exports *into* SMART instead of competing with it |
| EarthRanger | Real-time protected-area operations dashboard (collars, patrols, alerts) | Enterprise-scale, park-HQ oriented; overkill and opaque for one volunteer corridor | Tiny, single-corridor, offline-first, free for volunteers |
| WhatsApp groups + Google My Maps | Current de facto tool | No memory, no scoring, no safety info, data rots in chat scroll | Persistent line memory + a Thursday recommendation |
| MetMalaysia / generic weather apps | District-level forecasts | No link between rain and crossing depth or poacher behaviour | Crossing-specific passability + re-set-window logic |

**Moat:** The finding-and-crossing-depth dataset gathered on foot, weekend after weekend, cannot be scraped or bought. Neither can the trust of a handful of team leaders and Batek guides, who will only share snare locations with a tool they know won't leak them.

## Risk Factors

1. **Data / Security:** A leaked snare or patrol map tells poachers where volunteers do and don't go. → **Mitigation:** Precise points are visible only to leader roles behind phone-number + invite-code auth, public layers are hexed and delayed, there are no public walk schedules, and every enforcement export is audit-logged.
2. **Regulatory / Partnership:** Access to the corridor and handling of snares/evidence fall under PERHILITAN and the state forestry department, and a tool seen as freelancing could get volunteers' access pulled. → **Mitigation:** Co-design the enforcement-packet format with the partner NGO's existing PERHILITAN liaison, and keep the default "removed vs. left for enforcement" choice aligned with the NGO's current protocol.
3. **Adoption:** Volunteers rotate constantly and leaders are time-poor, so if logging adds friction in the forest it won't happen. → **Mitigation:** One-tap logging with big buttons usable with muddy gloves; the WhatsApp card is the main output, so nobody has to "switch platforms"; guides get the crossing-depth tap as part of their paid day.
4. **Technical:** An 11 km model grid misses localised convective storms, so a "green" crossing could be dangerous. → **Mitigation:** Always label crossings as advisory, show the last real crossing reports, and make "turn back if water is above the knee" a hard-coded line in every briefing card.

## Build Reality Check

| Phase | Realistic Timeline | What Exists at End |
|-------|-------------------|-------------------|
| Prototype | 3 weeks | Leader sees ranked transects + crossing flags for next weekend; volunteers can log snares offline on one corridor |
| Beta | 8 weeks | 6–8 real CAT Walks logged, crossing thresholds starting to calibrate, first WhatsApp briefing cards used in the field |
| Launch | 16 weeks | Grant-funded pilot running on one corridor with the first quarterly funder report generated; second NGO corridor in setup |

**Solo founder feasibility:** Yes. The software is small (one corridor, a handful of transects, a simple scoring function), and the real work is going into the forest and earning trust, which one committed person can do.
**Biggest execution risk:** Being seen as an outsider extracting data. If the partner NGO or the Batek guides feel the tool was imposed rather than co-built, snare locations won't get logged and the app dies empty.

---
*Generated: 2026-10-07 | Industry: environment_ecology | Sub-industry: wildlife_poaching | Geography: malaysia*
*APIs queried for real data: Open-Meteo Forecast API (rainfall, precip probability, sunrise/sunset @ 4.70N 101.98E), GBIF Occurrence API (Panthera tigris & Manis javanica, Malaysia), World Bank Indicators API (AG.LND.FRST.ZS, MY), Open Exchange Rates (USD→MYR); NASA FIRMS attempted (DEMO_KEY rejected)*

---
id: semeru-summit-rain-lahar-clock-sand-miner-headcount-2026-11-25
title: SirineKali — Summit-Rain Lahar Clock, Riverbed Head-Count Board & Lost-Haul-Day Ledger for Semeru's Besuk Kobokan Sand Miners, Lumajang
created: 2026-11-25T08:01:25+07:00
industry: disaster_emergency
sub_industry: volcanic_cold_lahar_riverbed_sand_mining
geography: indonesia
apis_used: Open-Meteo Forecast API (summit + riverbed grid points), Open-Meteo Flood API (GloFAS river discharge), Open-Meteo Elevation API, USGS Earthquake Hazards API, Open Exchange Rates (open.er-api.com), World Bank Indicators API
monetization_model: grant-funded
target_user: Manual and small-truck sand miners (penambang pasir) working the Besuk Kobokan, Besuk Sat and Besuk Bang riverbeds below Mount Semeru in Candipuro and Pronojiwo sub-districts, Lumajang, East Java. They shovel and sieve volcanic sand into dump trucks from about 06:00 to 15:00, earn roughly Rp 100,000–200,000 (US$5.50–11) per day per shovel-man or a few hundred thousand rupiah per truckload loaded, mostly work in kampung crews of 5–15 under a crew head (mandor), and read the danger from a sky they can't see: rain falls on the 3,665 m summit, clouded over, while the riverbed at 600 m is dry and sunny. The lahar shows up 30–90 minutes later.
concept_hash: summit-rain-cold-lahar-arrival-clock-and-riverbed-crew-headcount-board+besuk-kobokan-candipuro-pronojiwo-semeru-lumajang-east-java-indonesia+penambang-pasir-sand-miner-crews-mandor-heads-and-desa-tangguh-bencana-volunteers
---

# SirineKali — Summit-Rain Lahar Clock, Riverbed Head-Count Board & Lost-Haul-Day Ledger

## The Hook
- At 13:00 yesterday it rained 6.3 mm in one hour on Semeru's summit (3,665 m), while the Besuk Kobokan riverbed 15 km downstream (640 m) had dry spells. Sand miners down there shovel through exactly that kind of afternoon, because they can't see the summit and nobody tells them it's raining up there.
- Tomorrow (26 Nov), forecast summit rain runs for six straight hours, 13:00–18:00, peaking at 4.7 mm/h at 15:00, the hour crews are loading their last trucks. SirineKali turns "summit rain now" into "lahar likely at your bend in about 40 minutes" and gives every mandor a one-tap head-count board so nobody is left in the channel.
- Sand mining is the reason anyone is in the most dangerous riverbed in Java, and it's a cash-in-hand economy that pays US$5–11 a day. The app also logs every lost haul day, so crews finally have the evidence to argue for the BPBD rain-day compensation and BPJS work-accident cover they've been asking for since the 2021 disaster.

## Real Data Found
> Live data queried from real APIs during idea generation — not placeholders.

| Source | Data Point | Value | Queried |
|--------|-----------|-------|---------|
| Open-Meteo Elevation API | Elevation, Semeru summit grid (-8.108, 112.922) vs Besuk Kobokan riverbed grid (-8.17, 113.03) | 3,665 m vs 640 m (a 3,025 m drop) | 2026-11-25 |
| Open-Meteo Forecast | Summit daily rain, 22–25 Nov (observed/model) | 6.8 / 8.4 / 19.2 / 9.8 mm | 2026-11-25 |
| Open-Meteo Forecast | Riverbed daily rain, same days | 11.8 / 14.0 / 7.4 / 2.2 mm (on 24 Nov the summit got 2.6× the riverbed's rain) | 2026-11-25 |
| Open-Meteo Forecast | Peak summit hourly rain, 24 Nov | 6.3 mm at 13:00 WIB (3.9 mm at 12:00, 2.9 mm at 15:00) | 2026-11-25 |
| Open-Meteo Forecast | Summit forecast 26 Nov | 25.5 mm/day; ≥2 mm every hour 13:00–18:00, peak 4.7 mm at 15:00 | 2026-11-25 |
| Open-Meteo Forecast | Summit rain probability max, 22 Nov–1 Dec | 100% on 9 of 10 days, 97% on the 10th | 2026-11-25 |
| Open-Meteo Flood API (GloFAS) | Modelled river discharge at riverbed grid, daily mean vs daily max | 24 Nov: mean 0.68 m³/s, max 5.41 m³/s (an 8× intraday spike) | 2026-11-25 |
| USGS Earthquake API | M4+ quakes within 400 km of Semeru since 25 Aug 2026 | 10 events; largest recent M5.3, 126 km S of Pundong, 27 Oct 2026 | 2026-11-25 |
| Open Exchange Rates | IDR→USD | 1 IDR = 0.000055 USD (Rp 100,000 ≈ US$5.50) | 2026-11-25 |
| World Bank (SI.POV.NAHC) | Indonesia poverty headcount, national line | 8.5% (2025), 9.0% (2024), 9.4% (2023) | 2026-11-25 |

The point of the data is the split. On 24 November, the model put the summit's rain at 19.2 mm against 7.4 mm in the riverbed, and the riverbed's modelled discharge spiked from a 0.68 m³/s daily mean to a 5.41 m³/s maximum, an eightfold surge within a single day. Even a coarse ~5 km global model sees that spike. From the riverbed it looks like an ordinary cloudy afternoon. This is how cold lahars work: loose pyroclastic deposits on the upper slopes (refreshed by every eruption, most recently the major eruptions of December 2021, December 2022 and November 2025) get saturated by summit rain and flush down the barranca as a slurry of sand, boulders and hot debris. People in the riverbed get no local warning sign.

The forecast says this rain pattern is routine, not rare. There's a 97–100% chance of summit rain every day for the next 10 days, and the heaviest hours fall at 13:00–17:00, exactly when crews are finishing loads. The country's poverty line keeps falling (8.5%), but the people in this riverbed are the ones it hasn't reached yet. That's why they keep going back down.

## The Problem

Pak Slamet is the mandor of an eleven-man crew from Desa Sumberwuluh, working a bend of Besuk Kobokan about 3 km above the rebuilt Gladak Perak bridge. At 13:30 the sky over the riverbed is grey but dry. Two trucks are half-loaded, and walking off now means losing perhaps Rp 600,000 of the day's take. What he doesn't know is that the summit has had 6 mm of rain in the past hour. PVMBG's observation post at Gunung Sawur has its seismographs logging the low-frequency rumble of a lahar starting. The post issues a "banjir lahar" notice to its WhatsApp groups and to the MAGMA Indonesia app, but the notice goes to village officials and journalists, not to Pak Slamet's phone. If anyone relays it, the relay arrives 20 minutes late, as a forwarded screenshot in a 250-member desa group, between a durian advertisement and a wedding invitation.

The structural problem: the official warning chain is built for administrative units (desa, kecamatan, BPBD), not for moving work crews in a riverbed. The sirens installed after 2021 at bridges and villages are positioned for settlements, not for 6 km of active channel where the miners actually stand. Miners' current workarounds are folk rules ("if the water goes cloudy, run" or "if the summit disappears into cloud after midday, go home") plus a cousin with a motorbike watching from the bridge. Those rules fail because the cloudy water arrives only minutes before the front, and because the summit is hidden by cloud almost every rainy-season afternoon, so the "rule" would mean never working, and people ignore it. Nobody has turned summit rainfall plus channel travel time into a clock that a crew head can glance at.

If nothing changes, the pattern repeats every rainy season. Trucks get swept away, crews get trapped on sandbanks between braided channels, and every couple of years people die. In the December 2021 eruption many of the dead were sand miners and truck drivers in this same channel. Meanwhile the crews eat the lost days with no record, so they have no claim to compensation, no data to bargain with depot owners over rain-day rates, and no voice in where the next siren goes.

## Who Uses This

**Primary user:** Mandor (crew heads) of riverbed sand-mining crews in Candipuro (Sumberwuluh, Sumbermujur, Penanggal) and Pronojiwo (Supiturang, Oro-Oro Ombo). They're aged 30–55 and carry a cheap Android phone (Oppo/Vivo/Redmi, 2–3 GB RAM). Their prepaid data comes in Rp 20,000 bundles. They live in WhatsApp, Javanese and Madurese are their first languages, and Indonesian is their second. They're responsible for 5–15 shovel-men and usually for the truck driver's safety too.
**What they do now (and why it sucks):** They squint at the summit, ask the bridge-watching cousin over WhatsApp, and leave when the water turns brown, which is minutes too late for anyone downstream of a narrow bend.
**When they pay:** They never pay cash. They "pay" by registering their crew and doing a twice-daily head-count tap. The trigger to adopt is the first afternoon SirineKali's clock tells them to leave 40 minutes ahead and they watch the lahar come through their bend from the bank.

**Secondary user:** BPBD Lumajang (Regional Disaster Management Agency), the Desa Tangguh Bencana (disaster-resilient village) volunteer teams, and the sand-depot owners who buy from crews.
**Why they care:** BPBD needs a live count of how many people are in the channel when PVMBG issues a lahar notice. Today nobody knows if it's 40 people or 400. The head-count board gives them that number instantly.

**Who definitely won't use this:** Large licensed mining companies with excavators and their own site safety officers; Semeru climbers and Ranu Kumbolo trekkers (different slopes, different risk); Jakarta volcano enthusiasts who want eruption livestreams.

## Feature Set

### MVP — Week 1-3
- **Summit-rain lahar clock (Jam Lahar):** A WhatsApp-bot message and a one-screen web page show a three-colour status (AMAN / SIAGA / NAIK SEKARANG, i.e. safe / alert / climb out now) for each riverbed segment, computed from summit-grid hourly rainfall and accumulated 3-hour rain, with an estimated "front arrives at your segment in ~N minutes" based on channel distance from the summit.
- **PVMBG notice relay with zero lag:** The bot scrapes or polls MAGMA Indonesia's public VONA/lahar bulletins and the Pos Pengamatan Gunung Sawur public channel, and pushes them instantly as a voice note in Javanese and Indonesian, not text, to every registered mandor.
- **Crew head-count board (Absen Kali):** The mandor taps "crew in channel: 11" at arrival and "crew out: 11" when leaving. During a SIAGA status the bot nags every 5 minutes until the "out" count matches. BPBD sees an aggregate dashboard of how many people are in which segment.
- **Segment picker by landmark, not GPS:** Crews choose their spot from named local landmarks ("below Gladak Perak", "Curah Kobokan dam 2", "Kamar A sandbank"), because GPS under the barranca walls is unreliable and nobody wants to be tracked by the authorities.
- **Lost-haul-day ledger:** Each day the crew left early or didn't descend because of a SIAGA call gets logged automatically with the summit rainfall that justified it. The ledger exports as a PDF for the desa head and BPBD.

### Version 2 — Month 2-3
- **Calibration from crew reports:** After each lahar, mandor tap "lahar arrived at our segment at 14:52". The arrival time is matched against summit rain and PVMBG seismic onset to tune the travel-time model per segment.
- **Bridge-cam assist:** A cheap solar phone camera at Gladak Perak and one upstream dam does motion/turbidity detection and posts a still image to the bot when the channel changes.
- **Truck-driver exit route card:** For each segment, a pre-drawn exit ramp and the time the truck needs to climb out loaded vs. empty, so drivers know when to abandon a half load.

### Power User / Pro Features
- **BPBD / Desa Tangguh dashboard:** A segment heat map of people in the channel, a history of SIAGA calls vs. actual lahars (hit/miss/false-alarm rate), and an export for disaster drills.
- **Depot-owner rain-day ledger view:** Depot owners who opt in see crews' verified lost days, supporting a voluntary rain-day advance or a cooperative insurance pool.

## Technical Implementation

### Suggested Stack
Crews will not install an app and have patchy signal in the channel, but every one of them has WhatsApp and the bank-top usually gets 4G.

**Chosen stack:** WhatsApp Business Cloud API bot (with a Telegram fallback for volunteers) + a tiny Cloudflare Workers backend + Cloudflare D1 (SQLite) + a static, offline-capable PWA status page (one screen, <50 KB) that caches the last status. It's WhatsApp-native for the crews, nearly free to host, and survives patchy signal.

### APIs & Data Sources
| API | Specific Endpoint | What It Returns | Refresh Rate | Auth | Cost |
|-----|------------------|-----------------|--------------|------|------|
| Open-Meteo Forecast | `https://api.open-meteo.com/v1/forecast?latitude=-8.108&longitude=112.922&hourly=precipitation&minutely_15=precipitation&timezone=Asia/Jakarta&past_days=1&forecast_days=2` | Hourly and 15-min summit precipitation, observed and forecast | 15 min / hourly | none | free (non-commercial) |
| Open-Meteo Forecast (riverbed) | `https://api.open-meteo.com/v1/forecast?latitude=-8.17&longitude=113.03&hourly=precipitation&timezone=Asia/Jakarta` | Riverbed-level rain, used to show the "dry here, wet up there" split | hourly | none | free |
| Open-Meteo Flood (GloFAS) | `https://flood-api.open-meteo.com/v1/flood?latitude=-8.17&longitude=113.03&daily=river_discharge,river_discharge_max&past_days=7&forecast_days=7` | Modelled daily mean and max discharge, used as context and a multi-day risk baseline | daily | none | free |
| Open-Meteo Elevation | `https://api.open-meteo.com/v1/elevation?latitude=-8.108,-8.17&longitude=112.922,113.03` | Segment elevations for the travel-time model | static | none | free |
| MAGMA Indonesia (PVMBG) | `https://magma.esdm.go.id/` public VONA and volcano-activity pages (scraped; no formal public API) | Alert level, eruption and lahar notices for Semeru | ~10 min poll | none | free |
| USGS Earthquake | `https://earthquake.usgs.gov/fdsnws/event/1/query?format=geojson&minmagnitude=4&latitude=-8.108&longitude=112.922&maxradiuskm=400&orderby=time` | Regional M4+ quakes, used as a contextual flag for slope destabilisation | real-time | none | free |
| BMKG open data | `https://api.bmkg.go.id/publik/prakiraan-cuaca?adm4={kode_desa}` | Official Indonesian village-level weather forecast, used as a second opinion and for legitimacy with BPBD | 3-hourly | none | free |

### Database Schema (key tables only)
```
segments: id (int), name_jv (text), name_id (text), landmark (text), channel_km_from_summit (real), elevation_m (int), exit_ramp_note (text), travel_min_base (int)
crews: id (int), mandor_wa (text), desa (text), default_segment_id (int), size (int), created_at (datetime)
headcounts: id (int), crew_id (int), segment_id (int), direction (in|out), count (int), at (datetime)
status_log: id (int), segment_id (int), status (aman|siaga|naik), summit_rain_1h (real), summit_rain_3h (real), pvmbg_notice (bool), eta_min (int), at (datetime)
lahar_reports: id (int), crew_id (int), segment_id (int), arrived_at (datetime), photo_url (text), confirmed (bool)
lost_days: id (int), crew_id (int), date (date), hours_lost (real), trigger_status_id (int), est_rp_lost (int)
```

### Key Technical Decisions
1. **Summit rain + PVMBG notice, never riverbed weather alone:** The entire danger comes from rain the crews can't see, so the model is driven by the summit grid and the PVMBG seismic notice. Riverbed weather is shown only to explain why "it's dry here" is meaningless.
2. **Voice notes in Javanese over text:** Many mandor read slowly in Indonesian and won't read a paragraph while holding a shovel. A 6-second voice note ("Udan nang puncak, munggaho saiki", roughly "rain on the summit, climb out now") gets acted on.
3. **Landmark segments, no GPS tracking:** Much of the sand mining is informal or semi-licensed. Any feature that looks like location tracking for the police kills adoption, so the head-count board is aggregate-only for BPBD.

### Hardest Technical Challenge
Getting the travel-time and threshold model right with almost no ground truth. Global weather models at ~2–10 km resolution smear summit convective cells, and lahar onset depends on deposit saturation that changes after every eruption. Too many false SIAGA calls and crews mute the bot within a week. Too few and someone dies. **Mitigation:** start conservative using the published Semeru lahar-rain literature (rain intensity thresholds on the order of 10–20 mm over 1–3 hours at the summit are cited in Indonesian lahar studies) combined with the authoritative PVMBG notice as the hard trigger. Then calibrate weekly from crew "lahar arrived" reports and PVMBG seismic records, and publish the hit/miss/false-alarm rate openly so crews can see the tool earning trust.

## Monetization Strategy

> Note: Not every idea needs Stripe. Some are better as free tools, grant-funded, or sold B2G.

**Model chosen:** grant-funded (with a small B2G service contract and an optional depot-owner sponsorship)

| Tier | Price | What's Included | Why They Pay This |
|------|-------|-----------------|-------------------|
| Crews | $0 | Lahar clock, PVMBG voice relay, head-count board, lost-day ledger | Free forever: charging the people in the riverbed is a non-starter |
| BPBD / Desa Tangguh dashboard | ~$150/mo (Rp 2.7M) per kabupaten | Live people-in-channel map, SIAGA history, drill exports, calibration reports | Lets BPBD answer "how many people are in the channel right now?" during an emergency |
| Depot sponsor | ~$20/mo per depot | Logo on the daily status voice note, verified lost-day ledger for their supplier crews | Depot owners need crews to keep coming back, and a dead crew is a reputational and supply disaster |

**Why someone pays:** BPBD Lumajang got national scrutiny after 2021 over who was in the channel and why no one warned them. A live head-count is the thing they can show at the next evaluation. Grantmakers (disaster-risk-reduction funds, humanitarian-tech funds, university volcanology partners) fund it because it's measurable: crews registered, SIAGA calls issued, people out of the channel before an observed lahar.

**12-month revenue trajectory:**
- Month 3: 1 DRR seed grant (~$15,000 one-off) + 0 contracts ≈ $0 recurring/month
- Month 12: 1 BPBD contract ($150) + 15 depot sponsors ($20) ≈ $450/month recurring, plus a second-year grant (~$30,000) to extend to Merapi's Gendol/Opak sand-mining rivers

**Alternative if SaaS doesn't work:** Hand the whole thing over to a university volcanology group (e.g. UGM's Merapi/lahar research teams or ITB) as open source, with BNPB adopting it as a template for lahar-prone mining rivers (Merapi, Kelud, Semeru, Agung).

## Marketing Strategy

**Exact communities to reach:**
- Lumajang local Facebook groups such as "Info Lumajang" / "Lumajang Info Terkini"-style community pages (tens of thousands of members each, estimated). These are where lahar videos from Gladak Perak go viral every rainy season.
- Desa-level WhatsApp groups in Sumberwuluh, Supiturang and Sumbermujur, reached through the kepala desa and the Desa Tangguh Bencana volunteer coordinators.
- Indonesian volcano-watcher communities on Instagram and TikTok that repost PVMBG Semeru notices (audiences in the hundreds of thousands), useful for credibility and press, not for crews.
- r/indonesia (~600k members) for the data story and developer volunteers.

**First 10 users and how you get them:**
Spend a week at the sand depots along the Candipuro–Pronojiwo road at 15:00, when crews come up to be paid. Bring a printed laminated card with the QR code for the bot and the 24 Nov chart ("summit 19.2 mm, riverbed 7.4 mm"). Recruit 10 mandor through two depot owners and the Sumberwuluh Desa Tangguh coordinator, and pay each crew a symbolic Rp 50,000 phone-credit top-up for a month of head-count taps during the pilot.

**The press angle:**
"It was dry where they were digging. It rained 6 mm in an hour on the summit." A side-by-side chart of summit vs. riverbed rain on every lahar day of the season, plus BPBD's first-ever live count of how many people were in Besuk Kobokan when a lahar hit. Pitch it to Kompas, detikJatim, Mongabay Indonesia and The Jakarta Post.

**Content / SEO play:**
A public daily page "Status Lahar Besuk Kobokan hari ini" (today's lahar status), with a season-long archive of summit vs. riverbed rain, every PVMBG lahar notice and crew-confirmed arrivals. That's the searchable dataset volcanologists, journalists and students will link to whenever a Gladak Perak lahar video goes viral.

**Launch sequence:**
1. Before launch: two weeks of silent "shadow mode" in which the model issues statuses only to the team and BPBD, compared against PVMBG notices and crew-reported lahars. Record the first Javanese voice-note set with a respected local voice (a desa elder or a Desa Tangguh volunteer).
2. Launch day: a mandor gathering at the Sumberwuluh balai desa (village hall) with BPBD present. Register crews on the spot and demo the head-count board on a projector.
3. Week 1: Post the daily status page link in desa WhatsApp groups, and publish the first "dry here, wet up there" chart on local Facebook pages after the first afternoon SIAGA.

## Competitive Landscape

| Existing Solution | What They Do | Where They Fall Short | Why This Wins |
|-------------------|-------------|----------------------|---------------|
| MAGMA Indonesia app / PVMBG notices | Authoritative alert levels and lahar/eruption bulletins | Built for officials and the public at large, text-heavy, no per-segment timing, no crew head-count | Relays PVMBG instantly as voice to the people in the channel and adds time-to-arrival plus head-count |
| Sirens and EWS at bridges/villages (BPBD/BNPB) | Audible alarms when lahar or eruption is detected | Fixed positions near settlements, inaudible in a deep, noisy channel with trucks running, and they fire only once the lahar has started | Fires on summit rain before the lahar starts, and reaches the phone in the crew head's pocket |
| Bridge-watcher cousin on WhatsApp | Someone on Gladak Perak calls down when the water changes | Late, unreliable, depends on one person paying attention | Systematic, always on, and logged |
| BMKG / generic weather apps | Weather for the village coordinate | Shows riverbed weather, which is exactly the misleading number | Shows summit rain, the one number that matters |

**Moat:** The calibration dataset (crew-confirmed lahar arrivals per segment matched to summit rain) doesn't exist anywhere else. Neither does the trust relationship with mandor and BPBD. After one rainy season, nobody can replicate the segment travel-time model without the same years of crew reports.

## Risk Factors

1. **Technical/Data:** A false negative (the tool says AMAN and a lahar comes) could get someone killed and make the project liable. → **Mitigation:** Never present AMAN as "safe". Present it as "no summit signal". PVMBG notices and official sirens always override. Liability disclaimers go through BPBD as the formal partner, and the model stays conservative with published false-alarm stats.
2. **Regulatory/Political:** Much riverbed mining operates in a grey zone, and authorities periodically ban mining in the channel after disasters, which could make an app that "helps people mine there" politically awkward. → **Mitigation:** Frame and govern it as a life-safety tool co-owned with BPBD and the Desa Tangguh teams. Store no individual identities on the BPBD side and keep counts aggregate only.
3. **Adoption:** Alarm fatigue. Summit rain is forecast at 97–100% probability every day this week, so a naive model would call SIAGA every afternoon. → **Mitigation:** Thresholds are based on intensity and accumulation, not probability. Weekly calibration, plus a public scoreboard of hits and false alarms, keeps the status credible.

## Build Reality Check

| Phase | Realistic Timeline | What Exists at End |
|-------|-------------------|-------------------|
| Prototype | 3 weeks | WhatsApp bot that pushes summit-rain status and PVMBG notices for 6 named segments, plus the head-count tap flow |
| Beta | 8 weeks | 10–20 crews registered, BPBD dashboard live, first calibration from real lahar events in the December–February peak season |
| Launch | 16 weeks | Grant-funded deployment across Besuk Kobokan and Besuk Sat, lost-day ledger PDFs in use by desa heads, BPBD contract signed |

**Solo founder feasibility:** Difficult. The software is a solo weekend's worth of work, but it needs a trusted local partner (a Desa Tangguh coordinator or a Lumajang-based NGO) on the ground, plus a volcanologist willing to sanity-check the thresholds.
**Biggest execution risk:** Trust and the first false negative. If the first big lahar of the season comes through while the bot said AMAN, crews will never open it again, so shadow mode and the PVMBG override have to be airtight before anyone's life depends on it.

---
*Generated: 2026-11-25 | Industry: disaster_emergency | Sub-industry: volcanic_cold_lahar_riverbed_sand_mining | Geography: indonesia*
*APIs queried for real data: Open-Meteo Forecast API, Open-Meteo Flood API (GloFAS), Open-Meteo Elevation API, USGS Earthquake Hazards API, Open Exchange Rates (open.er-api.com), World Bank Indicators API*

---
id: selang-spermonde-barrang-lompo-2026-11-12
title: SelangAman — Compressor-Hose Dive Tally & Bends Warning Card for Sea-Cucumber and Lobster Hookah Divers on Barrang Lompo, Spermonde Archipelago
created: 2026-11-12T08:00:00+07:00
industry: labor_work
sub_industry: fishing_crew_safety
geography: indonesia
apis_used: Open-Meteo Marine API, Open-Meteo Forecast API, World Bank Open Data API, OBIS Occurrence API
monetization_model: grant-funded
target_user: Makassarese and Bugis compressor ("kompresor"/hookah) divers aged 16-50 on Barrang Lompo, Barrang Caddi, Kodingareng and Lae-Lae islands, 8-15 km off Makassar, South Sulawesi. They breathe through 50-100 m of garden hose fed by a paint-shop air compressor on a 7-10 m wooden jolloro boat, make 4-8 dives a day to 20-40 m for sea cucumber (teripang), lobster and live grouper, and are paid a share of the catch by a punggawa (boss/financier) — often Rp 50,000-200,000 on an average day, nothing on a bad one. None carry a depth gauge or watch they trust; dive time is "until the sack is full", and the cumulative cost is decompression sickness ("kram", "lumpuh"), which has left men in wheelchairs on every one of these islands.
concept_hash: hookah-compressor-diver-depth-time-tally-and-bends-symptom-escalation-card+barrang-lompo-kodingareng-spermonde-makassar-south-sulawesi-indonesia+teripang-and-lobster-compressor-divers-and-punggawa-boat-captains
---

# SelangAman — Compressor-Hose Dive Tally & Bends Warning Card for Sea-Cucumber and Lobster Hookah Divers on Barrang Lompo, Spermonde Archipelago

## The Hook
- On Barrang Lompo, 12 km off Makassar, men breathe paint-compressor air through a garden hose at 30 m depth, 6 dives a day, no gauge, no clock. They're chasing teripang a punggawa will sell to Hong Kong. Every island has men paralysed from the waist down by the bends. SelangAman is a cheap waterproof depth-logger tally plus a WhatsApp bot that says "STOP: no 7th dive today, 4 minutes of shallow hang on this ascent". If a diver reports tingling legs, it tells the boat exactly where the nearest recompression chamber is.
- Today's data shows why it's tempting: Spermonde waves max out at 0.26-0.34 m all week and drop to 0.08 m by 18 Nov. Water is 30.4-31.2 °C. Flat, warm water is when boats go out every single day, and back-to-back high-dive days are when nitrogen loading kills.
- This isn't a SaaS. It's an occupational-safety tool for a provincial health office, Universitas Hasanuddin's marine-science faculty, or a fisheries-NGO grant. It's paid for by people who already spend money on paralysed divers after the fact.

## Real Data Found
> Live data queried from real APIs during idea generation — not placeholders.

| Source | Data Point | Value | Queried |
|--------|-----------|-------|---------|
| Open-Meteo Marine API | Daily max significant wave height, Spermonde (-5.05, 119.30), 12–18 Nov 2026 | 0.26, 0.34, 0.32, 0.22, 0.10, 0.10, 0.08 m | 2026-11-12 |
| Open-Meteo Marine API | Sea-surface temperature, 12–13 Nov | 30.4–31.2 °C | 2026-11-12 |
| Open-Meteo Marine API | Modelled sea-level swing (MSL), 12 Nov | −0.08 m (09:00) to +1.23 m (18:00) = 1.31 m range | 2026-11-12 |
| Open-Meteo Marine API | Ocean current velocity, 12–13 Nov | 0.4 km/h (00:00) to 2.1 km/h (13 Nov 15:00) | 2026-11-12 |
| Open-Meteo Forecast API | Daily max wind / gusts, Barrang Lompo, 11–18 Nov | 10.9–23.8 km/h wind, gusts peaking 32.0 km/h on 13 Nov | 2026-11-12 |
| Open-Meteo Forecast API | Daily precipitation, 11–18 Nov | 0.5–4.8 mm/day (pre-monsoon showers) | 2026-11-12 |
| World Bank Open Data API | Indonesia capture fisheries production (ER.FSH.CAPT.MT) | 6,991,829 t (2020) → 7,817,070 t (2024) | 2026-11-12 |
| OBIS Occurrence API | Recorded *Holothuria* (sea cucumber) occurrences in the Spermonde bounding box | 101 records | 2026-11-12 |

Mid-November is the calm tail of the east monsoon in the Makassar Strait. Waves under 35 cm and gusts under 32 km/h mean no weather excuse to stay home, so a diver can stack five, six, seven high-dive days in a row. Repetitive-day diving is a known DCS multiplier even for recreational divers on proper tables, and these men use no tables at all. The calm week coming (waves fall to 0.08 m by the 18th) is a risk window. Most safety tools would read it as a "safe" window. SelangAman flips the usual marine app: calm seas raise the warning level.

The 1.31 m tidal swing and currents up to 2.1 km/h matter too. When the current runs, divers fight it at depth, which means more exertion, more gas uptake and faster hose drag. Then they rocket up the hose when the sack is full or the compressor coughs. The World Bank series shows Indonesia's capture output growing 12% in four years to 7.8 million tonnes. OBIS's 101 *Holothuria* records in the Spermonde box are a reminder that teripang beds near the surface are long gone, which is why divers keep going deeper.

## The Problem

Daeng Rusli is 34 and lives on Barrang Lompo. At 05:30 he climbs into a jolloro with three other divers and a boat captain. On the deck is a second-hand Lakoni compressor with a car-filter "intake" and a tangle of green hose. By 15:00 he has made seven dives on a reef edge west of Kodingareng, four of them past 25 m. He has no idea how deep or how long, only that the last sack of teripang was light. He comes up fast because the hose snagged. That evening his legs tingle. He tells no one, because the punggawa already advanced the money for his daughter's school fees, and tomorrow is another flat day. Two days later he can't walk. The nearest working recompression chamber is in Makassar, a boat ride and a car ride away, and by then the damage is permanent.

This exists for structural reasons. Compressor diving sits in a legal grey zone: regional fisheries rules restrict it, but it's tolerated because it feeds the island economy. So no agency counts the dives and nobody trains the divers. The debt-based punggawa–sawi patron-client system means a diver can't refuse a dive day without losing his advance. Researchers from Universitas Hasanuddin and international partners have documented high DCS prevalence in Spermonde for years, but the published output is papers and workshops, not something on the boat. Dive computers cost Rp 3-8 million, more than a month's income, and are designed for recreational divers who read English menus. The current "workaround" is folk belief: drink coconut water, avoid eating before diving, call a dukun when legs go numb.

If nothing changes, the pattern repeats every calm season. Young men from these islands get paralysed in their 20s and 30s and become lifelong dependants of families already in debt. Delayed treatment, often days late, is the main reason injuries become permanent. Even a crude "you are over your limit" tally and a "symptoms = chamber NOW, here's the boat route" escalation would cut both dives-beyond-limit and the delay to treatment.

## Who Uses This

**Primary user:** Compressor divers on Barrang Lompo, Barrang Caddi, Kodingareng Lompo and neighbouring Spermonde islands (Kepulauan Sangkarrang district, Makassar City). Mostly in their late teens to 40s, primary-school educated, Makassarese/Bugis speakers using basic Bahasa Indonesia and WhatsApp on cheap Android phones. They dive 4-8 times a day, 15-25 days a month in calm season. Income is irregular and debt-linked to a punggawa.
**What they do now (and why it sucks):** They dive "until the sack is full" with no depth or time info, ascend straight up the hose, and hide tingling or joint pain to keep working. Folk remedies replace treatment.
**When they pay:** They don't. The trigger for *adoption* is the morning after a neighbour is carried off the boat. That's when the island's diver group wants something, and when the Puskesmas (community health centre) nurse is most willing to hand out loggers.

**Secondary user:** Punggawa boat owners/financiers and boat captains, plus the Puskesmas Barrang Lompo nurses and Universitas Hasanuddin (Unhas) marine-science and public-health researchers.
**Why they care:** A paralysed diver is a written-off loan to the punggawa and a lifetime caseload for the Puskesmas. Researchers get the first real-world dive-profile dataset from Spermonde.

**Who definitely won't use this:** Recreational scuba divers and dive resorts in Bunaken or Wakatobi, who already have computers and DAN insurance. Large licensed fishing fleets. Anyone expecting it to make compressor diving "safe". It reduces harm; it doesn't certify anything.

## Feature Set

### MVP — Week 1-3
- **Hose-clip depth logger:** A ~Rp 150,000 waterproof pressure-sensor tag (ESP32-C3 or nRF52 + MS5837 sensor, potted in epoxy) clips onto the hose 1 m from the regulator. It records depth every 2 s and syncs over BLE to the captain's phone back on deck.
- **Daily nitrogen tally ("Tabungan Nitrogen"):** A conservative Bühlmann ZHL-16C model with heavy gradient factors (GF 30/70) and an extra repetitive-day penalty. It turns the logged dives into a 🟢/🟡/🔴 bar with one rule a diver can't misread: "boleh 1 kali lagi, maks 15 m" (1 more dive allowed, max 15 m) or "STOP HARI INI" (stop for today).
- **Ascent stop prompt:** If the last dive went past 18 m, the captain's phone beeps and tells him to tug the hose signal for a 3-5 minute hang at 5 m. The logger confirms whether it happened.
- **"Kram?" symptom button:** A diver or captain taps the WhatsApp bot with a symptom (tingling, joint pain, weakness, breathing). The bot escalates instantly: breathe surface oxygen if the boat has it, lie flat, head to the chamber now, here's who to call. It also pings the Puskesmas nurse group.
- **Calm-streak warning:** Using Open-Meteo marine and wind data, the bot flags multi-day flat-water runs like this week's 0.08-0.34 m waves: "5 hari tenang berturut-turut — ambil 1 hari libur" (5 calm days in a row, take 1 day off).

### Version 2 — Month 2-3
- **Current-and-tide dive window:** Uses the 1.3 m tidal swing and current-speed forecast to suggest slack-water slots, so divers spend less time fighting current at depth.
- **Compressor intake checklist:** A photo-based check that the compressor intake points upwind of the boat engine exhaust (carbon-monoxide poisoning is the hookah diver's other killer). Logs filter changes.
- **Puskesmas dashboard:** An anonymised island-level dashboard of dive-days, red-zone days and symptom reports, plus the time from symptom to chamber.

### Power User / Pro Features
- **Researcher data export:** De-identified dive-profile datasets for Unhas and international DCS researchers, under a consent framework approved by an ethics board.
- **Punggawa fleet view:** One screen per financier showing which of "their" divers hit red-zone days. Paired with a voluntary "rest-day pledge" that NGOs can reward with fuel or compressor-filter subsidies.

## Technical Implementation

### Suggested Stack
**Chosen stack:** A potted BLE depth logger, plus a captain-side Android PWA (offline-first, syncs to IndexedDB, uploads when back in signal range near Makassar), plus a WhatsApp Business bot on a small Supabase backend. Divers already live on WhatsApp, captains will open exactly one app, and the boats lose signal 10+ km out.

### APIs & Data Sources
| API | Specific Endpoint | What It Returns | Refresh Rate | Auth | Cost |
|-----|------------------|-----------------|--------------|------|------|
| Open-Meteo Marine | `https://marine-api.open-meteo.com/v1/marine?latitude=-5.05&longitude=119.30&hourly=wave_height,swell_wave_height,ocean_current_velocity,sea_level_height_msl,sea_surface_temperature&timezone=Asia/Makassar` | Waves, current, sea level, SST | Hourly | none | free |
| Open-Meteo Forecast | `https://api.open-meteo.com/v1/forecast?latitude=-5.05&longitude=119.33&hourly=wind_speed_10m,wind_gusts_10m,precipitation&daily=wind_gusts_10m_max&timezone=Asia/Makassar` | Wind/gusts/rain for calm-streak and trip safety | Hourly | none | free |
| World Bank Open Data | `https://api.worldbank.org/v2/country/ID/indicator/ER.FSH.CAPT.MT?format=json` | Indonesia capture fisheries tonnage (context for grant reports) | Annual | none | free |
| OBIS | `https://api.obis.org/v3/occurrence?scientificname=Holothuria&geometry=POLYGON(...)` | Sea-cucumber occurrence records in Spermonde (researcher layer) | On demand | none | free |
| BMKG Maritime (v2) | `https://peta-maritim.bmkg.go.id/` public marine warnings | Official Indonesian wave warnings for Selat Makassar | 6-hourly | none (scrape) | free |

### Database Schema (key tables only)
```
divers: id (uuid), island (text), alias (text), whatsapp_hash (text), consent_level (int), punggawa_id (uuid)
loggers: id (text), diver_id (uuid), firmware (text), last_sync (timestamptz), battery_mv (int)
dives: id (uuid), logger_id (text), started_at (timestamptz), max_depth_m (numeric), bottom_time_s (int), ascent_rate_max_mpm (numeric), safety_stop_s (int)
daily_load: diver_id (uuid), date (date), tissue_state (jsonb), gf_peak (numeric), zone (text), consecutive_dive_days (int)
symptom_reports: id (uuid), diver_id (uuid), reported_at (timestamptz), symptoms (text[]), lat (numeric), lon (numeric), chamber_arrival_at (timestamptz)
sea_conditions: date (date), wave_max_m (numeric), gust_max_kmh (numeric), current_max_kmh (numeric), calm_streak_days (int)
```

### Key Technical Decisions
1. **Logger on the hose, not on the diver:** Divers lose wrist gear and won't wear anything that snags. A clip on the hose near the mouthpiece reads within ~1 m of the diver's depth, can't be "forgotten", and the boat captain owns charging it.
2. **Advice in one sentence, not a dive table:** Output is limited to "1 more dive, max X m" / "STOP today" / "hang 4 min at 5 m", with an ultra-conservative model and a repetitive-day penalty. The goal is to beat zero information, not to replace a computer. Every screen says it does not make compressor diving safe.

### Hardest Technical Challenge
Reliably potting a cheap pressure sensor so it survives 40 m, salt, sun, and being stepped on in a jolloro bilge, and keeps calibration for months. Mitigation: use the MS5837-30BA (rated 30 bar) behind a membrane and pot it in marine epoxy inside PVC pipe. Do an automatic zero at every surface interval (0 m ≈ boat deck). Pilot 20 units with Unhas engineering students before scaling, and keep a "manual tally" fallback: the captain taps depth estimates per dive if the logger dies.

## Monetization Strategy

> Note: Not every idea needs Stripe. Some are better as free tools, grant-funded, or sold B2G.

**Model chosen:** grant-funded, with B2G procurement through Dinas Kesehatan Kota Makassar and Dinas Kelautan dan Perikanan Sulawesi Selatan.

| Tier | Price | What's Included | Why They Pay This |
|------|-------|-----------------|-------------------|
| Free | $0 | WhatsApp bot, calm-streak warnings, symptom escalation, chamber directory, manual tally | Divers and captains never pay; any friction kills adoption |
| Puskesmas / District program | ~$2,500/yr per island cluster | Loggers (30 units), dashboard, nurse training, hardware replacement | Cheaper than one paralysed diver's lifetime care and lost income |
| Research data licence | ~$5,000/yr per institution | De-identified dive-profile and symptom dataset, ethics-approved | First in-water dataset of real hookah-diving profiles in Indonesia |

**Why someone pays:** The provincial health office and fisheries agency are already under pressure after each cluster of DCS cases in the Makassar press. A program with dive counts and "time-to-chamber" numbers is something they can show the governor.

**12-month revenue trajectory:**
- Month 3: 1 pilot grant (e.g. ~$15,000 from an ocean-health/fisheries-labour funder) covering 30 loggers on Barrang Lompo = ~$1,250/month equivalent
- Month 12: 3 island-cluster programs × $2,500 + 1 research licence × $5,000 = ~$12,500/yr (~$1,040/month) on top of renewal grants

**Alternative if SaaS doesn't work:** Fold it into existing fisheries-labour and ocean-health funding (e.g. ILO's fishing-sector work, Rare/Fish Forever-style coastal programs, Australian DFAT–Indonesia marine partnerships), or have a hardware sponsor (a compressor or outboard brand) donate loggers under a "Selamat di Selang" (safe on the hose) CSR banner.

## Marketing Strategy

**Exact communities to reach:**
- **Facebook "Info Pulau Barrang Lompo" and "Kepulauan Sangkarrang" community groups** (local island groups, typically a few thousand members each; verify current counts). This is where island news, funerals and boat accidents get posted first.
- **WhatsApp groups of the Kelompok Nelayan (fisher groups)** on each island, reached through the Kelurahan office and the Puskesmas Barrang Lompo nurse. These are the actual distribution channel.
- **Facebook "Nelayan Indonesia" and "Komunitas Nelayan Sulawesi Selatan"** groups (tens of thousands of members nationally; check counts at launch), for spreading to other compressor-diving hubs like Sumbawa, NTT, Madura and Wakatobi.
- **Unhas FIKP (Fakultas Ilmu Kelautan dan Perikanan) student and alumni networks**, the people who already run research trips to Spermonde.

**First 10 users and how you get them:**
Partner with the Puskesmas Barrang Lompo nurse and one respected ex-diver who uses a wheelchair; his story is the program's credibility. Spend two weeks on the island riding along on 3 jolloro boats. Give 10 divers on those boats free loggers, and let the captains see the 🟢/🟡/🔴 bar in real time on day one. The first 10 users are those divers. The first real buyer is their punggawa, once he sees the tally.

**The press angle:**
"They breathe through a garden hose at 30 metres — we logged 1,000 dives off Makassar and found the average diver blows past recreational no-decompression limits by Tuesday." Kompas, Tempo, Mongabay Indonesia, and ABC/Guardian Indonesia correspondents have all covered compressor diving before. Real dive-profile data would be new.

**Content / SEO play:**
Bahasa Indonesia explainer pages: "gejala penyakit dekompresi nelayan kompresor" (decompression-sickness symptoms in compressor fishers), "ruang hiperbarik terdekat Makassar" (nearest hyperbaric chamber in Makassar), "cara aman menyelam kompresor", plus an island-by-island chamber-distance map covering Sulawesi, NTB and NTT. Today nobody ranks for these searches with practical answers.

**Launch sequence:**
1. Before launch: get ethics approval with Unhas, build and pressure-test 20 loggers, and verify a 24/7 chamber contact (check the Makassar navy hospital hyperbaric unit's current operating status).
2. Launch day: hand out loggers to 3 boats at a Puskesmas session on Barrang Lompo, with the ex-diver ambassador speaking. Go live on the WhatsApp bot.
3. Week 1: daily debriefs with captains, tune the wording of the bot messages in Makassarese-inflected Indonesian, and publish the first anonymised "calm-week dive load" chart to the island Facebook group.

## Competitive Landscape

| Existing Solution | What They Do | Where They Fall Short | Why This Wins |
|-------------------|-------------|----------------------|---------------|
| Recreational dive computers (Shearwater, Suunto, cheap Chinese units) | Full decompression tracking | Rp 3-8M+, English menus, worn on the wrist, lost or sold within weeks | ~Rp 150k hose clip, owned by the boat, one-sentence advice in Bahasa |
| Academic DCS studies & NGO workshops | Prevalence surveys, training sessions | Nothing stays on the boat after the workshop | Lives on the boat every day and creates its own data |
| BMKG marine forecasts | Wave/wind warnings | Built to say when it's *unsafe to sail*, blind to dive load | Treats calm streaks as a risk signal |
| Folk practice (coconut water, dukun) | Cultural coping | Delays real treatment by days | Symptom button gets the diver toward a chamber at once |

**Moat:** The first real-world dataset of hookah dive profiles in Indonesia, plus trust built through the Puskesmas and an ex-diver ambassador. Once the island health system counts on SelangAman's numbers, no generic marine app can replace it.

## Risk Factors

1. **Regulatory / legitimacy:** Compressor diving is restricted under Indonesian fisheries rules, so a government partner may balk at "supporting" it. → **Mitigation:** Frame it strictly as harm reduction and health surveillance, like a Puskesmas program, never as dive "certification". Include a path toward exit for younger divers, such as aquaculture and seaweed training referrals.
2. **Adoption / power dynamics:** Punggawa financiers may pressure divers to ignore "STOP" signals. → **Mitigation:** Make the red-zone count visible to the Puskesmas, and tie NGO incentives (fuel, filter subsidies) to rest-day pledges. Never make punggawa access mandatory for the diver to use the bot.
3. **Liability / technical:** A diver follows a 🟢 and still gets bent, which damages trust. → **Mitigation:** Use an ultra-conservative model, state plainly that it's not a guarantee, put the symptom-escalation path front and centre, and have medical review from a hyperbaric physician before launch.

## Build Reality Check

| Phase | Realistic Timeline | What Exists at End |
|-------|-------------------|-------------------|
| Prototype | 6 weeks | 5 potted loggers pressure-tested to 40 m, captain PWA showing tally and zone, WhatsApp symptom bot |
| Beta | 10 weeks | 20-30 loggers on 5-8 Barrang Lompo boats, Puskesmas nurse group live, first 500+ logged dives |
| Launch | 20 weeks | Grant-funded program on 2-3 islands, dashboard for Puskesmas, first anonymised dataset delivered to Unhas |

**Solo founder feasibility:** Difficult. The software is simple, but the hardware, the ethics approval and on-island trust need a local partner (an Unhas researcher or Puskesmas lead) from day one.
**Biggest execution risk:** Staying on the island long enough. Programs like this die when the outsider leaves after the pilot and nobody local owns charging the loggers and answering the bot.

---
*Generated: 2026-11-12 | Industry: labor_work | Sub-industry: fishing_crew_safety | Geography: indonesia*
*APIs queried for real data: Open-Meteo Marine API, Open-Meteo Forecast API, World Bank Open Data API, OBIS Occurrence API*

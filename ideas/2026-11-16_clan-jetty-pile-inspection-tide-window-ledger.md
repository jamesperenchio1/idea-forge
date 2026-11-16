---
id: tiang-laut-clan-jetties-2026-11-16
title: TiangLaut — Spring-Low Pile Inspection Clock & Shared Plank-and-Pile Repair Ledger for Penang's Clan Jetty Households, Weld Quay, George Town
created: 2026-11-16T08:00:00+07:00
industry: real_estate_urban
sub_industry: stilt_house_pile_maintenance
geography: malaysia
apis_used: Open-Meteo Marine API (sea_level_height_msl, wave_height), Open-Meteo Forecast API, Open-Meteo Historical Archive API, ExchangeRate-API (open.er-api.com), World Bank Open Data API (NY.GDP.PCAP.CD), Wikipedia REST API; OpenStreetMap Overpass API attempted (both mirrors failed, 406/empty)
monetization_model: grant-funded
target_user: Older Hokkien-speaking homeowners and their adult children in the seven Clan Jetties of Weld Quay, George Town, Penang (Chew, Lim, Tan, Lee, Yeoh, Ong and Mixed Clan). Their families have lived for generations in timber houses on piles over the tidal mudflat. Many households are retirees or run small stalls on the jetty (souvenirs, drinks, snacks for Chew Jetty's tourist foot traffic), earning roughly RM1,500–4,000 a month. Children living in Butterworth, KL or Singapore pay for repairs. Today a resident finds out a pile has rotted when the floor sags or a plank gives way under a tourist. Repairs are arranged by phoning a "tukang" (carpenter) and agreeing a price, with no record of which piles were replaced when or with what timber. Shared walkway planks are fixed when the clan association committee gets round to it.
concept_hash: tidal-stilt-house-pile-rot-spring-low-inspection-clock-and-shared-plank-repair-ledger+weld-quay-clan-jetties-chew-lim-tan-lee-yeoh-george-town-penang-malaysia+jetty-homeowner-families-clan-association-walkway-committees-and-tukang-kayu-carpenters
---

# TiangLaut — Spring-Low Pile Inspection Clock & Shared Plank-and-Pile Repair Ledger for Penang's Clan Jetty Households

## The Hook
- Part of George Town's UNESCO heritage zone stands on wooden legs in the sea. The Clan Jetties are seven timber villages on piles, each owned by one Chinese clan. Whether a house is safe depends on piles that you can only see properly for an hour or two at the lowest tides of the month. Nobody tells residents when that hour is.
- Open-Meteo's marine model for the Penang channel puts this month's lowest water at **−0.11 m at 17:00 on Sunday 22 November**, the bottom of a spring-tide cycle that deepens from 0.16 m (Wed 18 Nov) to −0.03 m (Sat 21) and then −0.11 m. That is the time to walk under the house with a torch and a screwdriver. A week later the low-water window will be gone.
- TiangLaut is a free Hokkien/Mandarin/Malay/English WhatsApp bot and mobile web ledger. It sends a "go look at your piles" alert before each spring low. It logs a photo and a rot score for every pile and plank. It gives each clan committee a map of which shared walkway planks are failing before a tourist steps through one.

## Real Data Found
> Live data queried from real APIs during idea generation — not placeholders.

| Source | Data Point | Value | Queried |
|--------|-----------|-------|---------|
| Open-Meteo Marine API (requested 5.412N, 100.345E; nearest sea cell returned 5.292N, 100.375E — Penang South Channel) | Daily min sea level (MSL-referenced, modelled) and time, 16–22 Nov 2026 | 0.08 m @11:00 / 0.13 @12:00 / 0.16 @13:00 / 0.12 @14:00 / 0.04 @15:00 / **−0.03 @16:00 / −0.11 @17:00** | 2026-11-16 |
| Open-Meteo Marine API (same cell) | Daily max sea level and time, 16–22 Nov | 1.13 m @03:00 / 1.02 @04:00 / 0.85 @21:00 / 0.98 @22:00 / 1.14 @22:00 / 1.33 @23:00 / **1.42 m @23:00** | 2026-11-16 |
| Open-Meteo Marine API | Daily tidal range, 16–22 Nov | 1.05 → 0.69 (neap, 18 Nov) → **1.53 m** (spring, 22 Nov) | 2026-11-16 |
| Open-Meteo Marine API | Max significant wave height, 16–22 Nov | 0.40 m (today) falling to 0.12 m by 22 Nov | 2026-11-16 |
| Open-Meteo Forecast API (5.412N, 100.345E) | Daily rain, 16–22 Nov | 20.1 / 20.1 / 11.7 / 9.7 / 14.1 / 21.9 / 13.2 mm; max rain probability 91–100% every day | 2026-11-16 |
| Open-Meteo Forecast API | Mean relative humidity, 16–22 Nov | 88–92% | 2026-11-16 |
| Open-Meteo Historical Archive API | October 2026 rainfall, George Town | **387.8 mm total; rain ≥1 mm on all 31 days**; wettest day 56.7 mm | 2026-11-16 |
| ExchangeRate-API | 1 MYR | 8.2924 THB / 0.2448 USD / 0.3152 SGD / 1.6433 CNY (update 15 Nov 2026 00:02 UTC) | 2026-11-16 |
| World Bank Open Data (NY.GDP.PCAP.CD) | Malaysia GDP per capita | US$13,124.56 (2025), up from US$11,874.43 (2024) | 2026-11-16 |
| Wikipedia REST API | Clan Jetties summary | "seven wooden villages lining the coastal road of Weld Quay, each owned by residents of a specific Chinese clan – Ong, Lim, Chew, Tan, Lee, Mixed Clan and Yeoh jetties" | 2026-11-16 |
| OpenStreetMap Overpass API | Jetty building footprints / count | **Not retrieved.** overpass-api.de returned empty bodies and overpass.kumi.systems returned HTTP 406, so footprints must be pulled at build time | 2026-11-16 |

The tide numbers are what matter here. This week runs from a neap tide on Wednesday (range only 0.69 m, low water stuck at +0.16 m) to a spring tide on Sunday (range 1.53 m, low water at −0.11 m). The afternoon low moves about an hour later each day, from 11:00 today to 17:00 on Sunday. So the best inspection window this cycle falls on a weekend afternoon in daylight, when the children who pay for repairs are likely visiting. A rotten pile is worst at the mud line and the splash zone, and on a neap day that section stays underwater and you can't see it. Caveat: this is Open-Meteo's global ocean model at a grid cell about 13 km south of Weld Quay, not a harbour tide gauge. The absolute heights will be off by tens of centimetres. The timing and the spring/neap pattern are what the app needs, and the MVP would calibrate both against residents' own marks on a pile ("water reached the second bolt").

The weather explains why timber here fails quickly. In October it rained every single day (387.8 mm), and this week's forecast is 88–92% humidity with 10–22 mm of rain a day. Planks and joists above the water never dry out, and piles are wet twice a day at every high tide. Fungal decay and marine borers both thrive in these conditions. The exchange rates show who pays: a single replaced hardwood pile is a few hundred ringgit for a family, and that is a real cost for a retired couple in a country with ~US$13k GDP per capita, even if the son working in Singapore covers it at 0.315 SGD per ringgit. That son needs a dated photo before he'll transfer money.

## The Problem

Uncle Chew is 71 and lives at the seaward end of Chew Jetty. On Saturday afternoons a stream of tourists walks past his front door looking for the sunset photo spot. In September his kitchen floor began to slope. When he finally climbed down at low tide, two of the four piles under the back room had rotted to the thickness of a wrist at the mud line. They had been fine "a few years ago," but he can't say when anyone last checked. A tukang came and replaced them for a cash price agreed on the phone, and nothing was written down. Next door, the Lims have the same rot coming and don't know it. The best day this month to see it is Sunday 22 November at about 5pm, when the water drops to its lowest point of the cycle (−0.11 m modelled). On most other afternoons the mud line is underwater.

Nobody has solved this because nobody owns the problem as a whole. Each household owns its house and piles. The clan association owns or manages the shared walkway. Heritage-zone rules govern what the structures can look like, and the tourists who wear out the planks use the jetty without paying for its upkeep. Tide tables do exist in the Malaysian national tide tables and in fishing apps. They give a height and a time, but they don't tell an old resident that this is the one good afternoon for checking piles this fortnight. There is also no shared record. Which piles were replaced in 2019? Was it chengal or a cheaper wood? Which walkway plank has an "X" painted on it by someone who has since left? All of that is held in a few people's memories and in WhatsApp photos nobody can find again.

Without a record, failures arrive one at a time and as emergencies. A plank breaks under a visitor, a back room drops, or a house gets so expensive to repair that the family sells or leaves it. That empties the jetty that makes it a living heritage site rather than a stage set. Each emergency repair also costs more than a planned one done on a good tide with the timber ordered in advance.

## Who Uses This

**Primary user:** A jetty homeowner family. Usually an older couple who live there and one adult child (aged 30–50, smartphone-native, often working off-island) who pays for and organises repairs. The couple speak Hokkien and some Mandarin or Malay, and use WhatsApp for family and clan news. They do not read tide tables.
**What they do now (and why it sucks):** They wait until something sags or snaps, then phone a tukang. There is no record, no comparison quote and no idea of which other piles are close to failing.
**When they pay:** They don't pay for the app (it is free). The trigger is the first time a son or daughter overseas gets a WhatsApp photo of a broken pile with a dated rot score next to last year's photo of the same pile, and transfers the repair money that night without arguing.

**Secondary user:** The walkway or maintenance committee of each clan jetty association (e.g. the Chew Jetty committee, which deals with the heaviest tourist traffic), plus the 3–6 local tukang kayu (timber carpenters) who do most pile and plank work across the jetties.
**Why they care:** The committee can show heritage bodies and funders a plank-by-plank condition map when it asks for a grant. The carpenters get a queue of planned jobs timed to good tides instead of emergency calls.

**Who definitely won't use this:** Tourists, developers and property investors (the jetties aren't a normal property market), and owners of concrete-piled houses who think they have nothing to inspect. Concrete piles also spall and their steel rusts, so they could be a v2 audience, but not a launch one.

## Feature Set

### MVP — Week 1-3
- **Spring-Low Clock:** A twice-monthly WhatsApp alert ("Sunday 22 Nov, 16:30–17:45 — lowest water this month, go check your piles"). It takes the daylight windows from Open-Meteo Marine sea level, adjusts them with residents' own water-mark readings, and flags whether the window falls on a weekend or after work.
- **Pile & Plank Card:** Each household gets a simple numbered sketch of its piles (A1, A2, B1…), drawn once by a volunteer. Under each pile, the resident taps a 0–3 rot score ("knock test sounds hollow?", "screwdriver goes in >1 cm?", "borer holes?") and takes one photo. Everything is stored with the date and the tide height.
- **Family Share Link:** One tap sends the child off-island a before/after comparison of any pile, with its score history and the tukang's quote attached.
- **Walkway Ledger (committee view):** A map of the jetty's shared walkway, one row per plank section. Anyone can flag a soft plank with a photo. The committee sees a red/amber/green strip and a list of the oldest flags still open.
- **Repair Receipt:** When a tukang replaces a pile or plank, the household records the timber type, size, price in RM and date. This builds the jetty's first ever record of materials and prices.

### Version 2 — Month 2-3
- **Wet-Season Rot Pressure Index:** Monthly rain days plus mean humidity from Open-Meteo give a running "timber never dried" score. It prompts more frequent checks after months like October 2026 (rain on all 31 days).
- **Tukang Booking Board:** Carpenters post which spring-low windows they have free. Households on the same jetty can group jobs so timber is delivered once.
- **Fair-Price Reference:** Anonymised medians of recorded repair prices per pile and per metre of plank, by timber type, so families know whether a quote is reasonable.

### Power User / Pro Features
- **Grant Pack Export:** A one-click PDF for a clan association that lists every shared-structure defect with photos, dates and a cost estimate, ready for applications to heritage conservation funders and state agencies.
- **Calibration Mode:** Volunteers log real water heights against a painted pile gauge at Chew Jetty over several cycles. The app fits a local offset and phase correction to the model, so the clock's times become accurate to minutes for the Weld Quay shoreline.

## Technical Implementation

### Suggested Stack
Users are elderly, multilingual and already on WhatsApp, and the content is photos tied to fixed physical objects (numbered piles). The product should therefore be a chat interface over a simple data store, with a light web view for committees. It should not be a native app.

**Chosen stack:** A WhatsApp Business Cloud API bot (Hokkien-friendly voice-note prompts with simplified Chinese, Malay and English text) plus a small mobile web app (SvelteKit on Cloudflare Pages) for the pile sketch and committee map, backed by Supabase (Postgres + storage for photos). It's cheap, works on any phone, and nothing has to be installed.

### APIs & Data Sources
| API | Specific Endpoint | What It Returns | Refresh Rate | Auth | Cost |
|-----|------------------|-----------------|--------------|------|------|
| Open-Meteo Marine | `https://marine-api.open-meteo.com/v1/marine?latitude=5.412&longitude=100.345&hourly=sea_level_height_msl,wave_height&timezone=Asia/Kuala_Lumpur&forecast_days=7` | Hourly modelled sea level (m, MSL) and wave height — used for low-water windows and spring/neap phase | Daily | none | free |
| Open-Meteo Forecast | `https://api.open-meteo.com/v1/forecast?latitude=5.412&longitude=100.345&daily=precipitation_sum,precipitation_probability_max,relative_humidity_2m_mean,wind_gusts_10m_max&timezone=Asia/Kuala_Lumpur` | Rain/humidity/gusts to say whether the inspection window will actually be dry and safe underfoot | Hourly | none | free |
| Open-Meteo Historical Archive | `https://archive-api.open-meteo.com/v1/archive?latitude=5.412&longitude=100.345&start_date={d}&end_date={d}&daily=precipitation_sum` | Rain-day counts for the Rot Pressure Index | Monthly | none | free |
| OpenStreetMap Overpass | `https://overpass-api.de/api/interpreter?data=[out:json];way["building"](5.4105,100.3390,5.4150,100.3425);out geom;` | Building/jetty footprints as a base for walkway maps (to be verified and supplemented by volunteer walks) | One-off | none | free |
| ExchangeRate-API | `https://open.er-api.com/v6/latest/MYR` | Converts repair quotes for SGD/USD-earning family members | Daily | none | free |
| Penang Tide Tables (Malaysian national tide tables, Weld Quay / Penang port) | Published annual PDF tables, transcribed once a year | Official predicted high/low times and heights for calibration cross-checks | Yearly | none | free |

### Database Schema (key tables only)
```
jetties: id (uuid), clan_name (text), osm_ref (text), committee_contact (text), walkway_geojson (jsonb)
households: id (uuid), jetty_id (fk), house_no (text), languages (text[]), family_contacts (jsonb), consent_share (bool)
piles: id (uuid), household_id (fk), label (text, e.g. 'B2'), material (text), installed_on (date, nullable), sketch_x (int), sketch_y (int)
inspections: id (uuid), pile_id (fk), inspected_at (timestamptz), modelled_sea_level_m (numeric), rot_score (int 0-3), borer_holes (bool), photo_url (text), inspector (text)
walkway_sections: id (uuid), jetty_id (fk), seq_no (int), status (text: green/amber/red), last_flag_at (timestamptz)
repairs: id (uuid), target_type (text: pile/plank/joist), target_id (uuid), tukang_name (text), timber_type (text), qty (numeric), price_myr (numeric), done_on (date)
tide_windows: id (uuid), date (date), low_time (time), low_m (numeric), range_m (numeric), daylight (bool), calibrated_offset_m (numeric)
```

### Key Technical Decisions
1. **Model sea level + resident calibration rather than an official tide API:** No free, machine-readable Penang tide-gauge API exists. Open-Meteo gives free hourly sea-level timing everywhere, and a painted gauge read by residents fixes the local offset. Once the app is live, the residents' readings become a dataset of their own.
2. **Numbered pile sketch, not GPS:** Phone GPS can't tell apart piles 40 cm apart under a house. A hand-drawn grid labelled by a volunteer on the first visit is more accurate and is easy for an elderly owner to follow ("B2 is the one by the kitchen stairs").

### Hardest Technical Challenge
Getting the tide-window times right at Weld Quay. The nearest model cell is ~13 km away in the South Channel, and the shallow mudflat and harbour shape change both the height and the timing of the tide. If the app sends grandpa under the house at 17:00 and the water is still knee-deep, it loses his trust permanently. **Mitigation:** Ship with wide windows (±45 min) and the phrase "lowest of the fortnight", not exact heights. Transcribe the official annual tide tables for Penang as a cross-check. Run a 6-week calibration with two volunteers photographing a painted pile gauge at Chew Jetty at each low tide before sending any alerts.

## Monetization Strategy

> Note: Not every idea needs Stripe. Some are better as free tools, grant-funded, or sold B2G.

**Model chosen:** grant-funded (heritage conservation / community resilience), with an optional committee-level service fee.

| Tier | Price | What's Included | Why They Pay This |
|------|-------|-----------------|-------------------|
| Free | $0 | Spring-Low Clock, Pile & Plank Card, Family Share Link, Repair Receipts for every household | Households will never pay; getting them all on board is what makes the walkway map and price data worth anything |
| Committee | RM50/mo (~US$12) per clan association | Walkway Ledger map, Grant Pack Export, tukang booking board, annual condition report | One avoided tourist injury on a broken plank, or one successful conservation grant, covers years of fees |
| Heritage Partner | RM1,500/yr (~US$367) | All-jetty condition dashboard, anonymised repair-price dataset, calibrated tide records for Weld Quay | Heritage and urban-conservation bodies need evidence for funding decisions and currently have no structured condition data |

**Why someone pays:** A committee member has to stand in front of the association's annual meeting, or a heritage funder, and explain why the walkway money is needed now. A photo-backed map of 14 red plank sections, with dates, wins that argument. "Everyone knows it's bad" does not.

**12-month revenue trajectory:**
- Month 3: ~2 committees × US$12 = US$24/month, plus a seed grant (target US$5,000–15,000)
- Month 12: ~6 committees × US$12 + 1 heritage partner (~US$31/mo) = ~US$103/month. Recurring revenue is trivial, and grant funding is the real model.

**Alternative if SaaS doesn't work:** Run it as a university community-engagement project (built-environment or architecture-conservation students doing the initial pile sketches as fieldwork), funded by a small heritage or CSR grant. The same template could later go to other Southeast Asian water villages such as Kampong Ayer in Brunei or stilt settlements in Sabah.

## Marketing Strategy

**Exact communities to reach:**
- The clan jetty associations themselves, through each jetty's committee and residents' WhatsApp groups (seven jetties; groups are typically tens to a few hundred members each, unverified estimate). This is the only channel that matters at launch.
- "Penang Heritage Trust" and George Town heritage community Facebook pages and groups (est. several thousand to tens of thousands of followers; check current counts before outreach), where conservation-minded Penangites already discuss Weld Quay.
- "Penang Foodie"/"Penang Kini"-style local Facebook pages and r/penang (est. ~10–20k members, unverified), for the press-angle story and recruiting volunteers rather than users.

**First 10 users and how you get them:**
Go to the jetties in person, starting with whichever committee is most open to it, probably a smaller and less touristy jetty such as Lee or Yeoh where residents are less tired of visitors. Offer to sketch and number one household's piles for free on the Sunday 22 November spring low. Bring a Hokkien-speaking volunteer and a torch. The first ten users are the committee secretary plus nine neighbours they personally ask on the jetty WhatsApp group after seeing the first finished card. Each card also brings in one adult child off-island, who becomes the most active user.

**The press angle:**
"George Town's floating heritage gets checked for one hour a fortnight: we mapped every rotting pile under the Clan Jetties." A secondary story: "It rained 31 days out of 31 in October. Here's what that does to a 100-year-old timber village standing in the sea."

**Content / SEO play:**
A public, consent-based "State of the Jetties" page per clan jetty showing walkway condition, how many sections were repaired this year, and the next spring-low window. It also serves as a "Clan Jetties tide times" page, which tourists search for ("best time to visit Chew Jetty sunset low tide") and which can carry a donation link to the walkway fund.

**Launch sequence:**
1. Before launch: run 6 weeks of tide-gauge calibration at one jetty, and get written consent and buy-in from one committee.
2. Launch day: hold a pile-check afternoon on a spring low. Volunteers sketch 10 households, and the bot sends each family's first card.
3. Week 1: give the committee its first Walkway Ledger printout at a residents' gathering, then offer the same to the other six jetties.

## Competitive Landscape

| Existing Solution | What They Do | Where They Fall Short | Why This Wins |
|-------------------|-------------|----------------------|---------------|
| Malaysian national tide tables / fishing tide apps | Predicted high/low times and heights | Raw numbers aimed at mariners and anglers; no "inspect now" framing, no daylight/weekend filter, no link to a house | Turns the tide into an action on the household's own calendar |
| Heritage condition surveys by consultants / university studies | One-off detailed building surveys | Done every few years, end up as PDFs, never updated by residents | A continuous record kept by the people living there |
| WhatsApp photos + memory | Ad-hoc sharing of damage photos | Unsearchable, undated against tide, lost when phones change | Same behaviour (send a photo) but stored per pile |
| Generic property-maintenance apps | Task lists for landlords | Assume land, walls and contractors with invoices; nothing for piles, tides or shared clan walkways | Built around the jetty's real structure and owners |

**Moat:** A dated, photo-backed condition and repair-price history for every pile and plank across the seven jetties. No consultant can recreate it after the fact, and it is held under clan association trust and consent, which a newcomer would have to earn from scratch.

## Risk Factors

1. **Adoption / Trust:** Residents tired of tourists and outsiders may see "someone photographing under our houses" as a threat, e.g. that it will be used to condemn houses or push redevelopment. → **Mitigation:** The data is owned by the household and the clan committee, nothing is published without consent, the public page only shows shared-walkway data, and the project only starts where a committee invites it.
2. **Data:** Modelled sea level gives wrong window times at Weld Quay. → **Mitigation:** Calibrate against a painted gauge and the official tide tables, use wide windows, and phrase alerts as "lowest this fortnight" rather than as exact heights.
3. **Safety / Liability:** An elderly resident slips on mud or slimy joists while inspecting because the app told them to. → **Mitigation:** Alerts recommend inspecting from the walkway edge with a torch, or asking the tukang or child to go under. Include a "never go under alone" line, and always show the rain forecast for the window.

## Build Reality Check

| Phase | Realistic Timeline | What Exists at End |
|-------|-------------------|-------------------|
| Prototype | 3 weeks | WhatsApp bot sends spring-low alerts; a volunteer can create a pile card and log a scored photo |
| Beta | 8 weeks (incl. 6 weeks tide calibration) | 10–20 households on one jetty with first inspection records; committee sees a walkway strip map |
| Launch | 16 weeks | 2–3 jetties live, first Grant Pack submitted, calibrated Weld Quay tide windows |

**Solo founder feasibility:** Difficult. The code is a weekend-scale job, but it only works with a Hokkien-speaking, trusted local partner who turns up at low tide in person.
**Biggest execution risk:** Not getting a clan committee to back it. Without one invitation, no household will let a stranger number the piles under their house.

---
*Generated: 2026-11-16 | Industry: real_estate_urban | Sub-industry: stilt_house_pile_maintenance | Geography: malaysia*
*APIs queried for real data: Open-Meteo Marine API, Open-Meteo Forecast API, Open-Meteo Historical Archive API, ExchangeRate-API, World Bank Open Data API, Wikipedia REST API (OpenStreetMap Overpass attempted, failed)*

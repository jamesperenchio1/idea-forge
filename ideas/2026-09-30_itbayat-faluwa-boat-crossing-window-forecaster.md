---
id: faluwago-itbayat-2026-09-30
title: FaluwaGo — Itbayat–Basco Faluwa Crossing-Window Forecaster for Ivatan Islanders Timing Hospital, Cargo and School Trips Before the Amihan Closes the Channel
created: 2026-09-30T08:00:09+07:00
industry: ocean_maritime
sub_industry: maritime_routing
geography: philippines
apis_used: Open-Meteo Marine API, Open-Meteo Forecast API, OpenStreetMap Overpass API, ExchangeRate-API (open.er-api.com), World Bank Open Data
monetization_model: grant-funded
target_user: Residents of Itbayat, Batanes (population roughly 3,000, the northernmost inhabited municipality of the Philippines with a regular population) who depend on open-deck wooden faluwa boats for the ~33 km crossing from Mauyen/Chinapoliran/Valanga ports to Basco port. The core user is an Ivatan mother or grandmother in her 40s-60s who runs a sari-sari store or a garlic/ube/cattle smallholding, earns well under ₱20,000/month, and has to decide which day to take a sick parent to Batanes General Hospital, send a child to a board exam in Basco, or ship a cow or sacks of garlic. From October onward the northeast monsoon (amihan) can shut the crossing for days or weeks, so she has to judge in advance whether a calm day will come back soon or whether this one is the last for a while. Today that judgement comes from radio, word of mouth at the port, and the boat captain's gut.
concept_hash: faluwa-crossing-window-go-no-go-and-amihan-closure-forecaster+itbayat-basco-batanes-philippines+ivatan-islanders-and-faluwa-captains
---

# FaluwaGo — Itbayat–Basco Faluwa Crossing-Window Forecaster for Ivatan Islanders

## The Hook
- Itbayat is roughly 3,000 people on a raised coral plateau with no airport runway that works reliably in bad weather. The only other way out is a 3-4 hour ride on an open wooden faluwa across ~33 km of open sea to Basco. In the amihan season that sea regularly stays too rough for weeks. At the model point mid-channel, significant wave height hit 1.5 m or more on **84 of 92 days** between October and December 2025, including a **76-day unbroken run**. FaluwaGo answers one question: "Is there a crossing window this week, and if I skip it, when is the next one?"
- Today's forecast shows the pattern exactly. Wind swings from westerly (266°) to northeasterly (28°) on 1 October, then there are three calm days with daily maximum wave height of 0.50-0.66 m. By 6 October, waves reach **2.4 m** with **36 kn gusts**. If a family on Itbayat plans the hospital trip for "next week", the patient could be stuck on the island until November. FaluwaGo tells them to go on Thursday.
- Nobody sells this, and nobody should have to buy it. It's a grant- and LGU-funded public-safety tool. A few paying users (the cargo consolidators and the three or four Batanes tour outfits that sell Itbayat day trips) cover SMS costs.

## Real Data Found
> Live data queried from real APIs during idea generation — not placeholders.

| Source | Data Point | Value | Queried |
|--------|-----------|-------|---------|
| Open-Meteo Marine API | Mid-channel Itbayat–Batan grid point (20.625N, 121.875E): daily max significant wave height, 29 Sep – 6 Oct 2026 | 0.96 / 0.78 / 0.52 / 0.50 / 0.66 / 0.94 / 1.16 / **2.40 m** | 2026-09-30 |
| Open-Meteo Marine API | Same point: daily max swell height and swell period | 0.42 m @ 8.5 s (1 Oct) → **1.54 m @ 8.4 s** (6 Oct) | 2026-09-30 |
| Open-Meteo Marine API | Same point, hourly today (30 Sep, Manila time): significant wave height 00:00 → 21:00 | 0.78 m → 0.52 m, wind-wave component 0.0 m all day (pure swell) | 2026-09-30 |
| Open-Meteo Forecast API | Itbayat (20.73N, 121.84E): daily max wind / max gust / dominant direction | 30 Sep: 5.3 kn / 13.6 kn / 282°; 1 Oct: 4.6 / 11.7 / **28°**; 4 Oct: 10.2 / 19.0 / 54°; 6 Oct: **17.7 / 36.3 kn / 38°**, 13.8 mm rain | 2026-09-30 |
| Open-Meteo Marine API (history) | Same mid-channel point, 1 Oct – 31 Dec 2025: days with daily max significant wave height ≥1.5 m / ≥2.5 m / season max / longest consecutive ≥1.5 m run | **84 / 49 of 92 days**, max **5.44 m**, longest run **76 days** | 2026-09-30 |
| OpenStreetMap Overpass API | Mapped ports and hospitals in Batanes (bbox 20.2–21.2N, 121.7–122.1E) | Itbayat ports: Mauyen (20.699, 121.797), Valanga (20.770, 121.816), Chinapoliran (20.781, 121.820); Basco Port (20.447, 121.967); **Itbayat District Hospital** (20.787, 121.840); **Batanes General Hospital** (20.450, 121.970). Straight-line Mauyen → Basco ≈ 33 km | 2026-09-30 |
| ExchangeRate-API | PHP → USD / THB / TWD | 1 PHP = 0.015975 USD (≈ ₱62.6/USD), 0.5367 THB, 0.5086 TWD (updated 00:02 UTC) | 2026-09-30 |
| World Bank Open Data | Philippines hospital beds per 1,000 people (SH.MED.BEDS.ZS) | 0.97 (2021), 0.99 (2020), 0.98 (2019) | 2026-09-30 |
| World Bank Open Data | Philippines poverty headcount at national poverty lines (SI.POV.NAHC) | 15.5% (2023), 18.1% (2021) | 2026-09-30 |

The history is the most striking result. At the channel grid point there were only **8 days** in the whole of October–December 2025 when the daily peak wave height stayed below 1.5 m. **76 of those rough days came in a single unbroken run.** In practice, that means that once the amihan fully sets in, the crossing is not "sometimes rough". It is shut for most of the season, with rare calm days that people have to catch. An open faluwa carrying passengers, cattle and cargo does not want to be out in 2-3 m of short-period northeast swell. So the critical skill is recognising the last good window before a long closure, and today's forecast shows one: flat 0.5 m seas from 1 to 3 October, then a jump to 2.4 m with 36 kn gusts on 6 October. The wind direction confirms it. It swings from 282° (westerly, habagat remnant) today to 28-55° (northeasterly, amihan) from tomorrow onward.

The health numbers explain why the timing matters. Itbayat has a small district hospital, but specialist care, surgery and most diagnostics are in Basco, and the national bed ratio is under 1 per 1,000 people. Missing a window doesn't mean a delay of a day. It can mean weeks, and then an emergency medevac request to the Coast Guard or a hoped-for flight on the tiny Itbayat airstrip, both scarce and weather-dependent. The poverty line (15.5% nationally) matters too: for a household earning a few hundred pesos a day, being stranded in Basco for 10 days on lodging and food when the channel closes behind them is a financial shock of its own.

## The Problem

It's the first week of October on Itbayat. Manang Rosa's father has a hernia that the district hospital says needs surgery in Basco. The faluwa captain at Mauyen port says "maybe Saturday". The radio says a "gale warning may be raised over the northern seaboard". Her cousin in Basco says the sea there looks calm. So she waits for Saturday. By Saturday the amihan surge has arrived, the Coast Guard has suspended small-boat trips, and the forecast data shows 2.4 m waves on 6 October. Her father's hernia becomes an emergency 11 days later, on a day when neither a faluwa nor a plane can cross. The calm days she didn't know were the last ones were 1-3 October.

The problem exists because every existing information source answers the wrong question. PAGASA's gale warnings and the Coast Guard's trip suspensions say whether it is legal and safe to cross today or tomorrow. National weather apps show conditions over Basco, not the open channel. Ports have no wave buoy of their own. Captains have deep, real, hard-won knowledge, but it's local, spoken, and focused on the next 24 hours. Nobody tells an islander "the next 72 hours are the last flat seas you're likely to get for roughly two weeks", because nobody combines the 7-16 day marine forecast with that exact channel's history of how long closures last. Families plan hospital trips, board exams, cargo runs, and even funerals and fiestas around guesses.

If nothing changes, the pattern repeats every amihan season. People leave for Basco too early (and pay for weeks of lodging) or too late (and get stuck). Elderly patients show up at the hospital sicker than they needed to be. Cargo such as garlic, ube and cattle, which island incomes depend on, misses buyers. Worst of all, pressure builds on captains to run marginal days because a desperate passenger is waiting. That is how small-boat accidents in the Philippines happen, and the northern Batanes channels are among the most dangerous in the country.

## Who Uses This

**Primary user:** Manang Rosa, 54, runs a sari-sari store near the Itbayat poblacion and keeps a few head of cattle. She has an old Android phone, uses Facebook Lite and Messenger, and has patchy 3G/4G that works near the town centre and drops out at the ports. She plans one or two "must-go" Basco trips a year for her parents' check-ups and a child's exams, and ships a cow roughly once a year.
**What they do now (and why it sucks):** She asks the captains at the port and relatives in Basco, listens to the radio, then guesses. She can't tell a one-day blip from a three-week closure until it's already happening.
**When they pay:** She never pays. The municipality or a grant pays for her. The trigger that gets her to use it is the first time a neighbour says "FaluwaGo said go Thursday or wait two weeks", and they were right.

**Secondary user:** Faluwa captains and boat-owner associations on Itbayat, cargo consolidators who buy cattle and garlic for sale in Basco and on to Luzon, and the handful of Basco tour operators who sell Itbayat day trips and overnight tours to visitors.
**Why they care:** Captains get an objective, shareable reason to say "not today, Thursday is better", which takes the pressure off them. Consolidators and tour operators need to pre-sell and confirm dates days in advance, and a cancelled Itbayat tour means a refund plus a stranded tourist.

**Who definitely won't use this:** Tourists staying only on Batan who never try to reach Itbayat. Large RoRo or cargo-vessel operators, who have their own marine-routing services. Anyone looking for a generic weather app.

## Feature Set

### MVP — Week 1-3
- **Crossing Window Card (Tagalog/Ivatan/English):** One screen and one SMS each morning with a GO / MARGINAL / NO-GO rating for each of the next 7 days, based on daily maximum wave height, swell period and gusts at the channel grid point. Thresholds are set with local captains, not invented by the app.
- **"Last window" warning:** When a run of GO days is followed by a forecast NO-GO spell, the card says so directly: "Calm Thu–Sat. After that: rough from Tue, no calm day forecast for at least 7 days. If you must go to Basco, go before Sunday."
- **Closure-length outlook from history:** For the current month, shows how long rough spells have typically lasted at this exact point (e.g. "Oct–Dec 2025: 84 of 92 days ≥1.5 m; longest run 76 days"). Families can then judge the risk of waiting.
- **SMS-first delivery:** A daily 160-character SMS to subscribed numbers via a Philippine SMS gateway, plus a Facebook Page post. There's no app to install, and it works at the ports where data connections drop out.
- **Printable port board:** A PDF sized for a bulletin board at Mauyen and Basco ports and at the municipal hall, auto-generated each morning for barangay staff to print.

### Version 2 — Month 2-3
- **Captain check-in:** Captains send one SMS keyword ("SAIL MAUYEN 0600" / "NOSAIL") and the board shows what actually happened. Over time this calibrates the model against real sailing decisions.
- **Medical-priority list:** A voluntary list at the Rural Health Unit of patients who need to reach Basco. When a "last window" alert fires, the RHU nurse gets a prompt to contact them first.
- **Cargo & cattle slot board:** Consolidators post which window they're shipping in, and smallholders reserve space by SMS.

### Power User / Pro Features
- **Tour-operator API & widget:** Basco tour operators embed the 7-day Itbayat crossing rating on their booking pages and get automatic reschedule alerts.
- **MDRRMO dashboard:** The municipal and provincial disaster risk-reduction offices see every rough spell, the medical list, and captain check-ins in one view, and can export a season report to support funding requests.

## Technical Implementation

### Suggested Stack
**Chosen stack:** A Cloudflare Worker on a cron trigger, a tiny D1 database, an SMS gateway (Semaphore or a similar Philippine bulk-SMS provider) and a static, ultra-light HTML page (<50 KB) plus a Facebook Page auto-post. Users are on patchy mobile signal with basic Android phones, so SMS and a printed board reach more people than any app ever could. The backend only needs to make one forecast call per day.

### APIs & Data Sources
| API | Specific Endpoint | What It Returns | Refresh Rate | Auth | Cost |
|-----|------------------|-----------------|--------------|------|------|
| Open-Meteo Marine API | `https://marine-api.open-meteo.com/v1/marine?latitude=20.60&longitude=121.90&hourly=wave_height,swell_wave_height,swell_wave_period,wind_wave_height&daily=wave_height_max,swell_wave_height_max,swell_wave_period_max&timezone=Asia/Manila&forecast_days=7` | Hourly and daily wave, swell and wind-wave forecast at the channel point | Hourly (use a 05:00 run) | none | free (commercial tier if revenue grows) |
| Open-Meteo Marine API (history) | `...&daily=wave_height_max&start_date=2022-10-01&end_date=2026-03-31` | Past-season daily wave maxima for closure-length statistics | Once per season | none | free |
| Open-Meteo Forecast API | `https://api.open-meteo.com/v1/forecast?latitude=20.73&longitude=121.84&daily=wind_speed_10m_max,wind_gusts_10m_max,wind_direction_10m_dominant,precipitation_sum&wind_speed_unit=kn&timezone=Asia/Manila&forecast_days=16` | Wind, gusts, direction (amihan onset detection), rain | Hourly | none | free |
| OpenStreetMap Overpass API | `https://overpass-api.de/api/interpreter?data=[out:json];(nwr["amenity"="ferry_terminal"](20.2,121.7,21.2,122.1);nwr["amenity"="hospital"](20.2,121.7,21.2,122.1););out center;` | Port and hospital coordinates | Monthly | none | free |
| ExchangeRate-API | `https://open.er-api.com/v6/latest/PHP` | PHP rates for grant-reporting and tour-operator pricing | Daily | none | free |
| PAGASA gale warnings (scraped) | PAGASA public gale-warning bulletin page | Official gale-warning status to show next to the model rating, never overridden | Every 6 h | none | free |

### Database Schema (key tables only)
```
forecast_days: id (int), run_at (timestamp), day (date), wave_max_m (float), swell_max_m (float), swell_period_s (float), gust_max_kn (float), wind_dir_deg (int), rating (text), last_window_flag (bool)
subscribers: id (int), phone (text), language (text), barangay (text), role (text: resident|captain|consolidator|rhu|operator), active (bool)
captain_checkins: id (int), captain_phone (text), port (text), day (date), sailed (bool), note (text)
medical_priority: id (int), rhu_ref (text), needs_basco_by (date), contacted_at (timestamp), crossed_on (date)
season_stats: season (text), days_total (int), days_ge_1_5m (int), days_ge_2_5m (int), longest_closure_days (int), max_wave_m (float)
```

### Key Technical Decisions
1. **Advisory, never authoritative:** The app always shows the PAGASA gale warning and Coast Guard status on top of its own rating and never says "safe to sail". Its value is in planning ahead, not in giving permission. That keeps it legally clean and aligned with the Coast Guard instead of competing with it.
2. **Thresholds set with captains, tuned with check-ins:** Starting cut-offs (e.g. GO below 1.0 m and gusts below 15 kn, NO-GO at 1.8 m or gusts at or above 22 kn) are placeholders to be agreed with the Itbayat boat owners' association, then corrected against their actual sail/no-sail logs.

### Hardest Technical Challenge
Model resolution versus reality. Open-Meteo's marine grid is coarse. Conditions right at Mauyen's cliff-side landing, where faluwas get hoisted and swell surges against the rock, can differ from the mid-channel point. Current and swell direction matter as much as height, and faluwa safety depends on craft and cargo. Mitigation: treat the output as a relative "window finder", not an absolute safety call. Calibrate thresholds from one full season of captain check-ins, and add a second grid point near the Itbayat side once the check-in data shows where the model misses.

## Monetization Strategy

> Note: Not every idea needs Stripe. Some are better as free tools, grant-funded, or sold B2G.

**Model chosen:** grant-funded / B2G, with a small paid operator tier to cover SMS costs.

| Tier | Price | What's Included | Why They Pay This |
|------|-------|-----------------|-------------------|
| Free (Residents) | $0 | Daily SMS, Facebook post, printable port board, last-window alerts | Public safety and access to healthcare; residents should never pay |
| Operator | ₱1,500/mo (~$24) | Booking-page widget, reschedule alerts, 16-day outlook, API | One cancelled Itbayat tour costs more in refunds and lodging |
| LGU / MDRRMO | ₱15,000/mo (~$240), or a grant line item | SMS budget for all residents, medical-priority tool, MDRRMO dashboard, season reports | Fits inside DRRM fund spending and gives the LGU documented evidence for boat-safety and medevac funding |

**Why someone pays:** The LGU pays after the first season in which the "last window" alert visibly gets patients and students to Basco before a long closure. It's a line item they can defend at the provincial board. Tour operators pay after one wasted tour group.

**12-month revenue trajectory:**
- Month 3: 1 LGU pilot (grant-covered) + 3 operators × ₱1,500 = ~₱4,500 (~$72)/month plus the grant
- Month 12: 2 LGUs (Itbayat + one expansion, e.g. Sabtang or the Babuyan/Calayan crossings in Cagayan) × ₱15,000 + 8 operators × ₱1,500 = ~₱42,000 (~$670)/month

**Alternative if SaaS doesn't work:** Fund it as a small-grant project through Philippine resilience programmes (NDRRMC-linked grants, the Philippine Red Cross Batanes chapter, or a university partnership with a state university's maritime or fisheries programme). Then open-source it so other island LGUs, such as Calayan, Camotes or Cagraray, can clone the model for their own channels.

## Marketing Strategy

**Exact communities to reach:**
- Itbayat and Batanes hometown Facebook groups and pages (several exist for Itbayat residents and Ivatan working in Manila, Taiwan and abroad; the largest have an estimated 10k-30k members). Diaspora relatives are the ones who fund and arrange parents' trips from afar.
- The Municipality of Itbayat's and Provincial Government of Batanes' official Facebook pages, plus the Batanes PDRRMO page. Weather and suspension notices already get shared from these pages.
- r/Philippines (estimated 2.5M+ members) and r/phtravel (estimated 300k+) for the travel-planning audience and press pickup.
- Batanes tour-operator networks registered with the provincial tourism office. These are few, so reach them directly.

**First 10 users and how you get them:**
Fly to Basco and take the faluwa to Itbayat during a calm October window. Sit down with the boat owners' association at Mauyen and agree thresholds with them. Then ask the Rural Health Unit nurse, two barangay captains and two sari-sari stores near the poblacion to be the first SMS subscribers and to pin the printed board. Captains become users one and two because their check-ins make the tool better. The first 10 residents come in through the RHU's patient list.

**The press angle:**
"The Philippines' northernmost town is cut off by the sea for weeks every amihan season. Data shows only 8 calm days last October–December, and a 76-day unbroken rough spell." Pitch to Rappler, Inquirer Regions, GMA's Kapuso Mo, Jessica Soho-style human-interest segments, and ABS-CBN regional news.

**Content / SEO play:**
A public "Itbayat crossing calendar" page per season with historical window statistics, and evergreen pages such as "Best time to visit Itbayat" and "How to get to Itbayat from Basco". Travellers search those constantly, and they can carry the operator-widget pitch.

**Launch sequence:**
1. Before launch (Sept–Oct): Agree thresholds with the Itbayat boat owners and the RHU, and back-test against last season's history to show the 8-calm-days finding.
2. Launch day: The municipality posts the first 7-day window card on its Facebook page. The first SMS broadcast goes to the RHU list and barangay officials.
3. Week 1: The first "last window" alert goes out before the first amihan surge. Document who crossed because of it, and use that story for the LGU budget request and the press pitch.

## Competitive Landscape

| Existing Solution | What They Do | Where They Fall Short | Why This Wins |
|-------------------|-------------|----------------------|---------------|
| PAGASA gale warnings / Coast Guard trip suspensions | Official same-day and next-day go/no-go on sea travel | Short-range and regional, with no view of how long a closure will last or when the next calm day comes | FaluwaGo is the planning layer before the official call and always defers to it |
| Windy / general weather apps | Global wind and wave maps | Need data, English, and literacy in reading maps; no "last window" logic; no SMS; no local thresholds | One SMS in Filipino/Ivatan with a clear recommendation |
| Word of mouth at the port / radio | Captains' judgement and community news | Only covers the next 24 hours, never written down, and doesn't reach people who aren't at the port | Keeps the captains' judgement but adds the 7-16 day view and historical closure lengths |
| Nothing else exists | — | No tool is built for the Itbayat–Basco crossing | First mover with captain-calibrated data |

**Moat:** The captain check-in log. After two seasons it's the only dataset linking modelled channel conditions to actual faluwa sailing decisions on the Itbayat route. That makes the thresholds locally trustworthy and hard to copy. Formal endorsement by the LGU and RHU adds the rest.

## Risk Factors

1. **Liability / safety:** Someone crosses on a "GO" day and an accident happens → **Mitigation:** Never label a day "safe". Always display the PAGASA and Coast Guard status on top, word ratings as planning guidance, and require official clearance on the day. Get the MDRRMO to co-sign the messaging.
2. **Adoption:** Islanders already trust their captains over any app → **Mitigation:** Build it with the captains, not around them. Their check-ins drive the thresholds and their names go on the port board. The tool then amplifies their judgement instead of replacing it.
3. **Data / Model:** Coarse marine-model resolution misreads conditions at the cliff landings → **Mitigation:** Calibrate from a season of check-ins, add a near-shore grid point, and show uncertainty ("MARGINAL") rather than forcing a binary rating.

## Build Reality Check

| Phase | Realistic Timeline | What Exists at End |
|-------|-------------------|-------------------|
| Prototype | 1-2 weeks | Daily 7-day window card from Open-Meteo, historical closure stats, and a printable PDF board |
| Beta | 4-6 weeks | SMS broadcasts to about 50 Itbayat numbers (RHU, barangay officials, captains), captain check-ins live, first "last window" alert sent |
| Launch | 10-12 weeks | LGU-endorsed service through the amihan season, 2-3 paying tour operators, and a season report for the grant application |

**Solo founder feasibility:** Yes. The software is small (one cron job, one SMS gateway, one static page). The real work is local trust-building, which is only possible with a few trips to Itbayat.
**Biggest execution risk:** Getting onto the island and into the captains' confidence during the right few weeks. A founder who shows up after the amihan has set in could be stuck in Basco themselves, which is exactly the problem the app exists to solve.

---
*Generated: 2026-09-30 | Industry: ocean_maritime | Sub-industry: maritime_routing | Geography: philippines*
*APIs queried for real data: Open-Meteo Marine API (forecast + 2025 history), Open-Meteo Forecast API, OpenStreetMap Overpass API (overpass.kumi.systems mirror), ExchangeRate-API, World Bank Open Data*

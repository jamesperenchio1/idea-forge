---
id: benakjam-batang-lupar-tidal-bore-2026-10-21
title: BenakJam — Tidal-Bore Arrival Window & Longboat Crossing Planner for Iban Boatmen and Fishing-Village Operators on the Batang Lupar
created: 2026-10-21T08:05:00+07:00
industry: ocean_maritime
sub_industry: maritime_routing
geography: malaysia
apis_used: Open-Meteo Marine API, Open-Meteo Forecast API, ExchangeRate-API, World Bank Open Data
monetization_model: hybrid
target_user: Iban and Malay longboat (bot penambang) operators and fishing-boat skippers based around Sri Aman, Lingga and Triso in Sarawak's Batang Lupar estuary, who ferry villagers, schoolchildren, gas cylinders and market produce across and along the river on 10-40 minute hops, earn roughly RM 40-120 on a good day, and currently judge the "benak" (tidal bore) by elders' rules of thumb, a WhatsApp voice note from a cousin, and a glance at the moon
concept_hash: tidal-bore-benak-arrival-window-and-longboat-crossing-planner+batang-lupar-sri-aman-lingga-triso-sarawak-malaysia+iban-and-malay-longboat-operators-and-riverside-fishing-village-boatmen
---

# BenakJam — Tidal-Bore Arrival Window & Longboat Crossing Planner

## The Hook
- The Batang Lupar in Sarawak has a famous tidal bore, the *benak*, a wall of water that surges upriver on big spring tides. Longboat men still schedule the school run and the market crossing around it with moon-phase folklore and WhatsApp voice notes.
- This week's model tide range at the river mouth climbs from 2.17 m on 21 Oct to 4.86 m on 28 Oct. The bore-risk window opens inside seven days, and the boatmen can only see it by looking at the sky.
- A WhatsApp-first (and printable) "benak calendar" gives each landing a go/no-go crossing window per tide. Rainfall-driven river flow, which changes how the bore forms, is a second input to build in. The tool is free to boatmen and sold to the cadet-ranger and homestay operators who bring in the money.

## Real Data Found
> Live data queried from real APIs during idea generation — not placeholders.

| Source | Data Point | Value | Queried |
|--------|-----------|-------|---------|
| Open-Meteo Marine API (1.79N, 110.96E, Batang Lupar mouth) | Modelled sea-level range, 21 Oct | 2.17 m (max 1.84, min -0.33) | 2026-10-21 |
| Open-Meteo Marine API | Modelled sea-level range, 24 Oct | 2.83 m (max 2.34, min -0.49) | 2026-10-21 |
| Open-Meteo Marine API | Modelled sea-level range, 28 Oct | 4.86 m (max 3.08, min -1.78) | 2026-10-21 |
| Open-Meteo Marine API | Wave height off the river mouth, 21-23 Oct | 0.24-0.36 m, period 5.6-6.95 s | 2026-10-21 |
| Open-Meteo Forecast API (Sri Aman, 1.24N, 111.46E) | Daily rainfall 18-24 Oct | 7.8, 5.8, 2.5, 11.4, 5.1, 3.4, 1.5 mm | 2026-10-21 |
| Open-Meteo Forecast API | Max wind 18-24 Oct | 7.8-9.8 km/h | 2026-10-21 |
| ExchangeRate-API | 1 MYR in USD / IDR / THB | 0.2449 / 4,406 / 8.23 | 2026-10-21 |
| World Bank Open Data | Malaysia employment in agriculture (ILO modelled) | 9.18% of employment (2025) | 2026-10-21 |
| World Bank Open Data | Malaysia container port traffic | 30,659,850 TEU (2024), up from 28,246,849 (2023) | 2026-10-21 |

The tide model says the daily range nearly doubles in a week, from 2.17 m to 4.86 m, and the lowest low reaches -1.78 m on 28 Oct. A bore forms when a large incoming tide is squeezed into a funnel-shaped, shallowing estuary. The data shows that squeeze arriving on a known date. The rainfall is light to moderate (1.5-11.4 mm/day), so the river is not in flood. A boatman reading this knows the 25-28 Oct evenings are the ones to plan around, and a fixed ferry timetable cannot show that.

The model is a coarse global grid, not a calibrated local gauge. The marine point at the river mouth is the best Open-Meteo offers, and it can't resolve bore height. The product therefore has to be honest: it gives a *risk window* from the tide-range trend and lets local boatmen correct it. It does not give a bore height forecast.

## The Problem
On a Tuesday afternoon at a Sri Aman landing, a longboat man has six schoolchildren and four cooking-gas cylinders to take to a kampung two bends up the river. The tide table he trusts is a printed one from the district marine office. It gives high-water times for the main port, not for his landing, and says nothing about whether this high water brings a bore. Elders know the rule ("the benak comes hard on the days after full and new moon"). The rule is mostly right and has no number attached, so the only test of the day is the one that goes wrong.

The structural reason is that nobody owns the question. Tide tables cover ports and ships, not 12-horsepower longboats at a village jetty. Tourism boards advertise the bore for surfers and visitors but do not run river-safety information for the people who work on it daily. Voice-note chains between operators spread both good judgement and rumour at the same speed.

If nothing is built, the pattern continues. Boatmen cancel safe crossings out of caution and lose a day's income, or run unsafe ones. Schoolchildren and cargo ride the same boats. The bore is also a tourist draw (guided boat and surf trips), and those trips are timed the same way.

## Who Uses This
**Primary user:** A longboat operator around Sri Aman or Lingga, 25-60 years old, Iban or Malay, who owns a 6-12 seat fibreglass or wooden boat with an outboard engine and runs school, market and cargo hops. Income is roughly RM 40-120 a day, seasonal and fuel-dependent. They use WhatsApp daily, a mid-range Android phone, patchy 4G near the town and none upriver.
**What they do now (and why it sucks):** They use elders' moon-phase rules, a printed port tide table for the wrong location, and voice notes from other operators. None of it says how hard this tide is.
**When they pay:** Never directly at first. They would pay a small monthly fee only after the calendar saves them one cancelled day or one near-miss. Realistically the free tier is the one most of them use.

**Secondary user:** Homestay owners, longhouse tourism cooperatives and licensed bore-viewing guides who sell boat trips to visitors, plus the district education office, which arranges boat transport for riverine schools.
**Why they care:** Their income depends on promising a specific day and time to people who travel a long way, and they are the ones with a budget.

**Who definitely won't use this:** Surfers and tourists wanting a guaranteed bore height. The app does not predict wave size and says so.

## Feature Set

### MVP — Week 1-3
- **Weekly benak calendar:** A one-page view of the next 8 days, coloured by tide range (low / building / watch / high-risk), built from the marine API's sea-level series.
- **WhatsApp broadcast:** A Monday-morning image and text card sent to operators' WhatsApp broadcast lists, in Iban, Malay and English, with the days to watch.
- **Landing offset table:** Each landing has a manually entered time offset from the river-mouth model peak, populated by operators.
- **Rain-and-flow note:** The 7-day rainfall total from the forecast API with a one-line warning when rain has been above a set threshold.
- **Printable A4 poster:** A weekly poster for jetties and coffee shops, so people without data can read it.

### Version 2 — Month 2-3
- **Operator-reported bore log:** One-tap WhatsApp replies ("benak strong / medium / none, landing X, time Y") build a local record that corrects the model's offsets.
- **Trip-time planner:** Enter a landing pair and a departure time to see which tide phase the trip falls in.
- **School-run mode:** A flagged list of the days when morning and afternoon school hops fall near a high-risk phase.

### Power User / Pro Features
- **Tour operator booking calendar:** Embeddable widget showing "best viewing days" for homestays and guides, with the caveat built in.
- **Cooperative dashboard:** A district-level view for the education office and tourism cooperative.

## Technical Implementation

### Suggested Stack
Do not make boatmen install anything. WhatsApp is where they already are.

**Chosen stack:** A scheduled serverless function (Cloudflare Workers cron or Vercel cron) that pulls the Open-Meteo APIs daily, renders the weekly card as an image, and posts it through the WhatsApp Business API or a manual broadcast list at first. A static Astro page hosts the calendar and the printable poster. Supabase (Postgres) stores the landing offsets and the bore log. Choosing static pages and a bot over a native app keeps the build to what one person can finish, and works with weak signal.

### APIs & Data Sources
| API | Specific Endpoint | What It Returns | Refresh Rate | Auth | Cost |
|-----|------------------|-----------------|--------------|------|------|
| Open-Meteo Marine | `https://marine-api.open-meteo.com/v1/marine?latitude=1.80&longitude=111.00&hourly=wave_height,wave_period,sea_level_height_msl&timezone=Asia/Kuching&forecast_days=8` | Hourly modelled sea level, wave height and period | hourly | none | free |
| Open-Meteo Forecast | `https://api.open-meteo.com/v1/forecast?latitude=1.24&longitude=111.46&daily=precipitation_sum,wind_speed_10m_max&timezone=Asia/Kuching&past_days=3&forecast_days=4` | Daily rainfall and wind | daily | none | free |
| ExchangeRate-API | `https://open.er-api.com/v6/latest/MYR` | MYR rates for the cross-border Kalimantan cargo price notes | daily | none | free |
| World Bank Open Data | `https://api.worldbank.org/v2/country/MY/indicator/SL.AGR.EMPL.ZS?format=json&mrv=3` | Rural employment context for grant applications | annual | none | free |

### Database Schema (key tables only)
```
landings: id (uuid), name (text), lat (float), lon (float), offset_minutes (int), notes (text)
tide_days: date (date), max_m (float), min_m (float), range_m (float), risk_band (text)
bore_reports: id (uuid), landing_id (uuid), reported_at (timestamptz), strength (text), reporter_hash (text)
subscribers: id (uuid), whatsapp_hash (text), language (text), landing_id (uuid)
```

### Key Technical Decisions
1. **Risk band, not bore height:** The model can't resolve a bore, so the output is a coloured band derived from the daily range. Anything more precise would be made up.
2. **Offsets from operators, not from physics:** Each landing's lag from the river-mouth peak is entered by the people who cross there, then refined by the bore log.
3. **Hashed WhatsApp IDs:** Reports are stored with a hash so operators can report without being identifiable to the authorities.

### Hardest Technical Challenge
The model sea-level series at one grid point is only a proxy for conditions 60-100 km up a winding river. The mitigation is to treat the model as the "is this a big-tide week" signal, to capture local offsets through the bore log, and to show a visible "model only, not local measurement" label until a landing has 20 or more reports.

## Monetization Strategy

> Note: Not every idea needs Stripe. This one is a free community tool with a paid layer for tourism businesses.

**Model chosen:** hybrid (free for operators, paid for tourism businesses, grant backstop)

| Tier | Price | What's Included | Why They Pay This |
|------|-------|-----------------|-------------------|
| Free | $0 | Weekly WhatsApp card, printable poster, landing offsets | Gets the operators on board, and their reports power the product |
| Guide / Homestay | RM 29/mo (about US$7) | Embeddable "best viewing days" widget, SMS reminders to guests | Lets them promise a day to a guest with a visible caveat |
| Cooperative / District | RM 300/mo (about US$73) | Dashboard, school-run flags, export of the bore log | Education office and tourism cooperative need records |

**Why someone pays:** A homestay owner has a family booked from Kuching for a weekend, and wants to tell them honestly which evening is the better bet. A refunded trip costs more than a year of the subscription.

**12-month revenue trajectory:**
- Month 3: ~8 paying guides/homestays x RM 29 = RM 232/month (about US$57)
- Month 12: ~40 paying guides/homestays x RM 29 + 2 cooperatives x RM 300 = RM 1,760/month (about US$430)

**Alternative if SaaS doesn't work:** A grant from a state tourism body, a river-safety NGO or a university marine department, with the bore log as an open dataset.

## Marketing Strategy

**Exact communities to reach:**
- Sri Aman and Betong community Facebook groups (names and member counts to be confirmed on the ground; local "Sri Aman" groups are active but I did not verify sizes)
- Sarawak Iban-language Facebook and WhatsApp groups, reached through longhouse headmen (*tuai rumah*)
- Sarawak tourism and homestay groups, plus the Sarawak Tourism Board's operator mailing lists
- Sarawak riverine-school parent WhatsApp groups

**First 10 users and how you get them:**
Spend a week at the Sri Aman waterfront and two upriver landings. Meet the boatmen who run the school and market hops, show the printed poster, and ask for each landing's offset. Ten operators who correct the poster are the first ten users, and their corrections are the first dataset.

**The press angle:**
"Sarawak's famous tidal bore now has a weekly forecast card. Boatmen helped write it." Regional outlets such as Borneo Post cover river life and the bore regularly.

**Content / SEO play:**
Public "benak calendar for this week" pages, indexed in English and Malay, for visitors searching "Batang Lupar bore when". The pages carry the model-only caveat.

**Launch sequence:**
1. Pilot the poster and offsets with ten operators at two landings.
2. Start the Monday WhatsApp card and the public page.
3. Add the bore log once there are 20+ reports, then approach the first homestay customers.

## Competitive Landscape

| Existing Solution | What They Do | Where They Fall Short | Why This Wins |
|-------------------|-------------|----------------------|---------------|
| Printed port tide tables | High-water times for major ports | Wrong location, no bore indicator | Landing-level, bore-aware |
| Generic tide apps | Global tide predictions | Not tuned to the estuary, English-only | Local offsets, Iban/Malay |
| Tourism-board promotion | Advertises the bore | Not an operational safety tool | Built for people who work the river |
| Elders' rules and voice notes | Real local knowledge | Unquantified and not shared at scale | Keeps that knowledge and adds numbers |

**Moat:** The landing-by-landing bore log and offsets, which nobody else is collecting, plus operator trust.

## Risk Factors

1. **Data:** The global model is coarse and may miss or misplace big-tide days. → **Mitigation:** Use it only as a risk-band signal, show the caveat, and calibrate with the bore log.
2. **Safety/liability:** Someone could treat a "low risk" label as a guarantee. → **Mitigation:** Wording that never says "safe", a prominent "your judgement and local knowledge decide" line, and review by local marine authorities before launch.
3. **Adoption:** Operators may not trust an outsider's chart over the elders. → **Mitigation:** Co-author the calendar with respected boatmen and credit them on the poster.

## Build Reality Check

| Phase | Realistic Timeline | What Exists at End |
|-------|-------------------|-------------------|
| Prototype | 2 weeks | Weekly calendar page and poster from live API data |
| Beta | 6 weeks | Ten operators, landing offsets, WhatsApp card |
| Launch | 12 weeks | Bore log, first paying guides |

**Solo founder feasibility:** Yes — the data pipeline is small, but local fieldwork is essential.
**Biggest execution risk:** Earning the trust of boatmen and elders, and handling the safety-liability question properly.

---
*Generated: 2026-10-21 | Industry: ocean_maritime | Sub-industry: maritime_routing | Geography: malaysia*
*APIs queried for real data: Open-Meteo Marine API, Open-Meteo Forecast API, ExchangeRate-API, World Bank Open Data*

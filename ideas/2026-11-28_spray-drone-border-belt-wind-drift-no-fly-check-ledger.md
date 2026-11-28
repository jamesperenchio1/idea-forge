---
id: spray-drone-border-belt-wind-drift-no-fly-check-2026-11-28
title: PhunDrone — Border-Belt Spray-Drone Dawn Wind-Drift Window, No-Fly Pre-Check & Job Ledger for Rice-Field Drone Pilots, An Giang
created: 2026-11-28T08:05:00+07:00
industry: defense_security
sub_industry: agri_spray_drone_border_airspace_precheck
geography: southeast_asia
apis_used: Open-Meteo Forecast API, Open Exchange Rates (open.er-api.com), World Bank Indicators API
monetization_model: hybrid
target_user: Hired spray-drone pilots (mostly 22-35-year-old Kinh and Khmer men, many ex-motorbike-mechanics) in Tri Ton, Tinh Bien and Thoai Son, An Giang, who run a 30-40 L spray drone from a pickup bed, work 5-10 farms a day at roughly 30,000-50,000 VND/công (1,000 m²) in the Winter-Spring and Autumn-Summer seasons, and operate within a few km of the Cambodian border strip where military and border-guard posts make "can I even fly here" a daily guess
concept_hash: agri-spray-drone-dawn-wind-drift-and-border-airspace-precheck-ledger+tri-ton-tinh-bien-thoai-son-an-giang-mekong-delta-vietnam+hired-rice-spray-drone-pilots-and-their-farmer-clients
---

# PhunDrone — Border-Belt Spray-Drone Dawn Wind-Drift Window, No-Fly Pre-Check & Job Ledger

## The Hook
- A hired spray-drone pilot near Tri Ton, An Giang, has about two honest hours a day: wind is 3 km/h at 06:00 and gusting 33 km/h by noon. In those hours he must also guess whether the next paddy lies near a military or border-guard post or an airfield zone that puts a fine and a confiscated drone against his 150-million-VND machine.
- One Telegram/Zalo card per job: "fly / fly-before-0800 / don't — drift or restricted". It combines hour-by-hour wind and humidity with a pilot-maintained map of known no-go polygons, then logs the job (công sprayed, product, wind at start) so the pilot has a record if a neighbour's melon field gets blamed.
- It is a defense_security idea nobody pitches because it has no defense budget behind it: the user is a village mechanic with a DJI-class drone, not a contractor.

## Real Data Found
> Live data queried from real APIs during idea generation — not placeholders.

| Source | Data Point | Value | Queried |
|--------|-----------|-------|---------|
| Open-Meteo Forecast (10.41N, 105.00E, Tri Ton area) | 10 m wind speed / gust, 28 Nov 2026 06:00 ICT | 3.3 / 7.6 km/h | 2026-11-28 |
| Open-Meteo Forecast | 10 m wind speed / gust, 28 Nov 2026 12:00 ICT | 11.3 / 33.1 km/h | 2026-11-28 |
| Open-Meteo Forecast | Relative humidity 06:00 → 13:00 ICT | 99% → 70% | 2026-11-28 |
| Open-Meteo Forecast | Temperature 06:00 → 13:00 ICT | 24.8 °C → 30.9 °C | 2026-11-28 |
| Open-Meteo Forecast | Next day (29 Nov) 07:00 gust vs 13:00 gust | 22.3 vs 36.4 km/h (already 11.2 km/h mean wind at 07:00) | 2026-11-28 |
| Open Exchange Rates | USD → VND | 25,839.82 (updated 28 Nov 2026) | 2026-11-28 |
| World Bank Indicators | Viet Nam agricultural land, % of land area (2024) | 39.2% | 2026-11-28 |

On 28 Nov the clean window is short: until about 07:00 gusts stay under 15 km/h, but by 10:00 they reach 27.7 and by noon 33. Humidity falls from 99% to 70% across the same hours, which makes droplets evaporate and drift more. Tomorrow is worse: wind is already 11 km/h at 07:00 and gusts reach 36 km/h by 13:00. A pilot who plans from a generic "sunny, 30 °C" app learns this only after the drift complaint.

(Note: the real numbers above are forecasts for one coordinate; the app would interpolate per field. The 150-million-VND machine cost and the border-zone fine logic below are estimates from the founder's interviews to be done, not API data — treat them as unverified.)

## The Problem
It is 06:30 near Ba Chuc. The pilot has four farmers texting him on Zalo, each wanting "the first slot". Wind is 3 km/h and he does not think about it; by the fourth field it is past nine, gusts have climbed above 20 km/h and the spray hangs over a neighbour's vegetable plot. Last season a farmer's complaint was settled with a cash payment because the pilot had no record of the wind when he started or of what he sprayed.

The second problem is airspace. Hobby-class spray drones are cheap and common, but the border belt contains military and border-guard posts, and rules on where a drone may fly and what permits are needed change and are not published in a pilot-friendly form. Pilots rely on Zalo-group folklore ("don't go past the canal near the post") and learn the boundaries when someone is stopped. No one has put a shared, reviewed list of known no-go areas next to the weather in a tool pilots already open.

If nothing is built, pilots keep to a 2-hour flying habit nobody has measured, drift disputes get settled in cash, and one confiscation in a season can wipe out the profit of the 30-40 hectares a day he sprays.

## Who Uses This
**Primary user:** Hired spray-drone pilot, 22-35, An Giang border districts, owns one or two drones, pays a helper to carry batteries and water, works two rice seasons per year plus orchard/vegetable jobs. Income is roughly 15-30 million VND/month in peak season (to be confirmed by interviews).
**What they do now (and why it sucks):** He checks a generic weather app, asks other pilots in Zalo groups which areas are "safe", and keeps jobs in a paper notebook, so he has no evidence if a neighbour complains.
**When they pay:** After a drift dispute or a drone stop at a post, when he wants a record and a reliable no-go map.

**Secondary user:** Commune agricultural extension officers and farmer-cooperative (hợp tác xã) managers who book several pilots and need a drift record per job.
**Why they care:** A neutral job record settles neighbour disputes without anyone paying cash.

**Who definitely won't use this:** Large agribusiness drone fleets with their own flight-ops staff, and anyone seeking to evade lawful restrictions. This tool surfaces no-go areas; it must never help route around a lawful restriction.

## Feature Set

### MVP — Week 1-3
- **Dawn Window Card:** Pulls hourly wind, gust, humidity and temperature for the field's coordinates and shows green / amber / red hours for spraying today and tomorrow.
- **Field Pins:** The pilot saves each farmer's field once (map pin or Zalo-shared location) and gets the card per field.
- **No-Go Polygons v0:** A short, reviewed list of publicly known restricted places (airfields, posted military/border-guard areas, schools, water-source buffers) with a source and "last verified" date per entry; always labelled "check official rules".
- **Job Ledger:** One tap logs field, công sprayed, product, wind/gust/humidity at start and end, and exports a PDF/photo-ready receipt for the farmer.
- **Zalo/Telegram card:** The morning card arrives in chat; no app install.

### Version 2 — Month 2-3
- **Multi-job route order:** Sorts the day's fields so the most drift-sensitive ones (next to vegetables, fish ponds, houses) fly in the calmest hour.
- **Neighbour-crop sensitivity layer:** Pilot flags nearby sensitive crops/ponds; the app tightens the wind threshold for that field.
- **Coop booking view:** Cooperative managers see all pilots' logs by field.

### Power User / Pro Features
- **Battery/water rota:** Computes how many fields fit before the wind turns, given tank size and swath speed.
- **Rule-update alerts:** Pilot-reported rule changes go to a moderator queue and are published with a source link.

## Technical Implementation

### Suggested Stack
**Chosen stack:** Zalo OA chatbot (or Telegram bot as fallback) with a small PWA map for field pins, backed by Supabase (Postgres + PostGIS) — pilots already live in Zalo, and PostGIS handles polygon checks and per-field weather lookups cheaply.

### APIs & Data Sources
| API | Specific Endpoint | What It Returns | Refresh Rate | Auth | Cost |
|-----|------------------|-----------------|--------------|------|------|
| Open-Meteo Forecast | `https://api.open-meteo.com/v1/forecast?latitude=10.41&longitude=105.00&hourly=wind_speed_10m,wind_gusts_10m,temperature_2m,relative_humidity_2m,precipitation_probability&timezone=Asia/Bangkok` | Hourly wind, gust, humidity, temperature, rain chance | hourly | none | free |
| Open Exchange Rates | `https://open.er-api.com/v6/latest/USD` | VND rate for cost display | daily | none | free |
| World Bank Indicators | `https://api.worldbank.org/v2/country/VN/indicator/AG.LND.AGRI.ZS?format=json&mrv=3` | Agricultural land share (context for market sizing) | yearly | none | free |

### Database Schema (key tables only)
```
pilots: id (uuid), zalo_id (text), display_name (text), drone_model (text)
fields: id (uuid), pilot_id (uuid), geom (geography point), farmer_name (text), sensitive_neighbour (bool)
no_go_zones: id (uuid), geom (geography polygon), kind (text), source_url (text), last_verified (date)
jobs: id (uuid), field_id (uuid), started_at (timestamptz), cong_sprayed (numeric), product (text), wind_kmh (numeric), gust_kmh (numeric), humidity_pct (int)
```

### Key Technical Decisions
1. **Forecast + pilot-entered anemometer reading:** A cheap handheld reading at the field overrides the forecast, because forecasts at 10 m do not equal conditions at 3 m spray height.
2. **No-go list is curated, never crowd-published directly:** Moderated entries with sources keep the tool from becoming either wrong or an evasion guide.

### Hardest Technical Challenge
Getting a reliable, defensible no-go dataset. Official coordinates for sensitive sites are often not public, and the tool must not publish anything sensitive. Mitigation: start with public airports, schools and posted signage reported by pilots with photos; label everything "advisory"; partner with a commune or district office to review the list.

## Monetization Strategy

> Note: Mostly a pilot-paid tool with a cooperative/B2G add-on; the free tier must stay useful for trust.

**Model chosen:** hybrid (freemium + cooperative subscriptions)

| Tier | Price | What's Included | Why They Pay This |
|------|-------|-----------------|-------------------|
| Free | $0 | Dawn Window Card for 3 fields | acquisition hook |
| Pilot | ~$3/mo (~75,000 VND) | Unlimited fields, job ledger, PDF receipts, no-go alerts | evidence after a dispute |
| Coop | ~$15/mo (~390,000 VND) | Multi-pilot booking and per-field logs | settles disputes without cash |

**Why someone pays:** The moment a neighbour says "your spray killed my chilli" and the pilot can show a time-stamped wind and humidity log instead of paying 2-3 million VND.

**12-month revenue trajectory:**
- Month 3: ~40 paying pilots × $3 = $120/month
- Month 12: ~400 pilots × $3 + 8 coops × $15 = $1,320/month

**Alternative if SaaS doesn't work:** Provincial agriculture-extension grant for spray-safety training, or sponsorship from drone dealers.

## Marketing Strategy

**Exact communities to reach:**
- Vietnamese Zalo/Facebook groups for "drone nông nghiệp / phun thuốc bằng drone" (several exist; sizes vary and must be checked before outreach — member counts not verified here).
- Facebook pages for An Giang farmers ("Nông dân An Giang", "Nông dân Đồng bằng sông Cửu Long") — verify current membership before posting.
- Drone dealers' customer Zalo groups in Long Xuyen and Chau Doc, approached through the dealer.

**First 10 users and how you get them:**
Ride along for a week with two or three pilots near Tri Ton and Tinh Bien, run the morning card for them by hand, then ask each to bring two pilot friends.

**The press angle:**
"The two-hour farm drone window: why Mekong spray pilots only have until 8 a.m." — built from hourly wind data across the delta.

**Content / SEO play:**
Seasonal Vietnamese-language pages: "Giờ phun drone tốt nhất ở [huyện] hôm nay" per district, generated from the forecast.

**Launch sequence:**
1. Hand-run morning cards for 5 pilots for two weeks.
2. Launch the Zalo bot with the ledger and the first reviewed no-go list.
3. Offer cooperatives a free pilot month before a season starts.

## Competitive Landscape

| Existing Solution | What They Do | Where They Fall Short | Why This Wins |
|-------------------|-------------|----------------------|---------------|
| Generic weather apps | Show daily forecast | No hourly spray-drift logic, no job record | Made for the 2-hour window |
| Drone manufacturer apps | Flight control, some geofencing | Not tied to local farm disputes or Vietnamese border context | Local, Zalo-first, evidence-oriented |
| Zalo-group folklore | Free, immediate | Inconsistent, unverified | Reviewed, sourced, dated |

**Moat:** The job ledger becomes a local record of spray practice, and a reviewed no-go list with commune trust is hard to copy.

## Risk Factors

1. **Regulatory:** Drone rules in Vietnam and border areas change and may restrict what the app may show → **Mitigation:** advisory only, link to official rules, legal review before launch.
2. **Liability:** A pilot relies on a wrong green card and causes drift or a violation → **Mitigation:** clear disclaimers, conservative thresholds, require on-site reading.
3. **Adoption:** Pilots may distrust anything that looks like government tracking → **Mitigation:** data stays private to the pilot by default; only receipts are shared by choice.

## Build Reality Check

| Phase | Realistic Timeline | What Exists at End |
|-------|-------------------|-------------------|
| Prototype | 2 weeks | Telegram bot with dawn card and field pins |
| Beta | 6 weeks | 20 pilots, job ledger, first no-go list |
| Launch | 12 weeks | Zalo OA, paid tiers, first coop |

**Solo founder feasibility:** Yes — the core is a weather lookup plus a ledger, but the no-go dataset needs local partners.
**Biggest execution risk:** Trust and rules — one wrong no-go call or one pilot stopped using the app could end word-of-mouth.

---
*Generated: 2026-11-28 | Industry: defense_security | Sub-industry: agri_spray_drone_border_airspace_precheck | Geography: southeast_asia*
*APIs queried for real data: Open-Meteo Forecast API, Open Exchange Rates, World Bank Indicators API*

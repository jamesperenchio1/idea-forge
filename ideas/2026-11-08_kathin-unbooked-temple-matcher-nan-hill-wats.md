---
id: kathin-ruang-nan-2026-11-08
title: KathinWang — Unbooked-Wat Kathin Matcher & Rain-Window Convoy Planner for Pha Pa Merit Groups and Hill-Temple Abbots' Secretaries in Nan Province
created: 2026-11-08T08:05:00+07:00
industry: culture_religion
sub_industry: merit_making_guides
geography: thailand
apis_used: Open-Meteo Forecast API, Open-Meteo Flood API, Thai Wikipedia REST API
monetization_model: free
target_user: Lay "kathin committee" organisers (usually a retired teacher or a Bangkok/Chiang Mai factory-office merit group of 30-80 people) who must book ONE temple for the once-a-year kathin cloth offering, and the lay secretaries (mak thayok / "lek wat") of small hill wats in Nan's Bo Kluea, Song Khwae, Santisuk and Pua districts who watch the kathin window close with no sponsor booked. Organisers hire a 40-seat bus or a 6-truck convoy for a single day with a deposit that is not refundable.
concept_hash: kathin-unbooked-wat-matcher-and-rain-window-convoy-planner+nan-bo-kluea-pua-song-khwae-northern-thailand+pha-pa-merit-group-organisers-and-hill-wat-lay-secretaries
---

# KathinWang — Unbooked-Wat Kathin Matcher & Rain-Window Convoy Planner

## The Hook
- A Theravada temple can host kathin only once a year, only inside a roughly 29-day window (waning 1st of the 11th lunar month to waxing 15th of the 12th). Miss it, and the monks wait 12 months. Popular wats near Bangkok get booked years ahead; small hill wats in Nan end the window with nobody.
- Today (8 Nov 2026) Open-Meteo shows 10.2 mm of rain forecast for Nan on 9 Nov and 13.5 mm on 11 Nov. The window is open for about two more weeks, and a chartered bus does not know which mountain road washes out.
- Free, LINE-first, built for two people who already want to find each other: a merit group with a booked bus and no destination, and a wat with a robe and no sponsor.

## Real Data Found
> Live data queried from real APIs during idea generation — not placeholders.

| Source | Data Point | Value | Queried |
|--------|-----------|-------|---------|
| Open-Meteo Forecast API | Nan (19.17N, 100.78E) daily rain sum, 8-14 Nov 2026 | 0.0, 10.2, 0.0, 13.5, 5.9, 0.0, 1.2 mm | 2026-11-08 |
| Open-Meteo Forecast API | Nan max rain probability, 9 Nov and 11 Nov | 76% and 53% | 2026-11-08 |
| Open-Meteo Forecast API | Nan overnight minimum temperature, 10-12 Nov | 18.2 / 18.7 / 18.4 °C (cold hill-road mornings) | 2026-11-08 |
| Open-Meteo Flood API | Nan-area river discharge, 8 Nov to 14 Nov | 15.22 → 19.65 m³/s; daily max 31.89 m³/s on 14 Nov (about 2x the 8 Nov max of 16.14) | 2026-11-08 |
| Open-Meteo Forecast API | Chiang Mai (origin of many merit groups), 9 Nov rain | 10.3 mm | 2026-11-08 |
| Thai Wikipedia REST API (กฐิน) | Rule on kathin timing | Only from the 1st waning day of month 11 to the 15th waxing day of month 12; page last edited 2026-11-06 | 2026-11-08 |

The rain figures are modest, but it only takes one 10-13 mm day on a laterite hill-temple road to turn a 6-truck convoy with a sound system, a "kathin tree" and a generator into a stuck convoy. The flood-model discharge nearly doubling by 14 Nov shows the rivers are rising late in the window, exactly when the last unbooked temples are scrambling for sponsors. The kathin rule itself is strict: it is a monastic act (สังฆกรรม) with a fixed calendar, so the date cannot be moved by a day when it rains.

## The Problem
A merit-group leader in Chiang Mai has 52 colleagues, a deposit paid on a coach, and a Saturday in the window. She has heard that a famous wat is booked, and the group chat is arguing about where to go. A phone call to a hill wat in Bo Kluea is answered by a lay secretary who says, in kham mueang, that the abbot has "no one yet this year". The two do not find each other because the booking is done by word of mouth, by paper signup boards, and by Facebook posts that vanish in a day.

The structural reason is that the kathin booking list is a social ledger, not a dataset. The provincial Sangha and cultural offices publish royal-kathin lists but not ordinary-kathin availability; rich or central temples fill first. Rural wat secretaries do not post on Facebook and cannot weigh a road in the rain; organisers do not know which road is drivable on a given day.

If nothing is built, small hill temples keep going without a kathin, monks lose the chance to receive cloth and community donations that year, and merit groups keep ending up at the same overbooked ten wats where three groups arrive on the same morning.

## Who Uses This
**Primary user:** A kathin organiser (usually a 50-ish retired teacher or a factory-office merit group head in Chiang Mai, Lampang or Bangkok) who has a coach already paid for, a "pha pa" date inside the window, and 40-80 donors expecting a confirmed place.
**What they do now (and why it sucks):** Ask in LINE groups and on Facebook "who needs a kathin sponsor?", phone a handful of wats, and discover on the day that two groups are booked at the same one.
**When they pay:** Free for them. The moment of value is the first time a group is sent to a wat with a booked-nobody status, and arrives to a warm welcome.

**Secondary user:** The lay secretary of a small hill wat, and the district Sangha office that wants to know which wats are still unbooked while there are 10 days left in the window.
**Why they care:** One text message from a lay secretary can fill a 29-day window that would otherwise close empty.

**Who definitely won't use this:** Large central Bangkok wats with kathin booked years ahead, royal kathin sponsors, and anyone who wants to buy a "package kathin". This is not a booking platform and never accepts money for slots.

## Feature Set

### MVP — Week 1-3
- **Wat card with "unbooked" flag:** a lay secretary sends a LINE message to claim a wat; the card shows the wat, abbot, district, road type and booked/unbooked status.
- **Window clock:** a countdown to the last day of the kathin window, with a warning when fewer than 10 days remain and a wat is still unbooked.
- **Rain-window check:** pulls the 7-day Open-Meteo forecast for the wat's coordinates and shows green/amber/red for a coach or truck convoy (red above 10 mm in 24 h).
- **Double-booking guard:** shows "2 groups already booked on 14 Nov" so organisers pick a different day.
- **Plain Thai/kham mueang voice notes:** a secretary can record an update in 10 seconds instead of typing.

### Version 2 — Month 2-3
- **River-rise banner:** uses the Open-Meteo Flood API discharge so the convoy planner warns when a stream crossing is likely to rise.
- **Group-size match:** match 30 donors to a wat that can seat and feed 30, not 300.
- **Return-leg timing:** sunset and hill-road fog warning for the drive home.

### Power User / Pro Features
- **District Sangha dashboard:** a one-page list for the district Sangha office of which wats are still unbooked with N days left.
- **Next-year pre-booking:** let a wat pre-register for next year's window and drop the last-minute scramble.

## Technical Implementation

### Suggested Stack
Candidates: native app, web app, LINE bot.

**Chosen stack:** LINE Official Account + LIFF mini-page + Supabase, because both audiences already live in LINE groups and a hill-wat secretary will never install an app.

### APIs & Data Sources
| API | Specific Endpoint | What It Returns | Refresh Rate | Auth | Cost |
|-----|------------------|-----------------|--------------|------|------|
| Open-Meteo Forecast | `https://api.open-meteo.com/v1/forecast?latitude={lat}&longitude={lon}&daily=precipitation_sum,precipitation_probability_max,temperature_2m_min&timezone=Asia/Bangkok&forecast_days=7` | 7-day rain and temperature at the wat | hourly | none | free |
| Open-Meteo Flood | `https://flood-api.open-meteo.com/v1/flood?latitude={lat}&longitude={lon}&daily=river_discharge,river_discharge_max&forecast_days=7` | modelled river discharge near the wat | daily | none | free |
| Thai Wikipedia REST | `https://th.wikipedia.org/api/rest_v1/page/summary/กฐิน` | Kathin window rule text for the info card | on edit | none | free |
| OpenStreetMap Overpass | `amenity=place_of_worship + religion=buddhist` query by province | seed list of wats with coordinates | weekly | none | free (public instance was at capacity when I tried; use a cached nightly extract) |

### Database Schema (key tables only)
```
wat: id (uuid), name_th (text), district (text), lat (float), lon (float), road_type (text), contact_line_id (text), verified (bool)
kathin_slot: id (uuid), wat_id (uuid), year (int), date (date), group_name (text), size (int), status (text)
claim: id (uuid), wat_id (uuid), line_user_id (text), claimed_at (timestamptz)
weather_cache: wat_id (uuid), fetched_at (timestamptz), rain_mm_json (jsonb), discharge_json (jsonb)
```

### Key Technical Decisions
1. **Human verification of claims:** a wat card is only "verified" after a call or a district-office confirmation, to keep fake sponsor-solicitation scams out.
2. **No payments handled:** the app never touches money; donors give directly at the wat.

### Hardest Technical Challenge
Getting wat data trusted: scams that ask for kathin donations are common. Mitigation: verify each wat by phone, show the abbot name and district office, and never display donation account numbers in the app.

## Monetization Strategy

> Note: this is a merit-making tool; charging for it would kill trust.

**Model chosen:** free / grant-funded

| Tier | Price | What's Included | Why They Pay This |
|------|-------|-----------------|-------------------|
| Free | $0 | everything | trust and reach |
| District office pilot | $0 (grant-funded) | dashboard for the Sangha office | reaches every unbooked wat |

**Why someone pays:** nobody pays the users; costs (<$20/mo) are covered by a small culture-ministry or university community-service grant.

**12-month revenue trajectory:**
- Month 3: 0 paying users, 1 pilot grant discussion
- Month 12: 1 provincial culture grant of about $1,500-3,000

**Alternative if SaaS doesn't work:** run it as a volunteer project of a Chiang Mai university's social-service club.

## Marketing Strategy

**Exact communities to reach:**
- Facebook merit-group pages and "pha pa" groups in Chiang Mai and Lampang (member counts vary; the largest ones are in the tens of thousands).
- Nan provincial Facebook community pages and the Nan Provincial Sangha Office.
- LINE Open Chats of factory-office merit groups.

**First 10 users and how you get them:**
Phone 10 Nan hill wats in Bo Kluea and Song Khwae through a district contact and ask each lay secretary to send one voice note.

**The press angle:**
"The kathin ends in 16 days. These temples in Nan still have nobody." Local press and Thai PBS would carry it.

**Content / SEO play:**
A public "วัดที่ยังไม่มีเจ้าภาพกฐิน" page per province, refreshed daily during the window.

**Launch sequence:**
1. Seed 20 verified wats this week.
2. Post the unbooked list in 5 merit-group communities.
3. After the window closes, publish how many were matched.

## Competitive Landscape

| Existing Solution | What They Do | Where They Fall Short | Why This Wins |
|-------------------|-------------|----------------------|---------------|
| Facebook merit pages | Post "need a kathin sponsor" notices | Posts vanish; no status or weather | A live status per wat |
| Word of mouth | Everything else | Favours well-known wats | Surfaces the unknown ones |
| Government royal-kathin lists | Official royal kathin | Do not cover ordinary kathin | Covers what they ignore |

**Moat:** a verified, trusted list of small wats and their secretaries' LINE contacts, built season over season.

## Risk Factors

1. **Trust / Scam:** fake wats could solicit money → **Mitigation:** phone verification and no payment features.
2. **Seasonality:** the window is only 29 days → **Mitigation:** reuse for other merit seasons (Pha Pa Samakkhi, Visakha).
3. **Adoption:** old lay secretaries may not use LINE → **Mitigation:** voice notes and a volunteer relay.

## Build Reality Check

| Phase | Realistic Timeline | What Exists at End |
|-------|-------------------|-------------------|
| Prototype | 2 weeks | LINE bot with 20 wat cards and weather check |
| Beta | 6 weeks | Next kathin window (2027): live with real wats |
| Launch | 10 weeks | Province-wide list with district-office support |

**Solo founder feasibility:** Yes — the tech is simple; the work is phoning wats.
**Biggest execution risk:** seasonality: a missed 29-day window means waiting a year to test.

---
*Generated: 2026-11-08 | Industry: culture_religion | Sub-industry: merit_making_guides | Geography: thailand*
*APIs queried for real data: Open-Meteo Forecast API, Open-Meteo Flood API, Thai Wikipedia REST API (Overpass attempted, at capacity)*

---
id: songsan-bangkok-condo-spirit-house-2026-10-16
title: SongSan — Retired Spirit-House Drop-off Directory & Rain-Window Planner for Bangkok Condo Maintenance Supervisors
created: 2026-10-16T08:05:00+07:00
industry: culture_religion
sub_industry: spirit_house_directories
geography: thailand
apis_used: Open-Meteo Forecast API, OpenStreetMap Overpass API, ExchangeRate-API, World Bank Open Data
monetization_model: free
target_user: Head maintenance supervisors (hua-na chang) and juristic-person office staff at 8-25-year-old Bangkok condominiums (Din Daeng, Huai Khwang, Bang Na, Lat Phrao) who are told by the committee to replace a cracked, sun-bleached or flood-damaged san phra phum, earn roughly 18,000-30,000 THB/month, are Buddhist-Brahmin-animist in practice, and are terrified of "doing it wrong" because residents will blame every later misfortune in the building on it
concept_hash: retired-spirit-house-disposal-drop-off-and-ceremony-rain-window+bangkok-inner-districts-thailand+condo-juristic-person-maintenance-supervisors
---

# SongSan — Retired Spirit-House Drop-off Directory & Rain-Window Planner for Bangkok Condo Maintenance Supervisors

## The Hook
- You cannot put a retired spirit house in the building's rubbish skip. Thai custom says the old shrine must be "sent off" (song) and retired respectfully, often at a temple or a designated shrine pile. Bangkok maintenance supervisors discover this the day the committee orders a replacement and nobody knows where the old one goes.
- The retire-and-replace ritual is an outdoor, morning event with offerings, incense and often a hired Brahmin or lay ritual specialist. Rain ruins it. Bangkok's 7-day forecast this week shows rain probability of 78-91% every single day.
- Nobody maintains a directory of where retired spirit houses are accepted. SongSan is a crowd-verified, phone-call-checked list of drop-off points, with a rain-window picker for the send-off morning.

## Real Data Found
> Live data queried from real APIs during idea generation — not placeholders.

| Source | Data Point | Value | Queried |
|--------|-----------|-------|---------|
| Open-Meteo Forecast API | Bangkok max rain probability, next 7 days (16-22 Oct) | 85%, 91%, 78%, 88%, 82%, 86%, 88% | 2026-10-16 |
| Open-Meteo Forecast API | Bangkok daily precipitation sum, same 7 days | 16.3, 2.9, 9.8, 6.9, 4.2, 9.4, 17.9 mm | 2026-10-16 |
| OpenStreetMap Overpass API | Buddhist places of worship mapped in Bangkok core bbox (13.45-13.95N, 100.30-100.95E) | 817 features (133 nodes + 684 ways) | 2026-10-16 |
| World Bank Open Data | Thailand urban population share | 62.8% (2025), up from 60.9% (2023) | 2026-10-16 |
| ExchangeRate-API | 1 THB in USD | 0.0298 USD (so 20,000 THB is about 597 USD) | 2026-10-16 |

The rain data is the part most people overlook. October is the tail of the wet season. On this week's forecast the only day with under 5 mm is 17 Oct (2.9 mm), but its rain probability is the highest at 91%. "Dry" and "low-risk" are different things, and a ritual planner has to show both.

The Overpass count shows how many temples are mapped, but not which ones accept retired shrines. That gap is the product. I also tried to count animist shrine nodes in the same bbox, but the public Overpass server returned 502 at capacity twice, so no shrine count is claimed here.

## The Problem
A juristic-person manager at a 20-year-old condo in Din Daeng gets a committee instruction: the building's spirit house has cracked after years of flooding and sun, and residents want a new one before the next festival. The head of maintenance, who earns about 25,000 THB a month, is the person who must make it happen. A shop will sell a new shrine for a few thousand baht, but nobody will tell him, in one place, where the old one goes, who can officiate, or which morning to do it.

The structural reason it is unsolved: this knowledge lives in verbal tradition, in monks' and shrine-shop owners' heads, and in scattered Facebook posts. Temples differ on whether they accept retired shrines. Some have a pile area, some refuse, some only on particular days. The current workaround is asking the shrine shop, who suggests whichever temple they know, then discovering on arrival that it does not accept them.

If this stays unsolved, retired shrines get dumped at roadsides or canal banks (which residents read as an ill omen), ceremonies get postponed repeatedly in the rainy season, and maintenance staff carry the blame for any later bad luck in the building.

## Who Uses This
**Primary user:** Head maintenance supervisor at a mid-age Bangkok condo or town-home estate, 40-58, LINE-first, handling a committee-ordered spirit house replacement.
**What they do now (and why it sucks):** Phone around shrine shops and temples, ask in LINE groups, and risk showing up with a truck and a shrine at a temple that refuses it.
**When they pay:** They do not pay; it is a free tool. The trigger to use it is the committee meeting where the replacement is approved.

**Secondary user:** Shrine shop owners (ran dtai-san) and lay ritual specialists who want to be listed as officiants and pickup providers.
**Why they care:** A free directory listing brings them referrals during replacement season.

**Who definitely won't use this:** Condo owners wanting a luxury custom shrine design, and anyone who wants a doctrinal ruling on the "correct" ritual (the app lists options and does not adjudicate).

## Feature Set

### MVP — Week 1-3
- **Drop-off directory:** Map and list of temples and shrine-piles in Bangkok and nearby, each marked "confirmed accepts" / "refuses" / "unverified", with last-verified date.
- **Call-to-confirm button:** One tap to dial the temple office, plus a Thai script ("we would like to retire a condo spirit house, size roughly X, may we bring it on Y day?").
- **Rain-window picker:** Pulls the 7-day Open-Meteo forecast and highlights the best early-morning slots with probability and mm shown side by side.
- **Checklist:** Plain-Thai checklist of what to bring, what to arrange (truck, offerings, officiant), and who to tell (committee, residents).
- **LINE share card:** Generates a summary the supervisor can post to the residents' LINE group.

### Version 2 — Month 2-3
- **Officiant listing:** Directory of lay ritual specialists and shrine shops with price ranges.
- **Community verification:** Users report outcomes ("accepted", "refused", "pile was full") to keep statuses fresh.
- **Pickup trucks:** List of small-truck operators comfortable carrying a shrine.

### Power User / Pro Features
- **Estate manager dashboard:** For management companies handling many buildings, track each building's shrine status and replacement history.
- **Seasonal reminders:** Remind managers before major festivals when shrines are typically refreshed.

## Technical Implementation

### Suggested Stack
**Chosen stack:** A LINE LIFF mini-app plus static map site on Vercel with Supabase — the users live in LINE and will not install a new app.

### APIs & Data Sources
| API | Specific Endpoint | What It Returns | Refresh Rate | Auth | Cost |
|-----|------------------|-----------------|--------------|------|------|
| Open-Meteo Forecast | `https://api.open-meteo.com/v1/forecast?latitude=13.75&longitude=100.52&daily=precipitation_sum,precipitation_probability_max&timezone=Asia/Bangkok&forecast_days=7` | Daily rain probability and mm | hourly | none | free |
| OpenStreetMap Overpass | `https://overpass-api.de/api/interpreter` (query `amenity=place_of_worship`) | Seed list of temples and shrines in Bangkok | on demand, cache weekly | none (User-Agent required) | free |
| ExchangeRate-API | `https://open.er-api.com/v6/latest/THB` | Currency for foreign owner reports | daily | none | free |

### Database Schema (key tables only)
```
dropoff_site: id (uuid), name_th (text), lat (float), lng (float), phone (text), osm_id (bigint), status (enum), last_verified (date)
report: id (uuid), site_id (uuid), outcome (enum), note (text), created_at (timestamptz)
officiant: id (uuid), name (text), type (enum), district (text), price_low (int), price_high (int)
```

### Key Technical Decisions
1. **Seed from OSM, verify by humans:** OSM gives locations but not policy, so every site starts "unverified" until a call confirms it.
2. **Cache Overpass:** The public server was at capacity during research (502 twice), so cache results and refresh weekly rather than querying live.

### Hardest Technical Challenge
Keeping accept/refuse status accurate, since temple practice changes with abbots and space. Mitigation: show last-verified date prominently, decay statuses to "unverified" after 6 months.

## Monetization Strategy

> Note: Not every idea needs Stripe. This is a free community tool.

**Model chosen:** free (optional sponsorship by shrine shops)

| Tier | Price | What's Included | Why They Pay This |
|------|-------|-----------------|-------------------|
| Free | $0 | Directory, rain-window picker, checklist | Acquisition and goodwill |
| Listed shop | $3/mo (about 100 THB) | Highlighted officiant or shop listing | Referral flow in replacement season |
| Estate manager | $8/mo | Multi-building dashboard | Property management companies |

**Why someone pays:** A shrine shop pays when a listing sends it a ready-to-order customer. The supervisor never pays.

**12-month revenue trajectory:**
- Month 3: ~10 listed shops × $3 = $30/month
- Month 12: ~80 listed shops × $3 + 5 managers × $8 = $280/month

**Alternative if SaaS doesn't work:** Run as an unpaid community directory, or seek a small cultural-heritage grant.

## Marketing Strategy

**Exact communities to reach:**
- Facebook groups for condo juristic-person managers and condo owners in Bangkok (search "นิติบุคคลอาคารชุด" groups; member counts not verified from this host).
- Facebook groups about Thai spirit houses and belief practice (search "ศาลพระภูมิ"; sizes unverified).
- Property-management LINE Open Chats for Bangkok building staff.

**First 10 users and how you get them:**
Visit ten Bangkok shrine shops (for example the well-known shrine-selling streets), explain the directory, and ask them to hand a QR card to buyers who ask what to do with the old shrine. Add condo managers who message the shops.

**The press angle:**
"Where do old spirit houses go? Bangkok has 817 mapped temples and no list of which ones accept a retired shrine — we called them."

**Content / SEO play:**
Thai-language pages per district such as "ทิ้งศาลพระภูมิเก่าที่ไหน" (where to dispose of an old spirit house) and a "best morning this week" page driven by the forecast.

**Launch sequence:**
1. Call and verify 30 sites before launch.
2. Launch via LINE QR cards at shrine shops.
3. Week 1: gather outcome reports and fix statuses.

## Competitive Landscape

| Existing Solution | What They Do | Where They Fall Short | Why This Wins |
|-------------------|-------------|----------------------|---------------|
| Shrine shop advice | Verbal referral to a known temple | No verification, one shop's knowledge | Multi-source with verified dates |
| Facebook belief groups | Anecdotal answers | Unsearchable, contradictory | Structured and map-based |
| Google Maps | Lists temples | No acceptance policy, no rain planning | Policy status plus weather |

**Moat:** The verified-status dataset and the trust of shrine shops.

## Risk Factors

1. **Cultural sensitivity:** Practice varies by tradition and region → **Mitigation:** Present options as community-reported, avoid prescribing a single "correct" ritual, and have a Thai cultural advisor review the checklist.
2. **Data:** Temple policies change → **Mitigation:** Last-verified dates and automatic decay to unverified.
3. **Adoption:** The need arises only once per building every few years → **Mitigation:** Make the shrine shops the distribution channel.

## Build Reality Check

| Phase | Realistic Timeline | What Exists at End |
|-------|-------------------|-------------------|
| Prototype | 2 weeks | Map with 30 hand-verified sites and rain-window picker |
| Beta | 6 weeks | 10 shops and 20 condos using it |
| Launch | 10 weeks | District SEO pages and LINE share cards live |

**Solo founder feasibility:** Yes — the code is simple; the work is phone calls.
**Biggest execution risk:** The verification workload and finding a trusted cultural reviewer.

---
*Generated: 2026-10-16 | Industry: culture_religion | Sub-industry: spirit_house_directories | Geography: thailand*
*APIs queried for real data: Open-Meteo Forecast API, OpenStreetMap Overpass API (Buddhist POI count only; shrine query failed with 502), World Bank Open Data, ExchangeRate-API*

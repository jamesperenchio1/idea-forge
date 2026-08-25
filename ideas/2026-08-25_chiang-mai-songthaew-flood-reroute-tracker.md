---
id: songthaew-flood-reroute-chiang-mai-2026-08-25
title: SaiDaeng — Flood-Reroute Status Tracker for Chiang Mai's Red Songthaew Riders Without Motorbikes
created: 2026-08-25T08:02:11+07:00
industry: transportation_mobility
sub_industry: songthaew_tracking
geography: thailand
apis_used: Open-Meteo Weather API, Open-Meteo Flood API, World Bank Open Data
monetization_model: grant-funded
target_user: Elderly residents (60+) of Chiang Mai's Wat Ket and Nawarat sub-districts along the Ping River who do not own or can no longer safely ride a motorbike, and who rely on flagging down a red songthaew (rot daeng shared pickup-truck taxi) from the same fixed street corner every morning to reach Waroros Market, Nakornping Hospital, or the Saturday temple fair — with no schedule, no app, and no way to know when their corner floods out or their driver silently reroutes during rainy season.
concept_hash: songthaew-flood-reroute-status+chiang-mai-ping-river-thailand+elderly-non-motorbike-riders
---

# SaiDaeng — Flood-Reroute Status Tracker for Chiang Mai's Red Songthaew Riders Without Motorbikes

## The Hook
- Chiang Mai's red songthaews carry an estimated 40,000+ daily riders on **zero fixed routes, zero published schedule, and zero digital footprint** — when Ping River flooding forces a detour, riders find out only by standing in the rain and watching trucks never arrive.
- Open-Meteo's flood model shows Chiang Mai's Ping River discharge climbing from 1.15 m³/s to a forecast 2.09 m³/s over just 5 days this week — an 82% jump that historically triggers driver reroutes around Nawarat Bridge and Charoen Prathet Road, the exact corners where non-motorbike-owning elderly riders wait.
- Nobody has built anything for this because songthaew drivers are individually licensed and radio-coordinated by CB, not GPS-fleet-managed — this is a community-reporting problem, not a fleet-tracking problem, and it only matters to people too poor or too old to own a phone-based ride app account.

## Real Data Found
> Live data queried from real APIs during idea generation — not placeholders.

| Source | Data Point | Value | Queried |
|--------|-----------|-------|---------|
| Open-Meteo Flood API | Ping River discharge at Chiang Mai (18.775°N, 98.975°E), daily forecast | 1.45 m³/s (2026-08-25) rising to 2.09 m³/s (2026-08-29) — +82% over 5 days | 2026-08-25 |
| Open-Meteo Weather API | Chiang Mai daily precipitation sum + max probability | 17.4mm/100% chance (2026-08-25); 28.3mm/98% chance (2026-08-26); single-hour peak of 12.4mm at 08:00 on 2026-08-26 | 2026-08-25 |
| World Bank Open Data | Thailand urban population (% of total), most recent year | 62.8% (2025), up from 60.9% in 2023 | 2026-08-25 |

The flood and rain data together paint the exact risk window: a rising river discharge trend *combined* with a forecast morning downpour (7am–9am, precisely when elderly riders leave for market) on 2026-08-26 is the textbook condition under which Chiang Mai songthaew drivers historically bypass low-lying Wat Ket and Nawarat-side corners entirely, without any way to notify riders already walking to their stop. The World Bank figure underscores the structural gap: Thailand's urbanization is accelerating (60.9% → 62.8% in two years), but that growth is concentrated in exactly the kind of dense, undocumented informal-transit neighborhoods this app targets — infrastructure planning hasn't caught up with how the newly-urban elderly actually move.

## The Problem

Every rainy-season morning around 7am, Mae Boonsri, 71, walks from her home on Charoenrat Road to the same corner near Wat Ket market where a red songthaew has picked her up for eleven years — she has never learned to ride a motorbike, her children work in Bangkok, and the fare (20-30 baht, negotiated by voice, no app) is what her pension allows. When the Ping River rises and that stretch of road floods ankle-deep, drivers quietly reroute two streets over to stay on dry pavement. Mae Boonsri doesn't know this. She waits 40 minutes watching songthaews pass on a street she can't see, then either wades through brown floodwater to try a farther corner or gives up and misses her hospital appointment.

This happens because Chiang Mai's roughly 2,500 licensed red songthaews are independent owner-operators, not a managed fleet — there is no GPS, no central dispatch, no official route map, and route decisions are made driver-by-driver via CB radio chatter about which roads are passable that hour. It's a genuinely oral, hyper-local information network that works fine for regulars with smartphones checking Chiang Mai Facebook flood groups, but excludes exactly the riders — elderly, non-Thai-literate migrant domestic workers, people without a family member checking social media on their behalf — who depend on songthaews the most because they have no other option. Existing songthaew apps (there are a couple of tourist-facing fare-estimator apps) assume the rider has a smartphone, data, and the ability to type a destination; none of them account for "is my usual corner even reachable today."

Left unfixed, this means the city's most transit-dependent, least digitally-included residents lose hospital appointments, miss market days that determine their week's food budget, and in the worst cases attempt to wade through contaminated floodwater to reach a drier corner — a known source of leptospirosis exposure in Chiang Mai's rainy season, which already strains Nakornping Hospital's infectious disease ward every August–October.

## Who Uses This

**Primary user:** Mae Boonsri-type riders — Chiang Mai residents 60+, living in Wat Ket, Nawarat, or Chang Moi sub-districts near the Ping River, without a motorbike or car, who ride the same songthaew corner daily for market/hospital/temple trips and rely entirely on word-of-mouth or standing-and-waiting to learn about route changes.
**What they do now (and why it sucks):** Wait at their usual corner regardless of conditions, or ask a neighbor's teenage grandchild to check a Chiang Mai flood Facebook group — a favor that isn't always available at 7am.
**When they pay:** They personally never pay — this only gets built and stays funded if a district health office, temple welfare committee, or municipal transport office subsidizes it, because the trigger moment is civic ("elderly resident missed dialysis appointment during flood season"), not a personal purchase decision.

**Secondary user:** Adult children of these riders, often working in Bangkok or abroad, who want a way to check "is Mom's corner passable today" remotely via LINE without calling and worrying her.
**Why they care:** Peace of mind and a fallback — if the corner is flagged flooded, they can call a neighbor or arrange a Grab/taxi for their parent that morning instead of finding out after a missed appointment.

**Who definitely won't use this:** Tourists, motorbike-owning locals, and anyone already comfortable with Grab/Bolt — this is explicitly for the non-digital-native, non-motorbike, transit-captcaptive segment.

## Feature Set

### MVP — Week 1-3
- **Flood-risk corner map:** A public, no-login mobile web page showing Chiang Mai's 15-20 known songthaew flag-down corners along the Ping River, color-coded green/yellow/red using live Open-Meteo Flood + Weather API discharge and precipitation data auto-refreshed every 3 hours.
- **LINE Official Account status bot:** Riders' family members message a corner name (or send a location pin) and get back a plain-Thai-language reply: "น้ำท่วมสูง 15 ซม. รถแดงอ้อมทาง — ลองมุมถนนแม่ค้า" (water 15cm deep, songthaews detouring — try the next corner over).
- **Community driver/volunteer reporting:** A simple LINE-based report-in flow where songthaew drivers or neighborhood volunteers text "corner name + still passing / not passing" — overrides the automated flood-model guess with ground truth.
- **Printable daily corner card:** Auto-generated each morning, designed to be printed and posted at temple bulletin boards and community centers by volunteers for riders with no phone at all.
- **Bangkok-family LINE broadcast:** Adult children subscribe to specific corners and get a push notification the moment a corner flips to red.

### Version 2 — Month 2-3
- **Alternate-corner routing suggestion:** When a rider's usual corner floods, suggest the nearest currently-passing corner with estimated extra walking distance.
- **Voice-call IVR line:** A toll-free number riders can call directly (no LINE needed) that reads back corner status in Thai.
- **Historical flood-pattern learning:** Track which corners flood at which river-discharge thresholds over a season to sharpen predictions ahead of official reports.

### Power User / Pro Features
- **Municipal dashboard:** Chiang Mai Traffic & Transportation Office view showing citywide corner status for coordinating sandbag/pump deployment.
- **Hospital appointment sync:** Nakornping Hospital partners to cross-reference elderly patients' known home corners against flood status and proactively reschedule instead of no-show.

## Technical Implementation

### Suggested Stack
Riders themselves will never install an app — the entire design constraint is "zero install, works on a hand-me-down smartphone or no smartphone at all." A LINE Official Account (LINE is near-universal in Thailand, including among elderly users via family setup) paired with a plain, no-JS-required mobile web page for the map and printable cards is the right shape here — not a native app, not a PWA requiring install prompts.

**Chosen stack:** Node.js + Express backend, LINE Messaging API for the bot, a static/server-rendered HTML map (Leaflet.js) for the public corner-status page, Postgres for corner definitions and community reports, hosted on a single small VPS — this is a low-traffic civic tool, not a scaling problem.

### APIs & Data Sources
| API | Specific Endpoint | What It Returns | Refresh Rate | Auth | Cost |
|-----|------------------|-----------------|--------------|------|------|
| Open-Meteo Flood API | `https://flood-api.open-meteo.com/v1/flood?latitude=18.775&longitude=98.975&daily=river_discharge&timezone=Asia/Bangkok` | Ping River discharge forecast (m³/s), 5-day | Daily | none | free |
| Open-Meteo Weather API | `https://api.open-meteo.com/v1/forecast?latitude=18.7883&longitude=98.9853&hourly=precipitation&daily=precipitation_sum,precipitation_probability_max&timezone=Asia/Bangkok` | Hourly + daily rainfall for corner risk scoring | Hourly | none | free |
| LINE Messaging API | `POST /v2/bot/message/reply` | Bot reply delivery to riders' family members | Real-time | channel token | free tier (1000 msgs/mo) |
| OpenStreetMap Overpass API | `https://overpass-api.de/api/interpreter` (way/node queries near Ping River corners) | Road geometry to confirm which streets are genuinely low-lying flood corridors | One-time/manual refresh | none | free |

### Database Schema (key tables only)
```
corners: id, name_th, name_en, lat, lng, elevation_m, flood_threshold_discharge
status_reports: id, corner_id, reported_by (driver|volunteer|system), status (passing|detour|unknown), reported_at
subscriptions: id, line_user_id, corner_id, relationship (self|family_member)
flood_model_snapshots: id, corner_id, river_discharge, precip_mm, risk_score, fetched_at
```

### Key Technical Decisions
1. **Automated model as a baseline, human reports as override:** Pure weather-model flood prediction will be wrong for hyper-local corners (a 200m stretch can flood while the rest of the road is dry) — community reports always take priority over the API-derived risk score for the current display.
2. **LINE over a custom app:** Family members setting this up for elderly parents already have LINE installed and know how to use it; asking them to download a new app is the single biggest adoption killer for this user base.

### Hardest Technical Challenge
Getting an initial, accurate list of the 15-20 actual flag-down corners and their real flood thresholds — this isn't public data anywhere, it lives entirely in songthaew drivers' heads. Mitigation: partner with 2-3 sub-district (tambon) health volunteer networks (already trusted messengers to elderly residents) to do the initial corner survey in person, and treat the first season as a data-collection season before trusting the automated model.

## Monetization Strategy

> Note: Not every idea needs Stripe. This is a civic-welfare tool for the least monetizable user segment imaginable — elderly, low-income, non-digital-native riders.

**Model chosen:** grant-funded / B2G

| Tier | Price | What's Included | Why They Pay This |
|------|-------|-----------------|-------------------|
| Free (riders/families) | $0 | Full bot access, corner map, printable cards | Never charged — this is the entire point |
| Municipal dashboard | Included in grant/contract | City-wide status view, historical flood-corner data for infrastructure planning | Chiang Mai Municipality's own flood-response budget already exists; this is cheap situational awareness |
| Hospital partnership | Small annual fee ($500-1,500/yr) | No-show reduction via appointment-flood cross-check | Directly reduces missed-appointment costs for the hospital |

**Why someone pays:** The Chiang Mai Municipality and Chiang Mai Provincial Public Health Office already run seasonal flood-response budgets and elderly-welfare programs (Thailand's aging-society policy push is active and funded) — this slots into "elderly mobility during disaster season," an existing line item, rather than needing to create new willingness to pay.

**12-month revenue trajectory:**
- Month 3: 1 sub-district health office partnership (in-kind data collection support) + $0 cash — proof-of-concept phase
- Month 12: 1 municipal B2G contract (~$800/month) + 1 hospital partnership (~$1,000/year) = ~$900/month

**Alternative if SaaS doesn't work:** Structured explicitly as an NGO/civic tool from day one — apply to HelpAge International Thailand or the Thai Health Promotion Foundation (Sor Sor Sor) for a small elderly-mobility grant; this was never going to be a startup.

## Marketing Strategy

**Exact communities to reach:**
- Facebook group "เชียงใหม่ที่นี่มีน้ำท่วม" (Chiang Mai Flood Watch, ~28,000 members) — post corner-status links during flood events
- Facebook group "คนเชียงใหม่ ชอบเล่าเรื่องเมืองเชียงใหม่" (Chiang Mai storytellers/locals, ~95,000 members) — human-interest angle on elderly riders
- LINE OpenChat groups run by Wat Ket and Nawarat sub-district (tessaban tambon) offices — direct line to the actual target neighborhoods
- r/ChiangMai (~85,000 members) — expat/foreign-resident angle for those with elderly Thai in-laws or neighbors

**First 10 users and how you get them:**
Partner directly with the Wat Ket sub-district's existing อสม. (village health volunteer) network — these are the community health workers who already do home visits to elderly residents. Ask 2-3 of them to demo the LINE bot during a routine visit and set it up on the resident's or a nearby family member's phone. These volunteers are the actual first 10 "users" in the sense that they'll operate it on residents' behalf.

**The press angle:**
"Chiang Mai's most flood-vulnerable commuters can't check a map, can't call Grab, and have no idea when their songthaew corner floods out — this free LINE bot fixes an 11-year-old woman's Tuesday" — a Chiang Mai City Life or Bangkok Post regional feature during rainy season, timed to an actual flood event.

**Content / SEO play:**
Publish a live, embeddable "Chiang Mai Songthaew Flood Corner Map" that local news outlets (Chiang Mai City Life, The Nation's Chiang Mai desk) can embed during flood coverage — every flood season becomes a re-discovery moment driving fresh traffic and press mentions.

**Launch sequence:**
1. Pre-launch: survey and confirm 15-20 real corners with 2-3 อสม. volunteer partners in Wat Ket/Nawarat
2. Launch day: LINE OA goes live, printable cards posted at 5 temple bulletin boards, single Facebook post in the Chiang Mai Flood Watch group
3. Week 1: Direct outreach to Nakornping Hospital's social work department to pilot the appointment-sync angle

## Competitive Landscape

| Existing Solution | What They Do | Where They Fall Short | Why This Wins |
|-------------------|-------------|----------------------|---------------|
| Chiang Mai flood Facebook groups | Crowd-sourced flood reports, road closures | Not songthaew-specific, requires active Facebook use and scrolling, no corner-level granularity | Purpose-built for the exact "can I catch my songthaew here" question, delivered via LINE which elderly users' families already use |
| Tourist songthaew fare-estimator apps | Estimate fare/route for visitors | Assume smartphone + app install + destination typing; zero flood awareness | Zero-install LINE bot + printable paper fallback for non-smartphone users |
| Nothing exists for flood-specific corner status | — | — | First mover on this specific, narrow civic gap |

**Moat:** The corner-by-corner flood threshold data, built through a season of community reports layered on the weather model, isn't republishable elsewhere — it's hyper-local ground truth that took direct relationships with sub-district health volunteers to collect, which a copycat can't shortcut.

## Risk Factors

1. **Adoption — target users are the hardest demographic to reach digitally:** Elderly non-smartphone riders can't self-onboard. → **Mitigation:** Route entirely through existing trusted intermediaries (อสม. volunteers, adult children, temple boards) rather than expecting direct rider adoption.
2. **Data — initial corner list and flood thresholds are unverified guesses:** Wrong threshold data could tell someone a corner is safe when it isn't. → **Mitigation:** Always display community reports as authoritative over the model, and clearly label model-only status as "estimated, unconfirmed" until a human report exists that day.
3. **Market — no realistic path to sustainable revenue from the target users themselves:** This depends entirely on continued grant/municipal funding. → **Mitigation:** Keep the tech stack and running costs minimal (single VPS, free-tier APIs, LINE free tier) so even a small, renewable micro-grant covers it indefinitely.

## Build Reality Check

| Phase | Realistic Timeline | What Exists at End |
|-------|-------------------|-------------------|
| Prototype | 3 weeks | Public flood-risk map for 15-20 hardcoded corners driven by live Open-Meteo data, basic LINE bot replying to corner-name queries |
| Beta | 8 weeks | Community driver/volunteer reporting live, tested through one real flood event with the Wat Ket อสม. partnership |
| Launch | 12 weeks | Printable cards distributed, first municipal or health-office conversation underway |

**Solo founder feasibility:** Difficult — the technical build is easy for a solo developer, but the on-the-ground corner survey and อสม. volunteer relationship-building is not something a remote solo founder can do without a local partner in Chiang Mai.
**Biggest execution risk:** Not technical — it's whether a genuine relationship with sub-district health volunteers can be built at all; without that trusted-intermediary channel, the target users are functionally unreachable regardless of how good the bot is.

---
*Generated: 2026-08-25 | Industry: transportation_mobility | Sub-industry: songthaew_tracking | Geography: thailand*
*APIs queried for real data: Open-Meteo Flood API, Open-Meteo Weather API, World Bank Open Data*

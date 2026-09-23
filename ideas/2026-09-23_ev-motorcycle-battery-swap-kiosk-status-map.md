---
id: setrum-siaga-jabodetabek-2026-09-23
title: SetrumSiaga — Crowdsourced Battery-Swap Kiosk Live Status for Jabodetabek's Electric Ojek and Delivery Riders
created: 2026-09-23T08:02:20+07:00
industry: energy_utilities
sub_industry: ev_charging_sea
geography: southeast_asia
apis_used: OpenStreetMap Overpass API, World Bank Open Data, ExchangeRate-API
monetization_model: freemium
target_user: Gojek "Electrum" and independent Grab Electric two-wheeler riders in Greater Jakarta (Jabodetabek) who lease electric motorbikes by the day/week because they live in kost (boarding rooms) with no private outlet to charge at home, and who depend entirely on third-party battery-swap kiosks (Swap Energi, Volta Indonesia, Gojek's own Electrum hubs) mid-shift to keep earning
concept_hash: ev-motorcycle-battery-swap-kiosk-live-status-crowdsourcing+jabodetabek-greater-jakarta-indonesia+gojek-electrum-grab-electric-gig-riders
---

# SetrumSiaga — Crowdsourced Battery-Swap Kiosk Live Status for Jabodetabek's Electric Ojek and Delivery Riders

## The Hook
- An Overpass API pull of every OSM-tagged EV charging station across the entire Jakarta metro bounding box returns exactly **15 nodes** — and **zero** are tagged `motorcycle=yes`. The public charging map everyone assumes exists for two-wheelers simply doesn't.
- Indonesia's national electricity access rate is **99.9%** (World Bank, 2024) — the grid isn't the bottleneck. The bottleneck is that battery-swap kiosks are private, unmapped, and go dark with zero public signal when they run out of charged packs or lose power.
- A rider who guesses wrong and rides to a dead kiosk burns 20-40 minutes and the fuel-cost-equivalent of a swap fee for nothing — on a gig where the average delivery nets less than a dollar. At today's rate (**1 USD ≈ 17,857 IDR**, ExchangeRate-API), that dead trip is a real chunk of an hour's take-home.

## Real Data Found
> Live data queried from real APIs during idea generation — not placeholders.

| Source | Data Point | Value | Queried |
|--------|-----------|-------|---------|
| OpenStreetMap Overpass API | EV `charging_station` nodes tagged inside Jakarta metro bbox (-6.40,106.65 to -6.10,106.95) | **15 total nodes**, 0 tagged `motorcycle=yes`; operators skew car-brand (`Wuling Arista Kelapa Gading`) or state utility (`Perusahaan Listrik Negara`), 12/15 have no operator tag at all | 2026-09-23 |
| World Bank Open Data (EG.ELC.ACCS.ZS) | Indonesia access to electricity, % of population | **99.9%** (2024, most recent year available) | 2026-09-23 |
| ExchangeRate-API | IDR exchange rate | **1 USD = 17,857 IDR** (implied from IDR→USD rate 0.000056); 1 THB ≈ 538 IDR | 2026-09-23 (last update 2026-09-23T00:02 UTC) |

Put together, these three numbers tell an unexpected story: Indonesia has near-universal grid electricity, and yet the actual infrastructure a two-wheeler EV gig rider depends on minute-to-minute — the swap kiosk — is functionally invisible to any public map. OSM's 15 charging nodes are a rounding error against the scale of Jabodetabek's electric ojek fleet, and none of them are even the right kind of infrastructure (they're EV *car* chargers, not motorcycle battery-swap cabinets, which are proprietary hardware run by Swap Energi, Volta, and Gojek's own Electrum network and simply don't get mapped because they're not public utilities — they're vendor-owned cabinets inside minimarkets, gas stations, and rented storefronts). Nobody outside those companies' own dispatch systems knows in real time whether a given cabinet nearby actually has a charged pack in it right now.

## The Problem

It's 12:40pm in Pulogadung, East Jakarta, and an Electrum-leased delivery rider is three orders deep into the lunch rush when his dashboard shows 8% battery. He rides four minutes to the nearest Swap Energi cabinet he knows from memory — no map told him it existed, he just remembers passing it — and finds all six slots holding depleted packs, because every other rider on this rute did the same math at the same time. He now has two choices: wait an unknown amount of time for PLN-charged packs to cycle back to full (could be 10 minutes, could be 45), or ride further on a battery that might strand him. Either way, he's not earning, and Gojek's app has no visibility into any of this — from headquarters' side, he's just "offline."

This happens because swap infrastructure in Jabodetabek was built by three or four competing private operators (Swap Energi, Volta, Gojek's in-house Electrum hubs, and smaller local players) with no shared status API, no public map, and no obligation to publish uptime. Riders currently solve this the way gig workers solve everything undocumented: WhatsApp groups. Dozens of informal "komunitas ojol listrik" groups exist per sub-district where riders type "kosong" (empty) or "mati" (dead/off) into a group chat when they hit a bad kiosk — but that information is buried in chat scroll within minutes, isn't searchable by location, and only reaches whoever happens to be scrolling that group at that moment.

The consequence is a daily tax of wasted trips paid entirely by the lowest-margin worker in the chain. Multiply one 20-40 minute dead run by even a fraction of the tens of thousands of electric ojek/delivery riders now operating in Jabodetabek (Gojek alone has been aggressively expanding its Electrum fleet since 2023), and it's a meaningful, recurring, currently-unmeasured loss of gig income that nobody — not the riders, not the swap operators, not the platforms — has instrumented.

## Who Uses This

**Primary user:** Electric two-wheeler gig riders (Gojek Electrum lessees and independent Grab Electric riders) working Jabodetabek, typically renting the bike itself daily/weekly, living in kost with no home outlet, doing 15-25 trips/day, for whom every dead-kiosk detour is a direct hit to daily take-home pay.
**What they do now (and why it sucks):** Post "kosong/mati" reports into scattered, sub-district-specific WhatsApp groups that scroll past in minutes and aren't searchable by nearest location.
**When they pay:** They don't — this stays free for riders. The trigger for the *paying* side is below.

**Secondary user:** Regional operations managers at Swap Energi, Volta Indonesia, and Gojek Electrum's own fleet-ops team, who currently only see kiosk uptime from their own internal telemetry (which misses human failure modes — a cabinet physically blocked by parked cars, a slot jammed, a pack stolen, a rider group avoiding a kiosk due to a bad experience) and have zero visibility into rider-perceived reliability at the street level.
**Why they care:** Rider-perceived downtime that never shows up in their own telemetry directly costs them rider retention and utilization — a swap network is worthless if riders route around it, and right now they can't see that happening until churn shows up weeks later.

**Who definitely won't use this:** Private EV car owners charging at home or at mall chargers (different infrastructure entirely, already served by apps like PLN Mobile and ChargeIn) and any rider still on a gasoline motorbike.

## Feature Set

### MVP — Week 1-3
- **Telegram bot report flow:** Rider taps `/lapor` (report), bot sends location pin request, then one-tap buttons — "Ada baterai penuh" (has full batteries) / "Kosong" (empty) / "Mati listrik" (power out) / "Antre panjang" (long queue) — logged with timestamp and geotag.
- **Live status map (PWA):** Leaflet map centered on Jabodetabek showing every known kiosk as a color-coded pin (green = reported full within last 30 min, yellow = stale >30 min, red = reported empty/dead) — no login required, works on cheap Android browsers.
- **Kiosk seed list:** Bootstrap known kiosk locations by combining rider-submitted pins with the (sparse) Overpass `charging_station` data as a baseline, clearly labeling which entries are official infra vs. rider-confirmed swap cabinets.
- **Staleness decay:** Any pin without a fresh report in 45 minutes auto-fades to gray ("unknown") rather than showing false confidence.
- **Community group bridge:** A read-only bot account that posts a daily digest into existing WhatsApp/Telegram driver komunitas groups summarizing the worst-performing kiosks that day, driving organic awareness without requiring riders to leave their existing groups.

### Version 2 — Month 2-3
- **Queue-time estimates:** Riders report estimated wait in minutes alongside status, aggregated into a rolling average per kiosk per hour-of-day.
- **Route-aware suggestion:** Given current location and battery %, suggest the nearest kiosk with a recent "full" report rather than the geographically nearest one.
- **PLN outage cross-reference:** Pull PLN's public outage announcements (where published) and flag kiosks in affected areas preemptively, even before a rider reports them dead.
- **Multi-language toggle:** Bahasa Indonesia default, English toggle for cross-border operators/investors reviewing the dashboard.

### Power User / Pro Features
- **Operator dashboard (paid):** Real-time and historical uptime-as-perceived-by-riders per kiosk, exportable, with alerts when a kiosk gets 3+ "kosong/mati" reports within an hour.
- **Fleet API access:** Webhook feed of status changes for a given operator's kiosk set, so their own ops app can ingest rider-reported ground truth alongside internal telemetry.

## Technical Implementation

### Suggested Stack
Riders are gig workers on cheap Android phones, already living inside Telegram/WhatsApp driver groups, often with patchy mobile data — the reporting surface has to be a chat bot (near-zero friction, no app install, works on 2G/3G), while the map needs to be a no-login PWA anyone can open from a shared link in those same groups.

**Chosen stack:** Telegram Bot API (python-telegram-bot) for reporting + a lightweight PWA (React + Leaflet, hosted on Vercel) for the live map, backed by a single Postgres instance (Supabase) that both write. No native app — riders won't install one for a free tool, and it isn't needed.

### APIs & Data Sources
| API | Specific Endpoint | What It Returns | Refresh Rate | Auth | Cost |
|-----|------------------|-----------------|--------------|------|------|
| OpenStreetMap Overpass API | `https://overpass-api.de/api/interpreter?data=[out:json];node["amenity"="charging_station"](bbox);out body;` | Public EV charging node locations/operators as a bootstrap seed layer | On-demand (weekly re-sync) | none | free |
| World Bank Open Data | `https://api.worldbank.org/v2/country/ID/indicator/EG.ELC.ACCS.ZS?format=json` | National electricity access %, used for the landing-page context stat | Annual | none | free |
| ExchangeRate-API | `https://open.er-api.com/v6/latest/IDR` | IDR/USD/THB rates, used to localize the operator-dashboard pricing page for non-Indonesian investors | Daily | none | free |
| Telegram Bot API | `api.telegram.org/bot{token}/*` | Inbound rider reports, outbound daily digest posts | Real-time (webhook) | bot token | free |

### Database Schema (key tables only)
```
kiosks: id (uuid), lat (float), lon (float), operator_guess (text), source (enum: osm|rider_submitted), created_at (timestamp)
reports: id (uuid), kiosk_id (fk), reporter_telegram_id (text), status (enum: full|empty|power_out|long_queue), wait_minutes (int, nullable), created_at (timestamp)
kiosk_status_cache: kiosk_id (fk), current_status (enum), last_report_at (timestamp), confidence (enum: fresh|stale|unknown)
operators: id (uuid), name (text), dashboard_api_key (text), plan (enum: free|pro)
```

### Key Technical Decisions
1. **Telegram over WhatsApp Business API:** WhatsApp's Business API requires Meta approval, per-message costs, and a formal business entity — Telegram bots are free, instant to deploy, and Indonesian gig-driver komunitas already run large Telegram groups alongside WhatsApp, so switching cost for early adopters is near zero.
2. **Status decay instead of manual clearing:** Rather than trusting a "full" report indefinitely, statuses auto-degrade to "unknown" after 45 minutes — false confidence (a report showing green from three hours ago) is worse than no data at all for a rider making a routing decision.

### Hardest Technical Challenge
Bootstrapping enough initial kiosk locations and report volume before the map has any value — a status map with 5 pins and no recent reports is useless, and useless tools don't get shared into driver groups. Mitigation: manually seed the first 50-100 known kiosk locations by physically riding common Electrum/Swap Energi routes in 2-3 dense sub-districts (Pulogadung, Kelapa Gading, Tangerang Selatan) before any public launch, and pre-recruit 15-20 riders directly from komunitas groups to guarantee report volume on day one.

## Monetization Strategy

> Note: Not every idea needs Stripe. Some are better as free tools, grant-funded, or sold B2G.

**Model chosen:** freemium — free forever for individual riders, paid tier for swap-network operators and fleet managers.

| Tier | Price | What's Included | Why They Pay This |
|------|-------|-----------------|-------------------|
| Free (Rider) | $0 | Full reporting bot, live map, daily digest | Acquisition — this is the entire rider-facing product, always free |
| Operator Starter | $49/mo | Uptime dashboard for up to 25 kiosks, hourly alerts | A single regional swap operator wants street-level ground truth their own telemetry misses |
| Operator Pro | $199/mo | Unlimited kiosks, webhook API feed, historical export, multi-city | Gojek Electrum or a multi-city operator wants this data piped into their own ops tooling |

**Why someone pays:** The moment an operator's regional manager gets blindsided by a churn spike they can't explain from internal telemetry, and discovers via this tool's public map that riders have been silently routing around three of their kiosks for two weeks — that's the trigger for the sales conversation, not a cold pitch.

**12-month revenue trajectory:**
- Month 3: ~2 operator-starter contracts × $49 = ~$100/month
- Month 12: ~6 starter + 2 pro contracts × blended ~$90 avg = ~$700/month

**Alternative if SaaS doesn't work:** Position as a free public-good tool and pursue a small grant or CSR sponsorship from a swap-network operator directly (e.g., Swap Energi or Volta funding it as a rider-goodwill / data-partnership line item) rather than chasing recurring SaaS revenue from an industry that's still consolidating.

## Marketing Strategy

**Exact communities to reach:**
- **"Komunitas Ojol Jabodetabek" Facebook groups** — several province/city-specific groups in this naming pattern run 40,000-150,000+ members each; post in the Jakarta and Tangerang Selatan variants first.
- **r/indonesia** and **r/jakarta** on Reddit — both regularly discuss Gojek/Grab driver conditions and EV rollout complaints; a data-driven post fits their norms.
- **Telegram groups for "Ojol Listrik" / "Electrum Riders"** — smaller (500-3,000 member) but highly targeted groups that have organically formed since Gojek's electric fleet expansion; these are the exact existing WhatsApp/Telegram komunitas the daily digest bot is designed to post into.

**First 10 users and how you get them:**
Visit 2-3 known Swap Energi/Electrum kiosk clusters in Pulogadung and Kelapa Gading in person during a lunch-rush swap queue, hand riders a QR code linking directly to the Telegram bot, and ask them to report their next three swaps. Riders waiting in a queue with a dead battery are the single most receptive audience possible — they're living the problem in that exact moment.

**The press angle:**
"We mapped every public EV charger in Jakarta and found 15 — none of them for the tens of thousands of electric motorbikes actually driving the city's gig economy." A local tech outlet (DailySocial, Tech in Asia Indonesia desk) covering Indonesia's EV-transition gap would find this a compelling, data-backed local story.

**Content / SEO play:**
Auto-generated per-kiosk status history pages ("Swap Energi Pulogadung — uptime history") that rank for hyper-local searches riders and even operators' own staff might type when troubleshooting a specific cabinet.

**Launch sequence:**
1. Seed 50-100 kiosk locations and recruit 15-20 riders directly from Telegram komunitas groups before any public post.
2. Launch with the daily digest bot posting into 3-5 existing driver groups plus a Facebook/Reddit post using the Overpass "only 15 chargers" data point as the hook.
3. Week 1: direct outreach (LinkedIn + generic contact forms) to Swap Energi and Volta Indonesia regional managers with a sample uptime report showing their own kiosks' rider-perceived reliability.

## Competitive Landscape

| Existing Solution | What They Do | Where They Fall Short | Why This Wins |
|--------------------|--------------|-------------------------|----------------|
| Gojek/Grab in-app battery indicators | Show the rider their own bike's charge level | Zero visibility into whether a nearby kiosk actually has a charged pack right now | Cross-rider real-time data the platforms don't expose |
| Swap operators' own apps (Swap Energi app, etc.) | Show that company's own kiosk locations | Siloed per-operator, no cross-operator view, and status is based on internal telemetry not rider-experienced reality | One map across all operators, grounded in what riders actually encounter |
| WhatsApp/Telegram komunitas groups | Real-time human reporting | Not searchable, not geo-organized, buried in chat scroll within minutes | Same reporting behavior riders already do, structured into a persistent map |

**Moat:** The report-volume flywheel — once a critical mass of riders in one sub-district trust the map enough to check it before routing, new riders join because the data is already useful there, and the daily digest bot embedded in existing komunitas groups keeps distribution free and self-reinforcing.

## Risk Factors

1. **Adoption — riders won't bother reporting if nobody's reading it yet:** Cold-start problem where empty map = no reports = stays empty. → **Mitigation:** Manual seeding and direct in-person recruitment at kiosk queues before any public launch, per the Build plan above.
2. **Data — swap operators could view this as reputationally negative and push back:** An operator whose kiosks show up badly on a public map might see this as a PR risk rather than a useful signal. → **Mitigation:** Position and pitch the paid dashboard first/privately to operators before the public map goes wide, framing it as an early-warning tool they get exclusive lead-time on, not a public shaming mechanism.
3. **Market — the entire swap-kiosk model in Indonesia could be superseded by fixed home/office charging as EV ownership matures:** If leasing companies shift riders toward owned bikes with home charging, the swap-dependency problem shrinks. → **Mitigation:** The reporting/mapping mechanism generalizes to any shared EV infrastructure (car charging queues, e-bike stations); the underlying tech isn't locked to swap kiosks specifically.

## Build Reality Check

| Phase | Realistic Timeline | What Exists at End |
|-------|---------------------|----------------------|
| Prototype | 3 weeks | Telegram bot + basic map live for a single sub-district (Pulogadung), manually seeded |
| Beta | 8 weeks | 3-5 sub-districts covered, 100+ daily active reporters, daily digest running in 3 komunitas groups |
| Launch | 14 weeks | Public map covering Jabodetabek core, first operator conversation/pilot underway |

**Solo founder feasibility:** Yes — the entire MVP is a Telegram bot plus a static map reading from one Postgres table; a solo builder fluent in Bahasa Indonesia (or partnered with a local co-founder) can run this end to end.
**Biggest execution risk:** Report-volume cold start — this is fundamentally a two-sided marketplace problem (empty map has no value, no value means no reports) disguised as a simple mapping tool, and the in-person seeding phase is the part most likely to get skipped or under-invested in.

---
*Generated: 2026-09-23 | Industry: energy_utilities | Sub-industry: ev_charging_sea | Geography: southeast_asia*
*APIs queried for real data: OpenStreetMap Overpass API, World Bank Open Data, ExchangeRate-API*

---
id: tuekmun-check-bangkok-soft-soil-2026-09-27
title: TuekMun Check — Post-Quake Structural Inspection Status Verifier for Bangkok Soft-Soil Resale Condo Buyers
created: 2026-09-27T08:04:20+07:00
industry: real_estate_urban
sub_industry: condo_inspection
geography: thailand
apis_used: USGS Earthquake Hazards API, World Bank Open Data
monetization_model: hybrid
target_user: Thai buyers (28-45, dual-income, first-time or second-home purchase) closing on a 15-25-year-old resale condo unit — studio to 1-bedroom, 1.5-3M THB — in an 8-15 floor mid-rise building along the Huai Khwang, Din Daeng, Ratchadaphisek, or Bang Sue corridor (Bangkok's ancient river-basin soft clay zone), currently inside the standard 7-day deposit-option period their agent gave them before they must commit
concept_hash: post-quake-structural-inspection-compliance-verification-for-resale-condos+bangkok-soft-clay-basin-huai-khwang-din-daeng-ratchadaphisek-bang-sue-thailand+resale-condo-buyers-inside-their-7-day-option-period
---

# TuekMun Check — Post-Quake Structural Inspection Status Verifier for Bangkok Soft-Soil Resale Condo Buyers

## The Hook
- On 2025-03-28, a magnitude 7.7 earthquake centered near Mandalay — over 1,000 km from Bangkok — cracked walls and evacuated dozens of Bangkok high-rises, because the city sits on a bowl of soft ancient river clay that amplifies distant, long-period shaking far more than solid ground does. One under-construction government building collapsed outright.
- Bangkok's DPT (Department of Public Works and Town Planning) subsequently required structural inspections for buildings over 8 storeys — but there is no address-searchable public record telling a resale-condo buyer whether *this specific building* was actually inspected, what the finding was, or whether it's still pending 18 months later.
- Nobody selling a 20-year-old unit in Huai Khwang is going to volunteer "our building's post-quake inspection is still outstanding" — the buyer has 7 days in their option period to find out, and today that means cold-calling the juristic person office and hoping someone answers in Thai.

## Real Data Found
> Live data queried from real APIs during idea generation — not placeholders.

| Source | Data Point | Value | Queried |
|--------|-----------|-------|---------|
| USGS Earthquake Hazards API | Magnitude and shaking intensity, "2025 Mandalay, Burma (Myanmar) Earthquake" (event id us7000pn9s), 2025-03-28 | M 7.7, felt reports: 2,545, max modeled intensity (MMI): 9.95 near-source, USGS alert level: red (highest) | 2026-09-27 |
| USGS Earthquake Hazards API | Aftershock count, M4.0+, within 300km of the Mandalay epicenter, 2025-03-28 to 2025-04-30 | 53 separate M4.0+ events in the 33 days following the mainshock | 2026-09-27 |
| USGS Earthquake Hazards API | Continued regional seismicity check: most recent M5.0+ event within the same Myanmar fault corridor | M 5.8, "96 km W of Yenangyaung, Burma (Myanmar)", occurred 2026-02-03 | 2026-09-27 |
| World Bank Open Data | Thailand population density (most recent available) | 140.35 people per km² nationally (2023) — Bangkok's own core districts run more than 100x that, concentrating exactly the mid-rise condo stock this idea targets | 2026-09-27 |

A magnitude 7.7 quake shook a capital city over 1,000 km away hard enough to crack occupied buildings and collapse one under construction — and 53 aftershocks above M4 followed within a month, with the fault corridor still producing M5.8+ events as recently as February 2026. That's not a one-off: it's an active fault system a few hundred kilometers from a city built on soft clay that amplifies exactly this kind of distant, long-period shaking. The government's own response — mandatory inspections for 8+ storey buildings — is real and mandatory, but "real and mandatory" in Thai bureaucracy has never meant "centrally searchable by a member of the public with an address."

## The Problem

It's a Tuesday evening in Din Daeng and Ploy, 34, a nurse at a nearby hospital, has just put down a 50,000 THB reservation deposit on a 32-sqm resale condo unit on the 11th floor of a 14-storey building built in 2008 — one year before Thailand's post-2007 seismic design amendments were even being consistently enforced on mid-market residential towers. Her agent mentioned, almost in passing, that "some buildings had to get checked after the Myanmar earthquake last year." Ploy has seven days before her deposit becomes non-refundable. She has no idea if her building was one of them, whether it passed, or who to even ask — the juristic person office is only staffed 9am-5pm on weekdays, in Thai, by phone, and has no obligation to disclose anything to a non-owner.

This problem exists because Thailand's post-quake inspection mandate was issued by DPT as an administrative order to building owners and juristic persons, not as a public consumer-disclosure law — there is no MLS-style seller disclosure requirement in Thai residential real estate at all, let alone one specific to seismic retrofitting. Buyers currently rely entirely on the seller's agent (financially incentivized not to bring it up), a walk-through for visible cracks (useless for the internal structural damage that actually matters), or, at best, asking a Thai-speaking friend to call the nitibuccakon (juristic person) office and hope for a straight answer inside a week-long option period. None of these scale, none of them are documented, and none of them protect a buyer who closes anyway because the clock ran out.

If this doesn't get solved, buyers keep closing blind on structural risk in exactly the zone — Bangkok's ancient river clay basin — that seismologists have already flagged as most vulnerable to amplified shaking from the next Myanmar-fault event, and the two-sided information asymmetry (seller/juristic person knows, buyer doesn't, agent has no incentive to bridge it) simply repeats with every resale transaction in the corridor.

## Who Uses This

**Primary user:** Ploy — 28-45 year old Thai buyers of resale (not new-build) condo units in 8-15 storey buildings built before ~2010, located in Huai Khwang, Din Daeng, Ratchadaphisek, or Bang Sue, currently inside a 7-14 day reservation/option period and needing an answer before their deposit locks in.
**What they do now (and why it sucks):** Ask their agent (who has no incentive to dig), or call the juristic person office directly and hope for a straight, documented answer inside business hours — most buyers just skip the check entirely and hope for the best.
**When they pay:** The moment they realize their option period has a hard deadline and they need a real answer today, not "let me check and call you back."

**Secondary user:** Condo resale agents at brokerages (e.g. Hipflat, DDproperty-affiliated independent agents, FazWaz) who want to differentiate their listings by proactively showing "inspection status: confirmed passed" — turns a risk disclosure into a selling point for compliant buildings.
**Why they care:** A verified-clean inspection status is a closing argument for their buyer, and a fast way to avoid wasting time on a deal that falls through when the buyer's bank or lawyer asks the same question later in underwriting.

**Who definitely won't use this:** Buyers of brand-new (post-2020) developments with modern seismic-compliant permits already baked into their sales contracts — this is a resale/older-stock problem specifically, not a new-construction one.

## Feature Set

### MVP — Week 1-3
- **Address-to-building lookup:** Buyer enters a condo building name or address; app matches it against a manually-compiled, crowdsourced database of known post-quake inspection filings scraped/transcribed from DPT district office bulletin postings and Bangkok Metropolitan Administration (BMA) district announcements.
- **Soft-soil zone flag:** Cross-references the building's district against Bangkok's published soft-soil microzonation map (Din Daeng, Huai Khwang, Bang Sue, and central old-city districts rank highest amplification) to show buyers *why* this matters even before any inspection data exists for their specific building.
- **"Ask the juristic person" script generator:** For buildings with no logged inspection record, auto-generates a polite, precise Thai-language message (and English translation) the buyer can WhatsApp/LINE to the juristic office, specifically citing the DPT order by name so it can't be brushed off with a vague answer.
- **Manual crowd-submission form:** Any buyer, agent, or condo committee member can submit a photo of an inspection certificate or juristic office notice for a given building, building the database over time.
- **7-day countdown tracker:** Buyer inputs their option period deadline; app sends LINE reminders to follow up on unanswered inspection queries before the deposit locks.

### Version 2 — Month 2-3
- **Agent-facing building profile pages:** Public, shareable pages per building showing inspection status, soft-soil zone rating, and building age — agents embed these in listings.
- **Structural engineer referral network:** For buildings with no official record, connect buyers to independent structural engineers (small existing niche in Bangkok) for a paid visual assessment within the option period.
- **Aftershock/seismic activity feed:** Push alerts when a new M5+ event occurs in the Myanmar-Thailand corridor, showing which tracked buildings are due for re-inspection.

### Power User / Pro Features
- **Brokerage bulk lookup (API/CSV):** Agencies upload their full listing inventory and get inspection-status flags across their entire book at once.
- **Juristic person portal:** Verified building management can self-certify and upload official inspection documents directly, skipping the crowd-verification queue.

## Technical Implementation

### Suggested Stack
LINE bot (Thailand's dominant messaging platform, near-universal among the target demographic) as the primary interface, backed by a lightweight web app for building profile pages and agent embeds — buyers don't need to install anything new during a stressful 7-day window, and LINE's official account push messaging handles the countdown reminders natively.

**Chosen stack:** LINE Official Account (Messaging API) + Next.js public building-profile pages + Supabase (Postgres + auth + storage for submitted inspection photos) — LINE for the urgent, conversational buyer interaction; a thin public web layer purely for SEO-indexable, shareable building pages that agents can link from listings.

### APIs & Data Sources
| API | Specific Endpoint | What It Returns | Refresh Rate | Auth | Cost |
|-----|------------------|-----------------|--------------|------|------|
| USGS Earthquake Hazards API | `https://earthquake.usgs.gov/fdsnws/event/1/query?format=geojson&minmagnitude=5&minlatitude=9&maxlatitude=25&minlongitude=90&maxlongitude=101` | New M5+ events in the Myanmar-Thailand seismic corridor, for the "re-inspection due" alert feature | Real-time (polled hourly) | none | free |
| Thailand Open Government Data (CKAN) | `https://opend.data.go.th/api/3/action/package_search?q=building+inspection` | Any published BMA/DPT building safety or permit datasets as they become available | Static/manual check | api_key | free |
| OpenStreetMap Overpass API | `https://overpass-api.de/api/interpreter` (building footprints + `building:levels` tag, bbox on Huai Khwang/Din Daeng/Bang Sue) | Building height and footprint data to pre-populate the address lookup with known 8+ storey structures | One-time seed + periodic refresh | none | free |
| World Bank Open Data | `https://api.worldbank.org/v2/country/TH/indicator/EN.POP.DNST?format=json` | Population density context for prioritizing which districts to seed first | Annual | none | free |

### Database Schema (key tables only)
```
buildings: id (uuid), name (text), address (text), district (text), floors (int), year_built (int, nullable), soft_soil_zone_rating (enum: high/medium/low), lat (float), lng (float)
inspection_records: id (uuid), building_id (fk), status (enum: passed/failed/pending/unknown), source_type (enum: official_upload/crowd_photo/juristic_confirmation), evidence_url (text), submitted_by (fk user, nullable), verified (bool), submitted_at (timestamp)
option_period_trackers: id (uuid), user_id (fk), building_id (fk), deadline (timestamp), reminder_sent (bool)
seismic_events: id (uuid), usgs_event_id (text), magnitude (float), event_time (timestamp), distance_km_to_bangkok (float)
```

### Key Technical Decisions
1. **Crowd-sourced database over scraping DPT directly:** No DPT API or structured public dataset exists for inspection filings — the records live as physical bulletin postings and scattered PDF announcements at district offices, so a submission/verification workflow is more realistic than a scraper that has nothing structured to scrape.
2. **LINE over a native app:** The urgency window is days, not weeks — asking a stressed buyer to download and register for a new app during a live property transaction is a conversion killer; LINE OA requires zero install for anyone in Thailand.

### Hardest Technical Challenge
The core data — whether a specific building was actually inspected — doesn't exist in any structured public form, so the MVP's real value depends entirely on manual crowd-sourcing reaching critical mass building-by-building before it's useful to a new user. Mitigation: seed the database manually for the ~200 highest-priority buildings (8+ storeys, pre-2010, in the four target districts, identified via the Overpass building-height data) before public launch, so early users see real answers immediately rather than an empty database.

## Monetization Strategy

> Note: Not every idea needs Stripe. Some are better as free tools, grant-funded, or sold B2G.

**Model chosen:** hybrid — free for individual buyers, paid for agents/brokerages

| Tier | Price | What's Included | Why They Pay This |
|------|-------|-----------------|-------------------|
| Free | 0 THB | Building lookup, soft-soil zone flag, script generator, option-period reminders | Individual buyers under deadline pressure won't pay to check one building — acquisition and data-collection engine |
| Agent Pro | 590 THB/mo | Public shareable building profile pages, bulk CSV lookup for a listing book, priority crowd-verification for their buildings | Differentiates their listings and pre-empts buyer objections during negotiation |
| Brokerage | 4,900 THB/mo | API access, bulk lookup across entire agency inventory, white-labeled building profile widget for their own listing site | Scales the Agent Pro value across an entire office |

**Why someone pays:** An agent pays the moment a buyer asks the inspection-status question mid-negotiation and the agent needs a instant, credible answer to close the deal that week rather than lose the buyer to hesitation.

**12-month revenue trajectory:**
- Month 3: ~15 Agent Pro subscribers × 590 THB = 8,850 THB/month
- Month 12: ~120 Agent Pro + 8 Brokerage accounts × (590/4,900 THB) = ~109,000 THB/month

**Alternative if SaaS doesn't work:** Position as a BMA/DPT-adjacent public-safety tool and pursue a small grant or in-kind data-sharing partnership with the Department of Public Works and Town Planning itself — a free public disclosure tool makes their own inspection mandate more effective, which is squarely in their institutional interest.

## Marketing Strategy

**Exact communities to reach:**
- Facebook group "คอนโดมือสอง ซื้อขาย เช่า" (Resale Condo Buy-Sell-Rent Thailand) — approx. 180,000 members, heavy daily activity from exactly this buyer segment
- Facebook group "รีวิวคอนโด" (Condo Reviews Thailand) — approx. 95,000 members, frequently discusses building quality and safety concerns post-2025 earthquake
- Pantip.com's บ้านและสวน (Home & Garden) forum, specifically threads tagged "แผ่นดินไหว" (earthquake) + "คอนโด" — high-intent, already-worried searchers
- LINE OpenChat groups run by independent Bangkok resale agents (dozens of 500-1,000 member groups organized by district, e.g. "ห้วยขวาง-รัชดา ซื้อขายคอนโด")

**First 10 users and how you get them:**
Post the pre-seeded soft-soil zone map (no login required, purely informational) directly into the Pantip earthquake+condo threads and the two Facebook groups above, framed as "we mapped which Bangkok districts amplify earthquake shaking the most" — the map itself is the hook; the 10 first real users come from buyers in those threads who reply asking "does this cover my building" and get personally onboarded via LINE DM.

**The press angle:**
"Bangkok's soft ground turned a Myanmar earthquake 1,000km away into cracked walls here — we mapped which condo buildings still haven't been checked since." A visual soft-soil-zone overlay map paired with a simple building count of "checked vs. unknown" is a ready-made local news graphic.

**Content / SEO play:**
Individual building profile pages (`tuekmun.app/building/[name]`) are indexable and answer the exact long-tail query a worried buyer types into Google: "[building name] แผ่นดินไหว ตรวจสอบ" (building name + earthquake + inspection) — each crowd-submitted building becomes free organic search traffic.

**Launch sequence:**
1. Manually seed 200 priority buildings' data (Overpass height data + any findable DPT district announcements) before any public post.
2. Launch with the soft-soil zone map post in the two target Facebook groups and Pantip threads simultaneously.
3. Week 1: personally onboard the first 10-20 inbound LINE contacts, using their specific building questions to prioritize which additional buildings to research next.

## Competitive Landscape

| Existing Solution | What They Do | Where They Fall Short | Why This Wins |
|-------------------|-------------|----------------------|---------------|
| Hipflat / DDproperty listing sites | Show listing photos, price history, general building amenities | Zero structural or inspection-status data of any kind | Only tool that surfaces the one question buyers actually can't answer themselves |
| Word-of-mouth / agent disclosure | Sometimes an honest agent mentions it | Entirely dependent on individual agent goodwill, unverifiable, undocumented | Creates a persistent, checkable record instead of a one-off verbal claim |
| Calling the juristic person directly | Occasionally works if someone answers | Thai-language only, business hours only, no documentation trail, doesn't scale across a search | Structures the ask (script generator) and stores the answer for the next buyer of the same building |

**Moat:** Every crowd-submitted building record makes the database more valuable for the next buyer of that same building — resale condo buildings get bought and sold repeatedly over decades, so data collected once compounds indefinitely, and being first to aggregate it building-by-building is hard to replicate without repeating the same manual seeding work.

## Risk Factors

1. **Data — crowd-sourced records could be wrong, outdated, or falsified by a seller wanting to look compliant:** → **Mitigation:** Require photo evidence of official documents for "verified" status, keep an explicit "unverified/crowd-reported" tier visually distinct from confirmed records, and never claim to be an official government source.
2. **Adoption — cold-start problem where an empty database looks useless to a new user:** → **Mitigation:** Manual pre-launch seeding of the 200 highest-density priority buildings before any public marketing push, so early adopters see real coverage immediately.
3. **Legal — publishing building-specific safety claims could draw a defamation or dispute complaint from a juristic person or developer if a record is wrong:** → **Mitigation:** Frame all unverified entries explicitly as "crowd-reported, unconfirmed" with clear sourcing and a fast takedown/correction process for disputed entries.

## Build Reality Check

| Phase | Realistic Timeline | What Exists at End |
|-------|-------------------|-------------------|
| Prototype | 3 weeks | LINE bot with manually-seeded 50-building database, working lookup and script generator |
| Beta | 8 weeks | 200-building seeded database, public building profile pages live, first 20-30 real buyer users from Facebook/Pantip outreach |
| Launch | 14 weeks | Agent Pro tier live, first paying agent subscribers, crowd-submission pipeline validated with real accepted submissions |

**Solo founder feasibility:** Difficult — the manual data-seeding work (physically or by-phone confirming inspection status for 200 buildings before launch) is the real bottleneck, not the software, and needs either significant solo hustle or a small local research contractor.
**Biggest execution risk:** The DPT could eventually publish an official, structured, address-searchable inspection registry of its own — which would be the correct public-safety outcome but would remove this product's core reason to exist; the mitigation is to pivot fast toward being the friendlier front-end/aggregator layer on top of that official data rather than trying to compete with it.

---
*Generated: 2026-09-27 | Industry: real_estate_urban | Sub-industry: condo_inspection | Geography: thailand*
*APIs queried for real data: USGS Earthquake Hazards API, World Bank Open Data*

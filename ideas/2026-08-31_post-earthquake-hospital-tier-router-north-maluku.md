---
id: post-quake-hospital-tier-router-north-maluku-2026-08-31
title: MapDarurat — Post-Earthquake Hospital Tier Router for North Maluku's Scattered Islands
created: 2026-08-31T08:05:00+07:00
industry: disaster_emergency
sub_industry: hospital_capacity_disaster
geography: indonesia
apis_used: USGS Earthquake Hazards API, OpenStreetMap Overpass API, World Bank Open Data
monetization_model: grant-funded
target_user: unpaid village disaster-response volunteers (Kelompok Siaga Bencana / Linmas) in Halmahera Barat and Kota Ternate, North Maluku, who organize emergency speedboat transport of injured villagers from small islands to the nearest facility after an earthquake, currently relying on word-of-mouth and WhatsApp chains to guess which facility is a real hospital versus a one-nurse Puskesmas
concept_hash: post-quake-hospital-tier-router+north-maluku-ternate-halmahera-indonesia+village-disaster-volunteers-and-boat-captains
---

# MapDarurat — Post-Earthquake Hospital Tier Router for North Maluku's Scattered Islands

## The Hook
- Right now, a live earthquake swarm is rattling North Maluku, Indonesia — five M4.3–5.0 quakes within 72 hours, all within 150km of Ternate — and if someone breaks a leg in a Jailolo village during the next aftershock, the village volunteer deciding which island to boat them to has zero structured way to know whether the nearest "hospital" on the map is an actual surgical facility or a one-room Puskesmas with a single nurse.
- We pulled every mapped health facility across the swarm zone: 11 total, and only 5 are real hospitals. The other 6 are Puskesmas — community clinics that will just refer the patient onward, burning the exact boat-transit minutes that matter most in an archipelago where the "next town over" is a 45-minute open-water crossing.
- Indonesia has just 1.37 hospital beds per 1,000 people (World Bank, 2023) — one of the lowest ratios in Asia — so in a bed-scarce system spread across islands, a wrong first destination isn't a wasted city detour, it's a wasted golden hour nobody in this region can afford to lose.

## Real Data Found
> Live data queried from real APIs during idea generation — not placeholders.

| Source | Data Point | Value | Queried |
|--------|-----------|-------|---------|
| USGS Earthquake Hazards API | M4+ earthquakes within ~150km of Ternate, North Maluku, last 72h | 5 events: M5.0 (64km W of Labuha, 2026-08-29 08:08 UTC), M4.7 (130km WNW of Ternate, 2026-08-30 04:29 UTC), M4.6 (119km NNW of Ternate, 2026-08-28 00:43 UTC), M4.3 (142km NW of Ternate, 2026-08-29 16:42 UTC), plus one more M4.6 the same window | 2026-08-31 |
| OpenStreetMap Overpass API | Mapped health facilities in the Ternate–Tidore–Jailolo–Sofifi bounding box (0.3°N–1.3°N, 127.0°E–127.8°E) | 11 total facilities: only 5 tagged as hospitals/RS (RS. Tentara, Dharma Ibu Hospital, RSU Dr Chasan Boesoirie — all Ternate — plus RSUD Sofifi and RSUD Jailolo); the remaining 6 are Puskesmas (community health centers) | 2026-08-31 |
| World Bank Open Data | Hospital beds per 1,000 people, Indonesia | 1.37 (2023, most recent available; was 1.40 in 2022, 1.34 in 2021 — essentially flat for years) | 2026-08-31 |

The seismic swarm and the facility count aren't independently interesting — together they're the whole problem. A cluster of shallow M4+ quakes is exactly the kind of activity that produces wall collapses, falling debris injuries, and panic-related accidents in villages built from brick and tin, and North Maluku's real emergency-care backbone for that scenario is five buildings scattered across three islands, surrounded by a much larger number of clinics that can stabilize but not treat. Nobody currently ships that distinction to the people who make the boat-destination call in the first ten minutes.

## The Problem

On the night of August 29–30, 2026, North Maluku experienced a real earthquake swarm — a M5.0 near Labuha, three more M4.3–4.7 events within a day and a half, all clustered around the Ternate–Halmahera–Bacan corridor. If a wall comes down on someone in a Halmahera Barat village during one of the aftershocks, the person who decides where the injured villager goes is almost never a paramedic — it's a village Linmas (civil defense) volunteer or whoever owns the fastest speedboat that morning. Our pull of OpenStreetMap data for exactly this swarm zone shows 11 mapped health facilities, but only 5 of them — RS. Tentara, Dharma Ibu Hospital, and RSU Dr Chasan Boesoirie in Ternate, plus RSUD Sofifi and RSUD Jailolo — are actual hospitals with surgical capacity. The rest are Puskesmas: staffed by a nurse or midwife, equipped for basic checkups and minor wounds, and functionally useless for a compound fracture or head trauma beyond first aid and a referral.

The structural reason nobody has fixed this is that the information that would help exists in the wrong shape and at the wrong altitude. BPBD (the district disaster agency) publishes capacity bulletins as province-level PDF press releases, usually after the fact, and they don't translate to "which of these two islands should my boat go to." OpenStreetMap has the raw location data, but its tagging is inconsistent — Puskesmas buildings get mistagged as `amenity=hospital` often enough that trusting the raw tag is actively dangerous. In practice, village volunteers route by memory: "last time we took [name] to Ternate, that worked." That workaround fails the moment the person holding that memory is unavailable, is among the injured, or the situation needs a capability (surgery, blood supply, orthopedics) that memory alone can't distinguish between five hospitals and six clinics.

The consequence compounds because of how thin Indonesia's hospital-bed capacity already is — 1.37 beds per 1,000 people nationally, essentially unchanged for three years. In a country with that little slack, sending an injured person to a Puskesmas that can only refer them onward doesn't just waste time, it consumes a bed and a boat trip that a genuinely bed-scarce system can't spare to repeat. In an island chain where "wrong destination" means an extra 45-minute open-water crossing during an active aftershock sequence, that mistake is measured in whether someone survives, not in inconvenience.

## Who Uses This

**Primary user:** Unpaid or token-honorarium village disaster volunteers (Kelompok Siaga Bencana / Linmas) in Halmahera Barat regency and Kota Ternate, North Maluku — typically village staff or fishermen with a boat, responsible for informally organizing emergency transport of the injured to the nearest capable facility when there's no ambulance and the fastest route is by sea.
**What they do now (and why it sucks):** They rely on personal memory and a village WhatsApp group to decide which island to head to, which breaks down exactly when the person with that knowledge is unavailable or the injury needs a capability they didn't think to check for.
**When they pay:** They don't — this persona never becomes a paying customer; the app has to be free and pre-installed on their phone before disaster strikes, not discovered during one.

**Secondary user:** Inter-island public speedboat and ketinting captains running the Ternate–Tidore–Sofifi–Jailolo routes, who get flagged down informally during emergencies and need the same tiered facility list plus realistic sea-transit times to the alternatives.
**Why they care:** They're the ones actually steering the boat and absorbing blame if the destination turns out wrong; a quick reference removes the guesswork from a decision they're making under pressure.

**Who definitely won't use this:** Urban Java/Jakarta users, tourists, or anyone outside an active island-hopping disaster-response context — this is not a general first-aid or hospital-finder app, and framing it that way would dilute the one thing it does well.

## Feature Set

### MVP — Week 1-3
- **Facility tier map:** Offline-cached map of all 11 known health facilities in the North Maluku swarm zone, color-coded hospital (RS/RSUD) vs. Puskesmas, with phone numbers where available.
- **Live quake feed:** Polls the USGS API for M4+ events within 150km of Ternate and shows a simple swarm timeline ("5 quakes in the last 72 hours") when online.
- **Boat-time estimates:** A static table of known sea-transit times between the main island ports (Ternate, Tidore, Sofifi, Jailolo), sourced from local captains, not road-based mapping tools that don't cover water routes.
- **Print-friendly quick card:** A single-page, QR-linked printable sheet designed to be laminated and posted at each village hall (balai desa) as a zero-connectivity fallback.
- **Offline install:** Service-worker caching so the facility tier list and boat-time table load with zero signal.

### Version 2 — Month 2-3
- **Crowd-sourced status check-ins:** Village volunteers can flag a facility as "confirmed open" or "damaged/closed," timestamped and auto-decaying after 6 hours so stale reports don't mislead.
- **Aftershock swarm alerts:** Push notification (when online) if a new M4+ event lands within the tracked radius, framed as "stay alert" rather than a false-precision prediction.
- **Route expansion:** Add facility tiers and boat times for neighboring swarm-prone clusters (e.g., around Labuha/Bacan, where the M5.0 hit).

### Power User / Pro Features
- **BPBD dashboard view:** A read-only aggregate view for district disaster-agency staff showing all crowd-sourced facility status flags across villages at once.
- **Data export:** CSV export of the verified facility-tier and boat-route dataset for BPBD or NGO planning use.

## Technical Implementation

### Suggested Stack
**Chosen stack:** A static, installable Progressive Web App (offline-first, service-worker cached) hosted on a free static-hosting tier — because the target users have intermittent island connectivity that gets worse exactly when a disaster hits, and a PWA shared via a WhatsApp link avoids app-store friction for users who won't seek out and install a dedicated disaster app before they need it.

### APIs & Data Sources
| API | Specific Endpoint | What It Returns | Refresh Rate | Auth | Cost |
|-----|------------------|-----------------|--------------|------|------|
| USGS Earthquake Hazards | `earthquake.usgs.gov/fdsnws/event/1/query?format=geojson&minmagnitude=4&minlatitude=-2&maxlatitude=3&minlongitude=126&maxlongitude=129&orderby=time` | Magnitude, depth, time, and coordinates of quakes near North Maluku | Real-time, polled every few minutes when online | none | free |
| OpenStreetMap Overpass | `overpass-api.de/api/interpreter` with a bbox query for `amenity=hospital` and related tags | Raw facility locations and names, used once to seed the dataset, then manually verified | Refreshed manually every 1-3 months, not live | none | free |
| World Bank Open Data | `api.worldbank.org/v2/country/ID/indicator/SH.MED.BEDS.ZS?format=json` | Indonesia hospital-bed capacity trend, used for context/messaging, not per-request | Annual | none | free |

### Database Schema (key tables only)
```
facilities: id, name, island, type (hospital/puskesmas/clinic), lat, lon, verified_capability (trauma/surgical/basic), phone, last_verified_date
boat_routes: id, origin_port, destination_port, typical_transit_minutes, operator_contact, notes
quake_events: id, usgs_id, magnitude, depth_km, distance_from_ternate_km, event_time, synced_at
status_reports: id, facility_id, report_type (open/closed/damaged), reported_at, reporter_phone
```

### Key Technical Decisions
1. **Manually-verified facility tiers, not raw OSM tags:** OSM's `amenity=hospital` tag is inconsistently applied in this region — trusting it directly risks routing someone to a mistagged Puskesmas, so every facility is phone-verified before being marked "hospital" in the app.
2. **Polling instead of push for USGS data:** USGS has no native webhook; the app polls on a timer when online and falls back to the last cached swarm state offline, which is good enough for a "stay alert" signal rather than a precise prediction tool.
3. **Plain-HTML fallback alongside the PWA:** Rural Android devices in this region often run old browsers where service workers are unreliable, so the facility list also ships as a dependency-free static HTML page that works even without JS.

### Hardest Technical Challenge
A facility being listed doesn't mean it's still standing or staffed after a real quake — structural damage can take a "verified hospital" offline in minutes. Mitigation: the crowd-sourced status check-in feature lets any village volunteer flag a facility as damaged, with reports auto-decaying after 6 hours so the system self-corrects rather than accumulating stale claims.

## Monetization Strategy

> Note: Not every idea needs Stripe. This one doesn't — the people who need it during a disaster will never be a paying customer.

**Model chosen:** grant-funded, with an optional B2G data-licensing add-on

| Tier | Price | What's Included | Why They Pay This |
|------|-------|-----------------|-------------------|
| Free (village volunteers, boat captains) | $0 | Full facility tier map, quake feed, boat-time table, offline install, printable quick card | This is the entire user base and it can never be behind a paywall |
| BPBD Data License | $150–400/month per district agency | Read-only aggregate dashboard of crowd-sourced facility status + exportable verified dataset | Saves the agency from building their own island-level facility survey |
| NGO/Grant Partnership | Project-based | Co-branded deployment, expanded coverage to new island clusters, training sessions with local KSB groups | Funders pay for coverage expansion, not per-user access |

**Why someone pays:** No individual villager or boat captain ever pays — the entire revenue case rests on a district disaster agency (BPBD) or an NGO (PMI, HOT Indonesia) recognizing that this granular, ground-verified dataset is cheaper to license than to build themselves.

**12-month revenue trajectory:**
- Month 3: 0 paying contracts — still in ground-verification and pilot phase with one district
- Month 12: ~2 BPBD district licenses × $250/month = $500/month, plus one grant (BNPB, GFDRR, or HOT Indonesia) covering coverage expansion to a second island cluster

**Alternative if this doesn't work:** Fully donate the codebase and dataset to Humanitarian OpenStreetMap Team (HOT) Indonesia as an open tool, since the social value doesn't depend on this project surviving as a standalone entity.

## Marketing Strategy

**Exact communities to reach:**
- HOT Indonesia (Humanitarian OpenStreetMap Team Indonesia chapter) — active mapathon community that already collects facility and infrastructure data in exactly this kind of area
- "Info Ternate & Sekitarnya" and similar North Maluku regional Facebook groups (local news/info groups in this region typically run in the low tens of thousands of members)
- WhatsApp groups run by individual desa (village) Linmas/KSB coordinators in Halmahera Barat — small (20-80 members) but the exact people who'd use this daily
- r/indonesia (700k+ members) for a one-time launch/feedback post framed around the earthquake swarm data, not a pitch

**First 10 users and how you get them:**
Call and visit the BPBD Kabupaten Halmahera Barat and BPBD Kota Ternate offices directly, ask for the names of active KSB/Linmas volunteers in the villages nearest the swarm epicenters, and hand them the printed quick card plus the PWA link in person — this is a trust-based rollout, not a digital-acquisition one.

**The press angle:**
"An earthquake swarm just hit North Maluku — and only 5 of the 11 nearest 'hospitals' can actually treat a broken bone. We mapped which is which, because nobody else had."

**Content / SEO play:**
Static per-island pages like "rumah sakit terdekat Jailolo saat gempa" and "rumah sakit terdekat Ternate," matching what people search in Bahasa Indonesia during and after a real quake — low competition, high relevance in the exact moment of need.

**Launch sequence:**
1. Phone-verify the actual trauma/surgical capacity of all 5 tagged hospitals before public launch — don't ship on OSM's word alone.
2. Launch by presenting the printed quick card and PWA link at a live BPBD or village-level disaster-preparedness meeting in Halmahera Barat.
3. Partner with HOT Indonesia to run a mapathon adding boat-route transit times crowd-sourced from real captains within the first week.

## Competitive Landscape

| Existing Solution | What They Do | Where They Fall Short | Why This Wins |
|-------------------|-------------|----------------------|---------------|
| InaRISK (BNPB's national multi-hazard platform) | Shows province-level hazard zone maps for earthquakes, floods, tsunamis | No facility-capability distinction, no boat-route awareness, not built for real-time village-level routing decisions | Purpose-built for the one decision that matters in the first ten minutes: which island, which building |
| Google Maps | General hospital search and driving directions | No marine/boat routing between islands, doesn't distinguish Puskesmas from full hospitals, assumes road connectivity that doesn't exist here | Built around the actual transport mode (boats) and the actual capability gap (RS vs Puskesmas) this region has |
| Village word-of-mouth / WhatsApp memory | Works until the person who knows is unavailable | Single point of failure, no structured capability data | Structured, offline-cached, and survives the absence of any one person |

**Moat:** The phone-verified facility-tier data and crowd-sourced boat-transit times are the kind of hyper-local ground-truth dataset a national platform like InaRISK has no incentive to collect at this granularity — repeated verification cycles and direct relationships with village KSB volunteers compound into a dataset nobody else has reason to replicate.

## Risk Factors

1. **Data:** Facility capability changes over time (a Puskesmas gets upgraded, a hospital loses a specialist) and the manually-verified dataset can go stale → **Mitigation:** quarterly phone-verification cycle plus the crowd-sourced, auto-decaying status check-in feature.
2. **Adoption:** Village volunteers may default back to habit (word-of-mouth, WhatsApp) rather than opening an app mid-emergency → **Mitigation:** the laminated printed quick card at the balai desa is the real primary interface; the app is the backend that keeps it updated.
3. **Technical:** Offline PWA reliability is inconsistent on the low-end, older Android phones common in this region → **Mitigation:** ship a dependency-free static HTML fallback alongside the PWA that works without service workers or JS.
4. **Regulatory/Political:** Publicly labeling one government facility "basic" versus another "surgical" could read as an implicit quality judgment and draw pushback from Dinas Kesehatan → **Mitigation:** frame tiers strictly around Indonesia's own official facility categories (RS vs Puskesmas), not a quality score.

## Build Reality Check

| Phase | Realistic Timeline | What Exists at End |
|-------|-------------------|-------------------|
| Prototype | 2 weeks | Static facility list + live USGS quake feed display, online-only |
| Beta | 5 weeks | Full offline PWA + all 11 facilities phone-verified + 3-4 boat routes crowd-sourced from real captains |
| Launch | 8 weeks | Full North Maluku swarm-zone coverage + at least one BPBD or HOT Indonesia partnership meeting held |

**Solo founder feasibility:** Difficult — the technical build is genuinely solo-feasible in a couple of weeks, but the ground-truth verification and village-level trust that make the data trustworthy require local presence, language, and relationships a remote solo founder likely doesn't have without an in-country partner.
**Biggest execution risk:** Getting real village-level adoption without an in-country NGO or BPBD co-founder — the tool is technically simple but requires boots-on-the-ground legitimacy that can't be faked from outside the region.

---
*Generated: 2026-08-31 | Industry: disaster_emergency | Sub-industry: hospital_capacity_disaster | Geography: indonesia*
*APIs queried for real data: USGS Earthquake Hazards API, OpenStreetMap Overpass API, World Bank Open Data*

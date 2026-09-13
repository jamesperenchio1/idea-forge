---
id: mandalay-undocumented-floor-earthquake-risk-checker-2026-09-13
title: HtatSin — Undocumented Extra-Floor & Aftershock Risk Checker for Mandalay-Sagaing Shophouse Renters and Buyers
created: 2026-09-13T08:02:00+07:00
industry: real_estate_urban
sub_industry: illegal_construction
geography: myanmar
apis_used: USGS Earthquake Hazards API, Open-Meteo Forecast API, World Bank Open Data, OpenStreetMap Overpass API
monetization_model: grant-funded
target_user: Small shop owners and returning families renting or buying 2-4 story shophouses in Mandalay's Chan Aye Tharzan and Chan Mya Tharzi townships or across the river in Sagaing town, who need to sign a lease or sales agreement within days (rents are due monthly, cash-only, no cooling-off period) and have no way to check whether the building has an unpermitted extra floor bolted on top after original construction — a near-universal practice locally called "htat-tou" (floor-adding) done without a structural engineer, now a life-or-death question after the March 2025 magnitude-7.7 Sagaing Fault earthquake and its still-ongoing aftershock sequence.
concept_hash: undocumented-extra-floor-and-aftershock-risk-checker+mandalay-sagaing-myanmar+shophouse-renters-and-buyers-post-2025-earthquake
---

# HtatSin — Undocumented Extra-Floor & Aftershock Risk Checker for Mandalay-Sagaing Shophouse Renters and Buyers

## The Hook
- Eighteen months after the M7.7 Sagaing Fault earthquake that dropped the historic Ava (Sagaing) Bridge into the Irrawaddy and cracked thousands of Mandalay shophouses, USGS is still logging M4-4.8 aftershocks along the same fault corridor as recently as three weeks ago — the ground never fully stopped moving, but building inspection in Myanmar effectively stopped in 2021.
- Almost every multi-story shophouse in Mandalay's old commercial core has at least one floor added after the original permit — cash-paid, no engineer, no re-assessment of the footings — because it's the cheapest way to expand a business or fit a second family upstairs. Nobody renting or buying can tell which floors are original and which were bolted on afterward, and the one group of people who could tell (structural engineers) mostly work for free out of a Facebook group, not a government office.
- With 58% of Myanmar's urban population classified by the World Bank as living in slum-conditions housing (2022, latest available) and the wet season dumping 5-10mm of rain a day onto already-cracked foundations right now, this is a life-safety gap hiding in plain sight that costs nothing to check if someone just organizes the existing volunteer expertise and public data.

## Real Data Found
> Live data queried from real APIs during idea generation — not placeholders.

| Source | Data Point | Value | Queried |
|--------|-----------|-------|---------|
| USGS Earthquake Hazards API | M4+ earthquakes along the Sagaing Fault corridor (lat 15-25°N, lon 93-98°E) since the March 2025 mainshock | M4.6 on 2026-08-23 (38km ENE of Tharyarwady), M4.1 on 2026-08-06 (32km ENE of Shwebo), M4.8 on 2026-08-05 (56km WSW of Monywa) — three separate M4+ events in a single month, 17 months after the mainshock | 2026-09-13 |
| World Bank Open Data | Population living in slums, % of urban population, Myanmar | 58.28% (2022, most recent available) | 2026-09-13 |
| World Bank Open Data | Urban population, % of total population, Myanmar | 30.58% (2025) | 2026-09-13 |
| Open-Meteo Forecast API | Daily precipitation, Mandalay (21.96°N, 96.09°E) | 10.3mm on 2026-09-11 with 100% max precipitation probability; 5.1-7.7mm/day forecast through 2026-09-17 | 2026-09-13 |

The USGS data matters because it kills the "the earthquake was over a year ago, it's fine now" assumption that landlords use to avoid discussing structural risk — the Sagaing Fault is still actively releasing M4+ energy on a roughly monthly cadence across exactly the stretch (Monywa-Shwebo-Tharyarwady) that bookends Mandalay and Sagaing town. Layer in the Open-Meteo rain data — daily monsoon downpours saturating soil under foundations that already have hairline cracks from the mainshock — and a hairline crack from March 2025 becomes a foundation-shift risk in September 2026, not a cosmetic issue. The World Bank slum-housing figure (58% of urban Myanmar) explains why this problem is structural, not anecdotal: most of the urban building stock was never built to a code anyone enforced in the first place, and htat-tou floor additions just make it worse.

## The Problem

Ma Thanda runs a phone-repair shop out of the ground floor of a three-story shophouse on 84th Street in Chan Aye Tharzan township, central Mandalay, and lives with her parents on the floor above. The building she's now considering renting has four visible floors, but the top floor's brickwork is a slightly different shade of red and the rebar stubs poking through the roofline don't match the floors below — tells that any Mandalay local recognizes instantly but can't actually verify without climbing onto the roof and looking at how the new floor's load is (or isn't) transferred down to the original footings. The landlord says the building "passed fine" after the March 2025 quake. There is no inspection certificate to check, because the township's building department has had no functioning inspection unit since 2021, and even before that, floor additions ("htat-tou") were done through a cash arrangement with a local official, not an engineer.

The structural reason this persists is that Myanmar's post-coup local governance collapsed the one function — municipal permitting and inspection — that would have caught unauthorized floor additions before they became a life-safety issue, right as a major earthquake made the issue urgent. The workaround Mandalay residents actually use is informal: a WhatsApp/Facebook-organized volunteer network of Yangon Technological University alumni engineers, mostly diaspora, does free remote photo assessments when someone posts pictures of a building's rebar joints and crack patterns. It works, but it's undiscoverable unless you already know someone in that network, it has no systematic way to cross-reference a specific address against ongoing aftershock activity or current rain exposure, and every assessment starts from zero — nobody is building a reusable record of which buildings and which streets have already been flagged.

If this doesn't get built, the same informal, one-off Facebook-post-and-hope process repeats for every single renter and buyer in Mandalay and Sagaing, with no accumulation of institutional knowledge, no way to warn the next tenant of a building already flagged as risky, and no way to connect the dots between a specific address, its rebar/crack photos, the fault's ongoing aftershock behavior, and the current week's rain forecast. People keep signing leases on buildings that a five-minute photo review would have flagged, because the review never happens before the deposit is paid.

## Who Uses This

**Primary user:** Small business owners and returning families in Mandalay (Chan Aye Tharzan, Chan Mya Tharzi) and across the river in Sagaing town, renting or buying a 2-4 story shophouse, who need to decide within days (cash deposits, no cooling-off period) whether a specific building is safe enough to move a shop and family into.
**What they do now (and why it sucks):** They eyeball the brickwork themselves, ask the landlord (who has every incentive to say it's fine), and maybe post photos in a Facebook group hoping a volunteer engineer happens to see it before the deposit is due — an undiscoverable, unsystematic, entirely luck-based process.
**When they pay:** They don't pay directly — see Monetization; the trigger for institutional funders is the next reported partial-collapse or crack-related injury in a converted shophouse, which is when NGOs and diaspora engineering associations go looking for a scalable version of the ad-hoc Facebook process.

**Secondary user:** The volunteer structural-engineer network itself (Yangon Technological University alumni, many now overseas) who currently self-organize through scattered Facebook posts and want a queue, a standard photo-intake checklist, and a record of buildings already assessed instead of re-litigating the same building's risk every time a new post appears.
**Why they care:** It turns their scattered volunteer hours into a searchable, non-duplicated queue and gives their assessments a shelf life beyond one Facebook thread.

**Who definitely won't use this:** Landlords looking to rent out a floor they added without permits — the tool has zero incentive design for the party benefiting from opacity, and it deliberately does not create a public, government-facing building registry that could be used for targeting or bribery.

## Feature Set

### MVP — Week 1-3
- **Anonymous photo submission:** A no-login web form (works on 2G) where a renter/buyer uploads 3-5 photos (roofline, rebar joints, visible cracks, street-level facade) and pins the building's approximate location without giving a name or phone number.
- **Fault activity banner:** Every submission auto-pulls the last 90 days of M4+ USGS events within 150km of the pin and shows a plain-language "the fault under this area released energy X days ago" banner alongside the photos.
- **Rain-saturation flag:** Auto-pulls Open-Meteo's 7-day precipitation forecast for the pinned location and flags "heavy rain expected this week — cracked foundations absorb more water and shift faster."
- **Volunteer engineer queue:** A private dashboard (Telegram-bot-gated, invite-only) where the YTU alumni volunteer network claims submissions, adds a plain-language risk note, and marks the case reviewed.
- **Private result link:** The submitter gets a link (not a public page) showing the engineer's note plus the fault/rain context — theirs to show a landlord or keep for their own decision, never indexed or listed publicly.

### Version 2 — Month 2-3
- **Building history lookup:** If a pin has been submitted before (even anonymously, matched by rough coordinates), the submitter sees "this building or one within 30m was already flagged" without exposing who submitted it.
- **Overpass building-footprint overlay:** Pulls OpenStreetMap building outlines for the block to help volunteers distinguish which structure in a dense row is actually being assessed.
- **Multi-photo comparison guide:** In-app annotated example photos showing what an original vs. added floor's brick coursing and rebar overhang typically look like, so submissions come in more consistently.
- **Township aggregate view (for NGOs only):** An anonymized heatmap of submission density and average risk flags by township, shared only with partner disaster-relief NGOs, never public.

### Power User / Pro Features
- **Bulk intake for NGO partners:** A CSV/photo-batch upload for partner orgs (e.g., a housing NGO doing door-to-door surveys) to submit dozens of buildings at once.
- **API access for partner engineering associations:** Read access to the anonymized aggregate risk data for organizations funding expanded volunteer capacity.

## Technical Implementation

### Suggested Stack
Given Myanmar's low-bandwidth mobile networks, intermittent internet restrictions, and the political sensitivity of anything resembling a government-facing building registry, the priorities are: works on cheap Android phones over 2G/3G, requires no account/login for submitters, and stores nothing that could be used to identify or target a submitter or a specific landlord publicly.

**Chosen stack:** A lightweight offline-capable PWA (plain HTML/JS, Cloudflare Pages, IndexedDB queue for spotty connectivity) for the anonymous submission form, paired with a Telegram bot (not Facebook — Telegram has established use among Myanmar civil society specifically because it's harder to surveil at the account level than Facebook) for the volunteer engineer queue and private result delivery. No user accounts, no phone-number requirement for submitters, and photos/coordinates are the only stored identifiers — deliberately minimal data retention given the political environment.

### APIs & Data Sources
| API | Specific Endpoint | What It Returns | Refresh Rate | Auth | Cost |
|-----|------------------|-----------------|--------------|------|------|
| USGS Earthquake Hazards API | `https://earthquake.usgs.gov/fdsnws/event/1/query?format=geojson&minmagnitude=4&minlatitude=15&maxlatitude=25&minlongitude=93&maxlongitude=98&orderby=time` | Recent M4+ earthquakes along the Sagaing Fault corridor with location, magnitude, depth, time | Real-time (polled hourly) | none | free |
| Open-Meteo Forecast API | `https://api.open-meteo.com/v1/forecast?latitude={lat}&longitude={lon}&daily=precipitation_sum,precipitation_probability_max&timezone=Asia/Yangon&forecast_days=7` | 7-day daily precipitation totals and max probability for the pinned location | Daily | none | free |
| OpenStreetMap Overpass API | `https://overpass-api.de/api/interpreter?data=[out:json];way[building](around:100,{lat},{lon});out body;` | Building footprint outlines near the pinned coordinates | On-demand | none | free |
| World Bank Open Data | `https://api.worldbank.org/v2/country/MM/indicator/EN.POP.SLUM.UR.ZS?format=json&mrv=5` | Myanmar urban slum-housing % — used for the public-facing context/press narrative, not per-submission logic | Annual | none | free |

### Database Schema (key tables only)
```
submissions: id (uuid), lat (float), lon (float), photo_urls (array), submitted_at (timestamp), status (enum: queued/claimed/reviewed)
reviews: submission_id (uuid, fk), volunteer_telegram_id (text), risk_note (text), risk_level (enum: low/moderate/high/needs-onsite), reviewed_at (timestamp)
fault_events_cache: usgs_id (text), magnitude (float), lat (float), lon (float), event_time (timestamp), fetched_at (timestamp)
```

### Key Technical Decisions
1. **No user accounts for submitters:** Every account-based system creates a target list; a stateless, coordinate-and-photo-only submission model means there is nothing to subpoena or leak that identifies who asked about which building.
2. **Telegram over Facebook for the volunteer side:** Facebook Messenger bots are easier to build but Myanmar civil society groups have specifically migrated organizing work to Telegram since 2021 for surveillance-resistance reasons — matching existing trusted infrastructure matters more than developer convenience here.
3. **Private result links, not a public registry:** A public "risky buildings" map would be more useful for aggregate research but creates real retaliation risk for the landlord being implicitly named and for whoever submitted the photos; keeping results private-by-link trades some public-good value for submitter safety.

### Hardest Technical Challenge
Getting enough volunteer engineer coverage to keep queue turnaround under a few days — the YTU alumni network is generous but small and mostly diaspora working other jobs. Mitigation: partner explicitly with the existing informal Facebook-group organizers to import their volunteer roster rather than recruiting from scratch, and cap the MVP's promised turnaround expectations honestly (e.g., "reviewed within 5 business days") rather than promising real-time.

## Monetization Strategy

> Note: Not every idea needs Stripe. This is a life-safety tool for a population with essentially no ability to pay, in a country where charging for earthquake-safety information would be its own PR and ethics problem.

**Model chosen:** grant-funded

| Tier | Price | What's Included | Why They Pay This |
|------|-------|-----------------|-------------------|
| Free (individuals) | $0 | Anonymous submission, fault/rain context, volunteer engineer review, private result link | This is the entire product for the actual at-risk population — never gated |
| NGO/disaster-relief partner | Grant-funded, negotiated | Bulk intake, anonymized township heatmaps, API access to aggregate risk data | Funds the hosting, Overpass query costs, and a small stipend pool for volunteer engineers to keep queue turnaround reasonable |
| Engineering association sponsor | Grant/sponsorship | Co-branding as the official intake channel for their volunteer roster, priority routing | Formalizes a process they're already running informally and gives their diaspora members a structured way to contribute hours |

**Why someone pays:** No individual submitter ever pays. The funders are disaster-relief NGOs and diaspora engineering associations who already spend money and volunteer coordination effort on ad-hoc Facebook-based structural assessment; they pay to make their existing effort scalable and non-duplicated, not to access a new capability.

**12-month revenue trajectory:**
- Month 3: 1 pilot grant from a regional disaster-relief NGO × ~$800/month operating stipend = $800/month
- Month 12: 2-3 institutional partners (NGO + 1-2 engineering diaspora associations) × ~$600-1,000/month combined = ~$1,800/month — enough to cover hosting and a modest volunteer-engineer stipend pool, not a growth business

**Alternative if grant funding doesn't work:** Fold the submission form and Telegram bot into an existing disaster-relief NGO's toolset as a donated open-source project, maintained by volunteer developers rather than paid staff — the core value (organizing the existing volunteer engineer network) survives even with zero dedicated funding.

## Marketing Strategy

**Exact communities to reach:**
- The existing informal Facebook groups where Mandalay/Sagaing residents already post crack/structural photos asking for opinions after the 2025 quake (several such groups formed in the weeks after March 2025, member counts in the low thousands, typically named around "Mandalay earthquake" or "Sagaing quake damage" in Burmese)
- Yangon Technological University alumni Facebook groups and diaspora engineering association pages, where the volunteer assessment network already recruits
- r/myanmar (a general but active English/Burmese-mixed community that discussed the 2025 earthquake extensively)

**First 10 users and how you get them:**
The first 10 aren't found cold — they're recruited by directly messaging the admins of the 2-3 existing "post your crack photos here" Facebook groups, explaining that this tool gives their volunteer engineers a queue and a record instead of a scrolling comment thread, and asking them to pin the submission link in their group description. The first real submissions come from people already in that group who were going to post photos anyway.

**The press angle:**
"Eighteen months after Myanmar's earthquake, the fault is still moving and nobody is checking the buildings" — a story about ongoing USGS-confirmed aftershock activity colliding with a building-permitting system that stopped functioning years before the quake, told through the volunteer engineer network already doing the work for free on Facebook.

**Content / SEO play:**
A public (non-identifying) page summarizing recent Sagaing Fault aftershock activity in plain Burmese and English, updated from the USGS feed, positioned as "is the fault still active near me" — useful on its own even to people who never submit a building photo, and a natural link target for anyone writing about ongoing Myanmar earthquake risk.

**Launch sequence:**
1. Recruit 3-5 volunteer engineers already active in the informal Facebook network to staff the Telegram review queue before any public launch.
2. Soft-launch the submission form by pinning it in the 2-3 existing Facebook groups, framed as "the same process you're already doing, now with a queue."
3. After the first 20-30 reviewed submissions, approach one regional disaster-relief NGO with real usage data to fund the next phase.

## Competitive Landscape

| Existing Solution | What They Do | Where They Fall Short | Why This Wins |
|-------------------|-------------|----------------------|---------------|
| Ad-hoc Facebook group photo posts | Residents post crack/structural photos and ask for opinions from whoever sees the post | No queue, no record of prior assessments, opinions vary by whoever happens to reply, nothing ties the photos to current fault/rain data | Structured intake, a real (if informal) volunteer queue, and automatic fault/rain context nobody manually cross-references today |
| Township building department (nominal) | On paper, the body that should inspect and permit floor additions | Functionally non-operational since 2021; even pre-2021, floor additions were routinely done off-book | Doesn't try to replace government function — works entirely around it via community-organized expertise |
| Nothing (most buyers/renters do no check at all) | — | Most people simply don't check because there's no known place to ask | Makes an already-informal process discoverable instead of luck-dependent |

**Moat:** The moat isn't technology — it's the relationship with the existing volunteer engineer network. Whoever earns that network's trust first and becomes their default intake tool is very hard to displace, because the value is the humans reviewing photos, not the software.

## Risk Factors

1. **Political/surveillance risk:** A tool that implicitly documents unpermitted construction and earthquake-damaged buildings could be read as criticism of local authorities or used against submitters/landlords if data leaked or were compelled. → **Mitigation:** No accounts, no phone numbers, no public registry, minimal data retention, Telegram (not Facebook) for anything requiring an account, and explicit framing as a private safety-check tool rather than a public accountability project.
2. **Adoption — volunteer capacity is the real bottleneck, not user demand:** Demand for free structural opinions already outstrips the existing informal network's bandwidth. → **Mitigation:** Launch with an honest, capped intake rate rather than promising instant turnaround, and prioritize partnering with (not competing against) the existing Facebook-group organizers for volunteer recruitment.
3. **Data — remote photo assessment has real accuracy limits:** A volunteer reviewing 3-5 photos remotely cannot definitively certify structural safety the way an on-site inspection could. → **Mitigation:** Every result explicitly states it is a preliminary screening, not a certification, and high-risk flags are paired with a recommendation to seek an in-person assessment where possible.

## Build Reality Check

| Phase | Realistic Timeline | What Exists at End |
|-------|-------------------|-------------------|
| Prototype | 3 weeks | Working anonymous submission PWA + Telegram review bot, tested with 5 volunteer engineers on real Mandalay building photos |
| Beta | 8 weeks | 20-30 real submissions processed through the queue, pinned in 1-2 existing Facebook groups |
| Launch | 14 weeks | First NGO partner conversation started with real usage data; public fault-activity info page live |

**Solo founder feasibility:** Difficult — the technical build is genuinely solo-feasible in weeks, but the product's actual value depends entirely on relationships with an existing, somewhat closed volunteer engineer network that a solo outside founder would need real introductions to access.
**Biggest execution risk:** Without buy-in from the people already running the informal Facebook-group process, this becomes a nicer-looking form that nobody with actual structural expertise ever checks — the software is the easy 20%.

---
*Generated: 2026-09-13 | Industry: real_estate_urban | Sub-industry: illegal_construction | Geography: myanmar*
*APIs queried for real data: USGS Earthquake Hazards API, Open-Meteo Forecast API, World Bank Open Data*

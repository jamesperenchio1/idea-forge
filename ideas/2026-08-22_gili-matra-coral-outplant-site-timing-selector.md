---
id: gili-matra-coral-outplant-site-timing-selector-2026-08-22
title: TerumbuTanam — Daily Coral Outplant Site & Timing Selector for Gili Matra Community Reef Nursery Volunteers
created: 2026-08-22T08:02:30+07:00
industry: environment_ecology
sub_industry: coral_reef
geography: indonesia
apis_used: Open-Meteo Marine API, Open-Meteo Weather API, World Bank Open Data
monetization_model: hybrid
target_user: unpaid or small-stipend community coral-gardening volunteers (mostly local dive guides and Pokmaswas members) working with Gili Trawangan/Gili Meno/Gili Air-based reef restoration groups in the Gili Matra Marine Recreation Park, Lombok, who wade or dive out most mornings during the May-October dry season to cut fragments off nursery rope tables and cement them onto reef-flat frames, deciding day-of and site-by-site whether conditions are calm and clear enough for the cement to cure before a fragment gets dislodged
concept_hash: coral-outplant-site-timing-selector+gili-matra-lombok-indonesia+community-coral-nursery-dive-volunteers
---

# TerumbuTanam — Daily Coral Outplant Site & Timing Selector for Gili Matra Community Reef Nursery Volunteers

## The Hook
- Every outplanted coral fragment that gets ripped off its cement mount by swell before curing is a wasted cutting, a wasted dive, and a wasted line item in someone's donor report — and right now the only tool deciding whether today's swell is "calm enough" is a volunteer standing on the beach squinting at the water.
- Live Open-Meteo marine data for the Gili Matra reef flats shows a 4°F/2°C intraday swing in sea surface temperature (27.6°C to 28.4°C) and a slow-building swell (0.80m rising toward 1.06m by tomorrow) that most nursery groups have no systematic way to check before loading the boat.
- Indonesia's own marine protected area coverage sits at just 3.1% of its territorial waters (World Bank, flat since 2021) — every hectare of MPA-designated reef flat that community groups are trying to restore matters disproportionately, and losing fragments to a bad-timing call is a real setback against a small, stagnant baseline.

## Real Data Found
> Live data queried from real APIs during idea generation — not placeholders.

| Source | Data Point | Value | Queried |
|--------|-----------|-------|---------|
| Open-Meteo Marine API | Sea surface temperature, Gili Matra reef flats (-8.349, 116.036) | 28.4°C peak / 27.6°C overnight low, next 72h | 2026-08-22 |
| Open-Meteo Marine API | Significant wave height, same site | 0.80m–1.06m over next 72h (currently trending down, rising again by hour 60) | 2026-08-22 |
| Open-Meteo Weather API | Daily max UV Index | 8.10–8.45 ("very high") across the next 4 days | 2026-08-22 |
| Open-Meteo Weather API | Daily precipitation | 0.00mm forecast for all 4 days (dry-season baseline, matters for turbidity/runoff modeling) | 2026-08-22 |
| World Bank Open Data | Indonesia marine protected areas, % of territorial waters (ER.MRN.PTMR.ZS) | 3.1% (2023, unchanged 2021-2023, still 3.0% as of the 2024/2025 release) | 2026-08-22 |

Sea surface temperature at the open-water grid point Open-Meteo returns is only a proxy — reef flats at under 2 meters depth run several degrees hotter at midday low tide than the offshore reading, especially with a UV index already peaking above 8. Combined with a swell currently under 1 meter but climbing, this is exactly the kind of "looks fine from the beach, degrades fast by midday" window that trips up manual go/no-go calls. And with Indonesia's total protected-water footprint stuck near 3%, restoration groups can't just write off a bad outplanting day as a rounding error — there isn't much slack in the system to begin with.

## The Problem

At 6:30am on Gili Trawangan's north reef flat, a volunteer coral gardener from one of the island's community nursery groups wades out with a mesh bag of fragments cut the night before from the nursery rope table — coral cuttings that took months to grow to transplant size. She's deciding, on the spot, whether today's water is calm enough that the marine epoxy holding a fragment to its cement plug will cure before wave surge knocks it loose. If she's wrong, the fragment is gone, the dive was wasted, and it doesn't get logged anywhere except a volunteer's memory. The reef flats around the three Gili Matra islands (Trawangan, Meno, Air) don't all behave the same on a given morning — one channel can be glassy while another, a 15-minute boat ride away, is getting hammered by a building swell — but nobody aggregates that site-by-site.

The structural reason this stays unsolved is that these are volunteer-run or small-NGO-funded programs (often financed through a per-dive conservation levy collected by local dive shops), not staffed operations with a marine biologist checking buoy data every morning. The workaround is a WhatsApp group where the most experienced dive guide posts "kayaknya bagus hari ini" ("looks good today") based on gut feel and whatever the beach view shows — which misses building swell, doesn't account for the extra heat reef flats trap at low tide, and gives zero warning when a dry spell like the current one (0mm rain forecast for four straight days) is quietly stacking UV and thermal stress on fragments that were just glued down. Coral restoration literature commonly cites first-quarter fragment mortality in the 30-50% range across community-run programs in Indonesia, and a meaningful share of that is attributable to outplanting into marginal-not-obviously-bad conditions, not just outright storms.

Every wasted outplanting trip is real cost against a genuinely scarce resource — donor grant money, tourist conservation-levy funds, and volunteer hours that don't scale. And with Indonesia's marine protected water coverage stuck at roughly 3% of its territorial sea for several years running, the restoration acreage these groups are fighting for isn't growing on its own; losing fragments to preventable timing mistakes is losing ground on one of the only levers these communities directly control.

## Who Uses This

**Primary user:** Community coral-nursery coordinators and volunteer dive guides at Gili Trawangan/Gili Meno/Gili Air-based reef restoration groups (the kind of outfit modeled on Gili Eco Trust's long-running "Biorocks" program) who run weekly outplanting dives across 3-6 named reef-flat sites and currently decide go/no-go by eye from the beach or a generic surf-forecast app that isn't tuned to shallow reef-flat conditions.
**What they do now (and why it sucks):** Check a generic marine forecast app (Windy, or just look at the water) that reports open-ocean swell, not reef-flat-specific conditions, then post a group WhatsApp message calling the dive on or off — with no record of what conditions actually were on days fragments later died.
**When they pay:** After a second consecutive outplanting trip where >20% of freshly cemented fragments are found dislodged at the next check-dive, the program coordinator starts looking for literally anything that gives an earlier warning than "the water looked choppy that day."

**Secondary user:** NGO program managers (Coral Triangle Center-adjacent or Rare-funded staff) overseeing reef restoration across multiple Lombok/Bali sites who need a simple daily readout across islands to schedule volunteer dive slots efficiently and who must file fragment-survival numbers in grant reports.
**Why they care:** A defensible, timestamped conditions log turns "we think the storm season hurt us" into an actual correlation they can put in a donor report, and cuts wasted boat fuel/volunteer time sending divers out on marginal days.

**Who definitely won't use this:** Recreational tourist divers just diving for fun (no restoration stake), large-scale commercial aquaculture or fish-farming operations (different risk profile entirely), and any group without an actual physical coral nursery to manage.

## Feature Set

### MVP — Week 1-3
- **Daily Site Go/No-Go Score:** Combines wave height, SST, UV index, and rainfall into a single 0-100 score per named reef-flat site, refreshed each morning.
- **72-Hour Outplant Window Forecast:** Highlights the best 2-3 hour low-swell block across the next three days per site.
- **Multi-Site Comparison Table:** Side-by-side scores for all configured reef-flat sites (e.g. Trawangan North, Meno East, Air Channel) so a coordinator picks the best site, not just whether "today" is good.
- **WhatsApp Morning Broadcast:** Auto-sends the day's scores to a group WhatsApp thread at 6:00am local time — no app install required to receive it.
- **Fragment Loss Quick-Log:** A one-tap form (fragments planted, fragments found dislodged at next check) volunteers fill in after each dive, tied to that day's recorded conditions.

### Version 2 — Month 2-3
- **Turbidity/Runoff Proxy:** Estimates freshwater runoff plume risk using cumulative rainfall over the prior 48 hours plus proximity to river mouths, since turbidity smothers newly cemented fragments even without big waves.
- **Site Scorecard History:** Month-over-month view correlating recorded conditions against actual logged fragment survival, so the score's weighting can be tuned per site instead of using one generic formula.
- **Multi-Island Expansion:** Add Bali (Pemuteran Biorock sites) and Java (Karimunjawa) as configurable regions using the same site/score model.

### Power User / Pro Features
- **Donor Reporting Export:** One-click PDF summarizing conditions, dives run, fragments planted, and survival rate over a grant reporting period.
- **Species-Specific Thresholds:** Separate swell/thermal tolerance thresholds for branching (Acropora) vs. massive coral genera, since a score tuned for one kills the other.

## Technical Implementation

### Suggested Stack
- PWA with offline-cached last-known scores — Gili island connectivity is patchy 3G/4G and volunteers need to check scores standing on a beach with one bar of signal
- WhatsApp Cloud API (Meta) for the daily broadcast — WhatsApp, not a native app store, is where these volunteer groups actually coordinate
- Serverless functions (Cloudflare Workers or similar) polling Open-Meteo on a cron and computing the daily score — no need for a persistent backend server for a handful of sites

**Chosen stack:** PWA + WhatsApp Cloud API broadcast + serverless cron scoring job. Volunteers get the broadcast passively every morning with zero install friction, and the PWA exists only for the multi-site comparison view and the fragment log, which coordinators check less often than they get the broadcast.

### APIs & Data Sources
| API | Specific Endpoint | What It Returns | Refresh Rate | Auth | Cost |
|-----|------------------|-----------------|--------------|------|------|
| Open-Meteo Marine API | `marine-api.open-meteo.com/v1/marine?latitude={lat}&longitude={lon}&hourly=wave_height,sea_surface_temperature,swell_wave_height,swell_wave_period` | Hourly wave height, SST, swell height/period per site coordinate | Updated multiple times daily | none | free |
| Open-Meteo Weather API | `api.open-meteo.com/v1/forecast?latitude={lat}&longitude={lon}&hourly=precipitation,uv_index,windspeed_10m&daily=uv_index_max,precipitation_sum` | Hourly/daily UV index, rainfall, wind speed | Hourly | none | free |
| World Bank Open Data | `api.worldbank.org/v2/country/ID/indicator/ER.MRN.PTMR.ZS?format=json` | Indonesia marine protected area % of territorial waters (context stat for donor reports) | Annual | none | free |

### Database Schema (key tables only)
```
sites: id (uuid), name (text), lat (float), lon (float), depth_m (float), species_focus (text), org_id (uuid)
daily_scores: id (uuid), site_id (uuid, fk), date (date), sst_c (float), wave_height_m (float), uv_index_max (float), precip_mm (float), score (int)
fragment_logs: id (uuid), site_id (uuid, fk), date (date), volunteer_name (text), fragments_planted (int), fragments_lost_30d (int)
broadcast_subscribers: id (uuid), org_id (uuid, fk), whatsapp_number (text)
```

### Key Technical Decisions
1. **Use Open-Meteo's marine grid point as an SST/wave proxy rather than waiting for in-situ buoy data:** NOAA Coral Reef Watch has no virtual station covering the Gili Matra/Lombok area (confirmed — direct requests to likely station filenames 404), so a modeled offshore grid point, clearly labeled as a proxy, is the only free real-time option; it's corrected over time by the fragment loss log.
2. **WhatsApp broadcast over native app distribution:** the target users are volunteer dive guides checking phones between dives on patchy connectivity — a push into a thread they already read beats asking them to discover, install, and open a new app every morning.

### Hardest Technical Challenge
Open-Meteo's marine model resolution doesn't capture reef-flat microclimate — shielding from surrounding reef structure, tidal exposure at low tide, and localized heat trapping in shallow water all diverge from the open-water grid point. Mitigation: treat the score explicitly as directional guidance, not ground truth, and use the fragment loss log to build a per-site correction factor over a few months of real outcomes.

## Monetization Strategy

> Note: Not every idea needs Stripe. Some are better as free tools, grant-funded, or sold B2G.

**Model chosen:** hybrid — free for any single-site community group, paid tier for NGOs coordinating multiple sites/islands.

| Tier | Price | What's Included | Why They Pay This |
|------|-------|-----------------|-------------------|
| Free | $0 | 1 reef-flat site, daily WhatsApp broadcast, fragment log | Zero-cost entry for a small volunteer group with one nursery |
| Program | $25/mo | Up to 6 sites, multi-site comparison table, scorecard history | Coordinators managing several reef flats across one island group |
| NGO | $75/mo | Unlimited sites/islands, donor PDF export, species-specific thresholds | Multi-site programs that need defensible numbers for grant reporting |

**Why someone pays:** The moment a grant renewal application asks for fragment survival data broken down by conditions, and the coordinator realizes the only record is scattered WhatsApp messages and memory — the donor PDF export becomes worth $75/month on its own.

**12-month revenue trajectory:**
- Month 3: ~3 NGO-tier programs × $75 = $225/month (plus free-tier community groups building the fragment-loss dataset)
- Month 12: ~15 Program/NGO-tier accounts blended average $50 = $750/month

**Alternative if SaaS doesn't work:** Grant-funded as a shared regional tool via a Coral Triangle Initiative-adjacent funder (Coral Triangle Center, Rare Indonesia, or USAID's SEA marine programs already fund exactly this kind of restoration-support tooling) — priced as a one-time build-and-hand-off rather than recurring SaaS if community groups can't sustain a subscription.

## Marketing Strategy

**Exact communities to reach:**
- Gili Eco Trust's public Facebook page and volunteer network (the organization that pioneered Biorock coral restoration on Gili Trawangan, active for over a decade)
- "Komunitas Selam Indonesia" (Indonesian diving community Facebook group, broad national scuba community with restoration-adjacent members)
- r/scuba on Reddit, specifically threads about Indonesia dive conservation and volunteer trips
- Local Lombok/NTB dive shop WhatsApp groups that run the actual nursery dives (reachable directly through Gili-based dive operators)

**First 10 users and how you get them:**
Contact Gili Eco Trust and 2-3 independently run Gili-based dive shop coral programs directly (they're well-documented, contactable via their public pages), offer to set up their exact reef-flat sites for free in exchange for being the pilot group and letting the fragment-loss log calibrate the scoring model against their real outcomes.

**The press angle:**
"A free weather tool is trying to stop volunteer divers from wasting coral fragments they spent months growing" — a concrete, visual conservation-tech story that dive/travel press (and Indonesian environmental outlets) can run with actual before/after fragment survival numbers once the pilot group has a season of data.

**Content / SEO play:**
Public, auto-updating "today's outplant conditions" pages per island/site — these become the kind of page other reef restoration groups elsewhere in Indonesia search for when trying to solve the same problem, driving organic signups from outside the initial pilot region.

**Launch sequence:**
1. Pilot with Gili Eco Trust and one independent Gili dive shop program for a full dry season, refining the score against their fragment logs.
2. Launch the WhatsApp broadcast publicly to any Lombok/Bali coral restoration group willing to configure their sites, free tier only.
3. Approach Coral Triangle Center and Rare Indonesia with the pilot season's fragment-survival correlation data as the basis for grant-funded or NGO-tier adoption.

## Competitive Landscape

| Existing Solution | What They Do | Where They Fall Short | Why This Wins |
|-------------------|-------------|----------------------|---------------|
| Generic surf/marine forecast apps (Windy, Surf-Forecast) | Show open-ocean swell and wind for a region | Not tuned to shallow reef-flat conditions, no SST/UV/rain combined score, no fragment-outcome feedback loop | Purpose-built score for the exact go/no-go decision, delivered where volunteers already coordinate (WhatsApp) |
| Manual WhatsApp gut-feel calls | Free, fast, uses local knowledge | No historical record, misses building swell/heat stress, doesn't scale across multiple sites | Systematic, logged, and improves over time via the fragment loss data |
| Nothing (most small programs) | — | No tool at all for many community groups | First mover for a genuinely underserved, low-resource user base |

**Moat:** The fragment-loss log accumulates a site-specific calibration dataset that a generic weather app will never have — the longer a group uses it, the more accurate its score gets for their exact reef flats, which is hard for a new entrant to replicate without the same historical outcome data.

## Risk Factors

1. **Data — Open-Meteo marine grid resolution doesn't match reef-flat microclimate:** Modeled offshore conditions can diverge meaningfully from actual shallow-water conditions at low tide → **Mitigation:** Explicitly label scores as directional guidance and build a per-site correction factor from the fragment loss log over one full season.
2. **Adoption — volunteer-run groups have high coordinator turnover:** The person who set up the WhatsApp broadcast may leave the program, breaking the habit loop → **Mitigation:** Make the broadcast org-owned (tied to a WhatsApp group, not an individual's phone number) so it survives coordinator changes.
3. **Market — target users have near-zero ability to pay individually:** Most community coral nurseries run on volunteer labor and small grants, not revenue → **Mitigation:** Keep single-site use genuinely free forever and pursue NGO-tier/grant funding for the multi-site, revenue-generating layer rather than trying to monetize individual volunteers.

## Build Reality Check

| Phase | Realistic Timeline | What Exists at End |
|-------|-------------------|-------------------|
| Prototype | 2 weeks | Working daily score + WhatsApp broadcast for 1-2 hardcoded pilot sites |
| Beta | 6 weeks | Fragment loss log live, 3-6 sites configurable, one full dry-season pilot with Gili Eco Trust |
| Launch | 12 weeks | Public free tier for any Indonesian reef restoration group, first paid NGO-tier customer |

**Solo founder feasibility:** Yes — the core logic (fetch 3 free APIs, compute a weighted score, push a WhatsApp message) is a small, well-scoped build; the hard part is relationship-building with the pilot dive shops, not engineering.
**Biggest execution risk:** Getting a real restoration group to actually change their existing WhatsApp-gut-feel habit and log fragment outcomes consistently enough to make the calibration loop work — without that discipline, the tool never gets better than the generic forecast apps it's replacing.

---
*Generated: 2026-08-22 | Industry: environment_ecology | Sub-industry: coral_reef | Geography: indonesia*
*APIs queried for real data: Open-Meteo Marine API, Open-Meteo Weather API, World Bank Open Data*

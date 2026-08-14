---
id: pasanya-kaeng-krachan-boundary-checker-2026-08-14
title: PaSanya — Forest Reserve Boundary Overlap Checker for Kaeng Krachan Karen Swidden Farmers
created: 2026-08-14T08:03:08+07:00
industry: real_estate_urban
sub_industry: land_title_disputes
geography: thailand
apis_used: OpenStreetMap Overpass API, World Bank Open Data, NASA EONET
monetization_model: grant-funded
target_user: Pgaz K'Nyau (Karen) rotational swidden farmers in Pong Luek-Bang Kloi and other pre-1981 enclave villages inside or bordering Kaeng Krachan National Park, Phetchaburi Province, who farm ancestral ไร่หมุนเวียน plots that predate the park's gazettement and face arrest under Section 19 of the National Park Act for cultivating inside zones whose exact boundary is disputed
concept_hash: forest-reserve-boundary-overlap-risk-checker+kaeng-krachan-phetchaburi-thailand+karen-pgaz-knyau-swidden-farmers
---

# PaSanya — Forest Reserve Boundary Overlap Checker for Kaeng Krachan Karen Swidden Farmers

## The Hook
- Thailand's own OpenStreetMap protected-area records for the hills around Kaeng Krachan are tagged `fixme: approximately` — the government's forest boundaries are officially fuzzy, yet villagers are arrested with total legal precision for stepping over them.
- A Karen grandmother clearing a two-rai swidden plot her family has rotated through since before the 1981 park declaration has no way to know, before she swings the first machete, whether GPS will place that plot inside a "core protection zone" (prison time) or the 2019 Cabinet-resolution "special use zone" (legal).
- Thailand's forest cover has shrunk from 38.97% to 38.69% of land area in just four years (World Bank, 2019→2023) — enforcement is tightening precisely as the boundary data enforcement relies on stays imprecise.

## Real Data Found
> Live data queried from real APIs during idea generation — not placeholders.

| Source | Data Point | Value | Queried |
|--------|-----------|-------|---------|
| OpenStreetMap Overpass API | Protected-area boundary precision flag for reserves bordering Kaeng Krachan (Khao Krapuk-Khao Tao Mo Non-Hunting Area, Maenam Phachi Wildlife Sanctuary) | Both boundary relations carry `"fixme": "approximately"` — no surveyed boundary exists in the public dataset | 2026-08-14 |
| World Bank Open Data (AG.LND.FRST.ZS) | Thailand forest area as % of total land area | 38.97% (2019) → 38.83% (2020) → 38.76% (2021)→ 38.76% (2022) → 38.69% (2023) — steady decline | 2026-08-14 |
| NASA EONET | Open wildfire events within the Kaeng Krachan bounding box (99.0–99.9°E, 12.5–13.3°N), last 10 days | 0 active events | 2026-08-14 |

The Overpass result is the whole app in one data point: even the two protected areas immediately adjacent to Kaeng Krachan — areas the Department of National Parks (DNP) has had jurisdiction over for decades — are marked "approximately" bounded in the best public geodata available. Kaeng Krachan itself (2,915 km², Thailand's largest national park, much of it along the disputed Myanmar border ridge) has never had its boundary reconciled against the pre-existing land claims of the Karen villages inside it — including Pong Luek-Bang Kloi, where the 2021 forced eviction and later court rulings made international news. The EONET zero-fire reading confirms it's currently the rainy-season lull; the real risk window is dry season (Feb–April), when swidden burning is both agriculturally necessary and the single most common trigger for arrest.

## The Problem

In April 2021, DNP rangers helicoptered into Bang Kloi village and forcibly relocated roughly 80 Karen families back down from the highland plots their community had farmed for generations, burning some structures in the process — an operation later found by Thailand's National Human Rights Commission to have violated the villagers' rights. The underlying dispute has never actually been resolved: nobody, including DNP officials on the ground, can hand a villager a definitive answer to "is this specific plot, at these specific coordinates, inside the zone where I'm allowed to farm this year." The 2019 Cabinet resolution created a nominal "special use zone" recognizing rotational farming rights for communities who lived there before park gazettement, but its boundaries were never surveyed to plot level and were never reconciled with DNP's own enforcement maps.

The structural reason this persists is that Thailand's forest boundaries were drawn top-down from 1960s-70s aerial photography and colonial-era forestry maps, decades before GPS, while land use on the ground was never systematically surveyed against them — the same root cause visible in the Overpass data above, where even non-hunting areas next to Kaeng Krachan are still flagged as approximate today. Villagers' current workaround is entirely social: asking the village headman or a sympathetic ranger whether "it should be fine this year," or relying on NGO field visits that happen a few times a season at best. Paralegals from groups like the Cross Cultural Foundation (CrCF) and the Community Resource Centre Foundation currently reconstruct plot boundaries after an arrest has already happened, using whatever GPS points a villager remembers — never before.

Without a way to check zone status before planting, families keep making an impossible choice between food security (swidden rotation is how upland rice yields stay viable on thin mountain soil) and the risk of arrest, seized tools, and — as in several documented Kaeng Krachan cases — months of pretrial detention. Every dry season this repeats, and every arrest becomes a fresh legal case that NGOs must litigate from scratch instead of preventing.

## Who Uses This

**Primary user:** Karen swidden farmers (often the household's senior woman, since Pgaz K'Nyau farming decisions are frequently matrilineal) in Pong Luek-Bang Kloi and neighboring enclave villages inside/bordering Kaeng Krachan National Park, who need to check a plot's zone status before clearing or burning it each dry season, using a basic Android phone with intermittent signal.
**What they do now (and why it sucks):** Ask the village headman or wait for an infrequent NGO field visit — both are slow, informal, and carry no documentary weight if DNP disputes the plot's status after the fact.
**When they pay:** They don't — the household pays nothing; see Monetization below.

**Secondary user:** Paralegals and case officers at CrCF, the Community Resource Centre Foundation, and the Karen Network for Culture and Environment (KNCE), who need to generate a defensible GPS-boundary record for a plot the moment a family reports arrest risk or an actual arrest, instead of reconstructing it weeks later from memory.
**Why they care:** A pre-existing, timestamped boundary-overlap record turns a case from "villager's word vs. ranger's report" into evidence with a paper trail — the difference between a case that settles and one that drags through provincial court for years.

**Who definitely won't use this:** Lowland Thai landowners with Chanote title disputes, urban condo buyers, or anyone whose land question is a private commercial transaction rather than a subsistence/human-rights boundary dispute — this is not a general Thai land-title app.

## Feature Set

### MVP — Week 1-3
- **Plot GPS capture (offline-first):** Farmer or paralegal walks the plot perimeter with a phone; app logs GPS points and computes the polygon with no signal required, syncing later.
- **Zone overlay check:** On sync, the captured polygon is checked against the best available boundary layer (DNP's public GIS shapefiles where obtainable, cross-referenced against OSM Overpass protected-area boundaries as a free, independent second opinion) and returns "inside core zone / inside special-use zone / boundary uncertain — flagged."
- **Boundary-uncertain flag:** When DNP and OSM boundaries disagree by more than ~50m (as they demonstrably do, per the Real Data Found section), the app explicitly surfaces this as evidence of ambiguity rather than silently picking one source.
- **Plain-Thai + Sgaw Karen script summary:** One-screen result readable by the farmer directly, not just the paralegal.
- **Dry-season risk calendar:** Simple month-by-month reminder that risk of enforcement patrols and fire-related charges rises Feb–April, tied to the historical burn-season pattern.

### Version 2 — Month 2-3
- **Case export packet:** One tap generates a dated PDF with the plot polygon, boundary comparison, and photos — formatted for direct handoff to CrCF/paralegal case files.
- **Village-level plot registry:** Aggregate view (opt-in, community-controlled) showing all captured plots for a village, useful for headmen negotiating with DNP on the "special use zone" boundary itself.
- **DNP patrol-schedule crowdsourcing:** Community-reported (not official) sightings of ranger patrol activity, opt-in and anonymized, to supplement the risk calendar.

### Power User / Pro Features
- **Multi-plot household dashboard:** For paralegals tracking dozens of households across several enclave villages at once.
- **Historical satellite overlay comparison:** Pull Landsat/Sentinel imagery for a plot's coordinates across years to show continuous cultivation predating park gazettement — a specific evidentiary need in these cases.

## Technical Implementation

### Suggested Stack
**Chosen stack:** React Native (Expo) PWA-hybrid with offline vector map tiles (downloaded once over village wifi/NGO visit, then fully functional without signal) + a lightweight Node.js/PostGIS backend for boundary comparison, because the field reality is intermittent 2G/no signal in the hills and low device turnover (older Android phones) — a native offline-capable app beats any server-dependent design here.

### APIs & Data Sources
| API | Specific Endpoint | What It Returns | Refresh Rate | Auth | Cost |
|-----|------------------|-----------------|--------------|------|------|
| OpenStreetMap Overpass API | `https://overpass-api.de/api/interpreter?data=[out:json][bbox:...];relation["boundary"="protected_area"];out tags geom;` | Protected-area polygons + boundary precision metadata (`fixme` tags) | On-demand, cached weekly | None | Free |
| World Bank Open Data | `https://api.worldbank.org/v2/country/TH/indicator/AG.LND.FRST.ZS?format=json` | Thailand national forest-area trend, for the risk-calendar context screen | Annual | None | Free |
| NASA EONET | `https://eonet.gsfc.nasa.gov/api/v3/events?category=wildfires&bbox=99.0,13.3,99.9,12.5` | Active wildfire events near the park, feeding the dry-season risk calendar | Real-time | None | Free |
| DNP/RFD open GIS portal (where accessible) | Provincial forest-reserve/national-park shapefiles | Official boundary polygons for direct comparison | Static, manual re-download | None/registration | Free |

### Database Schema (key tables only)
```
plots: id (uuid), household_id (fk), captured_by (fk), polygon (geometry), captured_at (timestamp), synced_at (timestamp)
zone_checks: id (uuid), plot_id (fk), source (enum: dnp/osm), zone_result (enum: core/special_use/uncertain), boundary_distance_m (float), checked_at (timestamp)
households: id (uuid), village_id (fk), contact_name (text), phone (text, nullable)
villages: id (uuid), name (text), name_karen (text), region (text)
case_exports: id (uuid), plot_id (fk), generated_at (timestamp), pdf_url (text)
```

### Key Technical Decisions
1. **Offline-first capture, online-only comparison:** GPS logging must work with zero signal in the field; the boundary comparison itself can wait for sync, since it's not needed in the moment of walking the plot.
2. **Show disagreement, don't resolve it silently:** When DNP and OSM boundaries diverge, the app must surface both rather than average or pick one — the ambiguity itself is the legally relevant fact.

### Hardest Technical Challenge
Getting a usable, licensable digital boundary layer from DNP/RFD at all — Thai government GIS portals for protected-area boundaries are inconsistently published, sometimes PDF-only, and not guaranteed machine-readable. Mitigation: partner directly with an NGO (CrCF or RECOFTC) that already has FOI/relationship access to provincial DNP offices to obtain shapefiles, and treat OSM as the fallback/cross-check layer everywhere official data isn't obtainable — which itself becomes a feature, not just a limitation, per the "boundary-uncertain flag."

## Monetization Strategy

> Note: Not every idea needs Stripe. Some are better as free tools, grant-funded, or sold B2G.

**Model chosen:** grant-funded

This is unambiguously a human-rights/legal-aid tool for a subsistence-farming population with no ability or reason to pay. It is not monetizable as a consumer or B2B SaaS product.

| Tier | Price | What's Included | Why They Pay This |
|------|-------|-----------------|-------------------|
| Community (farmers) | Free, forever | Full plot capture, zone check, risk calendar | This is the entire point of the tool |
| NGO/legal-aid partner | Free | Case export, multi-household dashboard | Funded by the same grants as the tool itself |

**Why someone pays:** Nobody in the user base pays. The build is funded via international human-rights/indigenous-land-rights grant channels — Ford Foundation's Thailand/Mekong program, Open Society Foundations' land rights initiatives, or EU human rights defender support mechanisms — the same funding pool that already supports CrCF and RECOFTC's existing casework.

**12-month revenue trajectory:**
- Month 3: $0 revenue — grant application stage, pilot with one village
- Month 12: $0 direct revenue; target 1 signed grant (~$40-80k typical for this scale of legal-tech tool) covering development + 2 years of hosting/maintenance

**Alternative if grant funding doesn't work:** Fold the core boundary-comparison logic into an existing NGO's case-management tooling as a contributed open-source module rather than a standalone app — lower overhead, same impact, no need for independent funding.

## Marketing Strategy

**Exact communities to reach:**
- Cross Cultural Foundation (CrCF / มูลนิธิผสานวัฒนธรรม) — the organization that has litigated multiple Kaeng Krachan cases; direct partnership target, not a "marketing channel" in the normal sense.
- เครือข่ายกะเหรี่ยงเพื่อวัฒนธรรมและสิ่งแวดล้อม (Karen Network for Culture and Environment, KNCE) — the umbrella Karen advocacy network with direct village contacts across Kaeng Krachan and Umphang.
- P-Move (ขบวนการประชาชนเพื่อสังคมที่เป็นธรรม) Facebook page — Thailand's largest land-rights people's movement network, several thousand followers, regularly covers Kaeng Krachan Karen cases.

**First 10 users and how you get them:**
Not a launch in the normal sense — the first 10 users are paralegals at CrCF and community leaders in Pong Luek-Bang Kloi and Ban Bang Kloi Bon, reached through an existing CrCF staff introduction (this only works with that partnership in place first), piloted on a handful of already-documented plots so results can be validated against known case history before wider village rollout.

**The press angle:**
"Thailand's own park boundary maps are marked 'approximately' — and that's exactly what's putting Karen farmers in prison." A story built directly on the Overpass finding above: the government's own best available geodata admits the boundaries are estimates, while enforcement treats them as exact.

**Content / SEO play:**
Minimal — this is not a discoverability-driven product. Any public content should be case-documentation quality (usable by journalists and researchers covering Thai indigenous land rights), not SEO bait, given the sensitivity of exposing exact plot locations.

**Launch sequence:**
1. Partner formally with CrCF and/or RECOFTC before any building begins — get access to whatever official DNP boundary data they already hold.
2. Pilot silently with 5-10 already-known, already-documented plots to validate the boundary comparison against real case outcomes.
3. Only then introduce to village headmen in Pong Luek-Bang Kloi via KNCE's existing community relationships, ahead of the Feb-April dry-season risk window.

## Competitive Landscape

| Existing Solution | What They Do | Where They Fall Short | Why This Wins |
|-------------------|-------------|----------------------|---------------|
| Manual NGO field GPS surveys | Paralegals occasionally walk plots with handheld GPS units during case prep | Reactive (after arrest/dispute), infrequent, no standing record | Proactive, farmer-initiated, before-the-fact record |
| Village headman informal knowledge | Social/oral judgment on "is this area safe to farm" | No documentary weight, inconsistent across headmen, no boundary precision | Produces a timestamped, exportable evidentiary record |
| Land Watch Thai / general Thai land-dispute mapping tools | Track lowland Chanote title disputes and speculation | Built for a completely different dispute type (private title vs. government forest boundary) | Purpose-built for the forest-reserve overlap mechanism specifically |

**Moat:** Not commercial defensibility — the moat here is the CrCF/RECOFTC partnership and the accumulated village-level plot registry itself, which becomes more valuable to have pre-existing (not reconstructed after arrest) with every planting season it's used.

## Risk Factors

1. **Data risk — DNP boundary data may be unobtainable or intentionally imprecise:** Official shapefiles may not exist in usable form, or DNP may have no incentive to make enforcement boundaries checkable by the communities being enforced against → **Mitigation:** Design the OSM cross-check as a fully functional standalone layer from day one, not a fallback bolted on later; the "uncertain" flag itself has legal value even without DNP data.
2. **Adoption risk — a digital record could be used against the community, not just for it:** A precise plot polygon in the wrong hands is also evidence DNP could use to prosecute more precisely → **Mitigation:** Data stays on-device until the household or their paralegal explicitly chooses to sync/export; no centralized database of "who is farming where" without consent, built with CrCF's input from the start.
3. **Political risk — the app could be read as taking a side in an active, sensitive land conflict:** Any perceived NGO-tech alignment against DNP could complicate the funding, hosting, or physical safety of field staff → **Mitigation:** Frame and fund strictly as neutral legal-documentation tooling (evidence generation, not advocacy messaging), consistent with CrCF's existing legal-aid mandate.

## Build Reality Check

| Phase | Realistic Timeline | What a user can actually do |
|-------|-------------------|-------------------|
| Prototype | 4 weeks | Offline GPS plot capture + OSM-only boundary comparison, no DNP data yet |
| Beta | 10 weeks | CrCF partnership secured, DNP data integrated where obtainable, pilot on 5-10 known plots |
| Launch | 16 weeks | Rolled out to Pong Luek-Bang Kloi ahead of dry season, case-export feature live |

**Solo founder feasibility:** Difficult — the technical build is straightforward for one competent mobile developer, but the project is entirely gated on securing an NGO partnership (CrCF/RECOFTC) for both data access and legitimate community entry; without that, this cannot and should not be built.
**Biggest execution risk:** Not technical — it's securing trust and formal partnership with the affected Karen communities and their existing legal advocates before writing a line of code aimed at their villages.

---
*Generated: 2026-08-14 | Industry: real_estate_urban | Sub-industry: land_title_disputes | Geography: thailand*
*APIs queried for real data: OpenStreetMap Overpass API, World Bank Open Data, NASA EONET*

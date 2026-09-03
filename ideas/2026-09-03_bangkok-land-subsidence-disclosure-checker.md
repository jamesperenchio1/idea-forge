---
id: bangkok-land-subsidence-disclosure-checker-2026-09-03
title: BaanTrud — Land Subsidence Disclosure Checker for Bang Khun Thian Shophouse Buyers
created: 2026-09-03T08:01:55+07:00
industry: real_estate_urban
sub_industry: bangkok_sinking_zones
geography: thailand
apis_used: Open-Meteo Flood API, World Bank Open Data, OpenStreetMap Overpass API
monetization_model: freemium
target_user: First-generation Thai-Chinese small business owners and working-class families in Bang Khun Thian, Bang Bon, and Thung Khru districts of outer south Bangkok buying a modest 2-3 story tuek thaeo (shophouse) built on reclaimed paddy or mangrove land, who have no legal right to see subsidence or flood-history disclosure before signing — and find out their new floor is cracking or their soi floods every high tide only after moving in.
concept_hash: bangkok-land-subsidence-disclosure-checker+bang-khun-thian-outer-south-bangkok-thailand+working-class-shophouse-buyers
---

# BaanTrud — Land Subsidence Disclosure Checker for Bang Khun Thian Shophouse Buyers

## The Hook
- Bang Khun Thian's soft marine clay subsided as much as 10-12 cm/year at its 1980s peak from unregulated groundwater pumping, and outer south Bangkok districts still sink 1-3 cm/year today — nearly a decade after central Bangkok's rate slowed to under 1 cm/year — yet Thailand has zero legal requirement for a seller to disclose any of this before a shophouse sale closes.
- Live Chao Phraya discharge near Bang Khun Thian is running 3,800-4,245 m³/s this week and rising — the exact kind of water-burden data nobody selling a canal-fronting shophouse ever shows a buyer.
- A ฿0 lookup tool that turns "is this address a slow-motion disaster" into a five-second check, built for the exact income bracket priced out of hiring a geotechnical surveyor before buying.

## Real Data Found
> Live data queried from real APIs during idea generation — not placeholders.

| Source | Data Point | Value | Queried |
|--------|-----------|-------|---------|
| Open-Meteo Flood API | Chao Phraya river discharge near Bang Khun Thian (13.675°N, 100.425°E) | 3,800.89 m³/s (2026-09-03), forecast rising to 4,245.20 m³/s by 2026-09-05 | 2026-09-03 |
| OpenStreetMap Overpass API | Canal (khlong) waterway count in the Bang Khun Thian / Bang Khae bounding box (13.60-13.72°N, 100.38-100.48°E) | 400 mapped canal ways | 2026-09-03 |
| World Bank Open Data | Thailand annual freshwater withdrawal (% of internal resources) | 25.53% (2022, latest available) | 2026-09-03 |
| World Bank Open Data | Thailand urban population (% of total) | 62.80% (2025) | 2026-09-03 |

400 separate mapped canal segments inside a roughly 12km x 13km box is an unusually dense drainage network — every one of those khlongs needs active pumping and dredging to keep outer south Bangkok from waterlogging, and every one is a historical marker of the reclaimed swamp and paddy land the district sits on. Combine that with a rising river discharge trend this week and a national freshwater withdrawal rate that's stayed flat at roughly a quarter of internal water resources for three straight years — groundwater dependency hasn't eased — and the physical picture is consistent with what geotechnical surveys have shown for decades: outer south Bangkok's clay is still compacting under the weight of pumping-dependent urban growth (a district that's part of the 62.8% of Thais now counted as urban). None of this shows up in a shophouse listing photo.

## The Problem

Somchai, 34, runs a small motorcycle parts shop and has spent six years saving up a ฿1.8M down payment for a two-story tuek thaeo on a soi off Ekkachai Road in Bang Khun Thian — close enough to his in-laws, cheap enough to actually afford inside Bangkok's city limits. The listing agent doesn't mention that the soi was rice paddy until the 1970s, that the neighborhood's canals (there are hundreds within walking distance, per OpenStreetMap) need constant pumping to stay dry, or that the Department of Mineral Resources' own subsidence surveys have flagged this general belt of outer south Bangkok as a historically high-subsidence zone. Somchai signs. Eighteen months later, hairline cracks run diagonally across his shop's front wall, and his soi floods ankle-deep every unusually high tide — not every rainy season, just the ones where the Chao Phraya's discharge happens to peak the way this week's forecast is already trending.

The structural reason this stays invisible: Thailand's real estate disclosure law (Consumer Protection Act provisions covering property sales) does not require sellers or agents to disclose subsidence history, flood frequency, or soil condition — only structural defects the seller can be proven to have known about, which subsidence-related cracking almost never meets the bar for. The Department of Mineral Resources' subsidence-rate survey data exists, but it's published as static academic PDFs and GIS shapefiles aimed at engineers and municipal planners, not as an address lookup a buyer can use standing in a real estate agent's office. Buyers in Somchai's income bracket can't afford the ฿15,000-40,000 a private geotechnical soil survey costs before purchase, so the workaround is folk knowledge — asking neighbors, checking if the soi looks "new" — which is unreliable and non-transferable to someone relocating from another part of the city or country.

Without a fix, buyers in exactly this bracket keep absorbing a risk that's fully knowable in advance but structurally hidden — they finance a house with a 20-30 year mortgage against land that may need re-leveling or perpetual pump maintenance within a decade, using up savings that took years to build with no way to have priced that risk into their offer.

## Who Uses This

**Primary user:** Working-class and lower-middle-income buyers of shophouses and small single-family homes in outer south/west Bangkok districts (Bang Khun Thian, Bang Bon, Thung Khru, Nong Khaem) — typically first-time buyers financing through a Government Housing Bank (GH Bank) mortgage, often first-generation Thai-Chinese small business owners moving out of rented commercial space.
**What they do now (and why it sucks):** Ask around the neighborhood, look at how "settled" nearby houses appear, or just trust the agent — none of which surfaces documented subsidence-zone history or current water-burden trends.
**When they pay:** After finding a specific listing they're seriously considering — the moment right before making an offer, when ฿99 for a full report feels trivial against a ฿1.5-3M purchase decision.

**Secondary user:** Independent (non-agency-affiliated) Thai real estate agents who work working-class outer-Bangkok listings and want a free trust-building tool to hand clients — differentiates them from agents who say nothing.
**Why they care:** A buyer who feels informed closes faster and disputes less after move-in; the agent avoids being blamed later for "not telling me."

**Who definitely won't use this:** Luxury condo buyers in central Bangkok (Sukhumvit, Silom) — subsidence risk there is well-managed and already priced into sky-high per-sqm rates; this tool has nothing useful to tell them.

## Feature Set

### MVP — Week 1-3
- **Address/soi lookup:** Buyer enters a Bangkok address or drops a pin; app returns the district's known historical subsidence zone classification (built from published Department of Mineral Resources and Asian Institute of Technology survey data, digitized into a static district-level dataset).
- **Live water-burden score:** Pulls current + 3-day-forecast Chao Phraya and canal discharge near the address via Open-Meteo Flood API, flags "elevated" when discharge trends upward like this week's reading.
- **Canal density map:** Overpass-powered overlay showing every mapped khlong within 1km — more canals within immediate proximity means more dependency on active pumping infrastructure that can fail or lapse.
- **Plain-Thai risk summary card:** One paragraph, no jargon — "this soi sits in a zone that historically sank up to X cm/year; N canals nearby need active maintenance; this week's river flow is Y% above normal" — shareable as a LINE image for sending to family.
- **Free basic score:** No login required for the headline risk tier (Low/Medium/High); full report gated behind a one-time micro-payment.

### Version 2 — Month 2-3
- **Neighbor-reported crack/flood log:** Crowdsourced, opt-in reports from residents of a soi ("wall cracked 2025," "flooded twice this year") to supplement official survey data with lived experience.
- **Mortgage-timing overlay:** Cross-references GH Bank / commercial bank flood-zone insurance premium differences by district so buyers see the financing-cost impact, not just the geological one.
- **Side-by-side listing comparator:** Paste two or three shophouse listings under consideration, get subsidence/water scores ranked side by side.

### Power User / Pro Features
- **Agent white-label report:** Independent agents pay monthly for a branded PDF version to email clients directly from the listing page.
- **API access for small property inspection firms:** Pay-per-lookup access for the handful of independent home-inspection businesses serving this buyer segment.

## Technical Implementation

### Suggested Stack
PWA with offline-capable core lookup (installable from LINE/Facebook link, no app store friction) — this buyer segment overwhelmingly uses budget Android phones and shops for property via Facebook Marketplace and LINE groups, not app stores. A LINE bot front-end for the free basic score (fits existing chat-app habits) with a lightweight web app for the paid full report and map view.

**Chosen stack:** Next.js PWA + Supabase (Postgres + PostGIS for the digitized subsidence-zone polygons and canal geometry) + a LINE Official Account as the primary entry point, because the target user is far more likely to open a LINE bot link shared in a family group chat than to search for and install a standalone app.

### APIs & Data Sources
| API | Specific Endpoint | What It Returns | Refresh Rate | Auth | Cost |
|-----|------------------|-----------------|--------------|------|------|
| Open-Meteo Flood API | `https://flood-api.open-meteo.com/v1/flood?latitude={lat}&longitude={lon}&daily=river_discharge&timezone=Asia/Bangkok&past_days=3&forecast_days=3` | Daily river discharge (m³/s), historical + 3-day forecast | Daily | none | free |
| OpenStreetMap Overpass API | `https://overpass-api.de/api/interpreter?data=[out:json];way["waterway"="canal"]({bbox});out geom;` | Canal/khlong geometries and counts within a bounding box | On-demand (cached weekly) | none | free |
| World Bank Open Data | `https://api.worldbank.org/v2/country/TH/indicator/ER.H2O.FWTL.ZS?format=json&mrv=5` | National freshwater withdrawal % — annual context indicator for groundwater-dependency framing | Annual | none | free |
| Department of Mineral Resources subsidence survey (static digitized dataset) | N/A — ingested once as GeoJSON, not a live API | Historical district-level subsidence rate classifications | Static (updated if new survey published) | none | free |

### Database Schema (key tables only)
```
subsidence_zones: id (uuid), district_name (text), geom (postgis polygon), historical_rate_cm_yr (numeric), source_year (int), source_citation (text)
canal_cache: id (uuid), bbox_key (text), canal_count (int), geom_summary (jsonb), fetched_at (timestamp)
flood_readings: id (uuid), lat (numeric), lon (numeric), discharge_m3s (numeric), reading_date (date), fetched_at (timestamp)
listing_lookups: id (uuid), address_text (text), lat (numeric), lon (numeric), risk_tier (text), user_line_id (text nullable), created_at (timestamp), paid (boolean)
neighbor_reports: id (uuid), lookup_id (uuid fk), report_type (text), description (text), reported_at (timestamp), verified (boolean)
```

### Key Technical Decisions
1. **Static subsidence dataset instead of a live government API:** No live subsidence-rate API exists in Thailand; digitizing published DMR/AIT survey PDFs into a one-time GeoJSON ingestion is the only viable path, refreshed manually if new academic surveys are published (roughly every few years historically).
2. **LINE bot as primary interface, not an app store listing:** matches how this exact buyer segment already discovers and shares property tools — a LINE link forwarded in a family group chat converts far better than an app store search for this demographic.

### Hardest Technical Challenge
Getting accurate historical subsidence-rate data at fine enough geographic resolution — published academic surveys are often district- or sub-district-level, not soi-level, which risks giving buyers false precision or, worse, a false sense of confidence about one specific address. Mitigation: always present the risk tier as a zone-level estimate with an explicit "this is neighborhood-level data, not a soil test for this exact plot" disclaimer, and use the live flood-discharge and canal-density data as sharper, address-adjacent signals layered on top of the coarser static zone data.

## Monetization Strategy

> Note: Not every idea needs Stripe. Some are better as free tools, grant-funded, or sold B2G.

**Model chosen:** freemium

| Tier | Price | What's Included | Why They Pay This |
|------|-------|-----------------|-------------------|
| Free | ฿0 | Headline risk tier (Low/Medium/High) via LINE bot, no login | Acquisition — shareable in family LINE groups where the actual decision gets discussed |
| Full Report | ฿99 one-time per address | Full risk breakdown, canal map, live water-burden trend, neighbor reports, shareable PDF | Buyer is about to make an offer on a ฿1.5-3M purchase; ฿99 is trivial against that stake |
| Agent Pro | ฿399/month | Unlimited branded reports, white-label PDF, priority on new subsidence survey data | Differentiates an independent agent from competitors who disclose nothing |

**Why someone pays:** The exact moment a buyer is deciding whether to make an offer — that's when ฿99 stops being "an app fee" and becomes "cheap insurance against signing a 20-year mortgage on a house that might crack."

**12-month revenue trajectory:**
- Month 3: ~150 full reports/month × ฿99 + 5 agent subscriptions × ฿399 = ~฿17,000/month
- Month 12: ~900 full reports/month × ฿99 + 40 agent subscriptions × ฿399 = ~฿105,000/month

**Alternative if SaaS doesn't work:** Partner with GH Bank or a consumer-protection NGO (Foundation for Consumers, มูลนิธิเพื่อผู้บริโภค) to fund it as a free public disclosure tool — the underlying subsidence data is a genuine consumer-protection gap that fits their existing mandate, and GH Bank has a direct financial interest in fewer defaults tied to structurally deteriorating collateral.

## Marketing Strategy

**Exact communities to reach:**
- Facebook group "บ้านมือสอง ทาวน์เฮ้าส์ ตึกแถว กรุงเทพ-ปริมณฑล" (secondhand houses/townhouses/shophouses Bangkok-metro, ~180,000 members) — exactly where this buyer segment researches listings
- Facebook group "คนบางขุนเทียน" (Bang Khun Thian district community group, ~45,000 members) — hyperlocal, direct relevance
- Pantip.com "ห้องบ้านและสวน" (Baan Lae Suan / home & garden forum board) — where Thai buyers post "is this area good to buy in?" threads and get crowd-sourced answers exactly like the ones this tool formalizes

**First 10 users and how you get them:**
Post the free LINE bot link directly as a reply to five active "กำลังจะซื้อบ้านแถวบางขุนเทียน มีใครรู้จักบ้างมั้ย" (about to buy a house in Bang Khun Thian, does anyone know the area?) threads on Pantip and the district Facebook group, framed as "ลองดูข้อมูลทรุดตัวของพื้นที่ก่อนตัดสินใจ" (check the area's subsidence data before deciding) — not a sales pitch, a direct answer to the exact question already being asked.

**The press angle:**
"400 canals feed one Bangkok district that's still sinking a decade after the city said it fixed the problem — and nobody selling a house there has to tell you." A local Thai-language property/urban-affairs outlet (like The Momentum or Way Magazine, both of which cover Bangkok urban-planning failures) is a realistic pickup for the DMR survey data paired with the live drainage-density findings.

**Content / SEO play:**
District-by-district static pages ("บางขุนเทียน ทรุดตัวเท่าไหร่" — how much has Bang Khun Thian sunk) that rank for the exact Thai-language searches buyers already run before viewing a listing, each pulling from the same underlying zone dataset and live flood API.

**Launch sequence:**
1. Digitize the DMR subsidence survey data for the 6 highest-risk outer south/west Bangkok districts first (not all of Bangkok) — smaller, defensible initial coverage area.
2. Launch the free LINE bot with zero paid tier for the first month, seeding usage and neighbor-report data in the target Facebook groups.
3. Week 2: turn on the ฿99 full-report tier once there's a base of free-tier users who've already found the tool useful.

## Competitive Landscape

| Existing Solution | What They Do | Where They Fall Short | Why This Wins |
|-------------------|-------------|----------------------|---------------|
| DDPM / DMR flood & subsidence GIS portals | Publish official government subsidence and flood-zone maps | Built for planners/engineers, not consumer-facing; no address lookup, no plain-language risk framing, desktop-only GIS interfaces | Address-level lookup, LINE-native, plain Thai, ฿99 not a government portal login |
| Real estate agent verbal assurance | Agents may mention flood history informally if asked | Unverifiable, self-interested, inconsistent, no documentation | Cites actual survey sources, gives buyer something to point back to later |
| Nothing (for this income bracket) | Most buyers do no structured research at all | — | First tool actually built for ฿1.5-3M shophouse buyers, not luxury condo buyers |

**Moat:** The digitized, address-searchable version of scattered academic/government subsidence survey data doesn't exist anywhere else in consumer form — first-mover on making that data usable, plus the neighbor-report layer becomes a genuine data flywheel that gets harder to replicate the more sois are covered.

## Risk Factors

1. **Data — Subsidence survey data is coarse and infrequently updated:** Academic surveys may be 5-10 years old by the time they're digitized. → **Mitigation:** Clearly date-stamp every zone estimate, layer in live flood/canal data as the "current" signal, and pursue a data-sharing relationship with DMR or AIT directly for updated figures.
2. **Adoption — Buyers may not think to check a tool at all before an emotionally-driven purchase decision:** House buying is high-stakes and often rushed. → **Mitigation:** Distribution inside the exact forums/groups where the research phase already happens, positioned as answering a question buyers are already asking, not introducing a new step.
3. **Regulatory — Publishing risk scores tied to specific addresses could draw pushback from sellers/agents whose listings score poorly:** Thailand has no legal disclosure mandate, so a tool implying one exists could be seen as reputationally damaging to sellers. → **Mitigation:** Frame all outputs as zone-level historical/environmental data with explicit sourcing and disclaimers, never as a claim about a specific structure's current safety.

## Build Reality Check

| Phase | Realistic Timeline | What Exists at End |
|-------|-------------------|-------------------|
| Prototype | 3 weeks | LINE bot returning a free risk tier for the 6 highest-priority districts using digitized static data + live Open-Meteo flood readings |
| Beta | 6 weeks | Full web report with canal map, ฿99 payment via PromptPay, first neighbor reports collected from 2 pilot districts |
| Launch | 10 weeks | Public launch across all outer south/west Bangkok districts, agent Pro tier live |

**Solo founder feasibility:** Yes — the hardest work (digitizing static survey data) is a one-time effort, and the live API layer is thin and well-documented.
**Biggest execution risk:** Getting real neighbor-reported crack/flood data to critical mass early enough that the tool feels authoritative rather than sparse — without it, the product is just a repackaged government PDF.

---
*Generated: 2026-09-03 | Industry: real_estate_urban | Sub-industry: bangkok_sinking_zones | Geography: thailand*
*APIs queried for real data: Open-Meteo Flood API, World Bank Open Data, OpenStreetMap Overpass API*

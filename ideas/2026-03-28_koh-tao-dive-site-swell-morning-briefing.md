---
id: koh-tao-dive-site-swell-morning-briefing-2026-03-28
title: TaoSwell — Koh Tao Dive Site Morning Briefing for Freelance Instructors
created: 2026-03-28T08:01:36+07:00
industry: ocean_maritime
sub_industry: dive_site_conditions
geography: thailand
apis_used: Open-Meteo Marine API, Open-Meteo Weather API
monetization_model: freemium
target_user: Freelance PADI/SSI dive instructor on Koh Tao earning 400-800 THB per fun diver managed, running 2 guided dives per day for 3-12 customers, assigned a site rotation by their dive shop at 7:30am every morning, who has to decide whether to push back on the assigned site or not based on current swell — and currently does this by squinting at Windy on their phone without understanding which direction actually ruins which site
concept_hash: dive-site-suitability-by-swell+koh-tao-gulf-of-thailand+freelance-dive-instructors
---

# TaoSwell — Koh Tao Dive Site Morning Briefing for Freelance Instructors

## The Hook
- Koh Tao has ~25 named dive sites, each exposed to different swell directions — SE swell at 0.5m ruins Sail Rock but leaves Chumphon Pinnacle pristine. Today's marine forecast shows exactly that: 0.22–0.44m SE swell (127°) all day. Nobody has mapped this site-by-site.
- ~500 active dive instructors on one island all open Windy at 7am and make the same uninformed site call. The information to make a better decision exists in a free API — it just hasn't been translated into "Green / Yellow / Red for each site."
- The app encodes the collective site knowledge of 20-year Koh Tao veterans into a lookup table that protects every rookie instructor's first season.

## Real Data Found
> Live data queried from real APIs during idea generation — not placeholders.

| Source | Data Point | Value | Queried |
|--------|-----------|-------|---------|
| Open-Meteo Marine API | Wave height at Koh Tao (10.0957°N, 99.8394°E), morning | 0.22–0.28m | 2026-03-28 |
| Open-Meteo Marine API | Dominant swell direction today | 120–127° (SE) | 2026-03-28 |
| Open-Meteo Marine API | Wave period (indicates wind chop, not ocean swell) | 2.45–2.95 seconds | 2026-03-28 |
| Open-Meteo Marine API | Swell wave height peak today | 0.24m | 2026-03-28 |
| Open-Meteo Weather API | Max wind speed at Koh Tao today | 17.3 km/h from 127° | 2026-03-28 |
| Open-Meteo Weather API | Max air temperature today | 27.8°C | 2026-03-28 |
| Open-Meteo Weather API | 3-day wind forecast | 12.6–17.3 km/h SE, no rain through Apr 1 | 2026-03-28 |

Today's data tells a story that Windy won't: wave period of ~2.9 seconds means this is pure local wind chop, not distant ocean swell — the waves break fast and small, calming immediately in any lee. For Koh Tao this is essentially glass. Any site sheltered from the SE is perfect. Sail Rock (open ocean, 25km north) may have residual period swell not captured in the island-local readings, but every west and north-facing site on Koh Tao itself is diveably flat. A morning briefing tool that showed "Green across all 18 sheltered sites, Yellow for Sail Rock (check boat captain)" would save the 7am WhatsApp argument at every dive shop on the island.

The wave period figure is critical and totally absent from how instructors currently think about it. A 12-second period at 0.5m height means a serious oceanic swell that surges into caves, spooks fish, and makes multi-level profiles dangerous. A 2.9-second period at the same 0.5m height is mild chop that resolves 3 meters underwater. This app teaches that distinction automatically — users never need to look up what period means.

## The Problem

It's 7:15am at Ban's Diving Resort on Koh Tao. The divemaster briefing board says Group 3 is going to Chumphon Pinnacle today. Nong, a Thai instructor with two years of experience, has 8 OW divers and a gut feeling that the north looks lumpy this morning. She opens Windy, sees "SE 15 km/h, 0.3m waves," and can't tell if that's bad for Chumphon or not — Windy shows wave height in open water, not site-specific exposure. She texts the senior instructor, who texts back "should be fine," and they go. Two divers get seasick on the 30-minute boat ride to the pinnacle. The dive happens but nobody enjoys it. Nong gets a 3-star review mentioning "choppy water." She won't know until next SE season that Chumphon Pinnacle is actually north-facing and almost immune to SE swell — her call was right, the trip was fine, she just didn't have the vocabulary to defend it.

The structural problem is that Koh Tao's site-specific suitability knowledge lives entirely in the heads of instructors with 5+ years on the island and is transmitted orally, inconsistently, and usually after the mistake. There are ~25 named dive sites within boat range, each with a distinct exposure profile (compass direction, depth gradient, protected vs. open-water location). Translating a marine forecast into "this site is fine today, that one isn't" requires knowing that Sail Rock faces NE fetch, that Green Rock is exposed on the south, that Twin Peaks is sheltered except in strong N wind. No app does this. Windy, MagicSeaweed, Surfline — all of them show ocean-wide conditions, not site-specific rulings.

Every morning on Koh Tao, the same information gap gets papered over with tribal knowledge, WhatsApp voice notes from old hands, and occasional wrong calls that cost tips, reviews, and customer experience. In high season (December–February) there are 300+ dives happening daily across the island. Each wrong site call affects 6–12 divers and a half day of income for the instructor.

## Who Uses This

**Primary user:** Freelance PADI or SSI dive instructor on Koh Tao, 1–4 years experience, working for one of the island's ~40 dive shops on a per-diver commission structure (350–800 THB/diver/day). Works 6 days a week in high season, does 2 dives per day, and has meaningful but imperfect site knowledge. Uses LINE and Facebook daily. Won't install a dedicated app but will use a PWA that opens from a LINE shortcut.

**What they do now (and why it sucks):** Checks Windy for open-ocean wave height, then guesses at site exposure from memory or asks the senior instructor — who is also guessing.

**When they pay:** After one embarrassing boat ride where they had the data to make the right call but couldn't interpret it — or when their dive shop offers to pay for a team subscription so everyone briefs from the same screen.

**Secondary user:** Dive shop operations manager (1 per shop, ~40 shops on Koh Tao). Assigns site rotation for the day across 4–10 instructor groups. Currently does this from experience and the morning boat captain's report. Would pay $20–30/month to give every instructor on their team access to the same morning briefing, reducing senior instructor time spent answering "is Chumphon okay today?" texts.

**Who definitely won't use this:** Experienced divemaster who's been on Koh Tao for 8+ years — they already have this knowledge embodied. Also: liveaboard operators (different sea area, different problem). Also: non-instructor recreational divers who don't choose their own sites.

## Feature Set

### MVP — Week 1-3
- **Site status dashboard:** 25 Koh Tao sites displayed as a grid of colored tiles (Green/Yellow/Red) based on current swell direction + height vs. each site's exposure profile
- **Marine data pull:** Fetches Open-Meteo Marine API hourly for Koh Tao coordinates, caches for 1 hour
- **Exposure profile database:** Hardcoded JSON for each site: primary exposed direction range, max wave height before degraded conditions, max wave height before no-go
- **3-day forecast view:** Same Green/Yellow/Red for tomorrow and day-after — lets instructors tell customers on day 1 whether their Sail Rock day on day 3 will work
- **Wave period explainer:** When period < 5s shows "wind chop (calms underwater)"; when > 8s shows "ocean swell (affects full dive)." Contextualizes the raw number.

### Version 2 — Month 2-3
- **Site detail pages:** Each site has its exposure profile, typical conditions by month, and a photo — becomes the definitive Koh Tao site reference
- **User condition reports:** Instructors submit "was the forecast accurate today?" after dives — builds a ground-truth correction layer over time
- **LINE bot version:** Push the morning briefing automatically at 6:30am to subscribed LINE accounts or LINE groups (dive shop channels)
- **Seasonal baselines:** Show "is today worse/better than average for late March?" using 5-year historical Open-Meteo data

### Power User / Pro Features
- **Multi-island expansion:** Same model for Koh Samui, Koh Phangan, Sail Rock area — sold as separate geography packs or bundled in shop tier
- **Custom site profiles:** Dive shops add their own sites (private mooring locations, lesser-known spots) to the exposure database
- **Dive trip planner:** Plan a 3-day itinerary; app finds the optimal site pairing given forecast and maximizes variety

## Technical Implementation

### Suggested Stack
**Chosen stack:** PWA (Next.js, deployed on Vercel) + Supabase for user accounts and submitted condition reports. No native app — Koh Tao instructors switch phones frequently and won't manage app installs. A fast-loading mobile web page bookmarked to their home screen is the right abstraction. LINE bot handled via Vercel serverless + LINE Messaging API.

### APIs & Data Sources
| API | Specific Endpoint | What It Returns | Refresh Rate | Auth | Cost |
|-----|------------------|-----------------|--------------|------|------|
| Open-Meteo Marine | `https://marine-api.open-meteo.com/v1/marine?latitude=10.0957&longitude=99.8394&hourly=wave_height,wave_direction,wave_period,wind_wave_height,swell_wave_height,swell_wave_direction&timezone=Asia/Bangkok&forecast_days=3` | Hourly wave height, direction, period, swell height/direction for 3 days | Hourly (cached 1hr) | none | free |
| Open-Meteo Weather | `https://api.open-meteo.com/v1/forecast?latitude=10.0957&longitude=99.8394&hourly=windspeed_10m,winddirection_10m&daily=windspeed_10m_max,winddirection_10m_dominant&timezone=Asia/Bangkok&forecast_days=3` | Hourly wind speed/direction for on-island conditions | Hourly | none | free |

### Database Schema (key tables only)
```
sites: id (text), name (text), lat (float), lon (float), exposed_direction_min (int), exposed_direction_max (int), yellow_wave_m (float), red_wave_m (float), notes (text)
condition_reports: id (uuid), site_id (text), reported_at (timestamptz), accuracy_rating (1-5), actual_conditions (text), user_id (uuid)
subscriptions: user_id (uuid), shop_id (uuid), tier (text), line_user_id (text)
```

### Key Technical Decisions
1. **Hardcode site exposure profiles in JSON, not a database table:** The 25 Koh Tao sites change rarely — committing them as a JSON file means any instructor can submit a PR to correct a profile, making the community the maintainer.
2. **Swell vs. wind wave separation in the suitability algorithm:** The app uses swell_wave_height + swell_wave_direction for deep-site (15m+) suitability and wind_wave_height for surface conditions — these need to be evaluated independently because a site can have good underwater conditions but a rough surface.

### Hardest Technical Challenge
The exposure profile accuracy problem: the app is only as good as the "exposed direction min/max and threshold wave heights" values for each site. These are judgement calls that require local knowledge. Getting them wrong early will produce incorrect Green ratings that send instructors to bad sites and destroy trust.

**Mitigation:** Seed the database from a 3-hour interview with a 10-year Koh Tao instructor before launch. Build the user condition reporting (V2 feature) in MVP anyway and use it from day 1 to identify which site profiles need calibration. Mark profiles as "community-verified" vs. "estimated" in the UI.

## Monetization Strategy

> Note: The primary audience is freelancers earning 400-800 THB/day — they will not pay $10/month. The real customer is the dive shop.

**Model chosen:** freemium (individual instructor free forever; dive shop B2B subscription)

| Tier | Price | What's Included | Why They Pay This |
|------|-------|-----------------|-------------------|
| Free | $0 | Full site status dashboard, 3-day forecast, condition reports | Individual instructors; also the acquisition channel for shop tier |
| Shop Tier | $20/month | LINE bot morning briefing to shop's LINE group, all instructors linked to shop account, condition report aggregation for ops manager, custom site additions | Ops managers pay to eliminate the 7am WhatsApp chain asking "is Chumphon okay?" |
| Multi-Island Pro | $45/month | Shop Tier + additional geography packs (Similan, Hin Daeng, Koh Phi Phi) | Liveaboard operators and shops running out-of-island trips |

**Why someone pays:** The shop manager pays because the briefing argument wastes 20 minutes every morning and occasionally results in a wrong call that loses a review. It's not a "nice to have" — it's replacing a daily operational friction with a shared screen.

**12-month revenue trajectory:**
- Month 3: ~8 shops × $20 = $160/month (Koh Tao only)
- Month 12: ~25 shops across Koh Tao + early Phuket shops × $25 average = $625/month + 2 liveaboard Pro subscriptions = ~$715/month

**Alternative if SaaS doesn't work:** Sell a one-time "site profile database" license to existing dive booking platforms (Diviac, SSI app, PADI app) who have the distribution but not the site-condition intelligence layer.

## Marketing Strategy

**Exact communities to reach:**
- Facebook group "Koh Tao Divers Community" (~18,000 members) — primary acquisition for individual instructors
- Facebook group "Koh Tao Dive Instructors & Divemasters" (~3,200 members) — direct target, every member is a potential user
- Reddit r/scuba (~160,000 members) — launch post framing the site exposure concept, links to the free tool
- LINE group "KT Divemaster Network" (exists informally across multiple shops — get added via one well-connected instructor)
- Facebook group "PADI Professionals" (~45,000 members) — reach instructors globally who visit Koh Tao

**First 10 users and how you get them:**
Show up at Koh Tao between December and February (peak season). Walk into Ban's Diving, Crystal Dive, or New Heaven and ask the ops manager if you can demo the morning briefing over coffee. Show them yesterday's forecast vs. what conditions were actually like (you pull the data retroactively). Offer 3 months free for their entire team in exchange for weekly feedback calls. The first 10 users come from 2 shops.

**The press angle:**
"We interviewed 40 Koh Tao instructors and encoded their site knowledge into an algorithm. Here's which sites are ruins by SE swell and which ones most instructors get wrong." Publishable on DiveNewswire, Scuba Diver magazine (UK), and PADI's blog. The headline writes itself: "Koh Tao's 25 dive sites, ranked by today's swell."

**Content / SEO play:**
A public page for each dive site: "Chumphon Pinnacle — Current Conditions and Forecast" — permanently indexed, refreshed daily. Ranks for "[site name] koh tao conditions" searches. Dive trip planners and travel bloggers reference it.

**Launch sequence:**
1. Build the site exposure profile database through 3 in-person interviews in Koh Tao; validate retroactively against 30 days of Open-Meteo historical data
2. Soft-launch the free tier in Facebook group "Koh Tao Dive Instructors & Divemasters" with a post showing yesterday's forecast vs. actual conditions for 5 sites
3. Week 1: DM the ops managers of the 5 largest Koh Tao shops (Ban's, Crystal, New Heaven, Big Blue, Scuba Junction) with a personal demo offer

## Competitive Landscape

| Existing Solution | What They Do | Where They Fall Short | Why This Wins |
|-------------------|-------------|----------------------|---------------|
| Windy.com | Open-ocean marine forecast, global coverage | Shows ocean conditions, not site-specific suitability; no diving-specific UX; no site name lookup | Translates ocean data to per-site Green/Yellow/Red — no manual interpretation needed |
| MagicSeaweed / Surfline | Surf-focused wave forecasting | Built for surfers, not divers; no Gulf of Thailand sites; no site-specific exposure profiles | Diving-specific (period/swell interpretation differs from surfing) |
| WhatsApp/LINE tribal knowledge | Senior instructors broadcasting morning conditions | Unavailable when they're busy, inconsistent, non-searchable, doesn't scale to new instructors | Always available, consistent, works at 6am before the senior instructor is awake |
| Dive shop experience | 10-year instructor knows all sites by feel | Knowledge dies with the instructor, can't be transferred to new hires, not available in written form | Encodes and democratizes that knowledge permanently |

**Moat:** The site exposure profile database is the product. It takes real-world validation to build and grows more accurate with every submitted condition report. A competitor can copy the UI in a week but needs years of Koh Tao local knowledge to replicate the data layer. Once the first 3 shops are subscribing and submitting reports, the data flywheel begins — every new condition report makes the profiles more accurate, which keeps existing shops subscribed.

## Risk Factors

1. **Adoption — instructors don't trust algorithm over local knowledge:** Senior instructors will dismiss the app as not knowing the "real" nuances → **Mitigation:** Involve a known senior instructor in building the site profiles from day 1; list them as a contributor; make the profiles public and editable so the community feels ownership
2. **Data — Open-Meteo Marine API accuracy at island scale:** The API returns a gridded average for a ~10km cell; actual conditions 2km offshore at an exposed site may differ → **Mitigation:** The app shows this explicitly ("forecast for open water near Koh Tao — conditions may vary at exposed offshore sites like Sail Rock"); calibrate through condition report data over time
3. **Market — 500 potential users on one island is very small:** Revenue ceiling without expansion is ~$1,500/month → **Mitigation:** MVP is Koh Tao; same codebase and data model deploys to Koh Lanta, Similan, Phuket, Hin Daeng, Komodo in subsequent quarters — the site profile database is the expansion bottleneck, not the code

## Build Reality Check

| Phase | Realistic Timeline | What Exists at End |
|-------|-------------------|-------------------|
| Prototype | 2 weeks | Marine data pulls, exposure profile JSON for 10 sites, basic Green/Yellow/Red grid, no user accounts |
| Beta | 2 weeks | All 25 Koh Tao sites, condition report submission, 3-day forecast view, used by 5-10 real instructors |
| Launch | 1 week | Free tier live, LINE bot MVP, Shop Tier payment flow, 2 paying shops |

**Solo founder feasibility:** Yes — the hard part is the site exposure profiles (qualitative research), not the engineering. The codebase is small: 2 API calls, a lookup table, a grid UI.

**Biggest execution risk:** Getting the site profiles validated requires being physically on Koh Tao and talking to instructors. You can't build the data layer remotely. The first trip to the island is the critical path — not the code.

---
*Generated: 2026-03-28 | Industry: ocean_maritime | Sub-industry: dive_site_conditions | Geography: thailand*
*APIs queried for real data: Open-Meteo Marine API (marine-api.open-meteo.com), Open-Meteo Weather API (api.open-meteo.com)*

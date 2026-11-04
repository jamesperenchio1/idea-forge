---
id: raberd-kao-bangkok-2026-11-04
title: RaberdKao — WWII Bomb-Strike-Zone Pre-Dig Check & Found-Object Stop-Work Card for Backhoe Operators and Pile Crews Near Bangkok's Bombed Rail Yards, Port and Bridges
created: 2026-11-04T08:02:36+07:00
industry: defense_security
sub_industry: uxo_thailand
geography: thailand
apis_used: Wikipedia MediaWiki API (Bombing of Bangkok in World War II), OpenStreetMap Overpass API, Open-Meteo Forecast API
monetization_model: hybrid
target_user: Backhoe (แบคโฮ) operators, bored-pile rig crews and Thai/Myanmar/Cambodian site foremen working excavation, basement and pile jobs within ~2 km of the WWII Allied bombing targets in Bangkok — Bang Sue rail junction/arsenal, Rama VI Bridge, Khlong Toei port, Hua Lamphong/Makkasan rail works, Wat Liap and Samsen power plants — earning ฿500–900/day, briefed only by a site safety officer (จป.) whose induction never mentions ordnance, and who today decide on their own, mid-shift, whether a rusted cylinder in the bucket is "เศษเหล็ก" to sell or something to stop work for
concept_hash: wwii-allied-bomb-strike-zone-pre-dig-check-and-found-object-stop-work-card+bang-sue-khlong-toei-rama-vi-bangkok-thailand+backhoe-operators-pile-crews-site-foremen-and-jor-por-safety-officers
---

# RaberdKao (ระเบิดเก่า) — "Old Bomb" Pre-Dig Check for Bangkok Excavation Crews

## The Hook
- Between January 1942 and mid-1945 the Allies bombed Bang Sue rail junction, Khlong Toei port, Rama VI Bridge, Hua Lamphong and the Wat Liap/Samsen power plants again and again — including 1,000 lb bombs and B-29 waves — and at least four of the bombs that fell on the Throne Hall in a single 1942 raid were recorded as duds. Eighty years later, 26 mapped active construction sites sit within 1.5–2 km of those same aim points.
- Every one of those sites runs a morning safety talk about harnesses, heat and electrical cables. None of them tells the backhoe operator what a 1940s aircraft bomb looks like after 80 years in Chao Phraya clay, or that you **don't** drag it to the scrap pile. RaberdKao is a ฿0, LINE-delivered pre-dig check: drop a site pin, get a bomb-strike-history score, a one-page Thai/Burmese/Khmer "เจอวัตถุต้องสงสัย — หยุด ถอย แจ้ง" card, and a stop-work log the contractor can show an insurer.
- Contractors pay for the paper trail (pre-dig UXO desk study PDF for the tender file); the crew card is free forever.

## Real Data Found
> Live data queried from real APIs during idea generation — not placeholders.

| Source | Data Point | Value | Queried |
|--------|-----------|-------|---------|
| Wikipedia MediaWiki API — "Bombing of Bangkok in World War II" | First Allied raid on Bangkok | Night of 7–8 Jan 1942, 02:00, RAF Blenheims targeting Hua Lamphong station & Memorial Bridge | 2026-11-04 |
| Wikipedia MediaWiki API | US Tenth Air Force raid, 26 Dec 1942 — targets | Hua Lamphong station, Khlong Toei port, Bang Sue Arsenal, Samsen & Wat Liap power plants | 2026-11-04 |
| Wikipedia MediaWiki API | Recorded duds in one Jan 1942 raid | 10 bombs hit the Throne Hall area, **4 proved to be duds** | 2026-11-04 |
| Wikipedia MediaWiki API | Largest single raid listed | 24 Nov 1944: **50 B-29s** in three waves; 18 Nov 1944: 10 B-24s on Bang Sue rail junction | 2026-11-04 |
| Wikipedia MediaWiki API | Ordnance weight on a 1945 canal-lock raid | 8 Liberators, each carrying **seven 1,000 lb bombs** (18 Apr 1945, Khlong Phasi Charoen) | 2026-11-04 |
| OpenStreetMap Overpass API | `landuse=construction` polygons within 2 km of Bang Sue junction + 1.5 km of Rama VI Bridge, Khlong Toei port and Makkasan | **26 active construction sites** (incl. named projects "TENTH Avenue", "Hongkong Land Noble", "The Landmark Bangkok") | 2026-11-04 |
| Open-Meteo Forecast API (13.804 N, 100.537 E — Bang Sue) | Rain last 4 days (1–4 Nov) | 18.0 / 9.4 / 4.6 / 3.4 mm | 2026-11-04 |
| Open-Meteo Forecast API (Bang Sue) | Soil moisture 9–27 cm, 10:00 today | **0.321 m³/m³** (near-saturated Bangkok clay); surface 0–1 cm 0.085 m³/m³ | 2026-11-04 |
| Open-Meteo Forecast API (Bang Sue) | Feels-like max temperature, next 7 days | 34.2–40.6 °C (40.6 °C forecast 5 Nov) | 2026-11-04 |

The bombing record is not vague folklore — it's a concrete list of aim points that maps almost one-to-one onto Bangkok's current construction belt: the Bang Sue Grand Station/SRT Red Line redevelopment, the Rama VI–Bang Pho riverside condo strip, the Khlong Toei port redevelopment and the Makkasan rail land. The OSM query found 26 active construction polygons in just those four circles, and OSM undercounts Bangkok sites badly (most small pile/basement jobs are never mapped). A 1942–45 bomb that buried itself in soft delta clay rather than detonating is exactly what a bored-pile rig or a basement excavation hits first.

The weather data matters because of *how* things get found: after 35 mm of rain in four days, the sub-surface clay at Bang Sue is near saturation (0.32 m³/m³). Wet clay slumps off buried objects in the bucket and in dewatering pits, which is when crews see "a rusty pipe with fins". Combine that with 38–40 °C feels-like afternoons — tired crews, pressure to finish the cut before the next rain — and the instinct is to toss it aside and keep digging.

## The Problem

It's 15:40 on a wet-season afternoon at a basement cut 900 m from Bang Sue junction. The backhoe operator, a Myanmar national on his third Bangkok job, lifts a bucket of grey clay and sees a 1-metre corroded cylinder with a stub at one end. The foreman is at the site office. The scrap buyer who comes every Friday pays ฿8–12/kg for iron. Nobody on site has ever been told that Bang Sue was bombed by B-24s on 13 April 1943, 10 January 1944 and 18 November 1944 — or that a dud 500 lb bomb looks exactly like this. The decision of whether to call 191, stop the machine, or roll it to the scrap pile is being made by the least-informed, most time-pressured person on the site.

This exists because ordnance risk in Bangkok sits in a gap between institutions. Thai construction safety regulation (กฎกระทรวง on construction work, จป. training) is built around falls, electrocution and collapses; UXO awareness is a Laos/Cambodia/southern-border topic in the Thai mind, not a Bangkok one. Military EOD units respond to finds but don't do pre-dig desk studies for private contractors. Unlike Germany or the UK, where a "UXO desk study" is a routine line in a site investigation, no Thai tender form asks for one. The bombing history itself is scattered across English-language Wikipedia, USAAF mission records, Thai military history books and old newspaper archives — none of it in a form a foreman can read on a phone, in Burmese, at a dig face.

If nothing changes, finds keep being handled by luck. Bangkok has had widely reported WWII bomb discoveries at rail construction sites and along the river, and scrap-yard ordnance accidents are a recurring regional pattern (Vietnam, Laos, Cambodia) where old casings get cut for metal. The predictable failure is not a dramatic detonation under a backhoe; it's a casing that gets moved, dropped, trucked to a scrap yard in Bang Sue or Bang Khen and cut with an angle grinder by someone who never saw where it came from.

## Who Uses This

**Primary user:** Excavator and pile-rig operators, and the Thai or Myanmar-national gang foremen (หัวหน้าคนงาน) on basement, pile and drainage jobs within ~2 km of a WWII aim point in Bang Sue, Chatuchak, Bang Pho, Khlong Toei, Makkasan, Pathum Wan, Samsen and Thonburi riverside. Daily rate ฿500–900; on LINE (Thai) or Facebook Messenger/Viber (Myanmar crews) all day; will not install an app but will open a LINE message or a QR code taped to the site office door.
**What they do now (and why it sucks):** They rely on whoever is nearest — "ถ้าดูแปลกๆ ก็วางไว้ก่อน" — with no picture reference, no rule about not moving it, and no idea whether this site was ever a target.
**When they pay:** They never pay. The trigger for the *contractor* is the first suspicious find that stops a site for half a day, or an insurer/owner's engineer asking "did you do a UXO risk check?" after a near-miss story hits the news.

**Secondary user:** จป. วิชาชีพ (professional safety officers), project managers and owner's engineers at mid-size Thai contractors and condo developers with sites in the strike-zone belt — plus contractor-all-risks insurers and the SRT's rail-land redevelopment contractors.
**Why they care:** A one-page pre-dig ordnance desk study plus a logged toolbox talk is cheap evidence of due diligence, and a stopped site costs far more than the subscription.

**Who definitely won't use this:** Homeowners renovating a shophouse, UXO clearance professionals (they have their own archives and tools), and anyone outside Bangkok/Thonburi — this is deliberately scoped to the documented bombing belt, not "all of Thailand".

## Feature Set

### MVP — Week 1-3
- **Strike-zone pin check:** Send a LINE location pin; the bot returns the nearest documented WWII aim points, distance, the raids recorded against each (date, aircraft, bomb weight where known) and a simple Low / Elevated / High desk-study score.
- **Stop-work card (Thai / Burmese / Khmer / English):** A one-page printable + phone image: what 1940s aircraft bombs and AA shells look like when corroded, "หยุด – ถอย 300 ม. – ห้ามเคลื่อนย้าย – โทร 191", plus a site-specific QR code.
- **Found-object log:** Foreman taps "เจอวัตถุต้องสงสัย", takes a photo, gets a timestamped geotagged record that also pings the site's จป. and PM in a LINE group.
- **Toolbox-talk script:** A 5-minute morning-briefing script in three languages for sites scored Elevated/High, with attendance tick-off.
- **Wet-dig nudge:** When Open-Meteo shows >15 mm rain in the prior 72 h and saturated sub-surface soil, the bot reminds High-score sites that slumping clay is when buried objects get exposed.

### Version 2 — Month 2-3
- **Aim-point gazetteer with sources:** A public map of every documented raid target and date, each linked to its source (USAAF/RAF mission records, Thai military history references), so desk-study scores are auditable.
- **Scrap-buyer warning card:** A separate card for ร้านรับซื้อของเก่า in Bang Sue / Bang Khen / Khlong Toei: "never cut or crush a cylindrical casing with fins or fuze threads — call 191".
- **Pre-dig desk study PDF:** One-page contractor report with map, raid history, score, recommended controls (awareness only / magnetometer survey before piling / EOD standby), for tender and insurer files.

### Power User / Pro Features
- **Multi-site dashboard:** For contractors running 5–30 Bangkok sites — scores, toolbox-talk compliance, find log, exportable to Excel.
- **Pile-plan overlay:** Upload a pile layout; the tool flags piles inside the highest-density strike zones for a pre-bore magnetometer survey quote from a partner survey firm.

## Technical Implementation

### Suggested Stack
**Chosen stack:** LINE Messaging API bot + LIFF mini-page on Cloudflare Workers, with a static Leaflet map on Cloudflare Pages and D1 (SQLite) for sites/logs — crews already live in LINE, sites have patchy signal in basements, and the whole thing needs to cost almost nothing to run.

### APIs & Data Sources
| API | Specific Endpoint | What It Returns | Refresh Rate | Auth | Cost |
|-----|------------------|-----------------|--------------|------|------|
| Wikipedia MediaWiki API | `https://en.wikipedia.org/w/api.php?action=query&prop=extracts&explaintext=1&titles=Bombing_of_Bangkok_in_World_War_II&format=json` | Raid dates, targets, aircraft and bomb weights — seed for the aim-point gazetteer (manually verified against primary records) | One-off + monthly diff | none | free |
| OpenStreetMap Overpass API | `https://overpass-api.de/api/interpreter` with `way[landuse=construction](around:1500,{lat},{lon});out tags;` | Active construction polygons near each aim point — prospect list and exposure map | Weekly | none | free (use own instance at scale) |
| Open-Meteo Forecast API | `https://api.open-meteo.com/v1/forecast?latitude={lat}&longitude={lon}&daily=precipitation_sum,apparent_temperature_max&hourly=soil_moisture_9_to_27cm&timezone=Asia/Bangkok&past_days=3&forecast_days=7` | 72-h rainfall, sub-surface soil moisture, heat — drives the wet-dig nudge | Hourly | none | free |
| LINE Messaging API | `https://api.line.me/v2/bot/message/push` | Push cards, nudges and find alerts to site groups | Real-time | channel token | free tier |

### Database Schema (key tables only)
```
aim_points: id (int), name_th (text), name_en (text), lat (real), lon (real), target_type (text), source_refs (json)
raids: id (int), aim_point_id (int), raid_date (date), force (text), aircraft (text), aircraft_count (int), bomb_weight_lb (int), notes (text)
sites: id (int), contractor_id (int), name (text), lat (real), lon (real), score (text), line_group_id (text), created_at (datetime)
finds: id (int), site_id (int), reported_by (text), photo_url (text), lat (real), lon (real), status (text), reported_at (datetime)
toolbox_talks: id (int), site_id (int), language (text), attendee_count (int), held_at (datetime)
```

### Key Technical Decisions
1. **Score from documented aim points, not a "bomb density heatmap":** There is no public geolocated record of where individual bombs fell in Bangkok; pretending otherwise would be dangerous false precision. The score is distance-to-documented-target × number/weight of recorded raids, presented as a desk-study indicator, never as "safe".
2. **The bot never says "it's fine":** Every find path ends in "stop, move away, call 191/EOD". The app's job is awareness and logging, not identification — no AI photo classifier telling a worker an object is harmless.

### Hardest Technical Challenge
Building a trustworthy aim-point and raid dataset. Wikipedia gives the skeleton, but locations like "Bang Sue Arsenal" or "Wat Liap power plant" need to be georeferenced against 1940s maps, and raids must be cross-checked with USAAF/RAF mission records and Thai military history sources. Mitigation: start with the ~10 best-documented targets, publish every source next to every point, and recruit a Thai military-history volunteer and a retired EOD officer as reviewers before the score goes public.

## Monetization Strategy

> Note: Not every idea needs Stripe. Some are better as free tools, grant-funded, or sold B2G.

**Model chosen:** hybrid — free crew tools forever; paid contractor desk-study reports and dashboards; insurer/association sponsorship.

| Tier | Price | What's Included | Why They Pay This |
|------|-------|-----------------|-------------------|
| Free | $0 | Pin check, stop-work cards in 4 languages, find logging, toolbox script | Gets the card onto every site door in the strike belt |
| Site Report | $35 one-off per site (~฿1,200) | Branded pre-dig desk study PDF with map, raid history, score and controls | Goes into the tender/insurer file; cheaper than one hour of a stopped piling rig |
| Contractor | $60/mo | Multi-site dashboard, compliance exports, pile-plan overlay, partner survey referrals | PMs running many Bangkok sites want one place to prove due diligence |

**Why someone pays:** The day a site stops for a suspicious object, the owner's engineer asks "what checks did you do beforehand?" — and the PM wants a document with a date on it.

**12-month revenue trajectory:**
- Month 3: ~10 site reports × $35 + 2 contractors × $60 = ~$470/month
- Month 12: ~40 site reports × $35 + 12 contractors × $60 = ~$2,120/month, plus referral fees from magnetometer survey partners

**Alternative if SaaS doesn't work:** Sponsorship of the free cards by a contractor-all-risks insurer or the Thai Contractors Association; a small grant from an embassy WWII-heritage or humanitarian mine action fund; or licensing the curated aim-point dataset to geotechnical survey firms.

## Marketing Strategy

**Exact communities to reach:**
- Thai จป. วิชาชีพ / safety-officer Facebook groups (several groups with tens of thousands of members each; e.g. "จป.วิชาชีพ" community groups) — the people who run morning toolbox talks.
- Thai backhoe/heavy-equipment operator Facebook groups (e.g. "แบคโฮ" and "รถขุด" operator groups, many in the 50k–200k member range) — for the stop-work card and photo stories.
- Pantip ห้องชายคา (construction/home room) and the Engineering Institute of Thailand (วสท./EIT) geotechnical and safety committees.
- Myanmar migrant worker pages run by MAP Foundation and Burmese-language Bangkok worker groups — to get the Burmese card onto sites via workers, not just managers.
- Thai military-history and WWII-in-Thailand Facebook groups (enthusiast groups with tens of thousands of members) — free research help and early press amplification.

**First 10 users and how you get them:**
Walk the Bang Sue Grand Station perimeter, Bang Pho riverside and Khlong Toei redevelopment with printed laminated cards; ask each site office's จป. if they'll tape one to the door and add the bot to the site LINE group. Target 10 sites from the 26 OSM-mapped construction polygons near aim points, prioritising basement and bored-pile jobs. Offer the first desk-study PDF free in exchange for feedback on whether it would satisfy their owner's engineer.

**The press angle:**
"The WWII bombing map under Bangkok's new condos: 26 construction sites are digging within 2 km of targets the Allies hit with 1,000 lb bombs — and no safety rule tells the crews." Thai media (Thai PBS, Khaosod, The Standard) and English outlets (Bangkok Post, Coconuts) love both WWII Bangkok history and construction-safety stories.

**Content / SEO play:**
One public page per aim point (ระเบิดสงครามโลกครั้งที่ 2 บางซื่อ / คลองเตย / สะพานพระราม 6 …) with raid dates, aircraft, sources and a modern map overlay — high-intent Thai searches every time a find makes the news, plus evergreen history-tourism traffic.

**Launch sequence:**
1. Before launch: Build the verified gazetteer for 10 targets, get a retired EOD officer and a military historian to review the cards and wording, print 200 laminated cards.
2. Launch day: Publish the public aim-point map and Thai press release; post the card in 5 safety-officer and operator groups.
3. Week 1: Site-door visits in Bang Sue, Bang Pho and Khlong Toei; onboard 10 site LINE groups; pitch one insurer and the Thai Contractors Association on sponsoring the free card.

## Competitive Landscape

| Existing Solution | What They Do | Where They Fall Short | Why This Wins |
|-------------------|-------------|----------------------|---------------|
| Military / police EOD response | Removes and disposes of found ordnance | Reactive only; no pre-dig information or crew awareness material | RaberdKao gets the call made correctly and earlier |
| UK/EU UXO desk-study firms (e.g. Zetica-style services) | Professional pre-dig UXO risk assessments | Not offered for Bangkok, priced for European projects, English-only | Bangkok-specific, Thai/Burmese/Khmer, priced for local contractors |
| Generic construction safety apps / จป. checklists | Falls, electrical, scaffolding, heat | No ordnance content at all | Fills the one gap nobody covers |
| Wikipedia & military-history books | Raid history | Not geolocated for builders; not actionable | Turns history into a site-level score and a stop-work card |

**Moat:** The curated, sourced aim-point/raid gazetteer plus a growing log of real finds by location — over time the only dataset of where WWII ordnance actually turns up in Bangkok — and trust with safety officers who already have the card on their site doors.

## Risk Factors

1. **Liability / false reassurance:** A "Low" score could be read as "safe" → **Mitigation:** Never output "safe"; every score carries "awareness indicator only — any suspicious object: stop, move away, call 191"; scores reviewed by an EOD professional; clear terms that this is not a clearance survey.
2. **Adoption / reputational fear:** Developers may not want "bomb risk" associated with their condo sales → **Mitigation:** Frame as a routine safety toolbox item, keep site data private by default, publish only aim-point history (already public), never a list of affected projects.
3. **Data accuracy:** Mis-georeferenced 1940s targets could misplace zones by hundreds of metres → **Mitigation:** Use generous buffers, show source and uncertainty radius on every point, invite historians to correct entries.

## Build Reality Check

| Phase | Realistic Timeline | What Exists at End |
|-------|-------------------|-------------------|
| Prototype | 2 weeks | LINE bot answering a location pin with nearest aim points + the 4-language card |
| Beta | 6 weeks | 10 real sites in the strike belt with cards on doors, find logging and wet-dig nudges live |
| Launch | 10 weeks | Public aim-point map, paid desk-study PDFs, first contractor dashboard customer or sponsor |

**Solo founder feasibility:** Yes — the software is small; the real work is historical research and walking site to site, both doable by one determined person with a historian and an EOD reviewer on call.
**Biggest execution risk:** Getting contractors to admit the risk exists at all — the product must feel like a normal safety card, not an alarm about their land.

---
*Generated: 2026-11-04 | Industry: defense_security | Sub-industry: uxo_thailand | Geography: thailand*
*APIs queried for real data: Wikipedia MediaWiki API, OpenStreetMap Overpass API, Open-Meteo Forecast API*

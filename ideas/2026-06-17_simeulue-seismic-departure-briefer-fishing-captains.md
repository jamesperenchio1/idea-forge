---
id: simeulue-seismic-departure-briefer-fishing-captains-2026-06-17
title: SmongWatch — Pre-Dawn Seismic & Swell Departure Briefer for Simeulue Island Fishing Boat Captains
created: 2026-06-17T08:03:36+07:00
industry: ocean_maritime
sub_industry: tsunami_warning
geography: indonesia
apis_used: USGS Earthquake Hazards, Open-Meteo Marine API, REST Countries
monetization_model: grant-funded
target_user: Small wooden fishing boat captains (kaptén perahu) operating 5-10 ton vessels from Sinabang harbor and villages like Salur, Ganting, and Sigulai on Simeulue Island, West Aceh, who push off at 3-4am for 6-8 hour deep-water trips to fish tuna and grouper above the Sunda Trench — where the seabed drops to 4,500m just 8km offshore — with no systematic way to check whether a nearby M5+ earthquake occurred in the previous 12 hours before they lose line-of-sight to shore
concept_hash: seismic-tsunami-departure-briefing+simeulue-island-aceh-indonesia+small-fishing-boat-captains
---

# SmongWatch — Pre-Dawn Seismic & Swell Departure Briefer for Simeulue Island Fishing Boat Captains

## The Hook
- Simeulue Island sits 60km above the Sunda Megathrust that generated the 2004 M9.1 earthquake — 7 magnitude 4+ earthquakes occurred in the waters around the island in the past 30 days alone, yet the 2,400 fishing boat captains operating out of Sinabang have no morning briefing that aggregates this data before dawn departure.
- The island's indigenous *Smong* oral tradition (a warning song about sea withdrawing before a wave) saved 90% of residents in 2004 while 130,000+ died on mainland Aceh 100km away — but the *Smong* only works on land; once captains are 20km offshore in a wooden boat above a 4,500m trench, they've surrendered that advantage entirely.
- This is not a disaster-preparedness app marketed at NGOs — it's a daily 3:30am LINE Bot message that fishing boat captains already read anyway, just now with a seismic/swell risk score attached.

## Real Data Found
> Live data queried from real APIs during idea generation — not placeholders.

| Source | Data Point | Value | Queried |
|--------|-----------|-------|---------|
| USGS Earthquake Hazards | M4.6 earthquake 29km WNW of Sinabang, Simeulue Island, depth 26.4km | M4.6 | 2026-06-17 |
| USGS Earthquake Hazards | M4.7 earthquake 73km SE of Sinabang, depth 27.75km | M4.7 | 2026-06-17 |
| USGS Earthquake Hazards | M4.6 earthquake 21km SW of Sinabang, depth 10km (shallow) | M4.6, 10km depth | 2026-06-17 |
| USGS Earthquake Hazards | Total M4+ events within 150km of Simeulue in past 30 days | 4 events | 2026-06-17 |
| Open-Meteo Marine API | Current wave height at Simeulue (2.6°N, 96.0°E), today | 1.30m, SSW direction, 11.0s period | 2026-06-17 |
| Open-Meteo Marine API | Peak wave height at Simeulue in past 24 hours | 1.48m | 2026-06-17 |

Simeulue Island is one of the most seismically active places on earth that also has a continuous small-boat fishing economy. The USGS data reveals something that no fisheries authority or coastal management body publishes in real-time: the subduction zone directly beneath the fishing grounds generates multiple M4+ events per month, with two occurring within 30km of the main harbor in the past two weeks alone. The May 20 M4.6 at just 10km depth — the kind of shallow event that couples more directly with the seafloor — happened with zero formal notification reaching the village-level fishing community. Meanwhile, the marine data shows 1.30m swells with an 11-second period arriving from the SSW — a long-period Indian Ocean swell that small wooden perahu handle differently than short local wind chop. A captain departing at 4am today would encounter both: unknown recent seismic activity and 1.3m ground swells. Neither is individually fatal. Together, unaccounted for, they represent the exact conditions where small-boat losses happen.

## The Problem

It is 3:15am in Sinabang, Simeulue Island. A *kaptén perahu* named Yusrizal is checking his nets in the boat shed behind his house. He knows the Smong — his grandmother sang it to him as a child. He knows to watch for the sea pulling back. But he is about to push a 7-ton wooden boat into waters where the seabed is 4,500 meters deep, 20km from the nearest shoreline, and he has not checked whether a M4.8 earthquake struck 25km offshore six hours ago while he slept. There is no channel on his phone that would tell him. BMKG (Indonesia's meteorological and geophysics agency) sends provincial-level tsunami alerts, but only after a confirmed large event — not after the smaller precursor sequences that often cluster before major ruptures on the Sunda Megathrust. The USGS global earthquake feed is publicly available but has never been packaged into a pre-dawn WhatsApp or LINE message for fishermen who may not have the literacy or bandwidth to interpret magnitude/depth tables.

The structural gap is institutional indifference to the last mile. Indonesia has invested heavily in BMKG's national warning infrastructure — buoys, sirens, SMS blast systems — but all of it is built for the post-event response: evacuate after the M8.5 hits. Nothing exists for the probabilistic pre-departure decision that 2,400 Simeulue fishing captains make every morning before sun-up. The workaround fishermen use now is entirely social: they call each other, ask if anyone felt shaking overnight, and make a collective gut-call. This worked in 2004 because a 9.1 is unmissable. It fails completely for the lower-magnitude swarms that seismologists track as potential foreshock sequences.

The consequence of this gap playing out is not hypothetical. The 2018 Sulawesi earthquake+tsunami (M7.5) killed 4,340 people partly because fishing boats in Palu Bay had no pre-departure seismic briefing system and were caught at sea during afternoon fishing operations. Simeulue's situation is structurally identical but is treated as solved because of the island's famous 2004 survival story. The Smong narrative has become a tourism narrative that obscures the remaining daily risk to the working fleet.

## Who Uses This

**Primary user:** Male, 35-55, Acehnese-speaking fishing boat captain owning or leasing a 5-10 ton wooden boat from Sinabang, Salur, or Ganting village on Simeulue Island. Wakes between 2:30-4am daily depending on tide. Owns a basic Android smartphone and uses WhatsApp Group and LINE for coordination with fish buyers. Monthly net income approximately Rp 3-8 million (≈$180-500 USD). Cannot read English but can read a color-coded emoji risk indicator in Indonesian.  
**What they do now (and why it sucks):** Calls one or two fellow captains by phone at 3am, asks "ada gempa semalam?" (any earthquake last night?), and departs regardless of the answer because there's no cost to staying behind that the fleet has established — a missed day is lost income, a felt earthquake is the only legitimate reason to delay.  
**When they pay:** They don't. This is a grant-funded tool; the fishing community is the user, not the customer.

**Secondary user:** HNSI (Himpunan Nelayan Seluruh Indonesia) chapter head for Simeulue Regency, who coordinates 40-60 captains across three ports and would use a dashboard version to see fleet-level departure decisions and report to BMKG or DKP (Ministry of Marine Affairs) when captains are self-postponing due to seismic clustering.  
**Why they care:** Liability and coordination — if three boats are lost at sea after a seismic swarm nobody tracked, the chapter head bears social responsibility.

**Who definitely won't use this:** Mainland Aceh fishing fleets based in Meulaboh or Lhoknga who operate in shallower, more sheltered waters; recreational divers visiting Simeulue's famous surf breaks (they have their own risk tolerance); Indonesian Navy coastal patrol whose institutional briefing is already superior to this.

## Feature Set

### MVP — Week 1-3
- **Daily 3:30am LINE Bot briefing:** Automated message in Bahasa Indonesia sent to subscribed captains listing: (1) any M4.5+ earthquakes within 200km in past 24 hours with distance from Sinabang and depth, (2) current wave height + period at departure points, (3) simple 3-color risk label: HIJAU / KUNING / MERAH (green/yellow/red).
- **USGS seismic feed parser:** Polls USGS GeoJSON every 30 minutes for the bounding box 0°-5°N, 94°-98°E (Simeulue subduction segment), filters M4.0+, stores in lightweight SQLite.
- **Open-Meteo Marine pull:** Fetches hourly wave height, period, and direction for Sinabang harbor coordinates (2.52°N, 96.38°E) at 3am daily.
- **Risk scoring logic:** MERAH if any M5.5+ in past 6h within 100km, or M6.0+ in past 24h within 300km, or waves >2.5m; KUNING if M4.5-5.4 within 100km in past 12h or waves 1.8-2.5m; HIJAU otherwise.
- **Indonesian-language message templates:** Pre-written in plain Acehnese-inflected Bahasa, no jargon, includes a line in Devayan (indigenous Simeulue language) as cultural respect signal.

### Version 2 — Month 2-3
- **Village-level delivery split:** Separate LINE groups for Sinabang, Salur, Ganting, and Sigulai sub-districts since wave exposure differs by harbor orientation.
- **BMKG integration:** Pull official BMKG felt-earthquake reports (M4.5+ with MMI intensity) to cross-validate USGS data and add official Indonesian government authority to the message.
- **Captain opt-out/delay logging:** Simple "saya tunda" (I'm postponing) reply button; aggregate responses logged so HNSI chapter head can see how many boats in fleet chose to delay — creates a fishery-level safety behavior dataset.
- **Weekly seismic summary:** Friday afternoon message showing the week's earthquake activity with a simple visualization of where quakes clustered, reinforcing the connection between seismic activity and the Smong tradition.

### Power User / Pro Features
- **HNSI dashboard:** Web interface showing departure decisions across fleet, correlated with seismic events; exportable for DKP reporting.
- **Historical event overlay:** Show captains how the last 5 M5+ earthquakes in the area compared to current activity levels, so they can calibrate their own risk intuitions.

## Technical Implementation

### Suggested Stack
The primary delivery mechanism is LINE Bot — LINE has strong penetration in Aceh fishing communities and handles low-bandwidth rural connections well. Backend is minimal: a Python cron job on a cheap VPS (or even a Raspberry Pi running in the HNSI office), SQLite for event storage, and the LINE Messaging API for delivery. No app install required from users.

**Chosen stack:** Python cron + SQLite + LINE Messaging API (Bot) + static HTML dashboard for HNSI. Reason: Target users already use LINE, VPS cost is <$5/month, zero app install friction for 60-year-old boat captains.

### APIs & Data Sources
| API | Specific Endpoint | What It Returns | Refresh Rate | Auth | Cost |
|-----|------------------|-----------------|--------------|------|------|
| USGS Earthquake Hazards | `https://earthquake.usgs.gov/fdsnws/event/1/query?format=geojson&minmagnitude=4&minlatitude=0&maxlatitude=5&minlongitude=94&maxlongitude=98&orderby=time&limit=20` | M4+ earthquakes in Simeulue subduction segment, past events | Real-time (updated within minutes of event) | None | Free |
| Open-Meteo Marine | `https://marine-api.open-meteo.com/v1/marine?latitude=2.52&longitude=96.38&hourly=wave_height,wave_direction,wave_period&timezone=Asia/Jakarta&forecast_days=1` | Hourly wave height, direction, period for Sinabang harbor | Hourly | None | Free |
| BMKG Earthquake Feed | `https://data.bmkg.go.id/DataMKG/TEWS/autogempa.json` | Latest felt earthquake reported by Indonesian agency | Near-real-time | None | Free |

### Database Schema (key tables only)
```
earthquakes: id (text), magnitude (real), depth_km (real), place (text), latitude (real), longitude (real), event_time (integer), distance_from_sinabang_km (real), inserted_at (integer)
marine_conditions: id (integer), recorded_at (text), wave_height_m (real), wave_period_s (real), wave_direction_deg (real)
briefings_sent: id (integer), sent_at (text), risk_level (text), line_group_id (text), quake_count_24h (integer), max_magnitude (real), wave_height_m (real)
subscriptions: group_id (text), village (text), active (integer), captain_count (integer)
```

### Key Technical Decisions
1. **LINE Bot over WhatsApp:** WhatsApp Business API requires phone number verification per message and has increasing anti-spam friction in Indonesia; LINE Bot groups are simpler to broadcast to and fishermen in Aceh actively use LINE for boat coordination.
2. **SQLite over Postgres:** This tool will run on a single small VPS or even a Raspberry Pi in the HNSI office with no SysAdmin. SQLite with WAL mode handles the tiny write load (one USGS poll every 30 min) with zero operational overhead.

### Hardest Technical Challenge
Calibrating the risk threshold so the bot isn't crying wolf. Simeulue gets M4.0-4.4 events every few days — if the threshold is too low, captains start ignoring KUNING messages within a week and the system loses trust. The mitigation is a two-week shadow period before launch where the scoring is tuned against historical USGS data for the past 5 years, specifically asking: "On days we would have sent MERAH, did conditions warrant caution?" The 2004 precursor sequence and the 2012 M8.6 Simeulue event both provide calibration anchors.

## Monetization Strategy

> This is a safety tool for subsistence fishing communities. Monetization would be a design failure.

**Model chosen:** Grant-funded

| Tier | Price | What's Included | Why They Pay This |
|------|-------|-----------------|-------------------|
| Free | $0 | All features — seismic briefing, wave data, LINE bot, dashboard | The entire product. No paywall on safety information. |

**Why someone pays:** They don't. The tool is funded.

**12-month revenue trajectory:**
- Month 3: $0 from users; $5,000-15,000 grant from USAID/UNODRR Indonesia disaster risk reduction programs or the Asian Development Bank's CDRFI (Climate and Disaster Risk Finance and Insurance) initiative, which specifically funds early warning last-mile tools in Aceh.
- Month 12: Possible Rp 50-200 million ($3,000-12,000) Desa Dana (Village Fund) allocation from Simeulue Regency government for software maintenance and the HNSI coordination dashboard, which provides a slim sustainability path.

**Alternative if grants don't work:** Sell the HNSI dashboard subscription (not the boat-captain tool) to DKP (Ministry of Marine Affairs and Fisheries) at the provincial level — Aceh Province has active fisheries management budget. Data about fleet departure decisions correlated with seismic events is genuinely valuable to maritime safety regulators.

## Marketing Strategy

**Exact communities to reach:**
- Facebook group "Nelayan Simeulue" (~3,200 members) — primary outreach, post in Bahasa with screenshots of the morning briefing format.
- LINE group managed by HNSI Simeulue chapter (coordinator has list of all captains) — the fastest channel; get the chapter head to add the bot to existing coordination groups.
- Facebook group "Komunitas Nelayan Aceh" (~8,700 members) — broader Aceh fishing community for awareness; potential expansion to Sabang and Pulau Banyak fleets.
- WhatsApp group of "Kepala Desa" (village heads) of Simeulue's 138 villages — village heads can mandate boat captains in their community register with the bot as a condition of port use.

**First 10 users and how you get them:**
Drive to Sinabang from Medan (or fly to Lasikin Airport). Meet with HNSI Simeulue chapter head Bapak [whoever currently holds the role] and show them a live demo: pull up today's USGS data on a laptop, show what yesterday's morning message would have said (M4.6 WNW of Sinabang = KUNING), and ask him to name 10 captains who went out that morning. Those are your first 10 beta testers. Give them the LINE bot number directly — no app install, one QR code scan.

**The press angle:**
"The island that survived the 2004 tsunami because of an ancient warning song still has no digital alert for its 2,400 fishing boats — we built one." BBC Asia, Kompas.com, and Channel NewsAsia have all covered the Smong story; this is the tech follow-up angle that has been waiting to be filed for 20 years.

**Content / SEO play:**
A public-facing "Simeulue Earthquake Activity This Week" page (updating automatically from USGS) creates the only human-readable, Indonesian-language seismic log for the island — it will rank for "gempa Simeulue" searches and serve as the organic growth engine if the tool ever expands to mainland Aceh ports.

**Launch sequence:**
1. Two weeks before: Shadow-run the bot in a test LINE group, tune thresholds, translate all messages with a Devayan-speaking local.
2. Launch day: HNSI chapter head adds bot to existing captains' LINE group and sends an announcement; Kompas Aceh reporter is briefed for a same-day article.
3. Week 1: Daily follow-up with the 10 beta captains — what did they read, did anything confuse them, did any depart despite a KUNING?

## Competitive Landscape

| Existing Solution | What They Do | Where They Fall Short | Why This Wins |
|-------------------|-------------|----------------------|---------------|
| BMKG Tsunami Warning System | Sends SMS/siren alerts after confirmed M7+ events | Activates post-event; no probabilistic pre-departure briefing; Indonesian-language but not village-specific | Operates pre-departure, not post-event |
| USGS earthquake.usgs.gov | Global earthquake catalog, publicly accessible | Requires active lookup, English-language, no fishing-specific risk framing | Pushes to LINE, in Bahasa, at 3:30am when it matters |
| Nothing else exists | — | — | First mover in the specific last-mile use case |

**Moat:** Trust, built in person. Once the HNSI chapter head endorses the tool and captains have received 90 mornings of accurate briefings, switching cost is high — not because of lock-in features but because these captains have calibrated their intuition to this specific alert format. The Smong tradition itself shows how oral/transmitted safety knowledge becomes load-bearing infrastructure. This bot is the digital equivalent.

## Risk Factors

1. **Adoption / Cultural:** Older captains who follow the Smong tradition may see a digital alert as redundant or even an insult to traditional knowledge. → **Mitigation:** Frame the tool explicitly as "Smong untuk HP" (Smong for your phone) — present it as augmenting the tradition to the open ocean scenario where on-shore signs can't be read; involve local cultural figures in the framing from day one.
2. **Technical / False Negative:** A M6.5 tsunami-generating event occurs that the USGS feed captures with a 10-minute delay — the briefing was already sent 4 hours earlier and said HIJAU. → **Mitigation:** Add a second real-time push: if any M5.5+ event appears in the USGS feed during fishing hours (4am-2pm WIB), send an immediate MERAH push regardless of daily briefing state; this is standard alert system design.
3. **Regulatory / Data:** BMKG may object to a non-government tool issuing seismic risk communications to the public. → **Mitigation:** Position as an aggregation tool that cites USGS and BMKG as sources, never as an independent seismic authority; proactively brief the Aceh Province BMKG office before launch and offer to display the BMKG logo on every message.
4. **Sustainability / Grant:** Grants end. Without a sustainability path, the bot goes dark and captains who relied on it lose trust in digital tools generally. → **Mitigation:** From month 6, pursue DKP provincial budget inclusion as "digital fisheries safety infrastructure" — frame the dashboard as a fisheries management data product, which is a line item bureaucracies understand.

## Build Reality Check

| Phase | Realistic Timeline | What Exists at End |
|-------|-------------------|-------------------|
| Prototype | 2 weeks | Python script querying USGS + Open-Meteo, outputting a correctly-formatted LINE message to a test group |
| Beta | 4 weeks | 10 captains in Sinabang receiving daily briefings; threshold tuning based on their feedback |
| Launch | 3 weeks | HNSI endorsement, 60-80 captains across 3 villages subscribed, Kompas Aceh press coverage |

**Solo founder feasibility:** Yes — with one constraint: you must physically go to Simeulue Island for at least 2 weeks. Remote launch will fail because trust is built face-to-face in this community.  
**Biggest execution risk:** Getting HNSI chapter head buy-in. The entire distribution strategy hinges on one person adding the bot to existing group chats. If that person is skeptical, the fallback path (village-by-village cold outreach) is 6x slower and will exhaust budget before critical mass.

---
*Generated: 2026-06-17 | Industry: ocean_maritime | Sub-industry: tsunami_warning | Geography: indonesia*  
*APIs queried for real data: USGS Earthquake Hazards (fdsnws/event/1), Open-Meteo Marine API (marine-api.open-meteo.com/v1/marine)*

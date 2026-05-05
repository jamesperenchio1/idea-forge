---
id: irrawaddy-delta-cyclone-window-checker-longtail-fishers-2026-05-05
title: NagaNet — Bay of Bengal Cyclone-Window Checker for Irrawaddy Delta Small-Boat Fishers
created: 2026-05-05T08:00:00+07:00
industry: disaster_emergency
sub_industry: cyclone_tracking
geography: myanmar
apis_used: Open-Meteo Marine API, Open-Meteo Forecast API, NASA EONET, World Bank Open Data
monetization_model: grant-funded
target_user: Small-boat longtail fishers (8–15m wooden hull, 3–6 crew) from Mawlamyinegyun, Bogale, and Laputta townships in Myanmar's Ayeyarwady Region who run 2–3 day gill-net trips 30–60 km into the Bay of Bengal during the May–October cyclone season, have no VHF radio or satellite phone, and currently make go/no-go decisions by asking neighbors or watching the government TV weather bulletin — delivered in Burmese, designed for Nay Pyi Taw policymakers, not delta fishers
concept_hash: cyclone-departure-window-checker+irrawaddy-delta-bay-of-bengal-myanmar+small-boat-longtail-fishers
---

# NagaNet — Bay of Bengal Cyclone-Window Checker for Irrawaddy Delta Small-Boat Fishers

## The Hook
- The Bay of Bengal's sea surface temperature hit **30.2°C** today — 3.7°C above the threshold where cyclones can form and intensify. Waves are 0.56m and deceptively calm. Cyclone season started yesterday. The fishers of Bogale township have no idea.
- Cyclone Nargis (May 2008) killed 138,000 people in the Irrawaddy Delta — the highest cyclone death toll in recorded history outside of Bangladesh. Virtually all victims were rural delta dwellers and fishers who received no warning that translated into actionable behavior.
- The government Department of Meteorology and Hydrology broadcasts cyclone alerts in formal Burmese on TV. Delta fishers, many with limited literacy, do not translate "storm surge warning for low-lying coastal areas" into "pull your boat ashore today."

## Real Data Found
> Live data queried from real APIs during idea generation — not placeholders.

| Source | Data Point | Value | Queried |
|--------|-----------|-------|---------|
| Open-Meteo Marine API | Sea surface temperature, Bay of Bengal (15.5°N, 95.0°E) | 30.2°C peak over 3-day window | 2026-05-05 |
| Open-Meteo Marine API | Current wave height (same location) | 0.56m — currently calm | 2026-05-05 |
| Open-Meteo Marine API | Swell wave height (same location) | 0.44m — low background swell | 2026-05-05 |
| Open-Meteo Forecast API | Pathein max wind speed today | 14.9 km/h; surface pressure 1009–1011 hPa stable | 2026-05-05 |
| Open-Meteo Forecast API | Pathein precipitation forecast May 10 | 22.1 mm — onset of monsoon pattern | 2026-05-05 |
| NASA EONET | Active named storms in Bay of Bengal region (last 14 days) | 0 active events — pre-season lull | 2026-05-05 |
| World Bank Open Data | Myanmar GDP per capita (2024) | USD 1,359 — one of SEA's lowest | 2026-05-05 |

The SST reading of 30.2°C is the silent number in this data. Cyclones need ≥26.5°C sea surface temperature to form; the Bay of Bengal is already 3.7°C above that floor and rising as May progresses. Waves are calm (0.56m), pressure is normal (1010 hPa) — everything visible to a fisher on the beach says "good day to go." What's invisible: the thermal fuel stockpile that turns a depression into a Category 4 storm in 18 hours.

Pathein's 7-day forecast shows 22.1 mm of precipitation arriving May 10, consistent with early monsoon pattern. The window between now and May 10 is when delta fishers maximize trips — this is exactly the window where a rapid cyclone intensification would catch multi-day trips offshore with no recall mechanism.

## The Problem

It is 4:30am in Mawlamyinegyun Township, Ayeyarwady Region. A fisher named Maung Kyaw is loading squid traps into his 12-meter longtail — a round trip to fishing grounds 45 km offshore will take 48 hours. He watched last night's TV weather report. The presenter, wearing a suit in Nay Pyi Taw, mentioned a "low pressure area forming in the southern Bay of Bengal" before cutting to the next segment. Maung Kyaw's informal fishing network — a Viber group of 40 neighbors — showed no messages about conditions. He goes. So do 11 other boats from his village pier.

The structural failure is this: Myanmar's meteorological system was designed to alert urban populations and government infrastructure. Its outputs — province-level text warnings in formal register Burmese, TV bulletins, and a website that requires reliable 4G and literacy — are entirely misaligned with the risk profile of 170,000 registered small boats operating from delta townships where power cuts are daily, 4G is intermittent, and the average fisher completed schooling at age 12. The JTWC (Joint Typhoon Warning Center) publishes track forecasts in English every 6 hours. The Bangladesh Meteorological Department has a functional SMS alert system for its fishers. Myanmar has neither.

What fishers currently use as proxies — cloud color at dawn, the behavior of shore birds, advice from older village fishers — are genuinely useful heuristics but cannot detect a depression forming 400 km offshore in a 18-hour intensification event. Cyclone Nargis moved from tropical depression to Category 4 in under 36 hours. The current early-warning gap means that when a storm crosses into warning range, delta fishers at sea have no mechanism to receive the alert and no realistic path back to shore if conditions deteriorate rapidly.

## Who Uses This

**Primary user:** Boat owner-operators (both captain and owner of a single 8–15m longtail) in Bogale, Laputta, Mawlamyinegyun, Dedaye, and Pyapon townships, Ayeyarwady Region. Typically 35–55 years old, running 2–3 day gill-net or squid-jigging trips May through October with crews of 3–5 hired hands. Monthly income USD 150–400 depending on catch — one lost trip to bad weather represents 10–20% of monthly earnings; a capsized boat represents years of debt. They own basic Android smartphones (Samsung A-series, Tecno) and use Viber daily. Many are semi-literate in Burmese but fluent in spoken Burmese and Rakhine delta dialect.
**What they do now (and why it sucks):** They call other fishers from townships already at sea via Viber voice call to ask conditions — but that person is also guessing at what's approaching from the south.
**When they pay:** They don't. This population earns USD 1,359/year per capita equivalent and cannot sustain a subscription. But their cooperative leaders can, and NGOs sponsoring maritime safety absolutely will.

**Secondary user:** Township-level fishers' cooperative chairpersons (1 per major township) who are responsible for advising when to call back boats. They have better literacy, smartphones, and often a government radio transceiver. They would use the admin view to see 72-hour risk levels across all their members' fishing zones and push Viber alerts to member groups.

**Who definitely won't use this:** Deep-sea trawler operators (they have ship-board navigation), urban fish market traders (they care about supply, not safety), NGO staff using it to write reports without ever showing it to a fisher.

## Feature Set

### MVP — Week 1-3
- **Daily 5am Go/No-Go push alert:** Viber message sent automatically each morning to subscribed fishers. Three levels only — GREEN (safe, go), YELLOW (watch, short trips only), RED (do not depart). No jargon.
- **48-hour wave & wind forecast card:** Plain-language summary: "Tomorrow: waves 1.2m, wind 25 km/h from SW. Seas choppy. Short trips only." In Burmese script.
- **Surface pressure drop monitor:** If pressure at Pathein drops >4 hPa in 6 hours, triggers immediate RED alert push regardless of time of day. This is the single best indicator of rapid cyclone approach.
- **JTWC storm proximity alert:** Parses JTWC RSS feed. If named storm track intersects Bay of Bengal within 500 km of Irrawaddy Delta in 72h, pushes emergency Viber broadcast.
- **Current conditions snapshot:** Wave height, swell period, wind speed at the fishers' typical 30–60 km offshore zone. Shown as a single number: "Sea state: CALM (0.6m) / MODERATE (1.5m) / ROUGH (2.5m+) / DANGEROUS (4m+)"

### Version 2 — Month 2-3
- **Sea surface temperature tracker:** Weekly SST reading for Bay of Bengal with contextual note: "Water is 30°C — 3.5° above cyclone fuel threshold. Season risk is HIGH this week."
- **Recall beacon:** Fishers already at sea can check status via Viber. If RED is issued while they're offshore, they get a recall message with estimated hours to safe harbor.
- **Community conditions log:** Fishers returning from trips submit 2-tap sea state report (calm / choppy / rough). Aggregates into crowdsourced real-time layer.

### Power User / Pro Features
- **Cooperative admin dashboard:** Web view showing all member boat departure logs, alert acknowledgments, and 7-day forecast per fishing zone.
- **Season risk calendar:** Historical SST + cyclone track overlay for May–October, showing which weeks carry highest risk based on 20 years of JTWC archive data.

## Technical Implementation

### Suggested Stack
**Chosen stack:** Viber Bot (primary) + lightweight PWA (secondary, for cooperative admins) + Python serverless backend on Railway/Render free tier.

Viber is the dominant messaging platform in Myanmar — not LINE, not WhatsApp. Delta fishers use it daily. A Viber bot delivers alerts without requiring users to install anything new, works on basic Android with 2G EDGE, and sends Burmese-script text natively. SMS fallback is added for feature phones (Telenor Myanmar supports Unicode SMS for Burmese). The PWA is only for cooperative leaders who need the dashboard view.

### APIs & Data Sources
| API | Specific Endpoint | What It Returns | Refresh Rate | Auth | Cost |
|-----|------------------|-----------------|--------------|------|------|
| Open-Meteo Marine | `https://marine-api.open-meteo.com/v1/marine?latitude=15.5&longitude=95.0&hourly=wave_height,wave_period,swell_wave_height,sea_surface_temperature` | Wave height, swell, SST at Bay of Bengal offshore zone | Hourly | None | Free |
| Open-Meteo Forecast | `https://api.open-meteo.com/v1/forecast?latitude=16.78&longitude=94.73&hourly=windspeed_10m,surface_pressure,precipitation` | Pathein wind, pressure, rainfall | Hourly | None | Free |
| JTWC RSS | `https://www.nrlmry.navy.mil/atcf_web/docs/rss/jtwc_rss.xml` | Named cyclone tracks, intensity, 72h forecast positions | Every 6h | None | Free |
| NASA EONET | `https://eonet.gsfc.nasa.gov/api/v3/events?status=open&days=7&bbox=80,8,100,25` | Active storm events in Bay of Bengal region | Hourly | None | Free |

### Database Schema (key tables only)
```
boats: id, owner_viber_id, township, typical_range_km, registered_at
alerts: id, created_at, level (green/yellow/red), wave_height_m, pressure_hpa, trigger_reason
subscriptions: boat_id, viber_group_id, cooperative_id, alert_level_threshold
cooperative: id, name, township, admin_viber_id, member_count
departures: id, boat_id, departed_at, returned_at, sea_state_reported
```

### Key Technical Decisions
1. **Viber over WhatsApp:** Viber Business API allows Myanmar businesses without a US phone number; WhatsApp Business API requires Facebook Business verification that Myanmar organizations frequently fail to obtain due to sanctions-adjacent restrictions.
2. **Open-Meteo over government data:** Myanmar DMH API is undocumented and not publicly accessible; Open-Meteo's ERA5-based hindcast has demonstrated accuracy for Bay of Bengal swell forecasts within ±0.3m.

### Hardest Technical Challenge
Pressure drop detection requires 6-hour rolling baseline that is accurate and not triggered by normal diurnal pressure variation (which in the tropics can swing 3–5 hPa naturally). Mitigation: use rate-of-change threshold (>6 hPa in 3 hours) rather than absolute value, and cross-reference with JTWC advisory before sending RED alert.

## Monetization Strategy

> Note: Not every idea needs Stripe. Some are better as free tools, grant-funded, or sold B2G.

**Model chosen:** grant-funded (primary) + cooperative subscription (secondary)

| Tier | Price | What's Included | Why They Pay This |
|------|-------|-----------------|-------------------|
| Free | $0 | Daily Go/No-Go Viber alert, 48h forecast card | Individual fishers — adoption is the goal |
| Cooperative | $15/month | Admin dashboard, recall broadcast, 72h advanced alerts, 500 member Viber group coverage | Cooperative chairs need accountability features |
| NGO/Government | $200–500/year per district | White-labeled alerts, data export, API access for integration with government systems | For FAO, UNDP, Save the Children maritime safety programs |

**Why someone pays:** A cooperative chairperson in Bogale is legally and morally responsible for his 200 member boats. After one season where a RED alert recalls boats that miss an out-of-season squall, and members acknowledge the recall saved income (no lost gear, no emergency), the $15/month is obvious.

**12-month revenue trajectory:**
- Month 3: ~8 cooperatives × $15 + 1 NGO pilot × $300 = $420/month
- Month 12: ~35 cooperatives × $15 + 3 NGO/district contracts × $400 = $1,725/month

**Alternative if SaaS doesn't work:** Single FAO Myanmar or USAID maritime safety grant ($50,000–$150,000 range is realistic for a fisher safety tool with documented reach). This is the more likely path given the income profile of the target users.

## Marketing Strategy

**Exact communities to reach:**
- **ငါးဖမ်းသမားများ / Ayeyarwady Fishers Facebook group** (~28,000 members, Burmese language, active delta fishing community, posts daily catch photos and news)
- **Myanmar Fisheries Federation (MFF)** — national body representing ~500,000 registered fishers; has township-level coordinator network; approach via Yangon office
- **ကမ်းရိုးတန်းငါးဖမ်းရွာ Viber communities** — informal Viber groups (200–500 members each) run by village fishing coordinators in Bogale, Laputta; requires on-the-ground introductions from township cooperative chairs
- **FAO Myanmar Fisheries Programme** — has existing relationships with cooperative structure; used for Cyclone Nargis recovery programs and therefore trusted by delta communities

**First 10 users and how you get them:**
Travel to Bogale or Laputta. Spend two days at the morning market where fishers sell catch before 7am. Find the person everyone talks to — the fisher who everyone asks about conditions. This person is typically the de facto weather authority of the pier. Demo the app on his phone showing yesterday's actual conditions matched against what really happened. Leave him with the admin view for his Viber group. Ask nothing. Come back in a week. He'll have shown it to 40 people.

**The press angle:**
"The Bay of Bengal has warm enough water to fuel a Category 3 cyclone today. 170,000 Myanmar fishing boats have no way to know." — A data journalism piece cross-referencing SST readings against the 2008 Nargis track would be picked up by Frontier Myanmar, The Irrawaddy, and potentially Reuters.

**Content / SEO play:**
Daily Bay of Bengal cyclone risk status page in Burmese (publicly accessible, no login) showing current SST, pressure trend, and today's departure recommendation. This page gets indexed and becomes the search result for "မုန်တိုင်းရာသီ ငါးဖမ်း" (cyclone season fishing).

**Launch sequence:**
1. Three months before: Partner with one fishing cooperative in Bogale for a 90-day silent pilot; refine the alert thresholds against actual conditions
2. Launch day: Publish the Irrawaddy Delta SST tracker page; share the Frontier Myanmar press pitch on the 18th anniversary of Cyclone Nargis (May 2026)
3. Week 1: Cooperative chair shares the Viber bot link into their member group; track subscription count daily; call every subscriber who joins in the first 72 hours to gather feedback

## Competitive Landscape

| Existing Solution | What They Do | Where They Fall Short | Why This Wins |
|-------------------|-------------|----------------------|---------------|
| Myanmar DMH TV bulletin | Province-level cyclone warnings in formal Burmese | Not actionable for delta fishers, no push, no marine-specific data | Go/No-Go in plain spoken Burmese, pushed to their existing Viber |
| AccuWeather / Weather.com | General weather apps | English only, no marine layer, no cyclone-specific logic, no Burmese | Burmese-first, fisher-specific, marine data, pressure-drop detection |
| Bangladesh Cyclone Preparedness Programme (CPP) SMS | SMS alerts to coastal Bangladesh fishers | Does not cover Myanmar | Exact same model applied to Myanmar — CPP is the proof of concept |
| Nothing | Delta fishers ask neighbors | Neighbors are also guessing | Any real data source wins |

**Moat:** Trust built with cooperative leaders after the first season of accurate alerts. A fisher who received a correct RED warning and didn't lose a boat will evangelize this tool to every pier in his township. The community-report layer (sea state submissions from returning fishers) creates a local data advantage that no weather API can replicate.

## Risk Factors

1. **Connectivity / Technical:** Viber requires mobile data; during cyclone approach, towers in delta townships often fail due to power outages → **Mitigation:** SMS fallback for alerts; offline-capable PWA caches last 24h forecast for cooperative admins; alert sent 6h in advance before conditions deteriorate
2. **Regulatory / Political:** Myanmar military junta periodically shuts down internet (especially after political events); app is unusable during shutdowns → **Mitigation:** Pre-loaded seasonal risk calendar in offline mode covers baseline guidance; build relationship with DMH official to position as government-adjacent tool (reduces shutdown risk)
3. **Adoption / Trust:** Fisher communities in Irrawaddy Delta have seen NGO tech projects come and go without staying power → **Mitigation:** Commit to 3-year minimum operation; ground the launch in the cooperative structure rather than direct-to-consumer; leave the cooperative chair in control of their group alerts
4. **Data Accuracy:** Open-Meteo marine data is good but not specific to Bay of Bengal's complex monsoon micrometeorology; false RED alerts will destroy trust → **Mitigation:** Threshold calibration during 90-day silent pilot; never fire RED without JTWC advisory confirmation; maintain a "predicted vs actual" accuracy log and share it with cooperatives

## Build Reality Check

| Phase | Realistic Timeline | What Exists at End |
|-------|-------------------|-------------------|
| Prototype | 2 weeks | Viber bot sends daily forecast card in Burmese to a test group of 10 numbers; manual Go/No-Go judgment |
| Beta | 6 weeks | Automated pressure-drop detection; JTWC parsing live; 1 cooperative (50 fishers) receiving real alerts |
| Launch | 12 weeks | 5 cooperatives (250 fishers) live; cooperative admin dashboard deployed; NGO partnership signed |

**Solo founder feasibility:** Difficult — requires both backend engineering and deep on-the-ground relationship building in Ayeyarwady Region, which realistically requires a local partner or co-founder who speaks the delta dialect and has existing cooperative relationships.
**Biggest execution risk:** Getting the first cooperative chairperson to champion the tool. Without that local authority figure, no delta fisher will trust an app from someone they've never met. Everything depends on that first human relationship.

---
*Generated: 2026-05-05 | Industry: disaster_emergency | Sub-industry: cyclone_tracking | Geography: myanmar*
*APIs queried for real data: Open-Meteo Marine API (wave height, SST Bay of Bengal 15.5°N 95.0°E), Open-Meteo Forecast API (Pathein wind/pressure/precipitation), NASA EONET (active storm events), World Bank Open Data (Myanmar GDP per capita)*

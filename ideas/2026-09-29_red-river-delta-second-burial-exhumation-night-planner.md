---
id: sangcat-nam-dinh-2026-09-29
title: SangCát — Second-Burial (Cải Táng) Exhumation Night-Window Planner Combining Lunar-Astrology Age Checks, Grave-Soil Wetness and Diaspora Flight Timing for Red River Delta Families
created: 2026-09-29T08:03:03+07:00
industry: culture_religion
sub_industry: astrology_tools
geography: southeast_asia
apis_used: Open-Meteo Forecast API, Open-Meteo Historical Archive API, Open Exchange Rates (open.er-api.com), World Bank Open Data
monetization_model: hybrid
target_user: Eldest sons (con trưởng) and their wives in rural Nam Định, Thái Bình and Ninh Bình provinces, typically 40-60 years old, household income ~6-10 million VND/month from rice, pigs or a small shop, who must organize the cải táng (exhumation, bone-washing and reburial) of a parent 3-5 years after death — a once-in-a-decade ritual that requires a thầy cúng/thầy địa lý to pick a night compatible with the family head's age (Kim Lâu, Tam Tai, Hoang Ốc), which must also be dry, cold-season, and fall on dates when a brother working in a Taiwan electronics factory or a Korean fishing boat can actually fly home.
concept_hash: second-burial-exhumation-night-window-astrology-weather-diaspora-planner+red-river-delta-nam-dinh-thai-binh-vietnam+rural-eldest-sons-and-diaspora-siblings-organizing-cai-tang
---

# SangCát — Second-Burial (Cải Táng) Exhumation Night-Window Planner for Red River Delta Families

## The Hook
- In the Red River Delta, a dead parent is dug up 3-5 years after burial, their bones washed in rice wine by lamplight and moved to a permanent tomb — in the middle of the night, only in the cold dry months, only on a date a fortune-teller says fits the eldest son's age. Miss any of those and the family believes the dead are disturbed and the living get sick. SangCát turns that three-way negotiation (astrology × weather × a brother's factory leave in Taichung) into one shared calendar.
- Open-Meteo's archive shows that last cải táng season (1 Dec 2025 – 31 Jan 2026) Hải Hậu, Nam Định had 46 dry days out of 62 and 101 of 124 night blocks with zero rain — but night humidity averaged 88.6%. A "dry" night on a phone weather app is not the same as dry grave soil, and families keep opening wet graves.
- A diaspora son paying ~815 VND per Taiwan dollar for a last-minute flight home because the thầy moved the date by a week is the money moment: SangCát sells him certainty 60 days out.

## Real Data Found
> Live data queried from real APIs during idea generation — not placeholders.

| Source | Data Point | Value | Queried |
|--------|-----------|-------|---------|
| Open-Meteo Forecast API | Hải Hậu, Nam Định (20.15N, 106.28E) — 7-day precipitation forecast | 0.0 mm (29 Sep), 0.0 mm (30 Sep), 1.8 mm (1 Oct, 57% prob), 1.1 mm (2 Oct), 0.0 mm (3 Oct, 51% prob), 5.7 mm (4 Oct, 84% prob), 1.2 mm (5 Oct, 73% prob) | 2026-09-29 |
| Open-Meteo Forecast API | Nightly minimum temperature, same point | 28.5 °C today, falling to 21.0 °C by 5 Oct (first cold front of the season) | 2026-09-29 |
| Open-Meteo Forecast API | Soil moisture at 27-81 cm (roughly the depth of a first-burial coffin in delta sand-clay) | 0.364 m³/m³ (surface 0-1 cm: 0.298 m³/m³) | 2026-09-29 |
| Open-Meteo Forecast API | Sunset, Hải Hậu | 17:45 today → 17:39 on 5 Oct | 2026-09-29 |
| Open-Meteo Historical Archive | 15 Nov 2025 – 31 Jan 2026, Hải Hậu: total rain / dry days (<0.5 mm) / lowest min temp / mean min temp | 110.5 mm / 46 of 78 days / 10.4 °C / 16.5 °C | 2026-09-29 |
| Open-Meteo Historical Archive | 1 Dec 2025 – 31 Jan 2026, night blocks (22:00-05:00) with zero rain; mean night relative humidity | 101 of 124 blocks dry; 88.6% RH | 2026-09-29 |
| Open Exchange Rates | VND per 1 TWD / 1 KRW / 1 JPY / 1 USD | 815.0 / 19.08 / 164.85 / 25,641 VND | 2026-09-29 (rates updated 00:02 UTC) |
| World Bank Open Data | Vietnam population aged 65+ (SP.POP.65UP.TO.ZS) | 9.49% (2025), up from 8.62% (2023) | 2026-09-29 |

The numbers expose a gap nobody manages: the calendar says cải táng season is "after the tenth lunar month when it is cold," but the delta's first real cold front only shows up in this week's forecast (min temp dropping from 28.5 °C to 21.0 °C on 5 Oct), and even deep in the season roughly a quarter of night blocks are wet and humidity sits near 89%. Deep-soil moisture of 0.364 m³/m³ at coffin depth is effectively saturated for the delta's silty clay — which is exactly the condition families dread, because a coffin that opens onto waterlogged remains (không tiêu, bones not yet clean) is read as a terrible omen and forces a costly re-burial and a second ceremony years later.

Meanwhile the people who pay for these ceremonies are increasingly abroad. Vietnam's 65+ share rose from 8.62% to 9.49% in two years — more parents dying, more cải táng coming due — and the sons funding them are earning in Taiwan dollars, won and yen. At 815 VND per TWD, a 20,000 TWD emergency round-trip from Taipei to Hanoi costs ~16.3 million VND — two months of household income back home — every time a date moves.

## The Problem

It is 1:30 a.m. in a rice field outside Hải Hậu. Twelve relatives, a thầy cúng and four hired grave-diggers stand under a tarp around a hole that has been filling with water since 11 p.m. Nobody checked that 5.7 mm of rain fell two days earlier on top of already-saturated subsoil. The eldest brother, who flew in from Taichung on a flight booked eight weeks ago when the thầy first picked the date, has to fly back in four days. The coffin comes up heavy and wet; the bones are not clean. The family pays the diggers, re-buries, and spends the next three years believing their mother is uneasy.

The problem exists because three systems that never talk to each other all have veto power. The thầy cúng computes auspicious nights from the lunar calendar and the family head's age (Kim Lâu, Tam Tai, Hoang Ốc years rule out whole seasons; specific ngày hoàng đạo and giờ hoàng đạo narrow it further) — but he works from a paper almanac (lịch vạn niên) and has no view of weather or soil. Weather apps show daytime icons for Nam Định city, not nighttime rain at a paddy-field grave on the coast. And the diaspora sibling's factory in Taichung or Korean vessel needs 30-60 days notice for leave, and flights around Tết spike. Families currently coordinate by phone calls and Zalo voice notes, with the thầy re-picking dates as problems emerge.

If nothing changes, the demographic curve makes it worse: more deaths in the 2020s mean more cải táng due in 2026-2030, the children who know the rituals are working abroad, and the thầy who do it are aging out. The result is wasted flights, failed exhumations, disputes between siblings over who "chose the wrong night," and a slow drift toward cremation that many families feel forced into rather than choose.

## Who Uses This

**Primary user:** Anh Tuấn, 52, eldest son in Hải Hậu district, Nam Định. Grows two rice crops and raises pigs; ~8 million VND/month household income. His father died in 2022; the cải táng is due this winter. He uses Zalo daily, Facebook for news, has never installed a "productivity" app. He has two younger brothers — one in a Taichung PCB factory, one crewing on a squid boat out of Busan.
**What they do now (and why it sucks):** Visits the thầy with the family's birth years, gets three candidate nights on a scrap of paper, then spends two weeks on Zalo calls trying to match them to his brothers' leave and to "whatever the sky does," with no idea if the grave will be flooded.
**When they pay:** The moment the Taiwan brother says "I need the date locked by Friday or my leave request is denied" — a firm, weather-checked, astrology-compatible shortlist is worth real money right then.

**Secondary user:** Thầy cúng / thầy địa lý (ritual masters) and funeral-service cooperatives (dịch vụ tang lễ) in Nam Định and Thái Bình who run 20-60 cải táng a season and lose money when diggers are booked for a night that gets rained off.
**Why they care:** A shared calendar showing which of their booked nights are at soil-saturation risk lets them re-sequence crews and protects their reputation for "choosing well."

**Who definitely won't use this:** Urban Hanoi families who cremate (hỏa táng) and inter ashes directly; Southern Vietnamese families (cải táng is overwhelmingly a Northern/North-Central practice); anyone looking for a horoscope or dating-compatibility app.

## Feature Set

### MVP — Week 1-3
- **Age-compatibility screen (Kim Lâu / Tam Tai / Hoang Ốc):** Enter the family head's lunar birth year and the deceased's death date; it flags which upcoming lunar months are ruled out and shows the reason in plain Vietnamese — explicitly framed as "what the almanac says; confirm with your thầy."
- **Night-window weather score:** For each candidate night (22:00-05:00) over the next 16 days, scores rain probability, night humidity and minimum temperature at the grave's GPS pin — red/amber/green.
- **Grave-soil wetness flag:** Uses 27-81 cm soil moisture plus 72-hour antecedent rainfall to flag "coffin likely waterlogged" nights even when the night itself is dry.
- **Family share link on Zalo:** One link showing the shortlist to every sibling, with the dates converted into each sibling's country and a "can you come?" yes/no tap.
- **Diaspora cost line:** Shows the VND cost of a typical flight home in TWD/KRW/JPY at today's rate, so siblings can see the cost of moving a date.

### Version 2 — Month 2-3
- **Seasonal outlook (30-90 days):** Climatology from past cold seasons at that exact pin — "historically 81% of night blocks in this window were dry (101 of 124 in Dec 2025–Jan 2026 at Hải Hậu)" — so dates can be locked 60 days ahead for leave requests.
- **Thầy dashboard:** Ritual masters log their bookings and see which ones fall on at-risk nights; one-tap re-proposal of alternative nights that still pass the age rules.
- **Checklist & shopping list:** Tiểu sành (ceramic ossuary), rượu for bone-washing, joss items, digger fees — with typical local prices crowdsourced by district.

### Power User / Pro Features
- **Multi-grave coordination:** For clans (dòng họ) moving several graves to a new family cemetery on the same night.
- **Crew scheduling for funeral cooperatives:** Assign digger teams across a season, auto-flag rain-outs 72 hours ahead.

## Technical Implementation

### Suggested Stack
**Chosen stack:** Zalo Mini App (front end) + a small Cloudflare Workers backend with D1 — because every rural Northern Vietnamese family already lives in Zalo, a mini app installs nothing, and the backend only needs to cache weather per grave-pin and compute lunar dates.

### APIs & Data Sources
| API | Specific Endpoint | What It Returns | Refresh Rate | Auth | Cost |
|-----|------------------|-----------------|--------------|------|------|
| Open-Meteo Forecast | `https://api.open-meteo.com/v1/forecast?latitude={lat}&longitude={lon}&hourly=precipitation,precipitation_probability,relative_humidity_2m,temperature_2m,soil_moisture_27_to_81cm&daily=sunset,sunrise&timezone=Asia/Bangkok&forecast_days=16` | Hourly night rain, humidity, temperature, subsoil moisture, sunset | Hourly | none | free (non-commercial; paid tier for commercial) |
| Open-Meteo Historical Archive | `https://archive-api.open-meteo.com/v1/archive?latitude={lat}&longitude={lon}&start_date=...&end_date=...&hourly=precipitation,relative_humidity_2m` | Past-season night climatology per pin | One-off / yearly | none | free |
| Open Exchange Rates | `https://open.er-api.com/v6/latest/VND` | VND vs TWD/KRW/JPY for the diaspora cost line | Daily | none | free |
| World Bank Open Data | `https://api.worldbank.org/v2/country/VN/indicator/SP.POP.65UP.TO.ZS?format=json` | Ageing indicators for province-level demand modeling | Yearly | none | free |
| Lunar calendar (local lib) | `amlich` / Hồ Ngọc Đức's open-source Vietnamese lunar algorithm | Solar↔lunar conversion, can-chi day names, hoàng đạo days | Computed | none | free (open source) |

### Database Schema (key tables only)
```
families: id (uuid), zalo_owner_id (text), head_lunar_birth_year (int), head_gender (text), province (text)
graves: id (uuid), family_id (uuid), lat (float), lon (float), deceased_death_date (date), burial_date (date), soil_type_note (text)
candidate_nights: id (uuid), grave_id (uuid), night_date (date), lunar_date (text), can_chi (text), age_rule_pass (bool), weather_score (int), soil_wet_flag (bool), thay_approved (bool)
siblings: id (uuid), family_id (uuid), country (text), currency (text), rsvp_by_night (jsonb)
thay_bookings: id (uuid), thay_id (uuid), grave_id (uuid), night_date (date), crew_size (int), status (text)
```

### Key Technical Decisions
1. **Astrology as a transparent filter, never an oracle:** The app shows which almanac rule excludes a date and always leaves final approval to the family's own thầy — this respects the ritual authority (and avoids the app being rejected as "disrespectful") while still saving 90% of the back-and-forth.
2. **Per-grave pins, not per-province weather:** Coastal Hải Hậu and inland Vụ Bản can differ by a full rain band; graves are in paddy fields, so the forecast has to be pinned to the field.

### Hardest Technical Challenge
Encoding the rules correctly. Kim Lâu, Tam Tai, Hoang Ốc and "trùng tang" rules vary by region and by individual thầy; a wrong exclusion will destroy trust instantly. Mitigation: ship a conservative, well-cited rule set (from published lịch vạn niên sources), make every rule toggleable, and recruit 3-5 respected thầy in Nam Định as paid reviewers who sign off on the defaults for their district.

## Monetization Strategy

**Model chosen:** hybrid — free for families, paid for diaspora "lock the date" and for thầy/funeral cooperatives.

| Tier | Price | What's Included | Why They Pay This |
|------|-------|-----------------|-------------------|
| Free | $0 | Age screen, 16-day night score, family share link | Gets every sibling into the same view |
| Gia Đình (Family) | 199,000 VND (~$7.75) one-time per ceremony | 60-90 day climatology outlook, leave-request PDF in Chinese/Korean/Japanese stating the ceremony date, WhatsApp/Zalo reminders | The diaspora sibling needs a locked date and a document for their employer |
| Thầy / Dịch Vụ | 290,000 VND (~$11.30)/month in season (Oct-Mar) | Booking dashboard, rain-out alerts 72 h ahead, crew scheduling, branded share links | One rained-off crew night costs more than a season's subscription |

**Why someone pays:** The Taiwan brother's leave request is due Friday; paying $7.75 to get a climatology-backed date plus a formal leave letter is trivially cheaper than one moved flight (~16.3 million VND at today's rate).

**12-month revenue trajectory:**
- Month 3: ~150 family ceremonies × $7.75 + 20 thầy × $11.30 = ~$1,390/month in season
- Month 12: ~1,200 family ceremonies × $7.75 (in-season average) + 150 thầy × $11.30 = ~$10,995/month in season (near-zero Apr-Sep)

**Alternative if SaaS doesn't work:** License the night-window + soil model to funeral-service companies (e.g., the bigger Hà Nội/Nam Định dịch vụ tang lễ operators) or to cemetery-park developers (nghĩa trang sinh thái) who market "family reburial packages" to diaspora buyers.

## Marketing Strategy

**Exact communities to reach:**
- "Hội Người Nam Định" and "Người Thái Bình Xa Quê" style Facebook groups (hometown associations; the larger ones have 100k-300k+ members, estimated from public counters)
- "Cộng đồng người Việt tại Đài Loan" / Vietnamese worker groups in Taiwan on Facebook (several with 200k+ members, estimated) — the diaspora siblings who actually pay
- Vietnamese-in-Korea worker communities on Facebook and Zalo (e.g., "Cộng đồng người Việt Nam tại Hàn Quốc", estimated 100k+ members)
- r/VietNam (~180k members, estimated) for the English-language press angle only

**First 10 users and how you get them:**
Go to Hải Hậu district in late October, visit two or three thầy cúng known locally (asked for at the commune people's committee or the market), and give them the Thầy dashboard free for the season in exchange for loading their existing bookings. Each thầy handles dozens of families; they share the family link with the first 10 households directly over Zalo.

**The press angle:**
"The night Vietnam's dead come home: data shows 1 in 4 winter nights in the Red River Delta is wet — and families keep digging anyway." Pitch to VnExpress's culture desk and Tuổi Trẻ, plus Taiwanese Vietnamese-language media for the migrant-worker angle.

**Content / SEO play:**
District-level "mùa cải táng" pages: "Lịch cải táng 2026-2027 Hải Hậu — đêm khô, độ ẩm đất" plus evergreen explainers "Tuổi Kim Lâu năm 2027 có được cải táng không?" — both are heavily searched Vietnamese queries every autumn.

**Launch sequence:**
1. Before launch (Oct): Recruit 3-5 thầy reviewers in Nam Định and Thái Bình; publish the rule set with their names attached.
2. Launch day (lunar month 10 begins): Post in the hometown and Taiwan-worker Facebook groups with a sample shortlist for a real commune.
3. Week 1: Run Zalo OA broadcasts of weekly "đêm khô tuần này" (dry nights this week) maps per district; convert thầy who see their competitors listed.

## Competitive Landscape

| Existing Solution | What They Do | Where They Fall Short | Why This Wins |
|-------------------|-------------|----------------------|---------------|
| Lịch Vạn Niên apps (many on Google Play) | Lunar calendar, hoàng đạo days, generic "xem ngày" | No weather, no soil, no family coordination; generic rather than per-grave | Combines ritual rules with night-level weather at the actual grave |
| Tuvi / xem tuổi websites | Age-compatibility lookups | No link to real-world feasibility | Treats astrology as one filter among three |
| Windy / AccuWeather | Weather forecasts | Daytime-oriented, no subsoil, no ritual context | Night + soil + ritual in one Zalo view |
| Thầy cúng with paper almanac | Authoritative date selection | Blind to weather and diaspora constraints | Makes the thầy better rather than replacing him |

**Moat:** Relationships with named, respected thầy in each district and a growing per-grave dataset of which nights actually produced dry exhumations — nobody else has ground-truth outcomes for this ritual.

## Risk Factors

1. **Cultural:** Families may see an app "choosing" a ritual date as disrespectful → **Mitigation:** The app never picks; it filters and the thầy approves, with his name on the final date.
2. **Data:** Grid-scale soil moisture may not match a specific low-lying paddy grave → **Mitigation:** Add a one-tap "grave was wet/dry" outcome log after each ceremony and calibrate per commune.
3. **Market:** Extreme seasonality (Oct-Mar only) → **Mitigation:** Extend to Thanh minh (tomb-sweeping, 3rd lunar month) and giỗ (death-anniversary) planning for diaspora families in the off-season.

## Build Reality Check

| Phase | Realistic Timeline | What Exists at End |
|-------|-------------------|-------------------|
| Prototype | 3 weeks | A Zalo mini app where a family enters birth year + grave pin and gets a 16-day night shortlist |
| Beta | 6 weeks | 5 thầy and ~50 families in Nam Định using it for the 2026-27 season |
| Launch | 10 weeks | Paid Family tier and Thầy dashboard live before lunar month 11 (peak season) |

**Solo founder feasibility:** Yes — the technology is small; the real work is sitting with thầy in Nam Định and getting the rules right, which a Vietnamese-speaking founder can do.
**Biggest execution risk:** Getting a single respected thầy to publicly vouch for it; without that endorsement, rural families won't trust any date the app touches.

---
*Generated: 2026-09-29 | Industry: culture_religion | Sub-industry: astrology_tools | Geography: southeast_asia (Vietnam)*
*APIs queried for real data: Open-Meteo Forecast API, Open-Meteo Historical Archive API, Open Exchange Rates, World Bank Open Data*

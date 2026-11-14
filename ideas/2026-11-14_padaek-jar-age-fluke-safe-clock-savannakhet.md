---
id: hai-padaek-savannakhet-2026-11-14
title: HaiPadaek — Jar-Age Fluke-Safe Clock & Salt-Ratio Ledger for Village Padaek Makers in Champhone and Xaibouly, Savannakhet
created: 2026-11-14T08:05:00+07:00
industry: food_beverage
sub_industry: fermented_foods
geography: southeast_asia
apis_used: Open-Meteo Forecast, Open-Meteo Historical Archive, World Bank Open Data, ExchangeRate-API (open.er-api.com), USDA FoodData Central
monetization_model: grant-funded
target_user: Lao Loum women aged 35-65 in the Xe Champhone wetland villages of Champhone and Xaibouly districts, Savannakhet Province, who salt 20-150 kg of small floodplain fish (pa soi, pa khao) into 10-40 clay or plastic jars each October-December when the paddies drain, then sell padaek by the ladle or 1.5-litre bottle at Savannakhet's Talat Yai, Champhone district market and to Thai traders from Mukdahan across the bridge. They earn roughly 15,000-40,000 LAK per bottle, keep batch dates in their head ("the jar I started after Boun Ok Phansa"), and sell the jars that "smell ready" first — often 3-6 weeks old in the hot season, when buyers want it cheap and fast.
concept_hash: padaek-jar-age-salt-ratio-fluke-safe-sell-date-ledger+champhone-xaibouly-xe-champhone-wetlands-savannakhet-laos+village-padaek-jar-makers-and-district-liver-fluke-health-officers
---

# HaiPadaek — Jar-Age Fluke-Safe Clock & Salt-Ratio Ledger for Village Padaek Makers in Champhone and Xaibouly, Savannakhet

## The Hook
- Every Lao kitchen in the Xe Champhone wetlands runs on padaek, and the same floodplain fish that fill the jars carry *Opisthorchis viverrini* — the liver fluke behind one of the world's highest cholangiocarcinoma (bile-duct cancer) burdens. Whether a jar is safe comes down to two numbers nobody writes down: **how much salt went in, and how many days ago**.
- HaiPadaek is a jar-lid sticker with a QR code and a two-tap LINE/WhatsApp-style bot. Weigh the fish, weigh the salt, snap the sticker. The bot tells the maker the salt ratio, starts a "fluke-safe sell date" clock and an Open-Meteo-adjusted "flavour-ready" estimate, and gives buyers at the market a scannable jar age. Under-salted, too-young padaek stops looking the same as properly aged jars.
- Funding is health money, not Stripe money. Lao liver-fluke control programmes, school-based "no raw fish" campaigns and NGOs (the Lao-Korea and Lao-Thai fluke projects, the Institut Pasteur du Laos network) need a village-level food-side measure. A dated, salt-verified jar register is the first one that costs under $1 per producer per year.

## Real Data Found
> Live data queried from real APIs during idea generation — not placeholders.

| Source | Data Point | Value | Queried |
|--------|-----------|-------|---------|
| Open-Meteo Forecast (16.42°N, 105.18°E, Champhone/Savannakhet) | Daily max temp, 11–20 Nov 2026 | 27.1°C on 11 Nov rising to 33.1°C on 18 Nov | 2026-11-14 |
| Open-Meteo Forecast | Daily min temp, same window | 16.7°C (11 Nov) → 23.9°C (16–18 Nov) | 2026-11-14 |
| Open-Meteo Forecast | Mean relative humidity, 11–20 Nov | 68–81% | 2026-11-14 |
| Open-Meteo Forecast | Daily precipitation, 11–20 Nov | 0.0–3.4 mm (dry-season onset) | 2026-11-14 |
| Open-Meteo Historical Archive | Monthly mean 2 m temperature, Nov 2025 → Oct 2026 | Coolest Jan 2026 **22.3°C** (daily low 18.1°C); hottest Apr 2026 **30.7°C** (daily high 33.8°C); Nov 2025 23.2°C; Oct 2026 27.6°C | 2026-11-14 |
| World Bank Open Data (Lao PDR) | Rural population, % of total | 59.7% (2025), 60.4% (2024), 61.2% (2023) | 2026-11-14 |
| World Bank Open Data (Lao PDR) | GDP per capita, current US$ | $2,324.76 (2025), $2,123.98 (2024), $2,066.95 (2023) | 2026-11-14 |
| ExchangeRate-API (open.er-api.com) | 1 LAK in THB / USD / VND | 0.001511 THB / 0.000045 USD / 1.148 VND (updated Sat 14 Nov 2026 00:02 UTC) | 2026-11-14 |
| USDA FoodData Central | Sodium in fish sauce (reference fermented-fish product) | 7,851 mg/100 g (FNDDS survey); 7,600–10,500 mg/100 g (branded) | 2026-11-14 |

The temperature archive shows the trap. Padaek made in late November (around 23°C mean) and padaek made in April (around 31°C) ferment at visibly different speeds. Warm-season jars *smell* ready in a few weeks, and makers judge readiness by smell. The fluke risk works on a different clock. Salt concentration and time in brine are what break down metacercariae; warmth is not. In the hot months, "smells ready" and "has sat long enough at enough salt" drift furthest apart, and that is also when cash-strapped makers sell fastest. The forecast's 9°C climb in daily highs in a single week (27.1 → 33.1°C) is the shoulder season where both clocks need tracking.

The money context is just as blunt. GDP per capita is about $2,325, so 1,000,000 LAK is about 1,511 THB or $45. A batch of 20 jars is several months of discretionary income for a wetland household. Nobody will hold stock longer without being told exactly *which* jar can go and when. The USDA sodium figures (7,600–10,500 mg/100 g for finished fish sauce) give a reference band that a salinity reading on mature padaek liquor can be sanity-checked against. That lets district health officers use a cheap refractometer, rather than a lab, to spot under-salted batches.

## The Problem

In Ban Nong Lam Chan on the edge of the Xe Champhone wetland, Mae Bounmy drained her paddy-side fish trap in early November and salted about 60 kg of tiny cyprinids into fourteen jars across three weekends. She doesn't weigh the salt — she "knows by hand." On 10 December a Mukdahan trader arrives wanting cheap padaek fast. The jars from the first weekend smell right and sell. The jars from the third weekend smell almost right in a warm spell, and they go too. Nobody has a record of which jar was which or how much salt each got. If one of those batches was short on salt, the fluke metacercariae in the fish may have survived. The trader's buyers will add it to papaya salad or jeow without cooking it.

The problem persists because padaek safety is invisible. The provincial health office runs stool-sampling and praziquantel campaigns and posters saying "don't eat raw fish," but padaek is not "raw fish" in anyone's mind. It is the condiment of national identity, and no one will be told to stop eating it. The scientific guidance (enough salt, and enough months before eating it uncooked) exists in papers and training slides. It never becomes something a maker can act on at the jar. There are no labels, no batch dates, and no way for a market buyer to tell a 3-week jar from a 6-month jar. Makers who do the right thing and age their jars properly get no price premium for it.

If nothing changes, the cycle that makes north-east Thailand and southern and central Laos a global hotspot for liver-fluke cholangiocarcinoma keeps running. That cancer is usually found late and kills within months of diagnosis. Treatment campaigns clear infections and people get reinfected through the next jar. A food-side intervention needs to be cheap, voluntary, pride-based ("my jars are dated and verified"), and work for women who sell padaek by the ladle with no smartphone storefront.

## Who Uses This

**Primary user:** Village padaek makers in Champhone, Xaibouly and Songkhone districts, Savannakhet. Mostly women. They make 10-40 jars per post-harvest season, sell at district markets and to cross-border Thai traders, and have a shared family Android phone running Facebook Messenger and WhatsApp. Most can read Lao but prefer voice notes and pictures.
**What they do now (and why it sucks):** They remember batch dates by festivals and judge readiness by smell. That works for flavour, tells them nothing about fluke safety, and fails worst in the hot season.
**When they pay:** They don't pay. The trigger to adopt is the village health volunteer (*aw sor bor*) handing out free dated lid stickers and a salt scoop at the October Boun Ok Phansa season, plus the first time a market buyer or Thai trader asks "is this one HaiPadaek-dated?" and pays 5,000 LAK more per bottle.

**Secondary user:** District Health Office liver-fluke focal points, village health volunteers, and NGO/academic fluke-control projects working in Savannakhet. **Why they care:** It gives them a register of every producing household's batch salt ratios and jar ages. That lets them target refractometer spot-checks and education at the specific under-salting makers, and the register is a measurable food-side indicator to put next to stool-survey prevalence in donor reports.

**Tertiary user:** Thai padaek/pla ra traders in Mukdahan and Nakhon Phanom who buy Lao village padaek. They want provenance labels, because Thai FDA scrutiny of pla ra is rising.

**Who definitely won't use this:** Industrial padaek/pla ra factories with their own HACCP and lab testing. Urban Vientiane consumers buying bottled brands. Anyone looking for a recipe app.

## Feature Set

### MVP — Week 1-3
- **Jar-lid QR stickers:** Pre-printed waterproof stickers, each with a unique short code (e.g., `CP-0417`), handed out by health volunteers. Scanning opens the jar's record; no app install.
- **Two-number batch log via chat bot:** The maker sends "fish 12 kg, salt 3 kg" by text, voice note (Lao speech → numbers), or a photo of the scale. The bot computes the salt-to-fish ratio and replies with a green, amber or red icon against the threshold set by the district health office (default 1:4 by weight, adjustable).
- **Fluke-safe sell-date clock:** Each jar gets a "safe to eat uncooked from" date, based on salt ratio band × minimum ageing days (defaults set by the health office, not by the app). The bot sends a reminder the day each jar crosses it.
- **Flavour-ready estimate from local temperature:** Open-Meteo daily temps for the village's coordinates feed a degree-day model that estimates when the jar will *taste* ready. The maker sees both dates side by side: "tastes ready ~12 Dec, fluke-safe from 2 Feb."
- **Buyer scan page:** Anyone scanning the lid QR sees jar age in days, a salt-ratio band icon and a "fluke-safe ✓ / not yet" badge, in Lao and Thai. No personal data.

### Version 2 — Month 2-3
- **Volunteer refractometer spot-check:** Health volunteers log a salinity reading (°Brix/% NaCl via a $15 refractometer) against any jar code. The record shows "verified" and flags makers whose stated salt doesn't match the measured brine.
- **Village production register for the District Health Office:** Dashboard of producing households, jars per season, % of jars at the green salt band, median age at sale, and under-salting hotspots on a map of wetland villages.
- **Hot-season early-sale warning:** When Open-Meteo forecasts a run of days above 32°C, makers get a voice note: "your jars will smell ready early; check the safe date before selling."

### Power User / Pro Features
- **Trader provenance export:** Mukdahan/Nakhon Phanom traders get a PDF/CSV manifest of jar codes, ages and verified salt for each consignment, to show Thai buyers or inspectors.
- **Research data export:** Anonymised batch-level salt × age × temperature data for academic fluke-control studies. This is the first village-scale dataset of how padaek is actually made.

## Technical Implementation

### Suggested Stack
**Chosen stack:** A WhatsApp Business / Facebook Messenger bot (both widely used in rural Savannakhet; LINE is less dominant in Laos than in Thailand), a static mobile-web scan page, and a small Supabase backend. Makers already live in chat apps, buyers only need a camera, and the health office needs a simple dashboard. A native app would be wrong here: nobody in this audience will install one.

### APIs & Data Sources
| API | Specific Endpoint | What It Returns | Refresh Rate | Auth | Cost |
|-----|------------------|-----------------|--------------|------|------|
| Open-Meteo Forecast | `https://api.open-meteo.com/v1/forecast?latitude=16.42&longitude=105.18&daily=temperature_2m_max,temperature_2m_min,relative_humidity_2m_mean,precipitation_sum&timezone=Asia/Bangkok&past_days=3&forecast_days=7` | Daily temp/humidity/rain per village coordinate for the degree-day flavour clock and hot-spell warnings | Daily | none | free |
| Open-Meteo Historical Archive | `https://archive-api.open-meteo.com/v1/archive?latitude=16.42&longitude=105.18&start_date=2025-11-01&end_date=2026-10-31&daily=temperature_2m_mean&timezone=Asia/Bangkok` | Past daily temperature to back-fill the degree-day clock for jars logged late | On demand | none | free |
| World Bank Open Data | `https://api.worldbank.org/v2/country/LA/indicator/SP.RUR.TOTL.ZS?format=json&mrv=3` and `NY.GDP.PCAP.CD` | Rural population share and income context for grant reporting | Annual | none | free |
| ExchangeRate-API | `https://open.er-api.com/v6/latest/LAK` | LAK→THB rate, so prices to Thai traders show in both currencies | Daily | none | free |
| USDA FoodData Central | `https://api.nal.usda.gov/fdc/v1/foods/search?query=fish%20sauce&api_key=DEMO_KEY` | Sodium reference values for fermented fish products, used to calibrate refractometer sanity bands | Static | key (free) | free |
| WhatsApp Cloud API / Messenger Platform | `https://graph.facebook.com/v20.0/{phone-number-id}/messages` | Send/receive bot messages, voice notes, images | Real-time | token | free tier (service conversations) |

### Database Schema (key tables only)
```
makers: id (uuid), village (text), district (text), lat (float), lon (float), chat_id (text), volunteer_id (uuid)
jars: code (text pk), maker_id (uuid), started_on (date), fish_kg (numeric), salt_kg (numeric), salt_ratio (numeric), band (text), safe_from (date), flavour_ready_est (date), sold_on (date null)
spot_checks: id (uuid), jar_code (text), volunteer_id (uuid), salinity_pct (numeric), checked_on (date), matches_declared (bool)
rules: district (text), band (text), min_ratio (numeric), min_age_days (int), set_by (text), effective_from (date)
weather_daily: lat_lon_key (text), day (date), t_mean (numeric), t_max (numeric)
```

### Key Technical Decisions
1. **Safety thresholds live in a `rules` table owned by the District Health Office, not in code:** The app must never claim its own food-safety science. Health officers set the salt bands and minimum ageing days from current Lao MoH guidance and the literature, and the app enforces whatever they set and records who set it.
2. **Voice-note and photo intake over forms:** Makers will say "pa sip song kilo, kluea sam kilo" faster than they'll type. Lao speech-to-number parsing with a confirmation reply ("12 kg fish, 3 kg salt, correct? 👍") avoids silent data-entry errors.
3. **Pre-printed stickers instead of generated QR codes:** Volunteers carry rolls of codes. Binding a code to a jar takes one scan in the chat, with no printer in the village.

### Hardest Technical Challenge
Honest data. A maker can tell the bot "3 kg salt" and actually use 1.5 kg. The fix is not technical surveillance. It is the V2 refractometer spot-check, done by a volunteer on a random sample, combined with the incentive that only verified jars show the green "fluke-safe ✓" badge buyers look for. The minimum ageing date is the other safeguard: even a stated-good salt ratio doesn't show safe until the jar has aged long enough. A second challenge is Lao speech recognition for numbers and local fish names. Start with a constrained vocabulary (numbers, kg, salt, rice bran, fish) and fall back to button replies.

## Monetization Strategy

> Note: Not every idea needs Stripe. Some are better as free tools, grant-funded, or sold B2G.

**Model chosen:** grant-funded (with a small trader-side fee later)

| Tier | Price | What's Included | Why They Pay This |
|------|-------|-----------------|-------------------|
| Free (makers) | $0 | Stickers, bot logging, sell-date reminders, buyer scan page | Makers never pay; the label raises the price their jars fetch |
| District programme | ~$3,000/district/season (grant) | Stickers, refractometers, volunteer training, dashboard, season report | Measurable food-side fluke-control indicator for donor and MoH reporting |
| Trader manifest | 20,000 LAK (~30 THB) per consignment manifest | Verified jar-age/salt manifest PDF for Thai buyers | Provenance for Thai buyers and inspectors; justifies a premium |

**Why someone pays:** The health office or NGO is already spending on praziquantel rounds and stool surveys that show reinfection the following year. HaiPadaek gives them something to show on the food side at about $1 per producing household per season.

**12-month revenue trajectory:**
- Month 3: 1 pilot district (Champhone) × ~$3,000 grant-funded season = $3,000 for the season (~200 makers, ~4,000 jars)
- Month 12: 4 districts (Champhone, Xaibouly, Songkhone, Outhoumphone) × $3,000 + ~60 trader manifests × ~$0.90 ≈ $12,050/season

**Alternative if SaaS doesn't work:** Fold it into an existing academic fluke-control study as the data-collection instrument (research grant line item). Or hand the open-source code to the Savannakhet Provincial Health Department with a one-off training contract.

## Marketing Strategy

**Exact communities to reach:**
- Savannakhet community Facebook groups such as "ສະຫວັນນະເຂດ ບ້ານເຮົາ" (Savannakhet Our Home), estimated 100k+ members, where market and food posts circulate
- Thai Isan pla ra seller and buyer groups on Facebook, e.g. "ปลาร้า ขายส่ง ทั่วไทย" style wholesale groups (estimated 50k–200k members each), where Mukdahan traders source Lao padaek
- Lao health-worker and public-health alumni groups (University of Health Sciences Vientiane alumni pages, estimated 10k–30k), and the Lao Tropical and Public Health Institute's Facebook page
- Village health volunteer WhatsApp groups run by each District Health Office: the actual distribution channel

**First 10 users and how you get them:**
Go through the Champhone District Health Office's liver-fluke focal point. Ask for the two wetland villages with the highest recent stool-survey prevalence. Sit with each village's health volunteer and the women's union (*Lao Women's Union*) representative during Boun Ok Phansa week, when salting starts. Hand out 20 stickers each to the first 10 makers who are salting that week, and log their first batch with them by voice note on the spot.

**The press angle:**
"The jar that smells ready isn't the jar that's safe: a Savannakhet village dated every padaek jar and found hot-season batches were being sold weeks before they were safe." Data story: the median age at sale of hot-season versus cool-season jars, from real village records.

**Content / SEO play:**
Public, anonymised season pages per district: jars logged, % in the green salt band, median age at sale, temperature curve. Lao/Thai/English explainers on "how long should padaek ferment" and "ປາແດກ ປອດໄພ" (safe padaek), queries that currently return nothing practical.

**Launch sequence:**
1. Before launch: Agree salt bands and minimum ageing days with the District Health Office and one fluke researcher, print 5,000 stickers, and train 10 volunteers.
2. Launch day: Boun Ok Phansa week in Champhone market. A stall with a refractometer demo ("bring a spoon of your padaek, we'll read the salt") and free stickers.
3. Week 1: Daily voice-note check-ins with the first makers, fixes to the speech parser, and the first trader scan at the Savannakhet–Mukdahan bridge market.

## Competitive Landscape

| Existing Solution | What They Do | Where They Fall Short | Why This Wins |
|-------------------|-------------|----------------------|---------------|
| Liver-fluke control campaigns (stool surveys + praziquantel) | Diagnose and treat infections | Treat after exposure; no food-side measure; reinfection next season | Works upstream at the jar, alongside existing campaigns |
| "Don't eat raw fish" health education posters | Behaviour messaging | Padaek isn't perceived as raw fish; messaging is generic | Specific, actionable, per-jar dates |
| Thai FDA pla ra standards (for factories) | Factory GMP and labelling | Doesn't reach Lao village producers | Built for 10-jar household makers |
| Nothing exists at village scale | — | — | First dated, salt-verified jar register |

**Moat:** Trust with the District Health Office and health volunteer network, plus a unique multi-season dataset of village padaek salt ratios, ages and temperatures that no researcher currently has.

## Risk Factors

1. **Regulatory / liability:** The app could be seen as certifying food safety → **Mitigation:** Thresholds are set and signed off by the health office in the `rules` table. The badge reads "aged & salt-checked per district guidance," not "certified safe." Every scan page includes a cooking recommendation.
2. **Adoption:** Makers may see stickers as government surveillance of a household trade → **Mitigation:** Distribute through the Lao Women's Union and volunteers rather than officials, keep maker identities off buyer pages, and lead with the price premium.
3. **Data:** Declared salt may be inflated → **Mitigation:** Random refractometer spot-checks, a "verified" badge only after a check, and a minimum ageing date regardless of declared salt.
4. **Science drift:** Guidance on safe salt/time combinations varies by study → **Mitigation:** Version the `rules` table, show the source and effective date, and let officers update it without a code change.

## Build Reality Check

| Phase | Realistic Timeline | What Exists at End |
|-------|-------------------|-------------------|
| Prototype | 3 weeks | Messenger/WhatsApp bot logs fish/salt by text and button, binds a sticker code, returns band and both dates; scan page live |
| Beta | 8 weeks | 2 villages, ~30 makers, ~400 jars logged; voice-note parsing; volunteer spot-checks |
| Launch | 16 weeks | Full Champhone district season, health-office dashboard, first trader manifests, season report for the grant |

**Solo founder feasibility:** Difficult. The software is simple, but it needs a Lao-speaking field partner and formal buy-in from the District Health Office before any maker will trust it.
**Biggest execution risk:** Getting the health office to own the thresholds publicly. Without their name on the rules, the badge has no authority and the app becomes a liability.

---
*Generated: 2026-11-14 | Industry: food_beverage | Sub-industry: fermented_foods | Geography: southeast_asia*
*APIs queried for real data: Open-Meteo Forecast, Open-Meteo Historical Archive, World Bank Open Data, ExchangeRate-API, USDA FoodData Central*

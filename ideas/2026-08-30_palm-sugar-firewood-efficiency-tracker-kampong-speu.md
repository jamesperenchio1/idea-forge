---
id: tnaotos-palm-sugar-firewood-tracker-kampong-speu-2026-08-30
title: TnaotOs — Firewood-Efficiency & Weather-Timed Boil Calculator for Kampong Speu Palm Sugar Boilers
created: 2026-08-30T08:02:04+07:00
industry: energy_utilities
sub_industry: biomass_sources
geography: cambodia
apis_used: Open-Meteo Forecast API, World Bank Open Data, ExchangeRate-API
monetization_model: hybrid
target_user: Women running household-scale sugar-palm syrup boiling operations in Kampong Speu Province, Cambodia — collect raw sap (tuk tnaot) from family-owned palm trees at dawn, then boil it for 4-6 hours nightly over open firewood fires from November to May to make skor tnaot (palm sugar), Cambodia's only Geographical Indication food product. Firewood is gathered from shrinking community forest plots or bought by the bundle when deadfall runs out.
concept_hash: palm-sugar-boiling-firewood-efficiency-weather-timing+kampong-speu-cambodia+household-scale-palm-sugar-boilers
---

# TnaotOs — Firewood-Efficiency & Weather-Timed Boil Calculator for Kampong Speu Palm Sugar Boilers

## The Hook
- Cambodia's only Geographical Indication food export — Kampong Speu palm sugar — is boiled over open wood fires by the same grandmothers who are running out of forest to cut it from: national forest cover dropped from 46.6% to 43.1% in just four years.
- Nobody boiling syrup tonight knows that humidity swinging from 56% at noon to 95% at 3am changes how long the pot needs to stay over the fire — and therefore how many bundles of increasingly expensive firewood get burned for the same batch of sugar.
- A rice-husk briquette costs more per kilo than scavenged wood, but burns hotter and longer — the math favors switching for most boilers, and almost none of them have ever seen the math laid out.

## Real Data Found
> Live data queried from real APIs during idea generation — not placeholders.

| Source | Data Point | Value | Queried |
|--------|-----------|-------|---------|
| Open-Meteo Forecast API | 7-day precipitation forecast, Kampong Speu (11.42°N, 104.52°E) | Ranges from 0.00mm (Aug 25) to 4.70mm (Aug 28); Aug 30 forecast shows 1.90mm | 2026-08-30 |
| Open-Meteo Forecast API | Hourly relative humidity, Kampong Speu, overnight vs midday | Climbs to 91-95% between 2am-5am (peak boiling hours) vs. 50-56% at midday — a ~40-point swing in the same 24 hours | 2026-08-30 |
| World Bank Open Data | Cambodia forest area (% of land area) | 43.06% in 2023, down from 46.59% in 2019 (indicator AG.LND.FRST.ZS) | 2026-08-30 |
| World Bank Open Data | Access to clean cooking fuels & technology (% of population) | 58% in 2023 (indicator EG.CFT.ACCS.ZS) — meaning ~42% of Cambodia's ~17 million people, over 7 million, still cook primarily on solid biomass fuel | 2026-08-30 |
| ExchangeRate-API | USD → KHR spot rate | 1 USD = 4,043.85 KHR | 2026-08-30 |

Palm sugar is priced in USD-pegged terms by exporters and cooperatives (a kilo of export-grade skor tnaot trades around $2-3), but firewood and briquettes are bought in riel at the village market — so the real margin per batch depends on a currency conversion almost nobody boiling sugar actually does in their head. Layer on top of that the humidity swing: a boiler starting her fire at 2am (when humidity is near 95%) needs meaningfully longer over the flame to hit the same syrup viscosity than one who starts at dusk when humidity is still in the 60s — nobody has ever told her this changes her wood bill, because nobody has ever measured it for her specific village and put a number on it.

## The Problem

In Oral and Thpong districts of Kampong Speu, sugar-palm boiling is a nightly ritual: sap collected from 20-40 tapped trees at dawn is left to ferment slightly through the day, then boiled down over 4-6 hours starting in the evening or before dawn, stirred continuously by hand until it crystallizes into skor tnaot — the palm sugar that carries Cambodia's first (and so far only) Geographical Indication certification for a food product. The boiling happens over an open three-stone fire or a simple clay furnace, fed constantly with firewood, because there is no thermostat: too little heat and the syrup never crystallizes properly (spoiled batch, wasted sap); too much and it scorches (bitter, unsellable sugar). The boiler manages this entirely by eye, by smell, and by decades of inherited instinct about how long tonight's batch "should" take — an instinct built for a climate and a wood supply that are both now shifting under her.

The structural problem is that the two things she can't control — ambient humidity, which slows evaporation and forces longer boils, and firewood availability, which has been shrinking as Kampong Speu's community forests are cleared for cassava and rubber concessions — are exactly the two things that determine how much fuel she burns per batch. World Bank data confirms what every boiler already feels in her arms: national forest cover fell 3.5 percentage points between 2019 and 2023, meaning the walk to find deadfall gets longer every season, or the bundle bought at the village market gets pricier. Meanwhile, aid organizations (GIZ, SNV, and Cambodian agri-NGOs) have spent a decade promoting rice-husk briquettes and improved cookstoves as a fix, but adoption stays low — not because the economics are bad, but because nobody has translated "briquettes cost more per kilo" into "briquettes cost less per batch of sugar" in a way a boiler can act on before she lights tonight's fire.

If nothing changes, the trajectory is straightforward: forest cover keeps declining, firewood keeps getting more expensive and harder to find, and the households doing this work — almost entirely women, often the primary income-generators in their families during the November-May tapping season — either burn through savings buying wood, cut boiling time short (degrading the sugar that earns Kampong Speu its GI premium), or abandon the trade for wage labor, taking a centuries-old craft and a real export product with them.

## Who Uses This

**Primary user:** A woman in her 40s-60s in a village in Oral or Thpong district, Kampong Speu, who boils palm sugar from her family's 20-40 tapped trees most nights during the November-May season. She owns a basic Android phone shared with her household, has limited literacy in written Khmer script but speaks fluent Khmer, and relies on her adult son or daughter (who may work in Phnom Penh but calls or visits) to help her read anything text-heavy.

**What they do now (and why it sucks):** She judges boil time and fuel needs by memory and feel, buys or gathers whatever firewood is available regardless of price, and has no way to know in advance whether tonight's humidity means a longer, wood-hungrier boil — so bad nights get blamed on "the syrup" rather than the weather.

**When they pay:** Not directly — but when a briquette cooperative or NGO extension worker shows up in her village, she becomes a warm lead the moment the app has already shown her, in Khmer audio, that switching would save her real money this season.

**Secondary user:** Rice-husk and coconut-shell briquette micro-suppliers and agricultural cooperatives operating in Kampong Speu/Kampot, who currently rely on word-of-mouth and NGO-organized demo days to find buyers among boilers who don't know they exist.

**Why they care:** A ranked, opt-in directory of boilers who've already seen the fuel-switch math puts them in front of pre-qualified, motivated customers instead of cold villages.

**Who definitely won't use this:** Large commercial palm sugar processors with industrial boilers and diesel/electric heat sources — this is built for the open-fire, household-scale trade, not factory production.

## Feature Set

### MVP — Week 1-3
- **Tonight's Boil Score:** Pulls tomorrow-night's humidity/precipitation forecast for the user's district and gives a simple 1-5 icon (sun to rain cloud) indicating whether tonight will need a longer, wood-hungrier boil.
- **Firewood-to-Batch Calculator:** User taps in how many liters of sap she collected today (via large number buttons); app returns a rough recommended bundle count based on tonight's Boil Score.
- **Voice-note explanations:** Every score and number comes with a short Khmer audio clip explaining *why* — critical for low-literacy users.
- **Firewood Price Log:** Simple tap-to-log tool for recording what she paid per bundle at market this week, building a community price trend over the season.
- **Briquette vs. Firewood Comparison:** One screen showing cost-per-batch comparison between her logged firewood price and the nearest listed briquette supplier's price, adjusted for briquettes' longer burn time.

### Version 2 — Month 2-3
- **Batch Quality Log:** Track boil duration and outcome (good/scorched/undercooked) per batch to build a personalized boil-time model instead of a village-average one.
- **Cooperative Bulk-Buy Pool:** Lets 5-10 nearby boilers pool orders to a briquette supplier for a delivery-truck discount.
- **Community Forest Zone Map:** Shows which nearby forest parcels are within the commune's legally permitted deadfall-collection zone this season versus protected/restricted areas, sourced from local Community Forestry committee boundaries, to reduce accidental encroachment fines.

### Power User / Pro Features
- **Multi-Night Boiling Schedule Optimizer:** For boilers or small cooperatives managing sap from 50+ trees, suggests which nights to boil versus hold sap based on the 7-day humidity forecast, to concentrate boiling on lower-fuel-cost nights.
- **GI Export Batch Log:** Structured record-keeping (boil time, fuel type, yield) formatted for cooperatives applying for Kampong Speu GI export certification, which requires documented production methods.

## Technical Implementation

### Suggested Stack
Given the target user is a rural, often low-literacy, shared-smartphone user in a district with patchy but real mobile data coverage, this is not a native-app or complex-dashboard problem — it needs to live inside a platform she already opens daily. Cambodia's rural/older demographic skews heavily to Facebook and Facebook Messenger over any other app.

**Chosen stack:** A Facebook Messenger bot (Meta Send/Messenger Platform API) with a strict big-button, icon-first UI and pre-recorded Khmer voice-note replies — no free-text input required for the core flow — backed by a lightweight serverless function (Cloudflare Workers) that calls Open-Meteo on a daily cron and caches results per district, plus a small Postgres/Supabase table for user-logged firewood prices and briquette supplier listings. Chosen because it needs zero app-store install, works over a Messenger session that already exists on her phone, and supports native voice-note delivery.

### APIs & Data Sources
| API | Specific Endpoint | What It Returns | Refresh Rate | Auth | Cost |
|-----|------------------|-----------------|--------------|------|------|
| Open-Meteo Forecast API | `https://api.open-meteo.com/v1/forecast?latitude=11.4547&longitude=104.5209&hourly=relative_humidity_2m,precipitation&daily=precipitation_sum&timezone=Asia/Bangkok&forecast_days=7` | Hourly humidity and precipitation used to compute the nightly Boil Score | Daily (cron) | none | free |
| World Bank Open Data | `https://api.worldbank.org/v2/country/KH/indicator/AG.LND.FRST.ZS?format=json&mrv=5` + `EG.CFT.ACCS.ZS` | Annual forest cover % and clean-cooking-fuel access % — powers seasonal "why firewood is getting scarcer" context messages | Annual | none | free |
| ExchangeRate-API | `https://open.er-api.com/v6/latest/USD` | USD→KHR spot rate, used to convert USD-quoted export sugar prices into the riel firewood/briquette costs the user actually pays | Daily | none | free |

### Database Schema (key tables only)
```
users: phone_id (text), district (text), preferred_language_mode (enum: audio|text), created_at (timestamp)
firewood_price_logs: user_id (fk), price_per_bundle_khr (int), source (enum: gathered|purchased), logged_at (timestamp)
briquette_suppliers: name (text), district (text), price_per_kg_khr (int), contact_phone (text), verified (bool)
batch_logs: user_id (fk), sap_liters (float), boil_duration_minutes (int), fuel_type (enum: firewood|briquette), outcome (enum: good|scorched|undercooked), boiled_at (timestamp)
```

### Key Technical Decisions
1. **Messenger bot over a native app or PWA:** Zero install friction and native voice-note support matter more than UI flexibility for this user — she already has a Messenger habit; she does not have an app-browsing habit.
2. **District-level forecast caching, not per-user GPS:** Precise geolocation adds complexity and permission friction for negligible accuracy gain when boiling decisions operate at village/district granularity anyway.

### Hardest Technical Challenge
Getting a firewood-to-batch recommendation model that's actually accurate enough to trust, when boil time depends on furnace type, pot size, sap sugar concentration, and altitude-specific humidity — none of which Open-Meteo alone captures. Mitigation: launch the Boil Score as a directional signal ("tonight needs more wood than average," not a precise bundle count) and let the Batch Quality Log feature build a personalized correction factor per user over a season, rather than pretending day-one accuracy is possible.

## Monetization Strategy

> Note: Not every idea needs Stripe. This is a subsistence/smallholder user base with essentially no ability to pay a subscription.

**Model chosen:** hybrid — free to boiler households, funded by briquette-supplier referral fees and NGO/grant contracts.

| Tier | Price | What's Included | Why They Pay This |
|------|-------|-----------------|-------------------|
| Free (boilers) | $0 | Boil Score, firewood calculator, price log, briquette comparison | Acquisition — this is a subsistence user base; the product only works if adoption is free |
| Supplier Listing | $5/month or 10% referral fee on introduced sales | Verified badge, priority placement in Briquette vs. Firewood comparison screen | Direct, pre-qualified leads from villages they couldn't otherwise reach |
| NGO/Cooperative Data License | $200-500/season | Aggregated, anonymized firewood-scarcity and fuel-switch adoption data by commune | Feeds directly into GIZ/SNV clean-cookstove program targeting and Kampong Speu GI cooperative reporting |

**Why someone pays:** A briquette micro-supplier currently spends a full day and a tank of gas visiting a village to run a demo that reaches maybe 15 households; a referral from the app arrives pre-sold on the cost math, cutting their acquisition cost per customer dramatically.

**12-month revenue trajectory:**
- Month 3: ~3 briquette suppliers × $5/month + 1 small NGO pilot data license ($200) = ~$215/month
- Month 12: ~15 suppliers × $5/month + referral fees (~$150/month) + 2 NGO/cooperative data licenses (~$400/season, amortized ~$70/month) = ~$295/month

This will never be a venture-scale business on its own — it's a lean, single-developer-maintainable tool that stays alive on modest supplier and NGO revenue while delivering real household savings.

**Alternative if hybrid doesn't cover costs:** Full grant funding — this is a strong fit for GIZ Cambodia's rural energy programs, SNV's biodigester/cookstove initiatives, or the EU-funded Kampong Speu palm sugar GI value-chain project, any of which could fund it outright as an extension tool.

## Marketing Strategy

**Exact communities to reach:**
- Kampong Speu Palm Sugar Producer Cooperative networks (the GI-certification cooperatives already run farmer meetings during tapping season)
- Facebook groups for Cambodian rural livelihoods/agriculture extension, such as those run by CEDAC (Cambodian Center for Study and Development in Agriculture) which has active provincial pages
- Local commune Women's Affairs committees, which already convene women boilers for savings-group and health meetings

**First 10 users and how you get them:**
Partner with one Kampong Speu palm sugar cooperative's field coordinator (cooperatives already do seasonal farmer meetings for GI compliance) to demo the Messenger bot on a shared phone at a single meeting, then have the coordinator personally add the bot for the 10 women most engaged in that meeting — trust transfers from the coordinator, not from an ad.

**The press angle:**
"The women boiling Cambodia's only Geographical Indication sugar are running out of forest to cook it with — a free tool tells them, batch by batch, how much wood tonight's humidity will cost them."

**Content / SEO play:**
A public, no-login "Kampong Speu Firewood Price Tracker" webpage showing the season's crowd-sourced bundle prices by commune — genuinely useful to journalists and NGOs researching Cambodia's cooking-fuel transition, and a natural backlink target.

**Launch sequence:**
1. Pre-season (October, before tapping starts): record Khmer voice-note content and load one cooperative's district data.
2. Launch day: live demo at a cooperative's pre-season farmer meeting in Oral district.
3. Week 1: coordinator follows up by phone with the 10 initial households to confirm the bot is being used and fix any confusion.

## Competitive Landscape

| Existing Solution | What They Do | Where They Fall Short | Why This Wins |
|-------------------|-------------|----------------------|---------------|
| NGO cookstove demo days (GIZ, SNV) | In-person briquette/improved-stove promotion events | One-time, not repeated, no ongoing weather-linked guidance, doesn't reach every village every season | Persistent, free, reaches her every single boiling night rather than once a year |
| Word-of-mouth firewood pricing | Informal village chatter about who's selling wood at what price | No aggregation across villages, no trend visibility | Crowd-sourced log turns scattered gossip into a visible, useful trend |
| Nothing (weather-linked fuel planning) | — | Doesn't exist | First tool linking hyper-local humidity forecasts to a specific traditional cooking process |

**Moat:** The Batch Quality Log creates a data flywheel — the longer a boiler uses it, the more personalized (and more accurate) her fuel recommendations become, which is a switching cost no generic weather app or NGO pamphlet can replicate.

## Risk Factors

1. **Adoption — trust in an unfamiliar bot:** Rural users may distrust an automated Messenger bot giving them instructions about a craft they've done for decades. → **Mitigation:** Launch exclusively through trusted cooperative field coordinators, never cold outreach, and frame every message as a suggestion, not a command.
2. **Technical — forecast accuracy at village granularity:** Open-Meteo's model resolution may not capture microclimate differences between specific boiling huts. → **Mitigation:** Be explicit that the Boil Score is directional guidance, and let the personalized Batch Quality Log correct for local reality over a season.
3. **Market — genuinely thin monetization:** The core users can't pay, capping revenue potential regardless of usage scale. → **Mitigation:** Treat this explicitly as a grant/NGO-fundable tool from day one rather than forcing a consumer SaaS model that doesn't fit the population.

## Build Reality Check

| Phase | Realistic Timeline | What Exists at End |
|-------|-------------------|-------------------|
| Prototype | 3 weeks | Messenger bot delivering daily Boil Score + firewood calculator for one district, Khmer voice notes pre-recorded manually |
| Beta | 6 weeks | Firewood price log and briquette comparison live, tested with one cooperative's 10-15 households through a full boiling cycle |
| Launch | 10 weeks | Multi-district coverage, first paying briquette-supplier listing, one NGO conversation underway |

**Solo founder feasibility:** Difficult — the technical build is straightforward for a solo developer, but the on-the-ground trust-building through cooperative coordinators is the real bottleneck and requires either existing Cambodia NGO relationships or a local partner.
**Biggest execution risk:** Without a warm introduction through an existing cooperative or NGO, this tool has no credible path to its first real users — cold Messenger outreach to rural Khmer households will not work.

---
*Generated: 2026-08-30 | Industry: energy_utilities | Sub-industry: biomass_sources | Geography: cambodia*
*APIs queried for real data: Open-Meteo Forecast API, World Bank Open Data, ExchangeRate-API*

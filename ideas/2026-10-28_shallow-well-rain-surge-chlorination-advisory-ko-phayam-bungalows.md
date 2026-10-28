---
id: bornam-ko-phayam-2026-10-28
title: BorNam Phayam — Heavy-Rain Shallow-Well Chlorination Clock & Guest Water Advisory for Ko Phayam Bungalow Owners and Village Health Volunteers
created: 2026-10-28T15:05:00+07:00
industry: health_medical
sub_industry: water_safety
geography: thailand
apis_used: Open-Meteo Forecast API, ExchangeRate-API
monetization_model: grant-funded
target_user: Family bungalow owners (8-20 rooms) on Ko Phayam, Ranong Province, who have no piped mainland water, draw guest and kitchen water from a hand-dug shallow well or a ferro-cement rain tank, and sell breakfast, ice and "free refill" drinking water to backpackers and European long-stayers; plus the Or Sor Mor (village health volunteers) of Moo 3 Ko Phayam who are asked "is the water ok?" every time it rains for days
concept_hash: heavy-rain-shallow-well-chlorination-clock-and-guest-water-advisory+ko-phayam-kampuan-ranong-andaman-thailand+island-bungalow-owners-and-village-health-volunteers-on-well-and-rain-tank-water
---

# BorNam Phayam — Heavy-Rain Shallow-Well Chlorination Clock & Guest Water Advisory for Ko Phayam Bungalow Owners and Village Health Volunteers

## The Hook
- Ko Phayam has no bridge, no piped water and no big clinic. When it rains 23 mm in one day on top of a week of rain, every hand-dug well on the island is being flushed with whatever sits upslope, including septic soak-pits. Nobody tells the bungalow owner to shock-chlorinate. The first sign is a guest with diarrhoea.
- BorNam turns the rain forecast plus the owner's own well log (depth, distance to the nearest soak-pit, last chlorination) into one LINE message: "Shock-chlorinate tonight, hold ice-making 48 h, give guests boiled or bottled water only until Friday."
- Free to owners, funded by the sub-district health fund. A tropical-medicine clinic on Phuket and the hotel association can sponsor it.

## Real Data Found
> Live data queried from real APIs during idea generation — not placeholders.

| Source | Data Point | Value | Queried |
|--------|-----------|-------|---------|
| Open-Meteo Forecast API (9.73N, 98.28E, Ko Phayam) | Daily rain 21–28 Oct (past 7 days + today) | 4.9, 9.9, 2.4, 11.1, 2.2, 12.0, 15.1, 23.3 mm — 80.9 mm total in 8 days | 2026-10-28 |
| Open-Meteo Forecast API | Rain-hours on 28 Oct | 24 of 24 hours wet; 23.3 mm | 2026-10-28 |
| Open-Meteo Forecast API | Next 4 days | 9.6, 7.7, 3.1, 1.7 mm (29 Oct–1 Nov) | 2026-10-28 |
| Open-Meteo Forecast API (Khao Lak, 8.35N, 98.28E) | Mainland comparison, 28 Oct | 62.3 mm — 2.7x the island figure on the same day | 2026-10-28 |
| ExchangeRate-API | THB to USD / EUR | 1 THB = 0.02961 USD = 0.02658 EUR | 2026-10-28 |

Every one of the last eight days was wet, and the rain is accelerating: the three days before today totalled 29.4 mm and today alone is 23.3 mm. Rain falling on already saturated ground is what pushes surface runoff through shallow soil into wells. The hourly feed shows rain in all 24 hours today, so there is no dry gap for the ground to drain. The forecast only eases to 1.7 mm by 1 Nov, so any contamination pulse from today is still moving through the aquifer for days afterwards.

The mainland coast 60+ km south got nearly three times the island's rain on the same day. A mainland forecast or a Bangkok weather app therefore misjudges the island's exposure in both directions, which is why a point forecast at the island's own coordinates matters.

## The Problem
On the evening of a 23 mm all-day downpour at the end of a week of rain, a bungalow owner on Ko Phayam fills the 200-litre "drinking water" jar for guests from the same hand-dug well she used last month. The well is 4 m deep, 12 m from the bungalow soak-pit, and has not been chlorinated since the owner's cousin did it in the dry season. The water looks fine, because contamination that makes people ill is usually clear. Three guests report stomach trouble two days later and the island's only reliable review channel, a travel forum, says "don't drink the tap water".

The structural gap: Thai rural water guidance is written for piped village systems and mainland tambon health offices. Island bungalows run on private wells and rain tanks that nobody tests. The volunteers (Or Sor Mor) know the advice (boil it, chlorinate it) but have no way to know when the risk window opens, so advice is given late or never. Test kits are expensive and slow on an island, and a ferry run to Ranong town for a lab test takes a day. Owners fall back on "it looks clear" and bottled-water pricing wars with the island shop.

If nothing changes, rainy-season gastro outbreaks keep hitting the guests who matter most to the island's reputation, and the bungalow gets a one-star review that outlasts the stomach bug by years. The owners most exposed are the small family places with no budget for a filtration plant.

## Who Uses This
**Primary user:** Khun Noi-type bungalow owner on Ko Phayam, Moo 3 (Kampuan sub-district, Ranong). 12 rooms, ~THB 600-1,200/night, one shallow well plus a rain tank, LINE on the phone, English only through Google Translate. Peak October-April; the rainy season is the low season with fewer guests but the long-stayers drink the most water.
**What they do now (and why it sucks):** Smell and look at the water, boil for guests "if remembered", buy 20 L bottled water when the island shop has stock, which in rain means the ferry is not running either.
**When they pay:** They don't need to pay. The trigger to adopt is the first guest illness or a visit from the sub-district health officer.

**Secondary user:** Or Sor Mor volunteers and the Kampuan sub-district health promoting hospital (Ror Sor Sor Tor Bor). **Why they care:** one dashboard shows which wells are on "advisory" so they can walk the islands' paths in the right order instead of everyone at once.

**Who definitely won't use this:** Resorts with their own treatment plant, and mainland hotels on municipal piped water.

## Feature Set

### MVP — Week 1-3
- **Rain-surge clock:** pulls the Open-Meteo forecast for the island's coordinates; flags "advisory" when 3-day rain exceeds 30 mm, or 7-day exceeds 60 mm, with the thresholds adjustable per well depth.
- **Well card:** owner enters depth, distance to nearest septic/soak-pit, cover type, last chlorination date via a 6-question LINE rich menu.
- **Advisory message in Thai and English:** one plain message — what to do tonight (shock-chlorinate, boil, stop ice), how long, with a guest-facing sign text to print.
- **Chlorination dose helper:** dose by well volume using common Thai bleaching powder (calcium hypochlorite 60-65%) and a 30-minute contact reminder.
- **Rain-tank first-flush reminder:** after a dry spell followed by rain, remind to divert the first flush.

### Version 2 — Month 2-3
- **Volunteer walk list:** ranks wells by risk (shallow + close soak-pit + heavy rain) for the Or Sor Mor to visit.
- **Guest illness log:** anonymous count of stomach-upset reports per bungalow, used to learn which wells have trouble.
- **Pocket test photo log:** photo the colour of a cheap H2S vial test and attach to the well card.

### Power User / Pro Features
- **Tambon health office export:** monthly CSV of advisories issued and illness counts.
- **Multi-island mode:** Ko Chang (Ranong), Ko Kam, Ko Surin settlement villages.

## Technical Implementation

### Suggested Stack
**Chosen stack:** LINE Official Account bot (Messaging API) on a small Cloudflare Worker plus a D1 database. Owners and volunteers already use LINE, rural data is patchy, and a message beats an app install.

### APIs & Data Sources
| API | Specific Endpoint | What It Returns | Refresh Rate | Auth | Cost |
|-----|------------------|-----------------|--------------|------|------|
| Open-Meteo Forecast | `https://api.open-meteo.com/v1/forecast?latitude=9.73&longitude=98.28&daily=precipitation_sum,precipitation_hours&past_days=7&forecast_days=5&timezone=Asia/Bangkok` | Daily rain mm and wet hours, past and future | hourly | none | free |
| ExchangeRate-API | `https://open.er-api.com/v6/latest/THB` | THB to USD/EUR for English-language cost notes | daily | none | free |

### Database Schema (key tables only)
```
well: id (uuid), owner_line_id (text), depth_m (numeric), soakpit_distance_m (numeric), cover (text), last_chlorinated (date)
advisory: id (uuid), well_id (uuid), issued_at (timestamptz), rain_3d_mm (numeric), rain_7d_mm (numeric), level (text)
illness_report: id (uuid), well_id (uuid), reported_at (timestamptz), cases (int)
```

### Key Technical Decisions
1. **Rain thresholds as adjustable defaults, not claims of science:** 30 mm/3 days and 60 mm/7 days are conservative starting points that a public-health adviser must validate.
2. **Advice only, never "safe":** the bot never says the water is safe; it only says when the risk window is open.

### Hardest Technical Challenge
Turning a rain forecast into an honest risk call without well-water test data. Mitigation: start with advisory-only semantics, collect volunteer test results and illness logs, and recalibrate thresholds with a public-health partner after one rainy season.

## Monetization Strategy

> Not a SaaS fit: the users are small family bungalows with thin rainy-season income.

**Model chosen:** grant-funded

| Tier | Price | What's Included | Why They Pay This |
|------|-------|-----------------|-------------------|
| Free | $0 | Advisory messages, dose helper, printable guest sign | Adoption by every bungalow |
| Island sponsor | ~$15/mo (about THB 500) | Logo on advisory sign, listed as sponsor | Dive shop / ferry boat / water-bottle seller visibility |
| Agency | grant | Dashboard, CSV export | Sub-district health fund pays for volunteer tooling |

**Why someone pays:** a sponsor wants to be the name guests see on the "water advisory" card; a health fund wants rainy-season outbreaks reduced.

**12-month revenue trajectory:**
- Month 3: ~4 sponsors × $15 = $60/month
- Month 12: ~10 sponsors × $15 + one small tambon grant (~$150/month) = ~$300/month

**Alternative if SaaS doesn't work:** university public-health student project, WHO/UNICEF small-grant or Thai Health Promotion Foundation (ThaiHealth) micro-grant.

## Marketing Strategy

**Exact communities to reach:**
- Facebook groups for Ko Phayam accommodation owners and island community chats (member counts unverified — confirm before outreach)
- Ranong provincial health office / Or Sor Mor LINE groups, reached through the Kampuan health promoting hospital
- Ko Phayam traveller threads on Thorn Tree and the "Koh Phayam" Facebook pages (member counts unverified)

**First 10 users and how you get them:**
Walk the main Ao Khao Kwai and Aow Yai bungalow strip and the Moo 3 shops with a QR sticker, and sign up ten owners in person after a rain day, when the problem is fresh.

**The press angle:**
"Eight wet days, 80.9 mm of rain and no one tested the wells: how a LINE bot warns an island of bungalows before the stomach bug."

**Content / SEO play:** a bilingual "Is the water on Ko Phayam safe to drink in the rainy season?" explainer for travellers, with the advisory status for the week.

**Launch sequence:**
1. Pilot with 5 bungalows and 3 volunteers for one rainy season.
2. Launch with the sub-district health office's endorsement and printed signs.
3. Week 1: publish the first advisory log to the island Facebook groups.

## Competitive Landscape

| Existing Solution | What They Do | Where They Fall Short | Why This Wins |
|-------------------|-------------|----------------------|---------------|
| Weather apps | Show rain | No translation into well action | Converts rain into a clear step |
| Lab testing in Ranong town | Accurate coliform results | Day trip, slow, rarely done | Free and immediate, works between tests |
| Bottled water | Safe supply | Cost, plastic waste, ferry-dependent | Targets only the risk days |

**Moat:** the local well register plus the illness log, and the health-office relationship.

## Risk Factors

1. **Regulatory/Health:** Advice might be treated as medical guidance → **Mitigation:** health-office review of every message template; always show "boil or bottled" fallback.
2. **Data:** Rain-only trigger may over- or under-warn → **Mitigation:** adjustable thresholds and a feedback loop.
3. **Adoption:** Owners ignore advisories in the low season → **Mitigation:** sponsors and sub-district visits make the sign a norm.

## Build Reality Check

| Phase | Realistic Timeline | What Exists at End |
|-------|-------------------|-------------------|
| Prototype | 2 weeks | LINE bot sends rain-surge advisory for one test well |
| Beta | 6 weeks | 5-10 bungalows and volunteers with real well cards |
| Launch | 12 weeks | Island-wide with health-office endorsement |

**Solo founder feasibility:** Yes — the stack is tiny; the hard part is the public-health review.
**Biggest execution risk:** getting public-health sign-off on the thresholds and wording.

---
*Generated: 2026-10-28 | Industry: health_medical | Sub-industry: water_safety | Geography: thailand*
*APIs queried for real data: Open-Meteo Forecast API, ExchangeRate-API*

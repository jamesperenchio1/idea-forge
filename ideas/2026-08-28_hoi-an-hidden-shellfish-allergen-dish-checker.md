---
id: hidden-shellfish-allergen-checker-hoi-an-2026-08-28
title: MắmDò — Hidden Shellfish-Paste Allergen Checker for Shellfish-Allergic Western Retirees in Hội An
created: 2026-08-28T08:03:08+07:00
industry: food_beverage
sub_industry: food_allergen_alerts
geography: vietnam
apis_used: openFDA Food Enforcement API, World Bank Open Data, OpenStreetMap Overpass API
monetization_model: freemium
target_user: Western retirees and long-stay digital nomads (temporary residence card holders) with a diagnosed shellfish/crustacean allergy, living in Hội An's Cẩm Châu and Cẩm Phô wards, who eat daily at unlicensed family-run quán ăn and street carts where mắm tôm (fermented shrimp paste), mắm ruốc (fermented krill paste), and mắm nêm (fermented fish/shrimp dipping sauce) are used as invisible flavor bases in dishes that look vegetable-only or fish-only on the menu
concept_hash: hidden-shellfish-allergen-detection+hoi-an-da-nang-vietnam+western-retirees-with-shellfish-allergy
---

# MắmDò — Hidden Shellfish-Paste Allergen Checker for Shellfish-Allergic Western Retirees in Hội An

## The Hook
- Hội An's two signature dishes — Cao Lầu and Mì Quảng — plus the city's ubiquitous rau muống xào (stir-fried morning glory) and bún đậu dipping sauce all commonly use mắm tôm, mắm ruốc, or dried shrimp as a base seasoning that never appears translated on an English menu, because Vietnamese cooks don't think of it as "an ingredient" — it's just how the dish tastes right.
- Vietnam pulled in 18,009,000 international arrivals in 2019 (World Bank, most recent full pre-pandemic year) and long-stay Western retirees are a fast-growing slice of that — yet there is no allergen-declaration requirement at any of the thousands of informal food stalls they eat at daily.
- The fix isn't a translation app — Google Translate correctly renders "mắm tôm" as "shrimp paste," but only if the allergic diner knows to ask the specific question in the first place, in a kitchen with zero written ingredient list.

## Real Data Found
> Live data queried from real APIs during idea generation — not placeholders.

| Source | Data Point | Value | Queried |
|--------|-----------|-------|---------|
| openFDA Food Enforcement API | Total US food recall records where `reason_for_recall` mentions "shrimp" | 141 records | 2026-08-28 |
| openFDA Food Enforcement API | Total US food recall records where `reason_for_recall` mentions "shellfish" | 99 records | 2026-08-28 |
| World Bank Open Data (ST.INT.ARVL) | International tourist arrivals, Vietnam, 2019 (last pre-pandemic full year) | 18,009,000 arrivals | 2026-08-28 |
| OpenStreetMap Overpass API | Hospitals + pharmacies + clinics tagged inside Hội An's core bounding box (15.85–15.92°N, 108.28–108.36°E) | 26 total nodes, only 2 tagged `amenity=hospital` | 2026-08-28 |

The openFDA numbers aren't about Vietnam directly — they're the control group. Even in the US, with mandatory allergen labeling on every packaged product, shrimp/shellfish still slip into 141 and 99 recalled products respectively because manufacturers under-disclose cross-contact and derivative ingredients (sulfites processed alongside shrimp, "seafood flavoring" that's actually shrimp powder). If that's the failure rate *with* a legal labeling requirement and a factory paper trail, the real number for a Hội An back-alley quán ăn with no label, no ingredient list, and a recipe passed down orally is unknowable — which is exactly the gap this app is built to patch with direct, specific, pre-translated questions instead of hoping a menu discloses anything. Meanwhile the emergency-care picture is thin: only 2 OSM-tagged hospitals inside the entire Hội An old town + surrounding ward bounding box, so a severe reaction means knowing in advance which of the 26 pharmacy/clinic nodes is closest and which pharmacies actually stock an adrenaline autoinjector or ampoule — something OSM tags don't capture and nobody has crowdsourced yet.

## The Problem

It's a Tuesday lunch in Hội An's Cẩm Phô ward. A 68-year-old British retiree on a five-year Temporary Residence Card orders rau muống xào tỏi (garlic morning glory) at a family-run quán ăn because it's vegetables — the safest-looking thing on a menu with no English and no translated ingredient list. Twenty minutes later she's reaching for her adrenaline auto-injector, because the cook flash-fried the greens in oil that had mắm ruốc stirred through it earlier that morning, the way nearly every household in central Vietnam seasons stir-fried vegetables. Nothing on the plate looked like shellfish. Nothing on the menu mentioned it. The cook, if asked "is there shrimp?", would have correctly said no — because to her, mắm ruốc isn't shrimp, it's fish sauce's cousin, a pantry staple, not an allergen.

This happens because Vietnamese fermented condiments — mắm tôm (fermented whole shrimp paste), mắm ruốc (fermented krill/tiny-shrimp paste), and mắm nêm (fermented anchovy-and-shrimp dipping sauce) — are used as base seasoning the way salt is, stirred into oil, broths, and sauces long before the "dish" itself is assembled, and are never itemized because no one considers a base seasoning an "ingredient" worth mentioning. The workarounds long-stay foreigners currently use — asking "no shrimp?" in broken Vietnamese, relying on Google Translate's camera mode on a menu that's often just handwritten Vietnamese with no menu at all, or simply avoiding all Vietnamese food and eating at Western restaurants — either fail silently (the cook answers the wrong question) or defeat the entire point of retiring somewhere for the food and culture.

Without a tool that asks the *right*, ingredient-specific question in Vietnamese and flags which dishes structurally require these pastes, the pattern repeats: a reaction, an ER visit at one of the ward's two hospitals, a return to eating only at three "safe" Western cafés for months, and eventually an expat who tells every other Facebook group member to just avoid Vietnamese food entirely — shrinking both their quality of life and every local vendor's foreign customer base.

## Who Uses This

**Primary user:** Western retirees (British, Australian, American) aged 55+ on long-term visas/TRCs living in Hội An or Đà Nẵng with a doctor-diagnosed shellfish or crustacean allergy, eating out 5+ times a week at informal, non-touristy quán ăn because that's the point of living there, not tourist-menu restaurants.
**What they do now (and why it sucks):** They memorize a shrinking list of 3-4 "safe" restaurants recommended by other expats and eat almost nothing else, or they ask "no shrimp?" in English/broken Vietnamese and get a technically-true "no" because mắm ruốc isn't considered shrimp by the cook.
**When they pay:** After the first ER trip or a close call severe enough that their spouse or carer starts searching "shellfish allergy Vietnam app" that same night.

**Secondary user:** Long-stay digital nomads and volunteers (3-12 month stints) with the same allergy who don't yet have the 6 months of trial-and-error local knowledge that retirees eventually accumulate, and who move between Hội An, Đà Nẵng, and Nha Trang — needing the risk database to travel with them.

**Who definitely won't use this:** Short-stay tourists on a 3-day Hội An stopover (too little time to install anything, more likely to just eat at hotel-recommended restaurants) and anyone without a diagnosed allergy who's just "cautious" — the tool is calibrated for genuine anaphylaxis risk, not general pickiness.

## Feature Set

### MVP — Week 1-3
- **Dish Risk Index:** A curated database of ~150 dishes common in Hội An/Đà Nẵng, each scored Red/Yellow/Green for shellfish-paste likelihood (mắm tôm, mắm ruốc, mắm nêm, dried shrimp/tôm khô, ruốc floss), seeded with a local bilingual guide, not guessed.
- **Allergy Card Generator:** Auto-generates a printable/shareable card in Vietnamese naming the specific banned ingredients by their actual Vietnamese names — "xin đừng cho mắm tôm, mắm ruốc, mắm nêm, hoặc tôm khô" — instead of a useless generic "shellfish allergy" translation that has no meaning to a home cook.
- **Menu Photo Keyword Scanner:** User photographs a handwritten or printed menu; on-device OCR + a curated Vietnamese ingredient-name wordlist highlights any dish name containing a known risk term, no cloud translation API required.
- **Emergency Locator:** Nearest hospital/pharmacy/clinic pinned from OpenStreetMap Overpass data, with a crowdsourced flag for which pharmacies are confirmed to stock an adrenaline autoinjector or ampoule.
- **Community Flag Reports:** Users tag a specific stall or dish as "reaction happened here" or "confirmed safe here," building a live, location-pinned safety map others can check before ordering.

### Version 2 — Month 2-3
- **Vendor Certification Badge:** Stalls that commit to a disclosed protocol (separate frying oil, ingredient transparency on request) can display a printed QR badge linking to their verified profile.
- **Grab/Taxi Emergency Script:** One-tap generates a Vietnamese message for a ride-app driver explaining a severe allergic reaction is in progress and the nearest hospital to go to.
- **Multi-Allergen Expansion:** Same architecture extended to peanut (đậu phộng) and MSG (bột ngọt) sensitivity, the next two most-requested allergens in expat groups.

### Power User / Pro Features
- **Insurance-Ready Incident Export:** One-tap PDF with timestamp, GPS, dish photo, and the translated ingredient list, formatted for an expat health insurance claim.
- **Da Nang / Nha Trang Database Sync:** Pro users get the same risk index pre-loaded for other Vietnamese expat hubs before they travel there.

## Technical Implementation

### Suggested Stack
- Next.js + Supabase + Vercel — good for data-heavy web dashboards
- React Native + Expo — good for mobile-first, field use in rural/remote areas
- **PWA with offline support — critical for low-connectivity regions**
- Telegram/LINE bot — ideal when users already live in chat apps
- Static site + serverless functions — cheap, fast, good for public data portals

**Chosen stack:** A PWA (add-to-homescreen, no app store install) with aggressive service-worker caching of the dish database, phrasebook card, and hospital map — because Hội An's old town has notoriously patchy wifi, the primary users are 55+ retirees who are reluctant to install unfamiliar apps from an app store, and the core value (a printable card, a cached risk list) has to work with zero signal at the exact moment it's needed, at a restaurant table.

### APIs & Data Sources
| API | Specific Endpoint | What It Returns | Refresh Rate | Auth | Cost |
|-----|------------------|-----------------|--------------|------|------|
| openFDA Food Enforcement | `https://api.fda.gov/food/enforcement.json?search=reason_for_recall:shrimp` | Recall records where shrimp/shellfish derivatives were undeclared — powers an in-app "why this matters" education panel | Weekly | API key (free) | free |
| World Bank Open Data | `https://api.worldbank.org/v2/country/VN/indicator/ST.INT.ARVL?format=json&mrv=6` | Annual international tourist arrivals to Vietnam — sizes the exposed population for marketing/press | Yearly | none | free |
| OpenStreetMap Overpass API | `https://overpass-api.de/api/interpreter` with `node["amenity"~"hospital|pharmacy|clinic"]` bbox query | Hospital/pharmacy/clinic locations for the emergency locator | On-demand | none | free |

### Database Schema (key tables only)
```
dishes: id, name_vn (text), name_en (text), region (text), risk_level (enum: red/yellow/green), risky_ingredients (text[]), confidence_pct (int), notes (text)
vendors: id, name (text), lat (float), lng (float), dish_ids (int[]), certified_badge (bool), report_count (int)
reports: id, vendor_id (fk), dish_id (fk), user_id (fk), type (enum: reaction/confirmed_safe/confirmed_risky), photo_url (text), created_at (timestamp)
users: id, allergy_profile (text[]), home_language (text), device_id (text)
```

### Key Technical Decisions
1. **Client-side keyword matching instead of a cloud OCR/translation API:** Keeps the core scanner working offline, free at scale, and avoids routing photos of strangers' menus through a third-party AI service — a curated Vietnamese risk-ingredient wordlist covers the ~30 terms that actually matter far more reliably than general-purpose translation, which doesn't know that "mắm ruốc" is a shellfish derivative rather than just "a sauce."
2. **Probabilistic risk scores with time-decay, not binary safe/unsafe:** Because the same dish name is cooked differently stall-to-stall and even household-to-household (one family's mắm nêm is anchovy-only, another's includes shrimp), each dish/vendor pairing carries a confidence percentage built from community reports, and reports older than 12 months are weighted down since vendors change suppliers and recipes.

### Hardest Technical Challenge
Getting reliable, current ingredient truth out of informal family-run stalls that have no official ingredient list and no obligation to disclose one, especially across a language and trust barrier with an elderly foreign customer. Mitigation: seed the initial ~150 dish entries with a paid bilingual local guide doing structured kitchen interviews (not guesswork), default any unverified dish to Yellow ("ask directly, unconfirmed") rather than a false Green, and let the community reporting layer correct and refine the seed data over time rather than trying to be authoritative on day one.

## Monetization Strategy

> Note: Not every idea needs Stripe. Some are better as free tools, grant-funded, or sold B2G.

**Model chosen:** freemium

| Tier | Price | What's Included | Why They Pay This |
|------|-------|-----------------|-------------------|
| Free | $0 | Dish Risk Index lookup, basic Vietnamese phrasebook text, hospital locator | Acquisition — works the first time someone finds the app after a scare |
| Pro | $3/mo or $25/year | Offline-cached full database, personalized printable allergy card, menu photo scanner, push alerts on flagged stalls near you | Retirees living there year-round want it always working, offline, and personalized |
| Concierge (B2B) | $200/mo | API access to the vendor/dish dataset for relocation agencies and long-stay visa services to hand allergic clients a pre-loaded safety pack on arrival | Agencies differentiate their onboarding service and reduce liability exposure for clients with known conditions |

**Why someone pays:** Not "it's convenient" — it's the moment after a reaction (their own or hearing about one in the Facebook group) when the abstract risk becomes concrete and $25/year against a repeat ER visit is an easy yes.

**12-month revenue trajectory:**
- Month 3: ~40 Pro subscribers × $2/mo effective (mix of monthly/annual) = ~$80/month, plus 1 relocation-agency pilot at $200/mo = $280/month
- Month 12: ~220 Pro subscribers × $2/mo effective + 4 B2B agency contracts × $200/mo = ~$1,240/month

**Alternative if SaaS doesn't work:** Partner with a Hội An/Đà Nẵng expat-focused clinic (e.g. a Family Medical Practice branch) to sponsor the free tier as a patient-safety tool, or seek a small grant from an allergy-advocacy nonprofit (e.g. FARE-adjacent international affiliates) framing it as a travel-safety public good rather than a subscription product.

## Marketing Strategy

**Exact communities to reach:**
- "Danang & Hoi An Expats" Facebook group (~48,000 members) — the single largest hub for exactly this demographic
- "Hoi An International Community" Facebook group (~20,000+ members)
- r/expats and r/VietNam subreddits, where "shellfish allergy Vietnam" questions already surface periodically
- Zalo groups used by long-term Hội An residents for hyperlocal logistics (visa runs, housing) — post through a bilingual local contact since Zalo groups are trust-gated

**First 10 users and how you get them:**
Post directly in "Danang & Hoi An Expats" asking "anyone else here living with a shellfish allergy? I built a tool after a friend's scare" — this demographic actively discusses medical/safety topics in that group and self-identifies quickly. Simultaneously, hand printed allergy cards + a QR code to the PWA to the front desk of a known expat-serving clinic in Đà Nẵng, since anyone who's had a reaction has likely already been there once.

**The press angle:**
"Vietnam's Most Famous Noodle Dish Is a Hidden Minefield for the 2% of Foreigners With Shellfish Allergies — We Mapped Every Stall That Uses It" — a concrete, visual, checkable claim (the dish database) that a Vietnam-expat blog or a food-safety journalist can verify themselves.

**Content / SEO play:**
Public, indexable per-dish risk pages ("Does Cao Lầu contain shellfish?", "Is Mì Quảng safe for shellfish allergies?") — these are exact long-tail searches a worried traveler already types before a trip, and each page becomes a standalone landing page driving organic installs.

**Launch sequence:**
1. Seed the 150-dish database with the local bilingual guide before any public post.
2. Launch in "Danang & Hoi An Expats" with the ER-scare framing and a link to the free tier.
3. Follow up within a week with the per-dish SEO pages live and a direct outreach email to two Hội An-based visa/relocation agencies about the Concierge tier.

## Competitive Landscape

| Existing Solution | What They Do | Where They Fall Short | Why This Wins |
|-------------------|-------------|----------------------|---------------|
| Google Translate camera mode | Translates visible menu text word-for-word | Most Hội An quán ăn have no written menu at all, and even when translated, "mắm ruốc" reads as an unfamiliar sauce name, not a flagged allergen | Purpose-built risk flagging, not generic translation |
| AllergyEats / Fig (US/EU allergy dining apps) | Restaurant-level allergen filtering with declared ingredient lists | Built for restaurants with legally mandated ingredient disclosure — no coverage in Vietnam, no concept of undeclared base-seasoning pastes | Modeled specifically around undisclosed, orally-transmitted local recipes |
| Word-of-mouth "safe restaurant" lists in expat Facebook groups | Informal, crowdsourced restaurant recommendations | Static, not dish-specific, buried in old Facebook threads, no update mechanism | Structured, searchable, dish-level, and live-updating |

**Moat:** The seeded + community-verified dish/vendor database is expensive and slow for a generic competitor to replicate — it requires local trust, a bilingual kitchen-interview process, and an established base of expats willing to keep reporting. Once Hội An's ~150-dish index is genuinely accurate, it's the reference dataset the whole expat community defers to.

## Risk Factors

1. **Data risk:** Crowdsourced ingredient reports could be wrong, outdated, or contradictory across near-identical stalls → **Mitigation:** Probabilistic confidence scores with time-decay, default-to-Yellow for unverified dishes, and a locally-hired verifier doing periodic spot-checks on the highest-traffic entries.
2. **Adoption risk:** The addressable market — Western long-stay residents with a diagnosed shellfish allergy in one town — is genuinely tiny (likely low hundreds) → **Mitigation:** Reuse the same architecture to expand to Đà Nẵng, Nha Trang, and Phú Quốc quickly, and lean on B2B relocation/insurance revenue rather than consumer volume alone.
3. **Liability risk:** Giving safety-adjacent guidance that, if wrong, could contribute to a real anaphylactic event → **Mitigation:** Prominent disclaimers that the app supplements but never replaces asking the vendor directly, defaulting unverified dishes to a cautious rating, and sourcing the initial phrasebook wording with input from a licensed clinic rather than guessing translations.

## Build Reality Check

| Phase | Realistic Timeline | What Exists at End |
|-------|-------------------|-------------------|
| Prototype | 3 weeks | Static dish database (~150 entries), phrasebook card generator, OSM-based hospital finder — no login required |
| Beta | 6 weeks | PWA with offline caching, community reporting live, ~50 vendors mapped in Hội An old town |
| Launch | 10 weeks | Đà Nẵng expansion live, 2-3 B2B relocation-agency conversations underway |

**Solo founder feasibility:** Yes — this is primarily a data-curation and lightweight-PWA project with no heavy backend or ML dependency; the real work is the local kitchen-interview legwork, not the code.
**Biggest execution risk:** Getting truthful ingredient information out of informal vendors who don't think in terms of "ingredient disclosure" and may be wary of a foreigner asking pointed questions through a translator — this is a trust-building problem before it's a data problem.

---
*Generated: 2026-08-28 | Industry: food_beverage | Sub-industry: food_allergen_alerts | Geography: vietnam*
*APIs queried for real data: openFDA Food Enforcement API, World Bank Open Data, OpenStreetMap Overpass API*

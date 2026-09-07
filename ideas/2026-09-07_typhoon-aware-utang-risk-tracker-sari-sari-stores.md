---
id: sari-sari-store-typhoon-utang-risk-tracker-eastern-samar-2026-09-07
title: ListahAlerto — Typhoon-Aware Utang Risk Tracker for Eastern Samar Sari-Sari Store Owners
created: 2026-09-07T08:01:55+07:00
industry: finance_economics
sub_industry: informal_economy_mapping
geography: philippines
apis_used: Open-Meteo Forecast API, World Bank Open Data, ExchangeRate-API
monetization_model: hybrid
target_user: Sari-sari store owners (typically women aged 40-65, "Nanay" or "Manang") in coastal barangays of Borongan City and Guiuan, Eastern Samar, who run a one-room home store and keep a paper notebook ("listahan") tracking "utang" (store credit) extended to fisherfolk and coconut/abaca-farmer neighbors — credit that spikes right before a typhoon (panic-buying rice, canned goods, candles, kerosene) at the exact moment those same customers' income is about to stop for weeks.
concept_hash: typhoon-aware-informal-utang-credit-risk-tracker+eastern-samar-coastal-barangays-philippines+sari-sari-store-owners
---

# ListahAlerto — Typhoon-Aware Utang Risk Tracker for Eastern Samar Sari-Sari Store Owners

## The Hook
- Every sari-sari store in the Philippines is an unlicensed micro-bank — and in Eastern Samar, the country's most typhoon-battered province (Guiuan was Super Typhoon Haiyan's exact landfall point in 2013), that "bank" gets a run on it and a bad-debt crisis in the same week, every single typhoon season.
- Open-Meteo's own 7-day forecast for Borongan City right now shows rainfall climbing from 1.0mm to 12.0mm and wind gusts already hitting 45 km/h this week — the precise signal window when a store owner's utang requests spike, but nothing in her paper listahan tells her that.
- Nobody has ever paired hyperlocal storm forecasting with informal credit-ledger data — because the ledger has always lived in a spiral notebook, not a database.

## Real Data Found
> Live data queried from real APIs during idea generation — not placeholders.

| Source | Data Point | Value | Queried |
|--------|-----------|-------|---------|
| Open-Meteo Forecast API | 7-day rainfall & wind forecast, Borongan City, Eastern Samar (11.56°N, 125.44°E) | Rainfall rising 1.0mm → 12.0mm (Sep 7–10); wind gusts peaking at 45.0 km/h (Sep 6) and 42.5 km/h (Sep 7) | 2026-09-07 |
| World Bank Open Data | Philippines inflation, consumer prices (annual %) | 1.66% (2025), down sharply from 5.98% (2023) — restock costs stabilizing but still compounding on already-thin margins | 2026-09-07 |
| World Bank Open Data | Philippines poverty headcount ratio, national poverty lines | 15.5% of population (2023 est.) — and Eastern Samar consistently ranks among the provinces above the national rate | 2026-09-07 |
| ExchangeRate-API | PHP exchange value | 1 USD = 62.74 PHP (1 PHP = 0.01594 USD) — used to peg wholesale restock cost swings for imported goods (canned goods, instant noodles) stores rely on | 2026-09-07 |

The rainfall and gust numbers above aren't abstract — they sit inside PAGASA's own "Public Storm Warning Signal" escalation thresholds, the same signals that trigger pre-emptive evacuation and market panic-buying in coastal Eastern Visayas. A store owner watching her shelves empty on informal credit during that exact 3-4 day window has no tool that connects "wind gusts climbing" to "my outstanding utang is about to balloon while repayment stops." She's flying blind on both sides of the same trade.

## The Problem

In Barangay Buntay, a fishing village on the edge of Borongan City, Nanay Rosalinda runs a sari-sari store out of the front room of her house. Her ledger is a spiral notebook — one page per "suki" (regular customer), names crossed out and re-added over a decade, running balances in ballpoint pen. When PAGASA raises a signal for an approaching typhoon, her neighbors — fishermen who can't go to sea for a week, coconut farmers whose copra can't be collected until roads clear — come to stock up on rice, canned sardines, candles, and kerosene, almost always on utang, because that's the arrangement that's kept the village fed for generations. She extends the credit because refusing a longtime suki during an emergency is a social rupture, not just a bad debt decision. Then the storm hits, fishing and copra income stop for two to three weeks, and her own restocking capital — the same capital she needs to keep the shelves full for the next emergency — is tied up in unpaid utang she can't chase down.

This happens because the two halves of the problem have never been visible together. Weather forecasts exist (PAGASA, Open-Meteo) and informal credit exists (the listahan), but nothing connects them. Store owners manage this today by gut feel and inconsistent rationing — some tighten credit too early and lose suki loyalty built over years; others extend too generously out of guilt and run out of restocking cash right when the village needs the store most, right after the storm. Microfinance and rural banks that could theoretically smooth this over have zero visibility into sari-sari-level utang exposure — it's invisible, undocumented, village-level debt that never shows up in any formal credit bureau.

Left unsolved, this repeats every typhoon season (June–December, peaking September–November) in every coastal barangay across Eastern Visayas: stores either go under after a bad storm cycle (a real, recurring cause of sari-sari store closures reported anecdotally by DTI field officers), or store owners become more conservative with credit over time, quietly eroding the informal safety net that keeps subsistence fishing and farming households fed between disasters.

## Who Uses This

**Primary user:** Sari-sari store owners in coastal/typhoon-corridor barangays of Eastern Samar (starting with Borongan City and Guiuan) — women aged 40-65 running a home-based store as their family's primary or supplementary income, serving 20-60 regular "suki" households, with total outstanding utang typically running ₱5,000-₱30,000 at any time (roughly 10-40% of their working capital).

**What they do now (and why it sucks):** Paper listahan notebook, gut-feel credit decisions, no way to see storm timing against credit exposure until it's too late — and the notebook itself is one flood away from being destroyed along with the only record of who owes what.

**When they pay:** They don't — see Monetization. The trigger for the *paying* side is a rural bank or DTI field officer's pre-typhoon-season planning cycle (roughly May-June each year), when they realize they have zero visibility into how much informal credit risk is sitting in the barangays they serve.

**Secondary user:** DTI Negosyo Center field officers and rural bank/microfinance credit officers (e.g., branches of Eastern Samar-based rural banks, CARD Bank, ASA Philippines) who currently have no data source for informal, village-level credit exposure ahead of disaster season.
**Why they care:** Aggregated, anonymized barangay-level utang exposure data lets them target post-typhoon microloan relief and pre-season financial literacy outreach instead of guessing.

**Who definitely won't use this:** Urban sari-sari store owners in Metro Manila or other non-typhoon-corridor areas — their credit-risk driver isn't storm-linked, so the core value proposition (storm-aware credit ceiling) doesn't apply.

## Feature Set

### MVP — Week 1-3
- **Messenger utang logger:** Store owner logs a new credit entry (suki name, amount, item) via Facebook Messenger quick-replies — no app install, no new habit beyond a platform she already uses daily.
- **Running suki balances:** Type a customer's name to instantly see their current utang balance — replaces flipping through notebook pages.
- **Daily barangay storm-risk score:** Pulls Open-Meteo forecast (rainfall, wind gust) daily for her barangay and translates it into a plain-language risk level (Normal / Watch / Tighten Credit Now).
- **Utang ceiling calculator:** Simple formula — (current stock capital ÷ average days-to-restock) × safety margin — recalculated and pushed to her automatically when storm risk rises.
- **Storm-triggered nudge:** "Bagyo warning: possible typhoon in ~4 days for your area. Consider requiring partial cash payment on new utang for non-essential items." sent as a proactive Messenger push.

### Version 2 — Month 2-3
- **Barangay-level aggregation view:** For cooperative leads or rural bank officers — total community utang exposure across enrolled stores ahead of a storm, fully anonymized at the store level.
- **SMS fallback alerts:** Critical storm/credit nudges also sent via SMS for the days when data connectivity is down but cell signal for text still works.
- **Payday-clustered repayment tracking:** Ties expected repayment dates to known local market days and copra/fish buying-station schedules rather than generic due dates.
- **Photo-assisted ledger backfill:** Store owner photographs old paper listahan pages; a human-in-the-loop assist (not full OCR) helps digitize historical balances.

### Power User / Pro Features
- **Multi-barangay dashboard:** For DTI Negosyo Center or rural bank credit officers covering several barangays at once.
- **Storm-vs-repayment-delay export:** Historical dataset pairing storm severity with observed repayment delay, for microfinance risk modeling and disaster-relief targeting.

## Technical Implementation

### Suggested Stack
[Not fixed — chosen for this exact user: elderly, low-tech, low-connectivity, but near-universal Facebook usage.]

**Chosen stack:** Facebook Messenger bot (Meta Messenger Platform API + Node.js webhook) backed by Supabase/Postgres for ledger storage, with a daily cron pulling Open-Meteo forecast data per enrolled barangay. Messenger wins over a native app or PWA because store owners already use Facebook daily (including on cheap "FB-only" prepaid data promos common on Smart/Globe in rural Eastern Visayas), so there's zero install friction and zero new habit to build — the alert and the ledger arrive in the same app she already opens every day.

### APIs & Data Sources
| API | Specific Endpoint | What It Returns | Refresh Rate | Auth | Cost |
|-----|------------------|-----------------|--------------|------|------|
| Open-Meteo Forecast API | `https://api.open-meteo.com/v1/forecast?latitude={lat}&longitude={lon}&daily=precipitation_sum,windspeed_10m_max,windgusts_10m_max&timezone=Asia/Manila&forecast_days=7` | Daily rainfall sum and max wind/gust speed per barangay coordinate | Daily | none | free |
| World Bank Open Data | `https://api.worldbank.org/v2/country/PH/indicator/FP.CPI.TOTL.ZG?format=json&mrv=5` | Philippines annual inflation rate, for restock-cost-adjusted ceiling calculations | Annual | none | free |
| ExchangeRate-API | `https://open.er-api.com/v6/latest/PHP` | PHP value vs. USD, for tracking imported-goods wholesale cost swings | Daily | none | free |
| NASA EONET (optional, V2) | `https://eonet.gsfc.nasa.gov/api/v3/events?category=severeStorms&status=open` | Active tracked storm systems, cross-checked against PAGASA bulletins | Real-time | none | free |

### Database Schema (key tables only)
```
stores: id, owner_name, barangay, municipality, fb_psid, stock_capital_php, created_at
sukis: id, store_id, name, phone, total_utang_php, last_payment_date
utang_entries: id, suki_id, amount_php, item, entry_date, paid (boolean)
storm_risk_snapshots: id, barangay, forecast_date, rainfall_mm, wind_gust_kmh, risk_level
```

### Key Technical Decisions
1. **Messenger bot over native app/PWA:** Matches existing daily behavior and works within the "FB-only" cheap data promos that are the actual internet access mode for many rural Philippine users — an app install or full-browser PWA would lose most of the target audience before day one.
2. **Rule-based risk scoring over ML:** With sparse per-store transaction history, a transparent formula (wind gust + rainfall thresholds calibrated to PAGASA signal levels) is something a 55-year-old store owner can trust and question, unlike a black-box model — explainability matters more than marginal accuracy here.

### Hardest Technical Challenge
The tool is most needed exactly when it's least available: after a major typhoon, cell towers and data infrastructure in Eastern Samar routinely go down for days to weeks (as happened province-wide after Haiyan in 2013). Mitigation: the bot generates a weekly printable/exportable PDF snapshot of the digital ledger so the paper backup habit isn't fully abandoned, and critical alerts fail over to SMS (which survives longer than data connectivity) rather than relying on Messenger alone.

## Monetization Strategy

> Not every idea needs Stripe — the actual payer here is never the store owner.

**Model chosen:** hybrid — free for individual store owners, funded by B2B/grant-funded licensing of aggregated data to rural banks, DTI centers, and disaster-response NGOs.

| Tier | Price | What's Included | Why They Pay This |
|------|-------|-----------------|-------------------|
| Free (store owner) | $0 | Messenger ledger, storm alerts, utang ceiling calculator | Zero-friction adoption — this is the acquisition/data-collection layer |
| Cooperative/Rural Bank | ~$15/mo per barangay covered | Aggregated, anonymized barangay-level utang exposure dashboard | Pre-typhoon-season credit risk planning they currently have zero visibility into |
| NGO/Government Data License | $200-500/mo or grant-funded | Province-wide anonymized informal-credit exposure feed, storm-correlated | Targeting post-typhoon microloan relief and preparedness outreach with real data instead of guesswork |

**Why someone pays:** Not because the data is "valuable" in the abstract — because every May-June, before typhoon season starts, rural bank branches and DTI Negosyo Centers in Eastern Visayas run planning meetings with literally no visibility into village-level informal debt, which predicts a localized credit crunch after every major storm. That planning-meeting moment is the sale.

**12-month revenue trajectory:**
- Month 3: 0 paying orgs, ~150 stores onboarded free across 2 municipalities (data density building phase)
- Month 12: ~4 rural bank branches/DTI centers × $15/mo (~$60/mo) + 1 NGO data license (~$300/mo) = ~$360/month

**Alternative if SaaS doesn't work:** Fully grant-funded via DTI's Sari-Sari Store financing/livelihood programs, DSWD disaster-preparedness budgets, or an NGO active in Eastern Visayas resilience work (e.g., Plan International Philippines, Save the Children Philippines) sponsoring it outright as a livelihood-resilience tool.

## Marketing Strategy

**Exact communities to reach:**
- "Sari-Sari Store Owners Philippines" (Facebook group, est. 40,000+ members, nationwide but highly active regional posting)
- "Borongan City Ads and Announcements" and similar municipality-level buy-and-sell Facebook groups common across Eastern Samar towns (est. 10,000-15,000 members each)
- DTI Negosyo Center – Eastern Samar Facebook page followers (direct line to the field officers who personally know every store owner)
- PAGASA Eastern Visayas regional Facebook page (public storm bulletin followers — the exact audience already primed to care about storm timing)

**First 10 users and how you get them:**
Partner directly with one DTI Negosyo Center field officer in Borongan City who already runs periodic livelihood seminars for local micro-entrepreneurs — she personally introduces the Messenger bot to 10 sari-sari store owners she already has a trust relationship with, during a scheduled pre-typhoon-season (June) seminar.

**The press angle:**
"Sari-sari stores are the Philippines' invisible microfinance system — and typhoons bankrupt them twice." A data story built from anonymized, aggregated barangay data showing utang spiking right before a storm and repayment collapsing right after — pitched to Rappler's or Philippine Daily Inquirer's disaster-resilience beat, or PhilStar's Eastern Visayas regional desk.

**Content / SEO play:**
Public, weekly-updated "Barangay Typhoon-Utang Risk Index" pages — one per municipality across the Eastern Visayas typhoon corridor, ranking relative (anonymized, aggregated) informal-credit exposure risk — organic search bait for LGU disaster officers and journalists searching their municipality name plus "typhoon preparedness."

**Launch sequence:**
1. Pre-launch: pilot with 10 real stores in Borongan City through one DTI officer relationship, starting before typhoon season (May-June).
2. Launch day: Messenger bot goes live at a scheduled DTI livelihood seminar, officer does the in-person introduction.
3. Week 1: officer provides in-person troubleshooting support; first week of real utang-entry data used to calibrate the ceiling formula against actual store behavior.

## Competitive Landscape

| Existing Solution | What They Do | Where They Fall Short | Why This Wins |
|-------------------|-------------|----------------------|---------------|
| Paper listahan notebook | Universal, zero cost, deeply trusted | No risk forecasting, destroyed by the same floods/storms it needs to survive, no backup | Cloud-backed ledger survives the disaster it's tracking risk for |
| Generic PH sari-sari/POS bookkeeping apps | Basic sales and inventory tracking | None model typhoon-linked credit risk; most assume steady data and dedicated hardware | Purpose-built for utang risk tied to weather, runs entirely inside Messenger |
| PAGASA storm bulletins | Authoritative, official typhoon warnings | Generic — doesn't translate to "tighten credit today" for a specific store's exposure | Converts a raw weather bulletin into one specific, actionable credit decision |

**Moat:** A barangay-level dataset pairing storm severity with actual utang-repayment delay, accumulated over 2-3 typhoon seasons, doesn't exist anywhere today — no weather app or POS tool has ever collected this pairing. It compounds in value for microfinance risk modeling the longer it runs, and the trust built through the DTI/rural-bank relationship layer is slow for an outside competitor to replicate.

## Risk Factors

1. **Adoption:** Elderly store owners may see digitizing "who owes what" as a social risk — a suki finding out their debt is "in a computer" could feel like public shaming. → **Mitigation:** Strict per-store privacy (ledger visible only to the store owner, never named individuals in any aggregate report); lead with the free, immediately-useful storm alert feature before introducing the ledger at all.
2. **Technical/Connectivity:** Post-typhoon communications blackouts hit exactly when the tool is most needed. → **Mitigation:** Weekly printable PDF ledger backup, SMS fallback for critical alerts only, local caching of last-known balances.
3. **Data/Regulatory:** Storm-linked informal credit data edges toward informal credit-scoring, which could be misused to deny people credit if handled carelessly. → **Mitigation:** Only aggregate, anonymized data ever leaves the individual store level — no individual customer utang score is ever sold or shared externally.

## Build Reality Check

| Phase | Realistic Timeline | What Exists at End |
|-------|-------------------|-------------------|
| Prototype | 3 weeks | Messenger bot logs utang entries and pulls daily weather risk for one barangay; tested manually with 2-3 real store owners |
| Beta | 8 weeks | 10-15 stores onboarded across Borongan City; utang ceiling formula calibrated against at least one real storm event |
| Launch | 16 weeks | One DTI Negosyo Center or rural bank branch onboarded as a paying data-license pilot |

**Solo founder feasibility:** Difficult — the Messenger bot and weather-pull logic are technically simple, but the real work is in-person trust-building with a skeptical, low-tech rural user base, which a remote solo developer can't shortcut.
**Biggest execution risk:** Convincing cautious, elderly sari-sari store owners to digitize something as socially sensitive as their neighbors' debts — the trust barrier, not the technology, is what kills this.

---
*Generated: 2026-09-07 | Industry: finance_economics | Sub-industry: informal_economy_mapping | Geography: philippines*
*APIs queried for real data: Open-Meteo Forecast API, World Bank Open Data, ExchangeRate-API*

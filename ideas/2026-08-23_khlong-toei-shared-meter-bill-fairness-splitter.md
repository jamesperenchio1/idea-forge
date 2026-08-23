---
id: fai-ruam-khlong-toei-2026-08-23
title: FaiRuam — Shared-Meter Electricity Bill Fairness Splitter for Khlong Toei Subdivided-Housing Sub-Tenants
created: 2026-08-23T08:02:13+07:00
industry: energy_utilities
sub_industry: electricity_theft
geography: thailand
apis_used: Open-Meteo Forecast API, World Bank Open Data
monetization_model: free
target_user: Sub-tenants renting one room in a subdivided wooden/tin row house in Khlong Toei, Bangkok — 4 to 8 households sharing a single landlord-held MEA (Metropolitan Electricity Authority) meter because none of them hold the house registration document (ทะเบียนบ้าน) needed to open an individual account, currently billed a flat per-door share of the total bill regardless of who actually runs a window AC unit versus who owns only a fan
concept_hash: shared-meter-electricity-bill-fairness-splitter+khlong-toei-bangkok-thailand+subdivided-housing-sub-tenants
---

# FaiRuam — Shared-Meter Electricity Bill Fairness Splitter for Khlong Toei Subdivided-Housing Sub-Tenants

## The Hook
- In Bangkok's biggest slum, 6 families can share one electric meter and get charged the exact same amount whether they run a window AC unit 10 hours a day or nothing but a single lightbulb — because splitting a shared MEA bill "per door" is the only method anyone's ever shown them.
- Open-Meteo shows Bangkok hit a 35.4°C apparent temperature at 3pm today (2026-08-23) — the exact kind of afternoon that turns one unit's AC into everyone else's bill spike, and nobody in the building can prove it.
- The landlord marks up the per-unit rate on top of MEA's real tariff and nobody can check the math — a WhatsApp-simple LINE bot that turns self-reported appliance-hours into a fair, defensible split could end the monthly shouting match for free.

## Real Data Found
> Live data queried from real APIs during idea generation — not placeholders.

| Source | Data Point | Value | Queried |
|--------|-----------|-------|---------|
| Open-Meteo Forecast API | Bangkok (Khlong Toei, 13.7058°N 100.5661°E) peak apparent temperature, 2026-08-23 15:00 local | 35.4°C (actual air temp 30.4°C, relative humidity 70%) | 2026-08-23 |
| Open-Meteo Forecast API | Max apparent temperature across 3-day forecast window (past_days=1, forecast_days=3) | 36.3°C | 2026-08-23 |
| World Bank Open Data | Thailand access to electricity (% of population), indicator EG.ELC.ACCS.ZS | 100% (2024) | 2026-08-23 |
| World Bank Open Data | Thailand electric power consumption per capita, indicator EG.USE.ELEC.KH.PC | 2,965.2 kWh/capita (2023) | 2026-08-23 |

Thailand's World Bank "100% electricity access" number is technically true and completely beside the point for a Khlong Toei sub-tenant — access to the grid isn't the same as access to a fair bill. The apparent-temperature spike (35.4°C feels-like against a 30.4°C actual reading) is the mechanism that makes flat per-door splitting unfair in the first place: on a day like today, whichever unit owns a window AC will run it through that 1pm-5pm heat-index window, while a neighbor with just a fan barely moves the meter — yet under a flat split, both pay identically. FaiRuam turns that heat-index window into the basis for a usage-weighted estimate instead of an even division.

## The Problem

It's the third of the month in a subdivided row house off Soi Wat Sapan on the edge of Khlong Toei, Bangkok's largest informal settlement (est. 80,000-100,000 residents across roughly 26 communities on Port Authority land). The landlord, who holds the house registration and the single MEA meter for all six rooms, posts a hand-written total on a shared whiteboard: 4,200 THB this month, 700 THB per room. Nid, who shares her 3x4 meter room with her mother and runs a single desk fan, says nothing — again — even though she's fairly sure the family two doors down, who installed a used window AC unit last hot season, is the reason the bill jumped 900 THB from last month. She has no way to prove it, and raising it means risking her tenancy with a landlord who can evict on a week's notice with no formal lease.

This happens because Thai law and MEA policy tie individual electricity accounts to house registration documents (ทะเบียนบ้าน) or land ownership — neither of which informal sub-tenants can obtain, since they're renting a room inside a structure the landlord (who may themselves be an informal occupant of Port Authority land) controls. The landlord becomes the sole legal account holder by default, and splitting the resulting bill among sub-tenants is entirely a private, unregulated arrangement — sometimes done fairly by headcount-and-appliance estimate, more often done as a flat per-door charge because it's the least effort for the landlord, or in worse cases marked up 30-80% above MEA's real tariff (7-9 THB/unit charged vs. MEA's real residential block rate averaging closer to 4-4.4 THB/unit) as an undisclosed profit margin sub-tenants have no way to detect, since they never see the actual MEA bill, only the landlord's total.

Nothing about this is a one-time dispute — it recurs every single month, compounds through hot season when AC-owning households pull dramatically more current, and slowly poisons trust inside buildings where people already live in tight, forced proximity. Community leaders in Khlong Toei (many organized informally through the Duang Prateep Foundation's neighborhood network) report electricity-split arguments as one of the most common low-grade tenant conflicts they mediate — not big enough for police, too awkward for most people to confront a landlord over, so it just festers as quiet resentment or gets "solved" by the quietest, least-empowered tenant simply eating the cost rather than raising the fight.

## Who Uses This

**Primary user:** Sub-tenants in Khlong Toei and similar informal subdivided-housing communities (Klong Toei, Bang Khun Thian shrimp-flat settlements, riverside stilt communities) — typically women managing household budgets on 300-450 THB/day informal or gig income, sharing a single MEA meter across 4-8 rooms, currently paying a flat per-door split they suspect but cannot prove is unfair.
**What they do now (and why it sucks):** They either silently absorb the overcharge, keep a private paper tally of "who runs what" that has no shared credibility, or confront the AC-owning neighbor directly — a conversation that damages the relationship without any neutral number to point to.
**When they pay:** Never — this only works as a free tool. The trigger moment for *adoption* is the first month a resident uses the bot's fairness estimate to successfully renegotiate the split with the landlord or neighbors and it actually holds up.

**Secondary user:** The landlord or building "meter-holder" themselves, who in many cases genuinely doesn't want the monthly argument either and would rather point to a neutral third-party number than referee six tenants' accusations personally.
**Why they care:** A defensible, appliance-based split reduces their own administrative headache and tenant turnover from disputes, without requiring them to give up control of the meter.

**Who definitely won't use this:** Landlords deliberately profiting from an inflated flat-rate markup, formally metered households with individual MEA accounts, or tenants in buildings where the split is already handled fairly by mutual agreement.

## Feature Set

### MVP — Week 1-3
- **Room appliance self-report:** Each tenant answers 4 tap-through questions in Thai via LINE (AC unit? window fan? rice cooker/water heater? typical hours home) — no typing required, works on a basic smartphone.
- **Building heat-index pull:** Bot fetches the day's local apparent-temperature curve (Open-Meteo) for the building's district and flags AC-relevant hours (apparent temp above 34°C) versus fan-only hours.
- **Usage-weighted split calculator:** Combines appliance wattage estimates × self-reported hours × heat-index-weighted AC likelihood into a per-room share of the total bill, shown as a simple percentage table the whole group can see.
- **Shared bill photo upload:** Any tenant photographs the landlord's posted total; OCR-lite (manual total entry fallback) applies the calculated split to that real number.
- **Printable/shareable split sheet:** Generates a one-page Thai-language summary the group can post on the same whiteboard the landlord uses, replacing the flat per-door number.

### Version 2 — Month 2-3
- **Monthly trend log:** Tracks each room's estimated share over time so a sudden spike (new appliance, guest staying long-term) is visible and explainable rather than a sudden accusation.
- **MEA real-tariff comparison:** Cross-references the landlord's posted per-unit rate against MEA's public residential tariff structure to flag markup percentage, without requiring the landlord's actual account access.
- **Group consensus lock:** All room representatives must tap "agree" in the LINE group before a new split takes effect, preventing any one person from silently changing the formula.
- **Community leader dashboard:** A simple aggregate view for Duang Prateep Foundation-style community organizers to see how many buildings in their zone are actively using fair splits.

### Power User / Pro Features
- **Multi-building comparison (for organizers):** Lets a community mediator flag buildings with unusually high per-unit markup for a direct conversation with the landlord.
- **Dispute mediation template:** Auto-generates a polite, pre-written Thai message a tenant can send to the group when their calculated share doesn't match what they're being asked to pay.

## Technical Implementation

### Suggested Stack
A chat-native bot beats any standalone app here — this population already lives inside LINE for daily communication, shares one group chat per building, and often has limited mobile data, so a lightweight bot flow is the only realistic delivery mechanism (versus a web dashboard or installable app nobody in this segment would download).

**Chosen stack:** LINE bot (LINE Messaging API + LIFF for the tap-through forms) backed by a lightweight serverless function (Cloudflare Workers) and a small SQLite/D1 store per building group — this population already lives inside LINE for daily communication, has no reason to install a standalone app, and often has limited mobile data, so a chat-native flow with minimal payloads is the only realistic delivery mechanism.

### APIs & Data Sources
| API | Specific Endpoint | What It Returns | Refresh Rate | Auth | Cost |
|-----|------------------|-----------------|--------------|------|------|
| Open-Meteo Forecast API | `https://api.open-meteo.com/v1/forecast?latitude={lat}&longitude={lon}&hourly=temperature_2m,relative_humidity_2m,apparent_temperature&timezone=Asia/Bangkok&past_days=1&forecast_days=3` | Hourly apparent temperature used to flag AC-likely hours by building location | Hourly | none | free |
| World Bank Open Data | `https://api.worldbank.org/v2/country/TH/indicator/EG.USE.ELEC.KH.PC?format=json&mrv=5` | National per-capita consumption benchmark, shown in-app for context on typical household usage | Annual | none | free |
| LINE Messaging API | `https://api.line.me/v2/bot/message/push` | Delivers split results and prompts inside each building's existing LINE group | Real-time | token | free tier |

### Database Schema (key tables only)
```
buildings: id (uuid), line_group_id (text), district (text), lat (float), lon (float), landlord_rate_thb_per_unit (float, nullable)
rooms: id (uuid), building_id (fk), line_user_id (text), has_ac (bool), has_fan (bool), typical_hours_home (int)
bill_cycles: id (uuid), building_id (fk), month (date), total_thb (float), total_units_kwh (float, nullable)
room_shares: id (uuid), bill_cycle_id (fk), room_id (fk), estimated_pct (float), estimated_thb (float), agreed (bool)
heat_index_cache: building_id (fk), date (date), max_apparent_temp_c (float), ac_relevant_hours (int)
```

### Key Technical Decisions
1. **Appliance-wattage + heat-index weighting instead of requiring smart plugs:** Real sub-metering hardware is financially and physically impossible in this housing (no budget, no legal standing to modify wiring) — a self-reported, heat-index-anchored estimate is the only feasible fairness proxy, and being "roughly fair and mutually agreed" beats "precisely fair and unbuildable."
2. **Group consensus lock over unilateral calculation:** The tool's entire value is social — a number one tenant computes alone has zero authority in a dispute, but a number the whole LINE group actively agreed to becomes a shared reference point everyone (including the landlord) can point back to.

### Hardest Technical Challenge
The self-reported appliance-hours data is inherently gameable — a tenant could under-report AC use to lower their own share, and there's no hardware truth source to check it against. Mitigation: make the group-agreement step highly visible (everyone sees everyone else's self-report before locking in), lean on the social pressure of a shared, transparent group chat rather than technical verification, and treat the tool explicitly as a negotiation aid, not a metering authority — it doesn't need to be forensically accurate, only more defensible than a flat per-door guess.

## Monetization Strategy

> Note: Not every idea needs Stripe. Some are better as free tools, grant-funded, or sold B2G.

**Model chosen:** free (community/NGO-supported)

| Tier | Price | What's Included | Why They Pay This |
|------|-------|-----------------|-------------------|
| Free | $0 | Full split calculator, LINE bot, group consensus lock, heat-index weighting | This is a low-income tenant tool — any paywall kills adoption entirely |

**Why someone pays:** Nobody in the primary user base pays. The realistic funding path is a small annual grant or in-kind hosting sponsorship from a Bangkok-focused housing/labor NGO (Duang Prateep Foundation, Human Settlement Foundation, or a university urban-poverty research center) that already works in Khlong Toei and benefits from the tool reducing tenant-landlord friction they'd otherwise have to mediate by hand.

**12-month revenue trajectory:**
- Month 3: $0 direct revenue — 3-5 buildings piloting via a single community organizer relationship
- Month 12: $0 direct revenue — target 40-60 buildings across 2-3 informal settlements running on a ~3,000-5,000 THB/month hosting cost covered by a small NGO grant or foundation in-kind sponsorship

**Alternative if SaaS doesn't work:** Fold the tool directly into an existing NGO's tenant-services program as free infrastructure, or open-source the split-calculation logic so other Bangkok informal-settlement organizers can self-host it for their own communities.

## Marketing Strategy

**Exact communities to reach:**
- Duang Prateep Foundation's Khlong Toei community network (operates directly in the settlement, runs tenant/child welfare programs — natural distribution partner, not a cold outreach target)
- Facebook group "คนคลองเตย" (Khlong Toei residents community group, locally active for neighborhood news and mutual aid)
- LINE OpenChat groups run by individual Khlong Toei zone community leaders (each of the ~26 sub-communities typically has its own informal LINE group for announcements)

**First 10 users and how you get them:**
Partner directly with one Duang Prateep Foundation community liaison who already has trusted relationships inside 2-3 buildings; the liaison introduces the bot in-person to one room's residents, who add it to their existing shared-meter LINE group rather than being asked to adopt a new platform cold. The first 10 users are literally the 6-8 sub-tenants in that first building plus 2-3 from a neighboring building reached through the same liaison.

**The press angle:**
"Bangkok says 100% of the country has electricity access — it doesn't say who's getting overcharged for it. We built a free bot for Khlong Toei's shared-meter renters to prove what a fair split actually looks like." A local Thai-language outlet (Prachatai, The Momentum, or a Bangkok-focused housing-inequality beat) covering informal settlement conditions is the realistic pickup, not international tech press.

**Content / SEO play:**
A public, anonymized "average shared-meter markup" tracker page showing the gap between MEA's real residential tariff and what landlords typically charge sub-tenants across participating buildings — useful both as a transparency artifact and as shareable evidence for tenant negotiations.

**Launch sequence:**
1. Build and test the calculator logic with one real building's actual bill history (with consent) before any public launch.
2. Soft-launch through the single Duang Prateep Foundation liaison relationship — no public announcement.
3. After 3-5 buildings show the split reduces disputes, ask the liaison to introduce the tool to two more community leaders in adjacent zones.

## Competitive Landscape

| Existing Solution | What They Do | Where They Fall Short | Why This Wins |
|-------------------|-------------|----------------------|---------------|
| Nothing exists | Flat per-door splitting is the de facto informal standard, done by hand or verbal agreement | No shared, neutral calculation method; entirely trust-based and easily contested | FaiRuam gives a specific, explainable, heat-index-anchored number the whole group can see and agree to inside the chat app they already use |
| Landlord-run spreadsheets (rare, higher-end shared housing) | Some larger boarding houses track usage manually | Controlled entirely by the landlord, sub-tenants can't audit or contest it | FaiRuam's group-consensus lock means no single party (including the landlord) can silently change the formula |

**Moat:** Trust and local relationships, not technology — the real barrier to any tool like this is being introduced by someone the community already trusts (a Duang Prateep liaison or zone leader), which is slow to build but very hard for a copycat to replicate once established.

## Risk Factors

1. **Adoption — landlord resistance:** A landlord profiting from a flat-rate markup has direct incentive to block or discourage the tool. → **Mitigation:** Position and market the tool to tenants first, inside their own private LINE groups, so adoption doesn't require landlord buy-in — the split sheet is generated by tenants and simply presented, not imposed through the landlord's cooperation.
2. **Data — self-reported appliance hours are unverifiable:** Without smart metering, the fairness estimate can be gamed. → **Mitigation:** Frame the tool explicitly as a negotiation aid built on mutual agreement, not a forensic audit, and rely on group visibility (not hardware) to keep self-reports honest.
3. **Market — a genuinely tiny, hard-to-reach addressable population:** Informal shared-meter housing is undercounted and scattered across many small buildings with no centralized directory. → **Mitigation:** Growth is deliberately organizer-led and slow (through one NGO relationship at a time) rather than broad marketing, matching the tool's realistic ceiling as free community infrastructure rather than a scaling product.

## Build Reality Check

| Phase | Realistic Timeline | What Exists at End |
|-------|-------------------|-------------------|
| Prototype | 2 weeks | Working LINE bot with appliance self-report and split calculation, tested manually against one real bill |
| Beta | 6 weeks | 3-5 real buildings using it monthly via the Duang Prateep Foundation liaison relationship |
| Launch | 12 weeks | 15-20 buildings onboarded, public markup-transparency page live, one community organizer actively recommending it to new buildings |

**Solo founder feasibility:** Difficult — the technical build is genuinely simple (a weekend LINE bot), but the entire value of the product depends on a trusted local NGO relationship that a solo outside founder cannot fabricate quickly; this needs a co-founder or partner already embedded in Khlong Toei community work.
**Biggest execution risk:** Not technical adoption but social trust — if the first building's landlord reacts badly to tenants using a "fairness calculator," it can poison the tool's reputation across a tightly networked community faster than any marketing can recover from.

---
*Generated: 2026-08-23 | Industry: energy_utilities | Sub-industry: electricity_theft | Geography: thailand*
*APIs queried for real data: Open-Meteo Forecast API, World Bank Open Data*

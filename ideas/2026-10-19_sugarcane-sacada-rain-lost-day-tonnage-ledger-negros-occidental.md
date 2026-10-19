---
id: tebuhan-negros-sacada-rain-day-ledger-2026-10-19
title: TonLista — Rain-Lost-Day & Tonnage Ledger for Sacada Sugarcane Cutters on Negros Occidental Haciendas
created: 2026-10-19T08:10:00+07:00
industry: labor_work
sub_industry: agricultural_wage_tracking
geography: philippines
apis_used: Open-Meteo Forecast API, ExchangeRate-API, World Bank Open Data
monetization_model: grant-funded
target_user: Seasonal sacada cane cutters (migrant crews of 8-20 men, mostly from Panay, Iloilo and Northern Negros uplands) living in hacienda bunkhouses around Silay, Talisay, Murcia and La Carlota, paid pakyaw (per-tonne) at the hacienda weighbridge, who lose whole days to rain and are advanced rice and cash (utang) by their contractor (cabo) with no written record of either tonnage or deductions
concept_hash: sacada-rain-lost-day-and-tonnage-ledger+silay-talisay-murcia-negros-occidental-philippines+seasonal-sacada-cane-cutter-crews-and-their-cabos
---

# TonLista — Rain-Lost-Day & Tonnage Ledger for Sacada Sugarcane Cutters on Negros Occidental Haciendas

## The Hook
- A sacada cutter on a Murcia hacienda is paid by the tonne, not the day. A rainy day means zero tonnes, but the cabo's rice advance keeps accruing. Nobody writes down how many days were lost or why.
- The app logs weighbridge tickets (photo of the slip), rain-lost days and utang advances in one shared crew ledger, then shows each cutter what he is actually owed before milling season payout.
- It runs as a Messenger-first, offline-tolerant PWA in Hiligaynon and Tagalog, because every crew already has one cheap Android phone and a Messenger group.

## Real Data Found
> Live data queried from real APIs during idea generation — not placeholders.

| Source | Data Point | Value | Queried |
|--------|-----------|-------|---------|
| Open-Meteo Forecast API (10.80N, 123.00E, Silay/Talisay belt) | Daily precipitation sum, 16-22 Oct 2026 | 3.3, 12.8, 13.1, 5.0, 2.6, 4.2, 5.2 mm | 2026-10-19 |
| Open-Meteo Forecast API (same point) | Max apparent temperature, same window | 34.4, 34.9, 35.3, 36.4, 38.6, 38.9, 34.3 °C | 2026-10-19 |
| ExchangeRate-API | PHP per USD | 63.07 (updated 2026-10-19 00:02 UTC) | 2026-10-19 |
| World Bank Open Data | Philippines GDP per capita (current US$), 2025 | $4,170.72 (up from $3,985.29 in 2024) | 2026-10-19 |
| World Bank Open Data | Employment in agriculture, Philippines, 2025 | 20.5% of total employment (ILO modeled; 21.2% in 2024) | 2026-10-19 |

Two consecutive days of 12.8 mm and 13.1 mm sit in the middle of the forecast window. Heavy enough that a cane field is typically too muddy to cut and haul. The apparent temperature then climbs to 38.6-38.9 °C on 20-21 Oct, so the first dry days are also the most heat-stressful. A crew that loses two days to rain and then pushes hard in the heat to "catch up" is the normal pattern. That pattern is exactly what is never recorded.

With about one in five Filipino workers in agriculture and GDP per capita around $4,170, the typical sacada earns far below the national average. The rain-lost days and rice advances matter for precisely that reason: the margin is thin.

## The Problem
A cutter bunked near Murcia wakes at 4am, sees rain on the tin roof, and goes back to sleep. That day earns nothing, but the cabo's rice and canned-goods advance still counts against him. By payout he cannot say how many days were lost, what tonnage was weighed on which day, or what the advances totalled. The only record is the cabo's notebook.

Structurally, nobody else keeps one. The hacienda pays the cabo per tonne on the weighbridge ticket, and the cabo pays the crew. Crews are seasonal, move between haciendas, and many cannot read a ledger fast. Workarounds are memory and arguments at payout. They fail because the person with the notebook also holds the money.

If nothing changes, crews keep going home with less than their tonnage implies, and disputes keep getting settled by whoever has the notebook.

## Who Uses This
**Primary user:** A sacada cutter, 20-45, from upland Iloilo or Antique, working a Murcia or Talisay hacienda for the October-April milling season, sleeping in a bunkhouse, with one budget Android phone and a Messenger group for his crew.
**What they do now (and why it sucks):** Trusts the cabo's notebook and his own memory of which days were rained out.
**When they pay:** They don't; a crew leader or NGO pays. The trigger is the first payout dispute of the season, when a cutter realises he cannot prove his tonnage.

**Secondary user:** Honest cabos who want a defensible record to show haciendas and crews, and labor NGOs and DOLE field officers who handle complaints.
**Why they care:** A shared ledger protects good cabos from accusations and gives complaint handlers evidence.

**Who definitely won't use this:** Large mechanised-harvester operations, and cabos who benefit from the opacity.

## Feature Set

### MVP — Week 1-3
- **Weighbridge slip capture:** Photo of the hacienda ticket, with the tonnage typed in by the cutter and confirmed by a crewmate.
- **Rain-lost-day log:** Auto-flags days with 10+ mm forecast or observed rain for the hacienda's coordinates, which the crew confirms or rejects with one tap.
- **Utang ledger:** Each rice, cash or sari-sari advance is entered with date and amount, and each cutter sees a running balance.
- **Payout preview:** Estimated take-home from tonnage × agreed pakyaw rate minus advances, shown in PHP and in a plain-language Hiligaynon summary.
- **Offline-first sync:** Entries queue on the phone and sync when the bunkhouse gets signal.

### Version 2 — Month 2-3
- **Heat-day pacing nudges:** When apparent temperature is forecast above 38 °C, suggest an earlier start and longer breaks.
- **Crew-shared PDF statement:** One page per cutter, shareable in Messenger.
- **Rate benchmark:** Anonymous comparison of pakyaw rates reported by crews on neighbouring haciendas.

### Power User / Pro Features
- **Cabo dashboard:** Multi-crew tonnage and advances roll-up.
- **NGO export:** Anonymised CSV for labor groups documenting patterns.

## Technical Implementation

### Suggested Stack
**Chosen stack:** PWA with IndexedDB offline storage and a small Supabase backend, because crews have patchy signal and cheap Android phones, and a PWA avoids an app-store install. Messenger share links handle distribution.

### APIs & Data Sources
| API | Specific Endpoint | What It Returns | Refresh Rate | Auth | Cost |
|-----|------------------|-----------------|--------------|------|------|
| Open-Meteo Forecast | `https://api.open-meteo.com/v1/forecast?latitude=10.80&longitude=123.00&daily=precipitation_sum,apparent_temperature_max&timezone=Asia/Manila&past_days=3&forecast_days=4` | Daily rain and heat per hacienda coordinate | hourly | none | free |
| ExchangeRate-API | `https://open.er-api.com/v6/latest/USD` | PHP/USD for NGO reporting | daily | none | free |
| World Bank Open Data | `https://api.worldbank.org/v2/country/PH/indicator/NY.GDP.PCAP.CD?format=json&mrv=3` | Context indicators for grant reports | annual | none | free |

### Database Schema (key tables only)
```
crews: id (uuid), name (text), hacienda (text), lat (float), lon (float), pakyaw_rate_php (numeric)
members: id (uuid), crew_id (uuid), display_name (text), role (text)
tickets: id (uuid), crew_id (uuid), date (date), tonnes (numeric), photo_url (text), confirmed_by (uuid)
advances: id (uuid), member_id (uuid), date (date), amount_php (numeric), note (text)
lost_days: crew_id (uuid), date (date), rain_mm (float), confirmed (bool)
```

### Key Technical Decisions
1. **Crew confirmation instead of cabo-only entry:** A second crewmate confirms each ticket so no single person controls the record.
2. **Rain as a suggestion, not a verdict:** The API flags likely lost days but the crew decides, since local drainage varies by field.

### Hardest Technical Challenge
Trust, not code. If the cabo refuses to use it, entries stay one-sided. Mitigation: pitch it first to cabos who already keep careful books, and make the ledger a tool for them to show haciendas.

## Monetization Strategy

> Note: This is a grant and NGO tool; cutters cannot pay.

**Model chosen:** grant-funded

| Tier | Price | What's Included | Why They Pay This |
|------|-------|-----------------|-------------------|
| Free | $0 | Full ledger for any crew | Acquisition and trust |
| NGO partner | $50/mo | Anonymised exports, training support | Documents seasonal-labor patterns |
| Cabo pro | $4/mo | Multi-crew dashboard | Defensible books for haciendas |

**Why someone pays:** An NGO needs evidence for labor-rights work; a good cabo needs proof he paid fairly.

**12-month revenue trajectory:**
- Month 3: ~2 NGO partners × $50 = $100/month plus a small grant
- Month 12: ~5 NGO partners × $50 + ~25 cabos × $4 = $350/month

**Alternative if SaaS doesn't work:** Fund through a labor-rights or sugar-sector grant, or a DOLE regional pilot.

## Marketing Strategy

**Exact communities to reach:**
- Sacada support groups run by Negros-based labor NGOs and church-linked ministries (partner outreach, not mass posting)
- Facebook community groups for Negros Occidental sugar-sector workers (search "Negros sugar workers"; sizes vary, verify before posting)
- Hiligaynon-language Messenger crew groups, reached through cabos

**First 10 users and how you get them:**
One cabo and his crew of 9 near Murcia, reached via an NGO field worker who already visits the bunkhouses.

**The press angle:**
"We counted the rain days nobody pays for: sugarcane cutters lose whole days of pay to weather and have no record of it."

**Content / SEO play:**
A public, anonymised "lost days per season by municipality" chart.

**Launch sequence:**
1. Pilot with one NGO-linked crew before the milling season peaks
2. Share the PWA link in the crew's Messenger group and train in person
3. After 4 weeks, review ledger accuracy with crew and cabo

## Competitive Landscape

| Existing Solution | What They Do | Where They Fall Short | Why This Wins |
|-------------------|-------------|----------------------|---------------|
| Cabo's paper notebook | Tracks advances | One-sided, unverifiable | Shared, confirmed ledger |
| Generic payroll apps | Hourly wage tracking | No per-tonne or rain-day logic | Built for pakyaw work |

**Moat:** Trust with crews and NGOs, plus an anonymised rate and lost-day dataset no one else collects.

## Risk Factors

1. **Adoption:** Cabos may refuse or pressure crews → **Mitigation:** Start with cooperative cabos and NGO introductions.
2. **Safety:** Cutters could face retaliation for keeping records → **Mitigation:** Crew-owned data, no public names, and local-only mode.
3. **Data:** Rain at a point may not match a specific field → **Mitigation:** Crew confirms every flagged day.

## Build Reality Check

| Phase | Realistic Timeline | What Exists at End |
|-------|-------------------|-------------------|
| Prototype | 3 weeks | Offline ledger with tickets and advances |
| Beta | 6 weeks | One real crew using it through a payout |
| Launch | 12 weeks | 2-3 NGO partners and about 10 crews |

**Solo founder feasibility:** Difficult — the software is easy, but access to crews depends on local NGO relationships.
**Biggest execution risk:** Getting a cabo to agree to a shared record.

---
*Generated: 2026-10-19 | Industry: labor_work | Sub-industry: agricultural_wage_tracking | Geography: philippines*
*APIs queried for real data: Open-Meteo Forecast API, ExchangeRate-API, World Bank Open Data*

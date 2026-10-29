---
id: madu-gelap-sumbawa-2026-10-29
title: MaduGelap — Dark-Night Wild-Honey Hunt Planner (Moon, Gust, Rain & Smoke) for Apis dorsata Honey Hunters in Sumbawa
created: 2026-10-29T09:30:00+07:00
industry: wildlife_biodiversity
sub_industry: pollinator_health
geography: southeast_asia
apis_used: Open-Meteo Forecast API, Open-Meteo Air Quality API, GBIF Occurrence API, NASA FIRMS API
monetization_model: grant-funded
target_user: Forest-honey hunters (pemburu madu) in the Batu Lanteh, Ropang and Lunyuk highlands of Sumbawa, NTB, Indonesia, who climb tualang-type and kedondong trees on moonless nights in teams of 3-5 to cut combs from giant Apis dorsata colonies, sell raw "Madu Sumbawa" through village cooperatives (JMHI-style networks) at roughly IDR 100-150k/kg, and have no way to judge which dark-night window is both safe and leaves enough comb for the colony to recover
concept_hash: apis-dorsata-dark-night-harvest-go-no-go-and-colony-recovery-ledger+batu-lanteh-ropang-lunyuk-sumbawa-ntb-indonesia+forest-honey-hunter-teams-and-village-cooperative-collectors
---

# MaduGelap

## The Hook
- Sumbawa's famous forest honey is cut by hand, at night, from combs the size of a door hanging 30 m up a tree — and the hunters decide *when* to go by moon, elders' memory and a glance at the sky. One gust on a rope at 25 m is the difference between a harvest and a funeral.
- The same hunters are quietly the island's wild-pollinator wardens: GBIF holds 869 Apis dorsata records for Indonesia but only 7 for all of Nusa Tenggara Barat. The people who know where every colony nests have never been counted by science.
- A free, offline-first LINE/WhatsApp-style "go / wait / no" call per dark-night window, plus a comb-by-comb ledger that stops over-cutting — sold to nobody, funded by conservation and honey-certification money.

## Real Data Found
> Live data queried from real APIs during idea generation — not placeholders.

| Source | Data Point | Value | Queried |
|--------|-----------|-------|---------|
| Open-Meteo Forecast (-8.70, 117.15, Batu Lanteh highlands) | Max wind gust forecast, 29 Oct 2026 | 30.6 km/h | 2026-10-29 |
| Open-Meteo Forecast | Max wind gust, 3 Nov 2026 | 30.2 km/h (24.5 km/h on 28 Oct) | 2026-10-29 |
| Open-Meteo Forecast | Daily rainfall, 28 Oct / 1 Nov 2026 | 9.8 mm / 13.2 mm (dry only on 4 Nov: 0.0 mm) | 2026-10-29 |
| Open-Meteo Air Quality | PM2.5 over past 48 h, same point | peak 19.5 µg/m³, mean 13.0 µg/m³ | 2026-10-29 |
| GBIF Occurrence API | Apis dorsata records, Indonesia | 869 | 2026-10-29 |
| GBIF Occurrence API | Apis dorsata records, Nusa Tenggara Barat | 7 (vs 11,437 worldwide) | 2026-10-29 |
| NASA FIRMS (DEMO_KEY, VIIRS) | Hotspots Indonesia, last 24 h query | endpoint returned 0 rows (DEMO key rate-limited) — not used as a claim | 2026-10-29 |
| Computed lunar phase | Days since new moon on 29 Oct 2026 | 18.1 days (waning gibbous; next new moon ≈ 10 Nov) | 2026-10-29 |

The forecast shows the problem in miniature: the next nine days carry rain every day but one (2.4–13.2 mm) and gusts up to 30 km/h, while the moon will not be dark for roughly another 11 days. The traditional "dark night" window and the safe-weather window rarely coincide, and hunters have no tool that overlays them.

The GBIF gap is the second finding: 7 records for NTB against 869 for Indonesia. Sumbawa's honey economy is built on a species that biodiversity databases barely see. Whoever logs the colonies owns the only dataset of them.

## The Problem

On a moonless night in the late dry season, a team of four from a Batu Lanteh hamlet walks two hours uphill to a nesting tree. One climbs with a rope ladder, smoke torch and a bark-fibre bucket line; three hold the ground ropes. They decide go/no-go by looking at cloud and listening for wind. A gust of 30 km/h at canopy height — what the forecast shows for 29 Oct and 3 Nov — makes the ladder swing and the smoke useless. Hunters know this; what they cannot see is a week ahead, so they commit the walk, the food and the team's night, and sometimes go anyway.

The structural gap: weather apps give district-level forecasts at village altitude, nothing maps to "dark night × low gust × no rain × no smoke haze." Moon calendars exist, but not in the same view. And nobody tracks how often each tree is cut. Repeated cutting of a colony that has not rebuilt (the bees often abscond for a season) quietly kills the very harvest the village depends on, but the elders' memory of "who cut which tree last" is oral and disputed between hamlets.

If nothing is built, the honey keeps getting scarcer and more dangerous, cooperatives chase volume by cutting nests too early, and the 7-records-in-NTB blind spot persists, so conservation and certification bodies can't justify funding protection of wild nesting trees.

## Who Uses This

**Primary user:** A 38-year-old forest-honey hunter in Batu Lanteh with a mid-range Android phone, intermittent signal, who hunts 6-10 nights a month in season, earns most of IDR 3-5 million/month from honey in good months, and leads a 4-person team.
**What they do now (and why it sucks):** Check the sky and moon by eye, ask a cousin on WhatsApp, and walk anyway — wasting nights and risking falls in gusts.
**When they pay:** They don't directly; they adopt it after the first near-miss-avoided night, and the cooperative pays through the buyer premium.

**Secondary user:** Village cooperative collectors and the NGO/forestry (KPH) extension officers who need harvest records for "wild honey" certification.
**Why they care:** A logged, spaced-out harvest history is the only evidence that wild honey is sustainably collected.

**Who definitely won't use this:** Commercial Apis cerana box-hive beekeepers and large honey traders who want yield forecasts.

## Feature Set

### MVP — Week 1-3
- **Dark-night go/no-go card:** For each of the next 14 nights, shows moon phase, forecast gust at canopy height, rainfall, and a green/amber/red call.
- **Offline cached forecast:** Caches 7 days of data over the one signal-rich spot (hamlet junction) so it works on the trail.
- **Tree/colony ledger:** Hunter logs a tree (GPS pin, local name), comb count, and date cut, offline.
- **Recovery clock:** Flags a tree amber/red if cut within a user-set rest period (default 60 days).
- **Bahasa Sumbawa/Indonesian voice readout:** Spoken summary for low-literacy members.

### Version 2 — Month 2-3
- **Haze/smoke overlay:** Adds PM2.5 so burn-season nights are flagged for climbing risk.
- **Team check-in:** Sends a pre-set "we're up / we're down safe" message to a family contact.
- **Cooperative export:** Monthly CSV for certification bodies.

### Power User / Pro Features
- **Anonymised GBIF/iNaturalist export:** Publishes verified colony presence at coarse precision with hunter consent.
- **Multi-hamlet map:** Shared boundaries so disputed trees are visible.

## Technical Implementation

### Suggested Stack
**Chosen stack:** Offline-first PWA (Svelte) with IndexedDB and a tiny Cloudflare Worker that proxies and caches Open-Meteo; the users have patchy signal and won't install heavy apps.

### APIs & Data Sources
| API | Specific Endpoint | What It Returns | Refresh Rate | Auth | Cost |
|-----|------------------|-----------------|--------------|------|------|
| Open-Meteo Forecast | `https://api.open-meteo.com/v1/forecast?latitude=-8.70&longitude=117.15&daily=wind_gusts_10m_max,precipitation_sum&timezone=Asia/Makassar` | Gusts, rain per day | hourly | none | free |
| Open-Meteo Air Quality | `https://air-quality-api.open-meteo.com/v1/air-quality?latitude=-8.70&longitude=117.15&hourly=pm2_5` | PM2.5 haze | hourly | none | free |
| GBIF Occurrence | `https://api.gbif.org/v1/occurrence/search?scientificName=Apis%20dorsata&country=ID` | Colony records | daily | none | free |
| NASA FIRMS | `https://firms.modaps.eosdis.nasa.gov/api/country/csv/{MAP_KEY}/VIIRS_SNPP_NRT/IDN/1` | Fire hotspots | ~3 h | free key | free |

### Database Schema (key tables only)
```
tree: id (uuid), hamlet (text), local_name (text), lat (float), lon (float), owner_group (text)
harvest: id (uuid), tree_id (fk), cut_date (date), combs_cut (int), combs_left (int), team_id (fk)
night_call: date (date), moon_age (float), gust_kmh (float), rain_mm (float), pm25 (float), call (enum)
team: id (uuid), name (text), contact_phone (text)
```

### Key Technical Decisions
1. **Compute moon phase on-device:** An astronomy formula needs no API and works offline.
2. **Forecast at 10 m, not canopy:** Open-Meteo gives 10 m gusts; apply a conservative canopy-height multiplier calibrated with hunters' feedback.

### Hardest Technical Challenge
Trust and calibration: the gust thresholds are life-safety calls. Mitigation: ship as advisory only, start with conservative red thresholds set with elder hunters, and log outcomes ("went / fell / fine") to refine.

## Monetization Strategy

> Note: This is a conservation-and-livelihood tool; hunters will not pay subscriptions.

**Model chosen:** grant-funded

| Tier | Price | What's Included | Why They Pay This |
|------|-------|-----------------|-------------------|
| Free | $0 | Go/no-go, ledger, offline | Adoption |
| Cooperative | $5/mo | Certification export, multi-team map | Buyer premium evidence |
| Funder | grant | Anonymised colony dataset | Conservation reporting |

**Why someone pays:** A cooperative selling "sustainably harvested wild honey" to export or specialty buyers needs auditable harvest spacing.

**12-month revenue trajectory:**
- Month 3: ~0 paying, 1 pilot grant of ~$8,000 (small conservation fund)
- Month 12: ~12 cooperatives × $5 = $60/month plus ~$20,000 in grants

**Alternative if SaaS doesn't work:** Purely NGO/university-hosted tool with GBIF data publishing as the deliverable.

## Marketing Strategy

**Exact communities to reach:**
- Jaringan Madu Hutan Indonesia (JMHI) cooperative network and its WhatsApp groups of honey-forest collectors
- Facebook group "Madu Hutan Sumbawa" and "Komunitas Pencinta Madu Indonesia" (member counts unverified — check before outreach)
- Universitas Mataram forestry/biology faculty and NTB forestry office (KPH) extension staff

**First 10 users and how you get them:**
Through a cooperative field officer, join one hamlet's pre-season meeting, hand-install the PWA on 10 phones of two teams, and sit with them for a first dark-night call.

**The press angle:**
"Sumbawa's honey hunters know where the giant bees nest — science has 7 records. We gave them a phone."

**Content / SEO play:**
Seasonal "kalender madu gelap" pages and a public, coarse colony-presence map.

**Launch sequence:**
1. Pilot with one hamlet before the next dark-moon window (new moon ≈ 10 Nov).
2. Collect outcome logs for a month and tune thresholds.
3. Present results to a cooperative network and an NGO funder.

## Competitive Landscape

| Existing Solution | What They Do | Where They Fall Short | Why This Wins |
|-------------------|-------------|----------------------|---------------|
| Generic weather apps (BMKG, Windy) | Regional forecasts | No moon/gust/rain combo, no ledger | Single decision card |
| Cooperative paper logbooks | Record sales | Don't track trees or recovery | Per-tree recovery clock |

**Moat:** Trust with hunter teams and the only per-tree harvest dataset.

## Risk Factors

1. **Safety liability:** A wrong "green" call → **Mitigation:** Advisory only, conservative thresholds, explicit disclaimers.
2. **Adoption:** Elders may distrust phone predictions → **Mitigation:** Co-design with respected hunters; show moon/weather in their terms.
3. **Data sensitivity:** Tree locations are valuable and disputed → **Mitigation:** Private by default; coarse public export only with consent.

## Build Reality Check

| Phase | Realistic Timeline | What Exists at End |
|-------|-------------------|-------------------|
| Prototype | 3 weeks | PWA with night calls and ledger |
| Beta | 8 weeks | 2 hamlets, real outcome logs |
| Launch | 20 weeks | Cooperative pilot with grant funding |

**Solo founder feasibility:** Difficult — the software is easy, the field trust and Sumbawa presence are not.
**Biggest execution risk:** Getting hunters' trust and ground access without a local partner.

---
*Generated: 2026-10-29 | Industry: wildlife_biodiversity | Sub-industry: pollinator_health | Geography: southeast_asia*
*APIs queried for real data: Open-Meteo Forecast, Open-Meteo Air Quality, GBIF Occurrence, NASA FIRMS (empty response)*

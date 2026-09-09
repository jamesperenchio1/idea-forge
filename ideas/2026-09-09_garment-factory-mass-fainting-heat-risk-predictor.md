---
id: garment-factory-mass-fainting-heat-risk-predictor-2026-09-09
title: SanlobAlert — Heat-Index Mass-Fainting Risk Predictor for Kampong Speu Garment Factory Safety Officers
created: 2026-09-09T08:02:14+07:00
industry: health_medical
sub_industry: mental_health_sea
geography: cambodia
apis_used: Open-Meteo Forecast API, World Bank Open Data, ExchangeRate-API
monetization_model: hybrid
target_user: Occupational health officers and union safety-committee members inside garment factories along the Manhattan (Kampong Speu) Special Economic Zone and the National Road 4 corridor — usually a woman in her late 20s promoted off the sewing line into a first-aid/OHS role with no medical degree, who must decide by 9am whether to request early fan deployment, mandatory water breaks, or line slowdowns before symptoms cascade into a mass fainting event (locally "human dominoes"), and who has to file same-day incident reports to Better Factories Cambodia (ILO) auditors and the brand's compliance team if it happens anyway.
concept_hash: heat-index-mass-fainting-risk-predictor+kampong-speu-svay-rieng-cambodia-garment-sez+factory-occupational-health-safety-officers
---

# SanlobAlert — Heat-Index Mass-Fainting Risk Predictor for Kampong Speu Garment Factory Safety Officers

## The Hook
- Cambodia's garment sector has a well-documented, still-unsolved phenomenon: dozens to hundreds of workers collapsing in a single shift ("mass fainting" / ស្លុតដួល) — not a single medical cause, but a heat-stress-triggered cascade amplified by fumes, fasting, and social contagion on a packed factory floor. It has made international news for over a decade (Puma, H&M, Nike supply chains) and it keeps happening because nobody scores the risk *before* the shift starts.
- Real weather data pulled today shows exactly the trigger conditions forming: apparent (feels-like) temperature in Kampong Speu's SEZ corridor hits 37.6°C at noon on 2026-09-09 against only 65% humidity — a combination factory OHS literature flags as high mass-fainting risk, and it arrives with zero advance warning to the person on the floor who could act on it.
- Monetization doesn't chase the worker — it chases the buyer. Global apparel brands now run ESG/compliance dashboards specifically to avoid the reputational fallout of "workers collapse making [Brand]'s shoes" headlines; a heat-risk score they can show auditors is worth real money even though the underlying app stays free for the factory floor.

## Real Data Found
> Live data queried from real APIs during idea generation — not placeholders.

| Source | Data Point | Value | Queried |
|--------|-----------|-------|---------|
| Open-Meteo Forecast API | Peak apparent (feels-like) temperature during shift hours, Kampong Speu SEZ corridor (11.455°N, 104.519°E), 2026-09-09 12:00 local | 37.6°C (actual air temp 31.8°C, relative humidity 65%) | 2026-09-09 |
| Open-Meteo Forecast API | Apparent temperature trend across the full 06:00–18:00 shift window, same location/date | Rises from 29.4°C at 06:00 to 37.6°C at 12:00, stays above 33°C until 16:00 | 2026-09-09 |
| World Bank Open Data | Employment in industry (% of total employment, modeled ILO estimate), Cambodia | 28.87% (2025) | 2026-09-09 |
| ExchangeRate-API | USD → KHR spot rate | 1 USD = 4,035.13 KHR | 2026-09-09 |

The Open-Meteo numbers matter because Cambodian garment-factory heat stress research (cited repeatedly in ILO Better Factories Cambodia reports) treats apparent temperature above roughly 34–35°C sustained across a shift — not the thermometer reading alone — as the threshold where fainting clusters become likely, especially on upper floors with poor ventilation and rows of packed sewing machines generating their own heat. Today's data shows Kampong Speu crossing that line for six straight hours (11:00–16:00), a pattern that is currently invisible to any factory OHS officer unless they happen to check a general weather app and know to convert it themselves. The World Bank figure — over a quarter of Cambodia's entire workforce in industry, overwhelmingly garment manufacturing — sizes how many shift-floors this single blind spot touches every hot-season day.

## The Problem

It's 6:45am in the Manhattan Special Economic Zone outside Kampong Speu town, and Sreymom, 27, unlocks the first-aid room of a shoe factory where she supervises roughly 900 workers spread across three floors with no air conditioning, just ceiling fans and open bay doors. She has no medical degree — she was promoted from the cutting line two years ago after a first-aid certificate course funded by the buyer's compliance program. Her only tools for predicting today's risk are: yesterday's fainting count, how the air already feels standing in the doorway, and whether workers skipped breakfast (common near payday, when rice money runs short). By 10:30am, if today follows the pattern of 2026-09-09's forecast — apparent temperature already past 34°C two hours before noon — the first worker on the third floor near the fabric-cutting machines (which run hot themselves) will start hyperventilating and collapse. Within twenty minutes, six more nearby workers may go down in a visible chain reaction, some from actual heat exhaustion, others from panic and social contagion once they see coworkers being carried out. Sreymom has maybe a 90-minute window before noon to have acted — moving the most heat-exposed line to a ground-floor shaded area, forcing a water break, requesting extra fans from management — but she has no data-backed reason to make that case to a production manager focused on hitting a shipment deadline.

This keeps happening for structural reasons well understood in labor research but never solved with a floor-level tool: factory heat-stress protocols exist on paper (Better Factories Cambodia guidelines recommend fan checks and hydration breaks above certain temperatures) but are triggered by an OHS officer's subjective judgment call against production pressure, not by an objective, shift-ahead forecast she can point to. Weather apps report air temperature, not the humidity-adjusted apparent temperature that actually predicts heat stress, and none of them are scoped to factory shift hours or built for someone deciding "do I escalate this to the line supervisor right now." The workaround today is reactive — count how many fainted yesterday, guess if today feels the same — which means the first mass-fainting event of a heat wave is always a surprise, and by the time an OHS officer has hard evidence (bodies on stretchers), the incident report is already being drafted for an ILO auditor instead of a prevention plan.

The consequence of leaving this unsolved isn't abstract: it's a recurring embarrassment for Cambodia's garment export economy (the sector generating the industrial employment share the World Bank data above tracks), real physical harm to thousands of workers per hot season, and a credibility problem for the safety-committee system itself — when OHS officers can never show they anticipated a risk, factory management treats their warnings as noise rather than signal, and the next hot day arrives with the same blind spot.

## Who Uses This

**Primary user:** Sreymom-type OHS officers and elected union safety-committee members inside individual garment/footwear factories in Kampong Speu's Manhattan SEZ, the Kandal SEZ corridor, and Bavet/Svay Rieng border factories — non-medical staff, usually promoted from production lines, responsible for daily floor walk-throughs and first-response to fainting incidents, reporting into both factory management and (for export-oriented factories) Better Factories Cambodia compliance audits.
**What they do now (and why it sucks):** Check a generic weather app for temperature (not apparent temperature), or just judge "how hot does it feel in the doorway right now" — by the time it feels dangerous to a human standing still, sewing-line workers under physical exertion near machinery heat have already been in the danger zone for hours.
**When they pay (factory/brand tier):** After a mass-fainting incident makes a buyer's compliance team ask "why didn't you flag this in advance" during a post-incident review — that's the moment a factory's compliance manager searches for a heat-risk tool that produces an auditable forecast log, not just a reactive report.

**Secondary user:** Compliance/ESG staff at the international brands sourcing from these factories (or their Cambodia-based buying agents) and labor rights NGOs like the Cambodian Alliance of Trade Unions (CATU) or the Community Legal Education Center (CLEC), who track factory-level incident patterns across their supplier list.
**Why they care:** A documented, factory-specific heat-risk score they required suppliers to act on is defensible evidence in a corporate responsibility report or a labor dispute — "we had an early-warning protocol in place" is a materially different position than "we found out when the ambulance photos hit Facebook."

**Who definitely won't use this:** Individual garment workers as a personal consumer app — they have no agency to act on a risk score alone (they can't leave the line or turn on more fans themselves), so the tool is only useful in the hands of whoever controls floor conditions, not the person experiencing the heat.

## Feature Set

### MVP — Week 1-3
- **Shift-hour heat risk score:** Pulls Open-Meteo hourly apparent temperature + humidity for a factory's exact GPS coordinates, converts to a 1-5 risk score calibrated against the 34-35°C apparent-temperature fainting-cluster threshold, refreshed every morning before the 7am shift start.
- **Floor-zone risk multiplier:** OHS officer inputs which floors/zones lack ventilation or sit near heat-generating machinery (cutting presses, ironing stations); those zones get a manual +1 risk bump on top of the ambient score.
- **Telegram bot daily briefing:** Every morning at 6:00am ICT, sends the day's risk score and a one-line action recommendation ("Risk 4/5 — request fans + 10am water break for 3rd floor") directly to the OHS officer's phone — chosen because Telegram is the platform Cambodian labor organizers and factory safety committees have shifted to for privacy since 2021, unlike Facebook Messenger which factory management can more easily monitor.
- **Same-shift incident logging:** One-tap "worker fainted" log with floor/zone, time, and symptom notes, timestamped against that hour's actual heat-index reading — building the evidence base that turns "it felt hot" into a defensible incident report.
- **Payday/fasting flag:** Manual toggle for the OHS officer to mark "week before payday" (common malnutrition risk window when workers stretch rice money) — a known compounding factor layered onto the heat score, based on patterns documented in Cambodian garment-sector labor health research.

### Version 2 — Month 2-3
- **Multi-factory compliance dashboard:** Web view (Next.js) for a buyer's compliance team or an NGO to see risk scores and incident logs across every factory in their supplier network on one map, exportable as a PDF for ESG reporting.
- **WHO/ILO heat-stress protocol library:** In-app reference (Khmer + English) of recommended interventions at each risk tier, sourced from Better Factories Cambodia guidance, so a first-time OHS officer isn't inventing the response plan from scratch.
- **7-day forecast trend:** Lets an OHS officer request extra fans or schedule maintenance ahead of a multi-day heat wave rather than reacting day-by-day.

### Power User / Pro Features
- **Historical incident correlation report:** Cross-references a factory's own logged fainting incidents against that day's heat-index reading over the prior 12 months, producing the specific evidence auditors ask for ("incidents cluster above apparent temp X at this facility").
- **API access for brand ESG platforms:** Lets a large buyer pull risk scores and incident counts programmatically into their existing supplier-compliance software instead of checking the dashboard manually.

## Technical Implementation

### Suggested Stack
**Chosen stack:** Telegram bot (Node.js, `node-telegram-bot-api`) as the free, worker-facing daily tool — chosen over a native app or PWA because OHS officers already live in Telegram, have inconsistent smartphone storage space for new apps, and sometimes share devices; a bot requires zero install friction. Paired with a lightweight Next.js + Supabase web dashboard for the paid B2B compliance tier, since that audience (brand ESG staff, NGO researchers) works from a laptop and needs exportable multi-factory views, not a chat interface.

### APIs & Data Sources
| API | Specific Endpoint | What It Returns | Refresh Rate | Auth | Cost |
|-----|------------------|-----------------|--------------|------|------|
| Open-Meteo Forecast API | `https://api.open-meteo.com/v1/forecast?latitude={lat}&longitude={lon}&hourly=temperature_2m,relative_humidity_2m,apparent_temperature&timezone=Asia/Bangkok&forecast_days=3` | Hourly apparent temperature + humidity per factory GPS point | Updated multiple times daily | none | free |
| World Bank Open Data | `https://api.worldbank.org/v2/country/KH/indicator/SL.IND.EMPL.ZS?format=json` | Cambodia industrial employment share, for sector-level context in reports | Annual | none | free |
| ExchangeRate-API | `https://open.er-api.com/v6/latest/USD` | USD/KHR rate, referenced in payday-cycle risk notes since Cambodian minimum wage is USD-denominated but daily expenses are mixed-currency | Daily | none | free |

### Database Schema (key tables only)
```
factories: id, name, gps_lat, gps_lon, sez_zone, floor_count, contact_ohs_officer_id
zones: id, factory_id, floor_number, name, ventilation_risk_bump (int), near_machinery (bool)
daily_risk_scores: id, factory_id, date, peak_apparent_temp, peak_humidity, risk_score (1-5), payday_flag (bool)
incidents: id, factory_id, zone_id, timestamp, symptom_notes, logged_by_officer_id, heat_index_at_time
officers: id, telegram_chat_id, factory_id, role, language_pref
```

### Key Technical Decisions
1. **Telegram over Facebook Messenger or a native app:** Cambodian factory safety committees and labor organizers have documented, ongoing preference for Telegram specifically for privacy from employer/state monitoring since around 2021 — building on a platform users have already migrated to beats asking them to adopt a new one.
2. **Apparent temperature, not raw air temperature, as the core risk variable:** Air temperature alone misses the humidity compounding effect that drives real heat stress on a factory floor full of moving bodies and machinery; apparent temperature is the closer proxy to what OHS literature actually flags.

### Hardest Technical Challenge
Getting accurate factory-level risk calibration without factory-specific indoor sensor data — Open-Meteo gives outdoor ambient conditions, but actual floor-level heat depends heavily on building ventilation, floor number, and machinery density that vary factory to factory. Mitigation: launch with the manual "zone risk multiplier" (OHS officer self-reports poor ventilation/machinery proximity) as a rough correction factor, then use the incident-logging data collected over the first two hot seasons to build a per-factory calibration offset instead of guessing it upfront.

## Monetization Strategy

> Note: Not every idea needs Stripe. Some are better as free tools, grant-funded, or sold B2G.

**Model chosen:** hybrid — free forever for individual factory OHS officers via Telegram; paid B2B for the multi-factory compliance dashboard sold to brands, buying agents, and their compliance auditors.

| Tier | Price | What's Included | Why They Pay This |
|------|-------|-----------------|-------------------|
| Free (Telegram bot) | $0 | Daily risk briefing, incident logging, zone multipliers — single factory | Acquisition: gets real incident data flowing in from the floor, which is the asset the paid tier is built on |
| Compliance Dashboard | $150/factory/month | Multi-factory map view, PDF exports for ESG reports, historical incident correlation | A buyer's compliance team needs one line-item cost to cover dozens of supplier factories, and $150/factory is trivial against the cost of a single reputational incident |
| Brand API Access | $2,000/month flat | Programmatic access to risk scores + incident data for integration into existing supplier ESG software | Large brands (H&M, Puma-scale) already pay far more for less-specific supply chain compliance tooling |

**Why someone pays:** Not the OHS officer — a factory's compliance manager or a buyer's ESG team pays after the first "why didn't we see this coming" conversation post-incident, when a forecast-backed prevention log becomes something they need to show, not just something nice to have.

**12-month revenue trajectory:**
- Month 3: ~5 factories on Compliance Dashboard × $150 = $750/month
- Month 12: ~40 factories × $150 + 2 brand API contracts × $2,000 = $10,000/month

**Alternative if SaaS doesn't work:** Grant funding from ILO Better Factories Cambodia itself, or the Solidarity Center / CATU, since the free worker-facing tool is squarely inside their existing occupational-health mandate and they already fund similar factory-floor tools.

## Marketing Strategy

**Exact communities to reach:**
- Cambodian Alliance of Trade Unions (CATU) factory-level union networks — active Telegram channels used for garment-sector organizing across Kampong Speu and Kandal SEZs
- Better Factories Cambodia's factory-level OHS training cohorts — the same ILO program that already certifies OHS officers like Sreymom is the natural distribution channel for a tool built around their own heat-stress guidance
- r/Cambodia (~90K members) and the Cambodia Development Resource Institute's labor research mailing list, for the NGO/research-facing angle

**First 10 users and how you get them:**
Attend one Better Factories Cambodia OHS refresher training session in Kampong Speu (these run periodically and are where safety-committee members already gather) and demo the Telegram bot live on a phone during a break — OHS officers who see their own factory's real forecast on the spot are the realistic first adopters, not a cold outreach campaign.

**The press angle:**
"Cambodia's garment factories have known about mass-fainting risk for over a decade — we built the 6am forecast that could have flagged it" — pairs a specific, previously invisible data pattern (apparent temperature crossing 34-35°C predicting fainting clusters) with a well-known, internationally reported labor story.

**Content / SEO play:**
A public, no-login page showing today's heat-risk score for every known SEZ corridor in Cambodia (Kampong Speu, Kandal, Bavet/Svay Rieng) — useful to labor journalists and researchers even without an account, and the kind of specific factual page that gets cited/linked when international press covers the next incident.

**Launch sequence:**
1. Pre-launch: build the Telegram bot and validate the heat-risk threshold against publicly reported past mass-fainting incident dates (cross-check known incident dates against historical Open-Meteo apparent temperature for that location).
2. Launch day: demo at a Better Factories Cambodia OHS training session, leave a QR code to join the Telegram bot.
3. Week 1: follow up individually with the OHS officers who joined, get their first real incident logs, use that data to pitch the first Compliance Dashboard trial to one buying agent operating in Kampong Speu.

## Competitive Landscape

| Existing Solution | What They Do | Where They Fall Short | Why This Wins |
|-------------------|-------------|----------------------|---------------|
| Better Factories Cambodia periodic audits | Manual factory inspections against labor standards, including heat-stress protocol checks | Point-in-time, not daily/predictive — an auditor visiting in November can't catch a June heat wave | Continuous daily forecast means the protocol is followed every hot day, not just audit day |
| Generic weather apps (Google Weather, AccuWeather) | Show temperature and humidity for a location | Not scoped to shift hours, no apparent-temperature-to-fainting-risk translation, no incident logging | Purpose-built score and action recommendation an OHS officer can act on immediately, no interpretation required |
| Nothing exists for factory-floor mass-fainting prediction specifically | — | — | First-mover on a well-documented, recurring, internationally reported labor health problem with no existing tool |

**Moat:** The incident-logging data flywheel — every factory using the free tier contributes real fainting incident timestamps correlated against actual heat-index readings, which nobody else has, and which becomes the calibration dataset that makes the paid compliance product more accurate than any generic weather-based competitor could build without years of the same floor-level data collection.

## Risk Factors

1. **Adoption — OHS officers have no budget authority to act on the score:** A risk score is useless if the officer flags "risk 4/5" and a production manager under shipment deadline pressure ignores it anyway. → **Mitigation:** Position the incident log (not the forecast alone) as the product's real value for the officer — a timestamped record that they flagged the risk in advance protects them individually when management doesn't act and an incident happens anyway.
2. **Data — outdoor ambient weather is an imperfect proxy for indoor factory floor conditions:** A well-ventilated ground floor and a packed unventilated third floor experience very different real heat despite identical outdoor readings. → **Mitigation:** The manual zone-risk-multiplier system plus the plan to build per-factory calibration from logged incident data over time (see Hardest Technical Challenge above).
3. **Regulatory/reputational — factory management may see incident logging as evidence against them, not for them, and discourage OHS officers from using it:** → **Mitigation:** Keep the individual OHS officer's free-tier data private to them by default (visible to factory/brand compliance tiers only with the officer's factory opting in), so the tool builds officer-level trust before any factory-wide reporting relationship exists.

## Build Reality Check

| Phase | Realistic Timeline | What Exists at End |
|-------|-------------------|-------------------|
| Prototype | 2 weeks | Working Telegram bot delivering daily risk score for a handful of manually-entered factory GPS points, no dashboard yet |
| Beta | 6 weeks | 10-15 real OHS officers using the daily briefing + incident log at actual Kampong Speu/Kandal factories, first real incident data flowing in |
| Launch | 12 weeks | Compliance dashboard live, first paying buyer/compliance contract signed, public SEO page for SEZ heat-risk scores |

**Solo founder feasibility:** Difficult — the technical build (bot + dashboard + weather integration) is genuinely solo-feasible in weeks, but the real bottleneck is trust-building access into factory OHS networks, which realistically requires an in-country partner (an NGO like CATU or a Better Factories Cambodia contact) rather than cold outreach.
**Biggest execution risk:** Getting the first real factory floor to adopt it — without an existing relationship inside the Better Factories Cambodia or union network, an outside builder has no credible way to get an OHS officer to trust a new tool with incident data that could implicate her own factory.

---
*Generated: 2026-09-09 | Industry: health_medical | Sub-industry: mental_health_sea | Geography: cambodia*
*APIs queried for real data: Open-Meteo Forecast API, World Bank Open Data, ExchangeRate-API*

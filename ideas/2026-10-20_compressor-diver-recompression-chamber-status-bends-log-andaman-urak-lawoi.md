---
id: namluek-andaman-compressor-divers-2026-10-20
title: NamLuek — Recompression Chamber Status & Dive-Day Bends Log for Urak Lawoi' Compressor Divers of the Andaman Coast
created: 2026-10-20T08:06:00+07:00
industry: health_medical
sub_industry: pharmacy_inventory
geography: thailand
apis_used: Open-Meteo Marine API, Open-Meteo Forecast API, World Bank Open Data, ExchangeRate-API
monetization_model: grant-funded
target_user: Urak Lawoi' (sea-nomad) and Thai-Muslim hookah/compressor free-divers in Rawai, Koh Lanta, Koh Sireh and Satun's Koh Lipe who spear fish, collect sea cucumbers and lobster at 15-35 m breathing from a hose connected to a repurposed truck-tyre compressor on a longtail, earn roughly 600-1,500 THB per day, own no dive computer, and when bent (joint pain, numb legs) wait 1-3 days hoping it passes before anyone calls a chamber
concept_hash: compressor-diver-bends-recompression-chamber-status-and-dive-log+rawai-koh-lanta-koh-lipe-andaman-coast-thailand+urak-lawoi-and-thai-muslim-hookah-free-divers
---

# NamLuek — Recompression Chamber Status & Dive-Day Bends Log for Urak Lawoi' Compressor Divers of the Andaman Coast

## The Hook
- Along the Andaman coast, men dive 25 m on a hose fed by a modified tyre compressor, surface in a hurry because the boat is drifting, and wake up unable to feel their legs. No dive computer, no logbook, and nobody knows which hyperbaric chamber is actually running today.
- The app is a one-thumb Thai/Urak Lawoi'-friendly LINE log of "depth, minutes, how many dives today" that turns into a plain red/amber/green "do not go down again" call. It also shows which chamber to phone, whether it is staffed, and how long the boat run is in today's sea state.
- Funded as a public-health tool: one avoided paralysis is worth more than any subscription.

## Real Data Found
> Live data queried from real APIs during idea generation — not placeholders.

| Source | Data Point | Value | Queried |
|--------|-----------|-------|---------|
| Open-Meteo Marine API | Wave height off Rawai/Phuket south (7.77N, 98.32E), 2026-10-20 00:00 → 2026-10-21 18:00 | 0.42 m → 0.46 m; swell 0.32-0.36 m, swell period 2.55-5.05 s | 2026-10-20 |
| Open-Meteo Marine API | Sea surface temperature, same point | 30.8-31.0 °C | 2026-10-20 |
| Open-Meteo Forecast API | 5-day rain outlook, same area (20-24 Oct) | 10.2 / 10.5 / 5.4 / 16.1 / 19.7 mm per day; max rain probability 92% on 20 and 24 Oct; max wind 8.2-19.3 km/h | 2026-10-20 |
| World Bank Open Data | Hospital beds per 1,000 people, Thailand (SH.MED.BEDS.ZS) | 2.39 (2023) | 2026-10-20 |
| World Bank Open Data | Employment in agriculture, Thailand (SL.AGR.EMPL.ZS, modeled ILO) | 28.56% (2025) | 2026-10-20 |
| ExchangeRate-API | THB to USD / MMK | 1 THB = 0.029786 USD / 62.44 MMK | 2026-10-20 |

Seas are calm (about 0.4 m) while rain is near-daily. Calm seas are exactly when divers do repeated deep dives, because boats can stay out, so a flat-water week is a high-exposure week, not a safe one. The marine API gives sea state for the boat transfer to a chamber (a 0.46 m sea means a fast run; a monsoon-swell day does not). The beds-per-1,000 figure is national, and tells nothing about the one hyperbaric chamber, which is the thing that matters here.

## The Problem
A Rawai-based diver surfaces after his fourth 28 m dive of the day with shoulder pain. He assumes it is a pulled muscle from hauling the net, and takes a painkiller. By evening his left hand is tingling. He does not call anyone: he does not know whether a chamber is open, who pays, or whether a hospital will treat an undocumented sea-nomad. The next morning he tries to dive again because the family needs the day's income.

The structural gap is that decompression illness in this population is invisible. Recreational divers have computers, insurance and a dive shop to ring. Compressor divers have none of these, and their dives are unrecorded, so no health official can count cases. Chamber availability changes (staff leave, a compressor fails, a chamber is booked) and is learned by phone calls. Existing workarounds are a cousin who "knows a nurse," or going straight to the nearest provincial hospital, which may have no hyperbaric unit at all.

If nothing changes, delayed treatment turns a treatable bend into permanent leg weakness or bladder problems in a man who is the household's only earner.

## Who Uses This
**Primary user:** Compressor free-diver, 20-50, Urak Lawoi' or Thai-Muslim, in Rawai, Koh Lanta, Koh Sireh or Koh Lipe. Dives 3-6 times a day from a longtail, 4-5 days a week in calm months. Has a cheap Android phone and uses LINE and Facebook Messenger; Thai literacy varies, so voice notes and icons are core.
**What they do now (and why it sucks):** Guess depth, stay down by feel, and treat joint pain with massage and painkillers until it either fades or becomes paralysis.
**When they pay:** They don't need to; a boat captain or buyer/middleman pays only if a diver is bent and the boat loses days, which is the moment a village headman or fish buyer asks for help.

**Secondary user:** Sub-district health volunteers (Or Sor Mor), Phuket and Satun marine park rangers, and dive-shop operators who occasionally receive a bent local diver.
**Why they care:** They get a place to see "who is diving how deep" and to check which chamber answers the phone.

**Who definitely won't use this:** Certified recreational divers with computers, and commercial saturation divers on offshore rigs.

## Feature Set

### MVP — Week 1-3
- **LINE one-tap dive log:** diver sends depth band (10/20/30 m icons), minutes, and dive number; the bot replies with a coloured recommendation for the next surface interval.
- **Symptom check by icons:** pain, tingling, dizzy, weakness, bladder; any "yes" triggers "go to chamber now, breathe oxygen if you have it".
- **Chamber status board:** staff-entered open/closed/staffed status for the handful of chambers in Phuket, Krabi and Satun, with phone number and last-confirmed timestamp.
- **Boat-run time estimate:** pulls Open-Meteo Marine wave height for the dive site and estimates minutes to the nearest pier.
- **Voice reply in Thai and Urak Lawoi'-friendly pictograms:** recorded phrases and icons, no reading required.

### Version 2 — Month 2-3
- **Village anonymous exposure map:** counts of dives deeper than 25 m per week per village, without names.
- **Oxygen bottle locator:** where a medical oxygen cylinder sits on the pier (shop, clinic, ranger station) and who holds the key.
- **Fish-buyer alert:** buyers can see that a diver is "resting" and not pressure him back in the water.

### Power User / Pro Features
- **Ranger/health-office dashboard:** weekly exposure counts and case follow-ups.
- **Case-outcome follow-up:** reminds a treated diver of the 24-hour no-flying and no-diving window.

## Technical Implementation

### Suggested Stack
Telegram and web apps are wrong here; the diver lives in LINE and Messenger.

**Chosen stack:** LINE Messaging API bot (Rich Menu with icon buttons) + Supabase (Postgres) + a small Next.js admin page for chamber staff, because LINE is already installed and needs no new app.

### APIs & Data Sources
| API | Specific Endpoint | What It Returns | Refresh Rate | Auth | Cost |
|-----|------------------|-----------------|--------------|------|------|
| Open-Meteo Marine | `https://marine-api.open-meteo.com/v1/marine?latitude=7.77&longitude=98.32&hourly=wave_height,swell_wave_height,swell_wave_period,sea_surface_temperature&timezone=Asia/Bangkok` | wave height, swell, SST | hourly | none | free |
| Open-Meteo Forecast | `https://api.open-meteo.com/v1/forecast?latitude=7.77&longitude=98.32&daily=precipitation_sum,wind_speed_10m_max` | rain and wind | daily | none | free |
| World Bank | `https://api.worldbank.org/v2/country/TH/indicator/SH.MED.BEDS.ZS?format=json&mrv=3` | national hospital-bed context for grant proposals | yearly | none | free |
| ExchangeRate-API | `https://open.er-api.com/v6/latest/THB` | THB to USD for donor budgets | daily | none | free |

### Database Schema (key tables only)
```
divers: id (uuid), line_user_hash (text), village (text), language (text)
dive_logs: id (uuid), diver_id (uuid), logged_at (timestamptz), depth_band (int), minutes (int), dive_no (int)
symptom_reports: id (uuid), diver_id (uuid), reported_at (timestamptz), symptoms (text[]), outcome (text)
chambers: id (uuid), name (text), province (text), phone (text), status (text), confirmed_at (timestamptz)
```

### Key Technical Decisions
1. **Advice stays conservative and never claims to replace a dive computer:** the bot only says "stop and call," never "you are safe."
2. **Chamber status is human-confirmed with a visible timestamp:** stale "open" status is more dangerous than "unknown."

### Hardest Technical Challenge
Chamber status data is not published by any API, so it depends on staff or volunteers entering it. Mitigation: a weekly call script run by a health volunteer, and the board displays "last confirmed 6 days ago" in red instead of hiding uncertainty.

## Monetization Strategy

> Note: This is a public-health tool; charging divers would defeat its purpose.

**Model chosen:** grant-funded

| Tier | Price | What's Included | Why They Pay This |
|------|-------|-----------------|-------------------|
| Free | $0 | Log, symptom check, chamber board | Safety |
| Community sponsor | ~$40/mo per village | Printed pictogram cards, oxygen-bottle check visits | Fish buyers' cooperatives and local administrative organisations |
| Institutional | ~$200/mo | Exposure dashboard, case follow-up | Provincial health office or marine-park budgets |

**Why someone pays:** a cooperative or headman has just watched a diver carried off a boat unable to stand and does not want it to happen again.

**12-month revenue trajectory:**
- Month 3: ~2 village sponsors × $40 = $80/month
- Month 12: ~10 sponsors × $40 + 2 institutions × $200 = $800/month, plus one-off grants

**Alternative if SaaS doesn't work:** Sea-nomad foundations, diver-safety NGOs and medical-association small grants (the entire design assumes this).

## Marketing Strategy

**Exact communities to reach:**
- Local Urak Lawoi' community networks around Rawai and Koh Lanta (word of mouth and LINE chat groups; sizes unknown, verify before outreach)
- Phuket and Krabi diving and free-diving Facebook groups (membership counts to be checked at launch)
- Provincial health volunteer (Or Sor Mor) LINE groups through the sub-district health promoting hospitals

**First 10 users and how you get them:** Ten divers reached through one health volunteer and one boat captain in Rawai, introduced in person with printed pictogram cards, plus a demo on the volunteer's own phone.

**The press angle:** "The Andaman's hose divers have no logbook, no computer, and no way to know which bends chamber is open."

**Content / SEO play:** Thai/English pages on compressor-diving safety and a public, timestamped chamber status page.

**Launch sequence:**
1. Verify chamber contacts by phone with health volunteers
2. Pilot in one Rawai boat group
3. Week 1: collect symptom-icon feedback and correct wording

## Competitive Landscape

| Existing Solution | What They Do | Where They Fall Short | Why This Wins |
|-------------------|-------------|----------------------|---------------|
| Recreational dive apps and computers | Track depth and ascent | Cost money, assume certified divers | Zero hardware |
| DAN-style emergency lines | Triage by phone | English-oriented, tied to insured divers | Local language, chamber board |
| Nothing exists | Compressor divers are not tracked | No data | Starts the record |

**Moat:** Trust with a few villages and a confirmed, maintained chamber contact list.

## Risk Factors

1. **Safety/Liability:** Wrong advice could delay treatment → **Mitigation:** conservative-only messaging, medical review, "when in doubt, call" wording.
2. **Adoption:** Divers may distrust logging dive depths → **Mitigation:** anonymous village-level counts; no data to buyers.
3. **Data:** Chamber status goes stale → **Mitigation:** mandatory confirmation timestamps.

## Build Reality Check

| Phase | Realistic Timeline | What Exists at End |
|-------|-------------------|-------------------|
| Prototype | 3 weeks | LINE bot with log, symptom check, chamber list |
| Beta | 6 weeks | One Rawai or Lanta group using it |
| Launch | 12 weeks | Three villages plus first grant |

**Solo founder feasibility:** Difficult — the software is easy, but medical review and field trust are not.
**Biggest execution risk:** Getting a hyperbaric physician to sign off the symptom wording.

---
*Generated: 2026-10-20 | Industry: health_medical | Sub-industry: pharmacy_inventory | Geography: thailand*
*APIs queried for real data: Open-Meteo Marine API, Open-Meteo Forecast API, World Bank Open Data, ExchangeRate-API*

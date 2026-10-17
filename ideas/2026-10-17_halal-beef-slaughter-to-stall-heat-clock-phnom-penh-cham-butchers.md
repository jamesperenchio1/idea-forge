---
id: neakhalal-phnom-penh-cham-butchers-2026-10-17
title: SlabHalal — Slaughter-to-Stall Heat Clock & Halal Source Ledger for Cham Muslim Beef Butchers Supplying Phnom Penh's Wet Markets
created: 2026-10-17T08:05:00+07:00
industry: food_beverage
sub_industry: halal_tracking
geography: cambodia
apis_used: Open-Meteo Forecast API, World Bank Open Data, ExchangeRate-API
monetization_model: hybrid
target_user: Cham Muslim beef butchers in the Chroy Changvar and Prek Pra riverside communities north of Phnom Penh, who slaughter cattle at 2-3am, move quarters by motorbike-trailer to stalls at Orussey, Kandal and Chbar Ampov markets by 5am, and sell to Muslim households, halal restaurants and Gulf-linked hotel kitchens who ask "is this really halal and is it fresh?" — earning roughly US$250-450/month in a city where GDP per capita is about US$2,872.
concept_hash: halal-beef-slaughter-to-stall-heat-clock-and-source-ledger+chroy-changvar-prek-pra-orussey-phnom-penh-cambodia+cham-muslim-beef-butchers-and-halal-restaurant-buyers
---

# SlabHalal — Slaughter-to-Stall Heat Clock & Halal Source Ledger for Cham Muslim Beef Butchers Supplying Phnom Penh's Wet Markets

## The Hook
- A Cham butcher in Prek Pra slaughters at 2am, hangs meat at 5am in a 26°C wet market — and by 11am the stall is at 32°C with a "feels like" of 40.6°C. His buyers can't tell his properly slaughtered beef from a non-Muslim stall's beef sitting two tables over.
- Nobody tracks the two things Cham buyers actually argue about: *how many hours has this meat been out of the cold?* and *who slaughtered it, and when?* SlabHalal puts both on a one-tap LINE-style Telegram card the butcher shows a customer.
- Free for butchers, paid by halal restaurants and hotel kitchens who want a verifiable source ledger — a trust layer, not a certification body.

## Real Data Found
> Live data queried from real APIs during idea generation — not placeholders.

| Source | Data Point | Value | Queried |
|--------|-----------|-------|---------|
| Open-Meteo Forecast (Phnom Penh 11.60N, 104.93E) | Temp / humidity at 04:00 on 17 Oct | 25.5°C / 95% RH (feels 31.1°C) | 2026-10-17 |
| Open-Meteo Forecast | Temp / humidity at 12:00 on 17 Oct | 32.2°C / 65% RH (feels 40.6°C) | 2026-10-17 |
| Open-Meteo Forecast | 7-day max apparent temperature | 37.7–40.6°C every day | 2026-10-17 |
| Open-Meteo Forecast | 7-day rain totals | 5.4, 6.9, 10.8, 15.3, 9.0, 18.9, 13.7 mm | 2026-10-17 |
| World Bank | Cambodia GDP per capita (2025) | US$2,872.43 (up from 2,627.88 in 2024) | 2026-10-17 |
| World Bank | Cambodia population (2025) | 17,847,982 | 2026-10-17 |
| ExchangeRate-API | USD→KHR | 4,059.86 riel per dollar | 2026-10-17 |

The data show why the clock matters: overnight air at the slaughter hour is 95% humidity — ideal for bacterial surface growth on fresh-cut beef — and by midday the apparent temperature is 40°C. Rain every day this week (5–19 mm) means open-sided market halls stay muggy and meat is moved under tarps, extending the hours it sits out. A butcher selling 120 kg of beef at ~US$7/kg (about 28,400 riel) is handling roughly US$840 of product a day on thin margins; a single day's spoilage write-off is a week of profit.

## The Problem
At 5:10am in the Orussey market meat hall, a Cham butcher from Prek Pra hangs two quarters he slaughtered at 2:30am. The stall next to his sells beef from a licensed slaughterhouse; nothing visible separates them. A Muslim buyer must trust his word on halal status, and a halal restaurant owner must trust it on freshness. By 11am, at a 40.6°C feels-like, the question "how long has this been out?" has no answer anyone can verify.

Halal verification in Cambodia is handled by the Cambodian Muslim community's own bodies (the Cambodia Islamic Center / Mufti-linked committees) and the state-linked halal certification effort is still thin and skewed to packaged exports. There is no daily, per-batch record for the wet-market trade. Butchers rely on reputation and WhatsApp-free word of mouth; buyers rely on the butcher's face. Paper ledgers exist but lack time-and-temperature logic.

If it isn't built, trust stays personal and fragile: one rumour about a non-halal mix-up or a food-poisoning incident at a hotel buffet destroys a family stall's customer base, and halal restaurants keep sourcing from large slaughterhouses that can show paperwork — squeezing out the community butchers.

## Who Uses This
**Primary user:** Cham Muslim beef butchers (~30-60 family stalls in the Chroy Changvar / Prek Pra / Chbar Ampov belt), age 28-55, phone-literate on Facebook and Telegram, Khmer/Cham bilingual, selling 60-150 kg/day.
**What they do now (and why it sucks):** Verbally promise "halal, slaughtered this morning" and chase ice by feel; no record a buyer can check.
**When they pay:** After a hotel kitchen or halal restaurant asks for proof of slaughter time and source — they'd rather pay a few dollars for a trusted card than lose a US$600/month account.

**Secondary user:** Halal restaurants, Muslim-friendly hotel kitchens and catering firms in Phnom Penh who want a verifiable slaughter-time ledger.
**Why they care:** They carry the reputational and food-safety liability for what they serve.

**Who definitely won't use this:** Large industrial slaughterhouses with formal cold-chain systems, and buyers who don't care about halal provenance.

## Feature Set

### MVP — Week 1-3
- **Slaughter log card:** Butcher logs animal count, slaughterer's name and time in two taps; produces a shareable card with a QR.
- **Heat clock:** Hours-out-of-cold counter combined with live Open-Meteo apparent temperature; turns amber at 4 hours and red at 6 hours of ambient exposure above 30°C.
- **Sell-by nudge:** Suggests markdown/sell-first order per quarter based on slaughter time and forecast heat.
- **Rain-day alert:** Morning message when rain forecast makes tarped, humid stalls likely to extend exposure.
- **Khmer + Cham-friendly UI:** Khmer script with Arabic-script halal terms; voice-note input.

### Version 2 — Month 2-3
- **Buyer verification page:** Public link showing a stall's last 7 days of slaughter logs.
- **Cattle source ledger:** Where the animal was bought (village/trader), with photo.
- **Imam/committee countersign:** Optional attestation by a recognised community committee.

### Power User / Pro Features
- **Restaurant dashboard:** A halal restaurant sees all its suppliers' time-stamped cards.
- **Cold-box sensor integration:** Cheap BLE thermometer logging inside the cool box.

## Technical Implementation

### Suggested Stack
Telegram bot plus a lightweight PWA for the public verification page. Butchers already use Telegram and Facebook Messenger; an installable app would not be adopted.

**Chosen stack:** Telegram bot (grammY) + Cloudflare Workers + D1 for logs + static verification page — near-zero hosting cost, offline-tolerant via bot message queue.

### APIs & Data Sources
| API | Specific Endpoint | What It Returns | Refresh Rate | Auth | Cost |
|-----|------------------|-----------------|--------------|------|------|
| Open-Meteo | `https://api.open-meteo.com/v1/forecast?latitude=11.60&longitude=104.93&hourly=temperature_2m,relative_humidity_2m,apparent_temperature&timezone=Asia/Phnom_Penh` | Hourly temp, humidity, feels-like | hourly | none | free |
| World Bank | `https://api.worldbank.org/v2/country/KH/indicator/NY.GDP.PCAP.CD?format=json` | Income context for pricing | yearly | none | free |
| ExchangeRate-API | `https://open.er-api.com/v6/latest/USD` | USD→KHR for dual-currency prices | daily | none | free |

### Database Schema (key tables only)
```
butcher: id (uuid), name (text), market (text), telegram_id (bigint)
slaughter_batch: id (uuid), butcher_id (fk), animals (int), slaughtered_at (timestamptz), slaughterer (text), source_village (text)
heat_reading: batch_id (fk), hour (timestamptz), apparent_c (float), rh (int)
attestation: batch_id (fk), signer (text), signed_at (timestamptz)
```

### Key Technical Decisions
1. **Self-reported with transparency, not certification:** The app records claims and time; it never claims to certify halal status, avoiding religious-authority conflict.
2. **Ambient proxy, not sensors:** Uses forecast apparent temperature rather than hardware to stay free for butchers.

### Hardest Technical Challenge
Trust: self-reported logs can be faked. Mitigation: photo timestamp at slaughter, community countersign option, and public history that makes patterns of falsification visible.

## Monetization Strategy

**Model chosen:** hybrid — free for butchers, paid for buyers.

| Tier | Price | What's Included | Why They Pay This |
|------|-------|-----------------|-------------------|
| Free | $0 | Logging, heat clock, public card | Acquisition hook |
| Restaurant | $8/mo (~32,500 riel) | Supplier dashboard, history export | Liability cover |
| Hotel/catering | $30/mo | Multi-supplier compliance reports | Audit trail |

**Why someone pays:** A restaurant owner who had a guest complain of upset stomach wants to show the beef's time and source in 10 seconds.

**12-month revenue trajectory:**
- Month 3: ~10 restaurants × $8 = $80/month
- Month 12: ~120 restaurants/hotels × ~$12 = ~$1,440/month

**Alternative if SaaS doesn't work:** Grant from a Muslim-community development fund or a food-safety NGO; sponsorship by ice suppliers.

## Marketing Strategy

**Exact communities to reach:**
- Cambodian Muslim (Cham) community Facebook groups — several with tens of thousands of members (verify exact counts before outreach)
- Phnom Penh halal food Facebook groups and Telegram channels
- Cambodia Muslim Student / youth association pages that organise Friday-prayer communications

**First 10 users and how you get them:**
Visit the Prek Pra and Chroy Changvar markets at 4am, walk the beef stalls with a printed QR card, and sign up the first 10 butchers on the spot. Then approach 5 halal restaurants that already buy from them.

**The press angle:**
"At 40°C, how fresh is your halal beef? Cambodian Cham butchers get a time-stamped trust card."

**Content / SEO play:**
Khmer and English "Halal beef in Phnom Penh — where and when it was slaughtered" public pages.

**Launch sequence:**
1. Pilot with 5 butchers for two weeks.
2. Launch public verification pages with the first two restaurants.
3. Week 1: collect disputes, adjust heat thresholds.

## Competitive Landscape

| Existing Solution | What They Do | Where They Fall Short | Why This Wins |
|-------------------|-------------|----------------------|---------------|
| Community word of mouth | Personal trust | Not verifiable, doesn't scale | Public per-batch record |
| Formal halal certifiers | Certify producers | Thin coverage for wet-market stalls | Daily lightweight log, not certification |
| Generic cold-chain apps | Track sensor temps | Need hardware and big-buyer contracts | Free, phone-only |

**Moat:** Community trust and a growing public history of supplier records that competitors can't copy overnight.

## Risk Factors

1. **Religious/Regulatory:** Community bodies may object to a tool that looks like certification → **Mitigation:** Frame as logging only; invite committee endorsement.
2. **Adoption:** Butchers may fear exposure of slow-moving stock → **Mitigation:** Logs private by default; public card is opt-in.
3. **Data:** Forecast apparent temperature is a proxy for stall conditions → **Mitigation:** Optional cheap BLE sensor in v2.

## Build Reality Check

| Phase | Realistic Timeline | What Exists at End |
|-------|-------------------|-------------------|
| Prototype | 2 weeks | Telegram bot with slaughter log and heat clock |
| Beta | 4 weeks | 10 butchers and 3 restaurants using it |
| Launch | 10 weeks | Public pages and paid restaurant tier |

**Solo founder feasibility:** Yes — the bot and static pages are small; the work is community trust.
**Biggest execution risk:** Gaining acceptance from the community's religious leaders without appearing to replace them.

---
*Generated: 2026-10-17 | Industry: food_beverage | Sub-industry: halal_tracking | Geography: cambodia*
*APIs queried for real data: Open-Meteo Forecast API, World Bank Open Data, ExchangeRate-API*

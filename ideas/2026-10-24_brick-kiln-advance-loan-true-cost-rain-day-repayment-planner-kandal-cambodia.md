---
id: kiln-advance-true-cost-kandal-2026-10-24
title: ThlaiDoh — Kiln-Advance vs MFI True-Cost & Dry-Spell Repayment Planner for Brick-Moulding Families in Kandal, Cambodia
created: 2026-10-24T08:05:00+07:00
industry: finance_economics
sub_industry: microfinance_access
geography: cambodia
apis_used: Open-Meteo Forecast API, ExchangeRate-API, World Bank Open Data
monetization_model: grant-funded
target_user: Husband-and-wife brick-moulding teams in Kandal Province (Kien Svay, Lvea Em, Ksach Kandal districts along the Bassac and Mekong) who live on-site at small family kilns, take a lump-sum cash advance from the kiln owner (often USD 500-2,000) repaid in bricks at a set per-thousand price, often while also holding a 12-24 month MFI loan secured on a land-title copy. They mould and sun-dry bricks Nov-May, are paid per 1,000 bricks, and lose whole drying batches to a single rain night. They read Khmer, use Facebook/Telegram on a USD 60-100 Android, and cannot tell which of their debts is costing more.
concept_hash: kiln-advance-vs-mfi-true-cost-and-dry-spell-repayment-planner+kien-svay-lvea-em-ksach-kandal-kandal-cambodia+brick-moulding-families-with-owner-advances-and-mfi-loans
---

# ThlaiDoh — Kiln-Advance vs MFI True-Cost & Dry-Spell Repayment Planner

## The Hook
- A Kandal brick-moulding couple signs a thumbprint for a USD 1,200 advance "repaid in bricks" and a USD 1,500 MFI loan the same month. Neither lender ever shows them one number: what the debt costs per year, or how many dry days they need to clear it.
- The advance is priced in bricks, not interest. When the owner sets the buy-back price per 1,000 bricks below the market rate, the "free" advance carries a hidden annual rate that can exceed the MFI loan, and nobody calculates it. This app does that calculation in Khmer, in 30 seconds.
- Dry-season brick output hinges on rain-free nights. The planner turns a 7-day forecast into "bricks you can realistically make before the next wet spell," so repayment promises match the weather.

## Real Data Found
> Live data queried from real APIs during idea generation — not placeholders.

| Source | Data Point | Value | Queried |
|--------|-----------|-------|---------|
| Open-Meteo Forecast | Rain, Kandal (11.40N, 104.95E), past 7 days 17-23 Oct | 7.7, 4.3, 10.5, 3.4, 0.8, 1.3, 6.1 mm = 34.1 mm total; 7 of 7 days wet | 2026-10-24 |
| Open-Meteo Forecast | Forecast 24-28 Oct | 1.0, 0.4, 0.5, 0.5, 2.4 mm; precipitation probability 8-41% (a 5-day dry-ish window) | 2026-10-24 |
| Open-Meteo Forecast | Forecast 29-30 Oct | 12.4 mm (88%) and 18.2 mm (86%) — window closes | 2026-10-24 |
| ExchangeRate-API | USD/KHR | 4,060.03 riel per USD (updated 24 Oct 2026) | 2026-10-24 |
| World Bank Open Data | Cambodia domestic credit to private sector, % of GDP | 120.7% (2025), down from 132.8% (2022) | 2026-10-24 |
| World Bank Open Data | Cambodia GDP per capita | USD 2,872 (2025) | 2026-10-24 |

Cambodia's private credit is over 120% of GDP, among the highest in Asia, in an economy where income per head is under USD 3,000. In Kandal that debt reaches a family at a kiln through two parallel channels, an MFI contract and an owner's advance, which nobody compares.

The weather data shows why timing matters. Every one of the last 7 days was wet (34.1 mm), so almost no bricks could dry. The forecast then gives a 5-day dry-ish window, followed by 12.4 mm and 18.2 mm. A family that moulds bricks on day 6 loses them. The planner makes that visible before the family commits labour.

## The Problem
A couple at a kiln in Kien Svay took a USD 1,200 advance in the dry season. The owner says it will be "repaid in bricks." They are credited, say, USD 28 per 1,000 bricks when the owner sells at USD 38-42. They also owe an MFI roughly USD 110 a month. With 34.1 mm of rain in the last week, their last batch slumped and they are behind on both. The owner offers a bigger advance to "settle the gap."

The structural reason nobody sees the cost: an advance repaid in goods has no stated rate, and the MFI quotes a flat monthly rate, which understates the effective annual rate on a declining balance. The couple compare "no interest" against "1.5% a month" and pick wrong. NGO financial-literacy leaflets cover MFI loans only, and assume cash repayment.

If this stays unbuilt, families roll advance upon advance until the debt exceeds what a season of bricks can repay. Debt bondage at kilns is documented across Cambodia, and families sell land titles or send children to work to cover the gap.

## Who Uses This
**Primary user:** Brick-moulding couples at small family kilns in Kien Svay, Lvea Em and Ksach Kandal. They moulded 800-1,500 bricks a day each in good weather, are paid per 1,000, and hold both an owner advance and an MFI loan.
**What they do now (and why it sucks):** They ask the owner "how much do I still owe?" and accept the answer, since they keep no records and the owner's notebook is the only record.
**When they pay:** They don't. The tool is free. The trigger to use it is the moment the owner offers a new advance or an MFI officer offers top-up credit.

**Secondary user:** Community credit officers at NGOs (e.g. labour-rights and anti-bondage groups) and commune councillors who help families negotiate.
**Why they care:** They get a printable calculation to show owners and MFI officers, replacing arguments about feelings with arithmetic.

**Who definitely won't use this:** Large mechanised kilns, owners wanting to price advances more cleverly, and families with no phone.

## Feature Set

### MVP — Week 1-3
- **True-cost calculator:** Enter advance amount, bricks owed, owner's per-1,000 credit price, and the market sale price. It outputs the hidden annual rate and USD/riel cost.
- **MFI loan decoder:** Enter flat monthly rate and term. It outputs the effective annual rate on a declining balance and the total riel repaid.
- **Two-debt comparison:** Side-by-side card showing which debt costs more per USD 100 borrowed.
- **Dry-spell brick planner:** Pulls the 7-day Kandal forecast and outputs the number of "mouldable days" and the brick count the family can realistically clear.
- **Khmer voice and number readout:** All results spoken in Khmer and shown in riel with large digits, for low-literacy users.

### Version 2 — Month 2-3
- **Debt diary:** Log bricks delivered and owner's credit entries, with a photo of the owner's notebook page. This builds a dated record.
- **Printable negotiation sheet:** One-page Khmer PDF with the calculation, to show owner or MFI officer.
- **National Bank of Cambodia rate-cap check:** Flags MFI contracts above the regulatory cap.

### Power User / Pro Features
- **NGO caseworker dashboard:** Aggregate anonymised patterns by kiln cluster.
- **Commune-level advance benchmarking:** Median advance size and implied rates by district.

## Technical Implementation

### Suggested Stack
**Chosen stack:** Telegram bot plus a lightweight Khmer PWA. Kiln families already use Telegram and Facebook, and a bot needs no install and works on weak connections. The PWA caches the calculator offline.

### APIs & Data Sources
| API | Specific Endpoint | What It Returns | Refresh Rate | Auth | Cost |
|-----|------------------|-----------------|--------------|------|------|
| Open-Meteo Forecast | `https://api.open-meteo.com/v1/forecast?latitude=11.40&longitude=104.95&daily=precipitation_sum,precipitation_probability_max&timezone=Asia/Phnom_Penh&past_days=7&forecast_days=7` | Daily rain and probability for Kandal | hourly | none | free |
| ExchangeRate-API | `https://open.er-api.com/v6/latest/USD` | USD/KHR rate | daily | none | free |
| World Bank Open Data | `https://api.worldbank.org/v2/country/KH/indicator/FS.AST.PRVT.GD.ZS?format=json&mrv=6` | Private credit % of GDP | annual | none | free |

### Database Schema (key tables only)
```
users: id (uuid), telegram_id (text), district (text), created_at (timestamp)
debts: id (uuid), user_id (uuid), type (enum advance|mfi), principal_usd (numeric), terms (jsonb)
brick_logs: id (uuid), user_id (uuid), date (date), bricks_delivered (int), credit_price_per_1000 (numeric)
forecast_cache: date (date), rain_mm (numeric), prob (int)
```

### Key Technical Decisions
1. **Compute rates on-device in the PWA:** The calculator is pure arithmetic, so it works offline and no financial data leaves the phone.
2. **Treat in-kind advances as implicit-rate loans (IRR of brick credit vs market value):** This is the one calculation nobody else does, and it needs only four inputs.

### Hardest Technical Challenge
Getting honest inputs. Families often don't know the owner's market sale price. Mitigation: ship a district benchmark price range collected by the NGO partner, and show the result as a range rather than a single figure.

## Monetization Strategy

> Note: This is a free, grant-funded tool. Charging kiln families would defeat its purpose.

**Model chosen:** grant-funded

| Tier | Price | What's Included | Why They Pay This |
|------|-------|-----------------|-------------------|
| Free | $0 | Calculator, planner, Khmer voice | Acquisition and impact |
| NGO partner | $50/mo | Caseworker dashboard, printable sheets | Saves caseworker time |
| Funder grant | $15k one-off | Build plus 12 months of operation | Measurable debt-literacy outcomes |

**Why someone pays:** An NGO or funder pays because it turns anti-bondage casework from anecdote into documented rates.

**12-month revenue trajectory:**
- Month 3: ~2 NGO partners × $50 = $100/month
- Month 12: ~8 NGO partners × $50 = $400/month, plus one USD 15k grant

**Alternative if SaaS doesn't work:** Fund through a financial-inclusion grant (e.g. a labour-rights or consumer-protection programme), or sell the data (anonymised) to researchers.

## Marketing Strategy

**Exact communities to reach:**
- Khmer-language Facebook groups for Kandal community news and for brick/kiln workers (sizes vary and are unverified; confirm before outreach)
- Telegram groups run by Cambodian labour-rights NGOs and commune councils
- Cambodian Facebook pages on consumer protection and microfinance borrowers' rights

**First 10 users and how you get them:**
Visit three Kien Svay kilns with a local NGO caseworker who already knows the families. Run the calculator live on their own advances, and ask each family to show it to one neighbour.

**The press angle:**
"The 'interest-free' brick advance can cost more than the MFI loan: we did the arithmetic for Kandal's kiln families." This suits Khmer Times, Cambodianess and labour-rights reporting.

**Content / SEO play:**
Khmer explainer pages: "How to calculate your advance's real interest rate," and "How many dry days do you need to repay?"

**Launch sequence:**
1. Validate the formulas with an NGO caseworker and a micro-finance specialist.
2. Pilot at 3 kilns for a dry-season month, collecting feedback.
3. Release the bot publicly and brief partner NGOs in week 1.

## Competitive Landscape

| Existing Solution | What They Do | Where They Fall Short | Why This Wins |
|-------------------|-------------|----------------------|---------------|
| MFI loan calculators / NBC consumer leaflets | Explain MFI interest | Ignore in-kind advances and weather | Covers both debts and the rain constraint |
| NGO financial-literacy workshops | Teach budgeting | One-off, not personalised | Personal numbers on the family's own phone |
| Nothing exists | In-kind advance true-cost calculator | — | First mover |

**Moat:** Local trust through NGO partners and a growing district benchmark dataset of advance terms.

## Risk Factors

1. **Adoption:** Families may fear owner retaliation if they challenge terms → **Mitigation:** Results are private and the NGO handles any negotiation.
2. **Data:** Market price benchmarks may be wrong or stale → **Mitigation:** Show ranges and let the NGO refresh them monthly.
3. **Regulatory:** Flagging MFI contracts could draw lender pushback → **Mitigation:** Present neutral arithmetic only, and cite published NBC rules.

## Build Reality Check

| Phase | Realistic Timeline | What Exists at End |
|-------|-------------------|-------------------|
| Prototype | 3 weeks | Calculator and planner as a Telegram bot with Khmer text |
| Beta | 6 weeks | 3 kilns piloting with real advances |
| Launch | 12 weeks | NGO-partnered release with printable sheets |

**Solo founder feasibility:** Yes — the maths and bot are simple; the hard part is trusted local access.
**Biggest execution risk:** Without an NGO partner on the ground, the first families will never trust or try it.

---
*Generated: 2026-10-24 | Industry: finance_economics | Sub-industry: microfinance_access | Geography: cambodia*
*APIs queried for real data: Open-Meteo Forecast API, ExchangeRate-API, World Bank Open Data*

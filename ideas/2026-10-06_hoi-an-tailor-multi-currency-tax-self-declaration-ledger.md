---
id: hoi-an-tailor-multi-currency-tax-self-declaration-ledger-2026-10-06
title: SổMay — Multi-Currency Daily Takings Ledger & Self-Declaration Tax Prep for Hội An Tailor-Shop Households After the End of Lump-Sum Tax
created: 2026-10-06T08:00:40+07:00
industry: finance_economics
sub_industry: tax_compliance
geography: vietnam
apis_used: Open Exchange Rates (open.er-api.com), World Bank Indicators API, Open-Meteo Forecast API
monetization_model: hybrid
target_user: Family-run tailor shops (hộ kinh doanh, 2-6 sewers, usually the mother measures customers and the daughter or son handles Facebook/Zalo orders) on Trần Phú, Lê Lợi and Hoàng Diệu streets and inside Hội An Central Market, earning roughly 400M-2B VND/year, paid in a messy mix of USD and KRW cash, VietQR transfers, foreign-card terminals and PayPal deposits from repeat overseas customers, who paid a fixed quarterly lump-sum (thuế khoán) for years and since 1 Jan 2026 must self-declare actual revenue, and who lose 5-15 trading days every October-November when the Thu Bồn floods the Old Town
concept_hash: multi-currency-revenue-self-declaration-ledger+hoi-an-old-town-vietnam+tailor-shop-household-businesses
---

# SổMay — Multi-Currency Daily Takings Ledger & Self-Declaration Tax Prep for Hội An Tailor Households

## The Hook
- Vietnam ended lump-sum "thuế khoán" tax for household businesses on 1 January 2026 — a Hội An tailor who has paid the same flat quarterly amount for a decade now has to declare *actual* revenue, in VND, from a cash drawer full of US dollars, Korean won, and VietQR screenshots on three family phones.
- Today 1 VND = 0.000039 USD and 0.05192 KRW: a $180 three-piece suit paid in dollars is ~4.6M VND, but a ₩250,000 cash deposit from a Korean couple is ~4.8M VND — nobody in the shop is converting at a defensible rate, and Open-Meteo shows **258 mm of rain forecast for Hội An over the next 7 days**, exactly when the shop will close for floods and revenue will "mysteriously" drop on the declaration.
- SổMay is a Zalo Mini App ledger that turns "tap the currency, type the amount" into a VND-denominated, date-stamped, flood-annotated revenue record that matches what the tax office's e-invoice and bank-transfer data will show — sold per shop for less than one suit alteration a month.

## Real Data Found
> Live data queried from real APIs during idea generation — not placeholders.

| Source | Data Point | Value | Queried |
|--------|-----------|-------|---------|
| Open Exchange Rates (open.er-api.com/v6/latest/VND) | VND → USD (last update Mon 05 Oct 2026 00:02 UTC) | 1 VND = 0.000039 USD (≈ 25,641 VND per USD) | 2026-10-06 |
| Open Exchange Rates | VND → KRW | 1 VND = 0.05192 KRW (≈ 19.26 VND per KRW) | 2026-10-06 |
| Open Exchange Rates | VND → AUD / EUR / THB | 0.000055 AUD (≈18,182 VND/AUD) / 0.000034 EUR / 0.001294 THB | 2026-10-06 |
| World Bank (ST.INT.ARVL, Vietnam) | International tourist arrivals | 18,009,000 (2019) → 3,837,000 (2020) | 2026-10-06 |
| World Bank (ST.INT.RCPT.CD, Vietnam) | International tourism receipts | US$11.83B (2019) → US$3.23B (2020) | 2026-10-06 |
| World Bank (SL.EMP.SELF.ZS, Vietnam) | Self-employed share of total employment (ILO modeled) | 53.35% (2025), down from 54.65% (2022) | 2026-10-06 |
| Open-Meteo Forecast (15.8801 N, 108.338 E — Hội An Old Town) | Daily precipitation, 6–12 Oct 2026 | 41.1 / 43.5 / 50.7 / 10.3 / 33.7 / 60.2 / 18.8 mm = **258.3 mm in 7 days**; rain probability 86–100% every day | 2026-10-06 |
| Open-Meteo Forecast | Precipitation, 3–4 Oct 2026 (just before) | 0.1 mm and 0.0 mm (2–7% probability) | 2026-10-06 |

More than half of Vietnam's workforce (53.35%) is self-employed — the household-business layer that lump-sum tax was designed for, and that the 2026 reform now pushes onto declaration-based filing. Hội An tailors are the sharpest edge of that change: their revenue is unusually foreign-currency-heavy (tourism receipts swung from $11.83B to $3.23B in one year in 2020 — these shops know exactly how volatile foreign cash is) and unusually seasonal.

The weather data shows the other half of the problem. After a bone-dry 3–4 October, Hội An has 258 mm of rain forecast in seven days, with near-certain rain every day. That is the start of the Thu Bồn flood season when Bạch Đằng and Nguyễn Thái Học streets go under and tailors on low streets close or move stock upstairs. Under thuế khoán, a flood week cost money but not paperwork. Under self-declaration, a quarter with a 40% revenue dip and no record of *why* is exactly what invites a tax officer's follow-up question.

## The Problem

It's 7pm on a Tuesday in mid-October on Trần Phú street. Chị Lan has just closed her shutters an hour early because the river is rising. In her drawer: $340 in US notes from two Australians, ₩150,000 from a Korean honeymoon couple who left a deposit for áo dài, a stack of card-terminal slips, and her daughter's phone has six VietQR transfer notifications from a dress order shipped to Đà Nẵng. Since January she is supposed to self-declare revenue. Her current "system" is a school exercise book where USD amounts are written as "$" and KRW as "won", never converted, and a quarter-end panic where her nephew who works at a bank estimates the total. With 258 mm of rain coming this week, she'll lose days of trade — and her Q4 declaration will look nothing like Q3.

The structural reason is that every tool for Vietnamese household-business tax compliance assumes a single-currency, domestic shop: a phở stall or a grocery with a POS. The e-invoice cash-register solutions pushed out for the 2026 transition (MISA, Viettel S-Invoice, KiotViet, Sapo) are built for VND sales of SKUs, not for "deposit in won, balance in dollars, alteration paid by bank transfer three weeks later." The tax office will increasingly see the *bank-transfer* side of these shops automatically, but the cash side is invisible — so the risk isn't evasion, it's a mismatch: declared revenue that's either too low versus bank data (triggering a review) or inflated because foreign cash was converted at a careless rate.

If nothing changes, two bad things happen at once. Some families over-declare out of fear and pay tax on currency-conversion errors; others under-declare by accident and get reviewed during the exact months (Oct–Dec) when floods have already cut their income. Many older tailors, who have survived COVID's tourism collapse, simply decide the paperwork isn't worth it and close or sell to bigger shops — accelerating the consolidation of Hội An's tailor trade into a handful of mass-production "tailor factories."

## Who Uses This

**Primary user:** The 40-60-year-old owner (usually a woman) of a family tailor shop in Hội An's Old Town or Central Market, 2-6 sewers, revenue roughly 400M-2B VND/year, who handles cash while a younger family member manages Zalo/Facebook orders and bank transfers on their own phone.
**What they do now (and why it sucks):** An exercise book of unconverted mixed-currency amounts plus screenshots scattered across three phones, reconciled at quarter-end by a relative's guess.
**When they pay:** The first time the ward tax officer (or the e-tax portal) flags a gap between their declared revenue and their bank inflows — or when the first flood quarter makes them realize they can't explain a revenue drop.

**Secondary user:** Small local tax-service agents and accountants in Hội An and Đà Nẵng (đại lý thuế) who are suddenly handling dozens of former-khoán households.
**Why they care:** Instead of receiving shoeboxes of receipts, they get a clean VND ledger export per client with currency rates and closure days already documented.

**Who definitely won't use this:** Large "tailor factory" shops with 30+ staff and proper accountants already on MISA; street-food vendors with single-currency VND sales who are below the revenue threshold.

## Feature Set

### MVP — Week 1-3
- **Three-tap currency entry:** Pick USD / KRW / AUD / EUR / VND / card / VietQR, type amount, done — converted to VND at that day's cached reference rate and stored with the rate used.
- **Family shared ledger:** Mother logs cash, daughter logs transfers from her phone, both land in one daily total (Zalo login, no passwords).
- **Bank-notification capture:** Paste or share a bank SMS/app notification into the mini app; it parses amount, time and reference and asks "which order?"
- **Closure-day log:** One button — "Closed today: flood / Tết / sick / power cut" — auto-suggested when Open-Meteo forecasts >40 mm, creating a dated record for the declaration notes.
- **Quarter running total vs threshold:** A progress bar showing year-to-date revenue in VND against the current non-taxable and e-invoice thresholds (configurable, since thresholds have shifted during the 2025-26 reform).

### Version 2 — Month 2-3
- **Declaration draft export:** Generates the revenue figures in the format of the household-business declaration form, plus a PDF annex listing closure days and exchange-rate sources.
- **Deposit/balance matching:** Tracks a suit ordered with a ₩ deposit and settled in $ so revenue isn't double-counted.
- **Tax-agent view:** A read-only link for the family's tax agent covering all their household clients.

### Power User / Pro Features
- **Bank-statement reconciliation:** Upload a monthly bank statement CSV; SổMay flags transfers not in the ledger and ledger entries not in the bank.
- **Seasonality report:** Year-over-year revenue by month overlaid with rainfall and closure days — useful evidence for both the tax office and microloan applications.

## Technical Implementation

### Suggested Stack
Hội An shop owners live in Zalo, not app stores; they will not install a separate app or remember a website.

**Chosen stack:** Zalo Mini App (React-based ZMP framework) + Supabase (Postgres, Singapore region) + a nightly Cloudflare Worker that caches exchange rates and the Hội An rain forecast — because Zalo is where every customer order and family conversation already happens, and the Mini App gets Zalo identity for free.

### APIs & Data Sources
| API | Specific Endpoint | What It Returns | Refresh Rate | Auth | Cost |
|-----|------------------|-----------------|--------------|------|------|
| Open Exchange Rates (ER-API) | `https://open.er-api.com/v6/latest/VND` | Daily VND cross-rates for USD, KRW, AUD, EUR, JPY, CNY | Daily | none | free |
| Vietcombank exchange rate XML | `https://portal.vietcombank.com.vn/Usercontrols/TVPortal.TyGia/pXML.aspx` | Bank buy/sell cash rates (the locally defensible rate) | Several times daily | none | free |
| Open-Meteo Forecast | `https://api.open-meteo.com/v1/forecast?latitude=15.8801&longitude=108.338&daily=precipitation_sum,precipitation_probability_max&timezone=Asia/Bangkok&forecast_days=7` | 7-day rain forecast for the Old Town | Hourly | none | free |
| World Bank Indicators | `https://api.worldbank.org/v2/country/VN/indicator/ST.INT.ARVL?format=json` | Tourism arrivals for seasonality context in reports | Annual | none | free |

### Database Schema (key tables only)
```
households: id (uuid), name (text), tax_code (text), ward (text), owner_zalo_id (text), created_at (timestamptz)
members: id (uuid), household_id (uuid), zalo_id (text), role (text: owner|family|agent)
entries: id (uuid), household_id (uuid), entered_by (uuid), occurred_at (timestamptz), currency (text), amount_original (numeric), rate_to_vnd (numeric), rate_source (text), amount_vnd (numeric), channel (text: cash|card|vietqr|paypal), order_ref (text), note (text)
rates: date (date), currency (text), rate_to_vnd (numeric), source (text)
closures: id (uuid), household_id (uuid), date (date), reason (text), forecast_mm (numeric)
quarters: household_id (uuid), year (int), quarter (int), total_vnd (numeric), exported_at (timestamptz)
```

### Key Technical Decisions
1. **Store the rate used with every entry, never recompute:** The defensible record is "what rate did you use that day," so historical entries are immutable; rate changes never silently rewrite past revenue.
2. **Prefer Vietcombank cash rates over mid-market:** Tax officers in Quảng Nam/Đà Nẵng will recognize a Vietcombank rate; ER-API is the fallback when Vietcombank's feed is unreachable.

### Hardest Technical Challenge
Thresholds, declaration forms, and e-invoice requirements for household businesses have changed several times during the 2025-26 transition and may keep changing; hardcoding them guarantees wrong advice. Mitigation: keep all thresholds and form mappings in a versioned config table maintained with a partner tax agent, show the "rule version" on every export, and position the app strictly as a ledger and draft-preparation tool — not tax advice.

## Monetization Strategy

> Note: Not every idea needs Stripe. Some are better as free tools, grant-funded, or sold B2G.

**Model chosen:** hybrid (cheap per-shop subscription paid via VietQR + tax-agent seat licenses)

| Tier | Price | What's Included | Why They Pay This |
|------|-------|-----------------|-------------------|
| Free | $0 | Ledger, currency conversion, closure log, quarter total | Gets the family logging daily from day one |
| Shop | 99,000 VND/mo (~$3.90) | Declaration draft export, deposit matching, bank-SMS parsing, 2 years history | Less than one hem alteration; peace of mind at quarter-end |
| Tax Agent | 990,000 VND/mo (~$39) | Up to 40 household clients, bulk exports, reconciliation | Saves days of shoebox-receipt sorting per quarter |

**Why someone pays:** The first quarter-end where the declaration takes 10 minutes instead of a weekend of arguing with the nephew — or the first letter from the tax office asking about a revenue gap.

**12-month revenue trajectory:**
- Month 3: ~40 shops × 99,000 VND + 2 agents × 990,000 VND ≈ 5.94M VND ≈ $232/month
- Month 12: ~350 shops (Hội An + Đà Nẵng + Nha Trang tourist-market households) × 99,000 VND + 15 agents × 990,000 VND ≈ 49.5M VND ≈ $1,930/month

**Alternative if SaaS doesn't work:** Partner with a bank (Vietcombank, VPBank) that wants household-business deposit accounts, or with a GIZ/USAID-style SME formalization program, offering SổMay free as an onboarding tool.

## Marketing Strategy

**Exact communities to reach:**
- "Hội An Tailors" and "Hoi An Tailor Reviews" Facebook groups (est. 10k-30k members combined, mostly foreign customers — useful for finding shops that are active online)
- Vietnamese Facebook groups for household-business owners navigating the khoán abolition, e.g. "Hộ Kinh Doanh Cá Thể - Hỏi Đáp Thuế" style groups (est. 50k-200k members; search "bỏ thuế khoán" to find the most active)
- Hội An tailor association / Hội An Old Town business associations, plus the Hội An Central Market management board's Zalo groups for stallholders
- r/VietNam (est. 200k+ members) for the press-angle story; r/HoiAn for tourist-side awareness

**First 10 users and how you get them:**
Walk Trần Phú, Lê Lợi and the Central Market cloth section in late October (post-flood, when shops are quiet and cleaning up) with a Vietnamese-speaking partner, sit with the owner, and enter one day's takings with them in under five minutes. Start with mid-sized family shops that already have a Zalo OA and a younger family member handling orders — they are the ones who feel the multi-phone chaos most. Separately, approach 2-3 independent tax agents in Hội An who post about "bỏ thuế khoán" on Facebook; each brings 20-40 households.

**The press angle:**
"Hội An's tailors survived COVID and the floods — now they have to convert won to đồng for the tax man." A data piece showing how far declared revenue can swing depending on whether you use mid-market, Vietcombank buy or street exchange rates on a typical tailor's month of mixed-currency takings, for VnExpress International / Tuổi Trẻ.

**Content / SEO play:**
Vietnamese-language explainer pages ("Bỏ thuế khoán: hộ kinh doanh nhận ngoại tệ khai thuế thế nào?"), a daily "tỷ giá hôm nay cho cửa hàng du lịch" rate page, and a "Hội An flood closure calendar" built from anonymized closure logs.

**Launch sequence:**
1. Before launch: pilot with 5 shops through the Q3 → Q4 transition, co-design the closure-day log with them during the October floods.
2. Launch day: publish the free ledger in Zalo with a short Vietnamese demo video shot in a real tailor shop; announce through 2 partner tax agents.
3. Week 1: post the "same month, three exchange rates, three different tax bills" comparison in household-business Facebook groups.

## Competitive Landscape

| Existing Solution | What They Do | Where They Fall Short | Why This Wins |
|-------------------|-------------|----------------------|---------------|
| MISA eShop / MISA household-business tools | POS + e-invoices + accounting for small shops | SKU/POS-centric, single-currency, priced for shops with a register | Built for deposits, foreign cash and bespoke orders |
| KiotViet / Sapo | Retail POS and inventory | Doesn't model foreign-currency cash or deposits; heavy setup | Three-tap entry in Zalo, no hardware |
| Exercise book + relative's estimate | Status quo | No rates, no audit trail, no closure record | Same effort, defensible output |
| eTax Mobile (General Department of Taxation) | Filing and paying tax | Filing endpoint only — no ledger to produce the numbers | SổMay produces the numbers eTax asks for |

**Moat:** Trust within a tight-knit trade where shops recommend tools to each other; plus a growing dataset of real closure days and seasonal revenue curves that tax agents and banks come to rely on.

## Risk Factors

1. **Regulatory:** Thresholds, forms and e-invoice rules keep shifting during the 2026 reform, making exports wrong → **Mitigation:** Versioned rule config maintained with a licensed tax agent; every export stamped with its rule version and a "verify with your tax agent" note.
2. **Adoption:** Older owners may distrust anything that "reports to the tax office" → **Mitigation:** Make it explicit that SổMay never submits anything — data stays with the family and their chosen agent; on-device export only.
3. **Data:** Free exchange-rate feeds can go stale or differ from what a local tax officer accepts → **Mitigation:** Prefer Vietcombank published rates, store the source per entry, let users override with the rate they actually received at a money changer (with a note).

## Build Reality Check

| Phase | Realistic Timeline | What Exists at End |
|-------|-------------------|-------------------|
| Prototype | 3 weeks | Zalo Mini App ledger with multi-currency entry, daily rate cache, shared family ledger |
| Beta | 6 weeks | 10-15 Hội An shops logging daily through flood season; closure log and quarter totals |
| Launch | 12 weeks | Declaration draft export, tax-agent seats, first paying shops via VietQR |

**Solo founder feasibility:** Difficult — the code is simple, but it needs a Vietnamese-speaking co-founder or partner tax agent on the ground in Hội An for trust and rule accuracy.
**Biggest execution risk:** Becoming the "tax app" in a community wary of the tax office — positioning must stay "your family's ledger," never "compliance software."

---
*Generated: 2026-10-06 | Industry: finance_economics | Sub-industry: tax_compliance | Geography: vietnam*
*APIs queried for real data: Open Exchange Rates (open.er-api.com/v6/latest/VND), World Bank Indicators API (ST.INT.ARVL, ST.INT.RCPT.CD, SL.EMP.SELF.ZS for VN), Open-Meteo Forecast API (Hội An daily precipitation)*

---
id: kadar-kolok-sungai-kolok-2026-11-10
title: KadarKolok — Ringgit Board-Rate Setter & Flood-Day Shopper-Drop Planner for Baht-Pricing Market Stall Vendors in Sungai Kolok, Narathiwat
created: 2026-11-10T08:05:00+07:00
industry: finance_economics
sub_industry: currency_volatility
geography: thailand
apis_used: Open Exchange Rates API (open.er-api.com), Frankfurter API, World Bank Open Data API, Open-Meteo Forecast API, Open-Meteo Flood API
monetization_model: hybrid
target_user: Malay-Muslim and Thai-Chinese stall vendors at Sungai Kolok's Pasar Tanyong Mas-side wet/dry markets, the Charoen Khet Road clothing and dried-goods strip and the shops near the Rantau Panjang bridge, selling fruit, kerepok, dried squid, cheap clothing, cosmetics and household goods to Kelantanese day-trippers who walk across the Golok bridge with ringgit cash. Most run 1-2 person stalls netting ~฿400-1,200/day, price everything in baht, and write a hand-chalked "RM 1 = ฿__" board each morning — usually copied from a neighbour or a money-changer window and left unchanged for weeks.
concept_hash: ringgit-cash-board-rate-setter-and-flood-day-shopper-drop-planner+sungai-kolok-golok-bridge-rantau-panjang-narathiwat-thailand+baht-pricing-market-stall-vendors-taking-ringgit-cash
---

# KadarKolok — Ringgit Board-Rate Setter & Flood-Day Shopper-Drop Planner

## The Hook
- Every morning in Sungai Kolok, hundreds of stall vendors chalk "RM 1 = ฿__" on a cardboard square and take ringgit cash from Kelantanese shoppers at that rate all day. Today the ringgit is worth **฿8.27**; the 2025 average was about **฿7.67**. A vendor still using a "7.7" board is handing out roughly a 7% discount they never decided to give.
- KadarKolok is a LINE bot that sends each vendor one number before 7am: the board rate to write today. It's the live MYR/THB rate minus a buffer sized to this week's rate swings and the changer-window spread, so the vendor neither scares shoppers off with a stingy rate nor leaks margin. It also warns when the Golok River is about to rise and cross-border footfall will collapse.
- Sungai Kolok's economy runs on ringgit walking over one bridge. Make the board rate a shared, trusted public number and the same data becomes a footfall index that the municipality, the Narathiwat chamber of commerce and SME lenders don't have today.

## Real Data Found
> Live data queried from real APIs during idea generation — not placeholders.

| Source | Data Point | Value | Queried |
|--------|-----------|-------|---------|
| Open Exchange Rates API (open.er-api.com) | MYR → THB latest rate (updated Mon 09 Nov 2026 00:02 UTC) | 1 MYR = 8.2676 THB | 2026-11-10 |
| Frankfurter API (ECB reference) | MYR → THB, 66 trading days 10 Aug–09 Nov 2026 | 8.0705 (10 Aug, low) → 8.3150 (29 Oct, high) → 8.2508 (09 Nov) | 2026-11-10 |
| Frankfurter API (derived) | Day-to-day absolute move in MYR/THB over same window | mean 0.23%, max single-day 0.64% | 2026-11-10 |
| World Bank (PA.NUS.FCRF) | Official rate, Malaysia, 2025 avg | 4.2844 MYR per USD | 2026-11-10 |
| World Bank (PA.NUS.FCRF) | Official rate, Thailand, 2025 avg | 32.8828 THB per USD → implied 2025 avg ≈ 7.675 THB per MYR | 2026-11-10 |
| Open-Meteo Forecast | Daily precipitation, Sungai Kolok (6.03N, 101.97E), 7–10 Nov | 10.0 / 28.2 / 44.1 / 18.8 mm (rain probability 98–100%) | 2026-11-10 |
| Open-Meteo Forecast | Daily precipitation forecast 11–16 Nov | 8.6 / 12.4 / 16.1 / 4.5 / 3.7 / 7.4 mm | 2026-11-10 |
| Open-Meteo Flood API (GloFAS) | Golok River discharge at Sungai Kolok | 25.06 m³/s (9 Nov) → forecast peak 61.37 m³/s (12 Nov), about 2.4× in 3 days | 2026-11-10 |

The ringgit has moved about **7.8% against the baht** from its implied 2025 average (7.675) to today's 8.27, and **2.2% just since mid-August** (8.07 → 8.25). For a vendor working on a 15–25% gross margin on dried goods, 7% given away at the board is a third to half of their profit on every ringgit sale. A full point of drift on a hand-chalked number is very common, because nobody's job is to update it. Meanwhile the board can't just track the screen rate: day-to-day moves average 0.23% and hit 0.64%, and money-changer windows on both sides of the bridge add their own spread. Some buffer is necessary. The open question is how much, and that's the number the app gives.

The weather data adds a second problem. Northeast-monsoon rain over the Golok basin reached 44 mm on 9 Nov. GloFAS forecasts river discharge to jump from 25 to 61 m³/s by 12 November. This is the run-up to the season that floods Sungai Kolok and Rantau Panjang most years, when Kelantanese shoppers simply stop crossing. Vendors who stocked up on perishable fruit for a weekend crowd that never comes eat that loss too.

## The Problem

It's 6:40am on a Saturday at the Golok bridge approach. Kak Rohana unrolls the tarp over her kerepok-and-dried-squid stall and props up the same cardboard sign she's used since Hari Raya: "RM 1 = 7.7". By 10am three bus-loads of Kelantanese aunties have paid her in ringgit. Each RM 100 note she takes at 7.7 is worth ฿827 at today's rate, and she gave back ฿57 of it without noticing. Forty such notes on a good weekend is ฿2,280, about two days of her net income, lost to a number she copied from the stall next door. The week after, the river comes up over the market road and nobody crosses for six days. The 30 kg of langsat she bought for the weekend rots.

The problem exists because the rate on the board is a social number, not a financial one. Vendors set it by copying neighbours, glancing at a money-changer window (which shows a *buy* rate tuned for the changer's margin, not the vendor's), or keeping whatever rate felt fair last month. Bank apps show mid-market rates that vendors know they can't actually get when they change ringgit back at the changer. Nobody publishes the number a vendor actually needs: "what rate can I offer today, given where I'll sell this ringgit and how much it might move before I do?" On the flood side, the warnings come from the Royal Irrigation Department and the Narathiwat disaster office. They're aimed at evacuation, not at "don't buy 30 kg of perishables for Saturday."

If nothing changes, the losses stay invisible. They come in a few baht per note, spread across hundreds of stalls, and are never recorded anywhere. They also run in whichever direction hurts. When the ringgit weakens, stale boards overpay and vendors lose. When it strengthens and vendors over-correct, Malaysian shoppers compare boards, walk to the stall with the better rate, and the stingy vendor loses the sale. In a border town where cross-border shopping is the main income after years of insurgency-depressed tourism, those margins are the difference between a stall surviving a bad flood season or not.

## Who Uses This

**Primary user:** A stall vendor in Sungai Kolok municipality (Malay-Muslim or Thai-Chinese, age 35–65). They sell dried seafood, fruit, kerepok, clothing or cosmetics within ~1 km of the Golok bridge, take 40–80% of weekend revenue as ringgit cash, and change it back at a Kolok or Rantau Panjang money changer once or twice a week. They use LINE daily, often in Thai script but speak Kelantan-Patani Malay at home, and won't install a new app.
**What they do now (and why it sucks):** They copy the neighbour's chalk board or the changer's window rate and leave it for weeks. That leaks 3–8% of margin when the ringgit strengthens, and loses customers to the next stall when they over-correct.
**When they pay:** After they change a week's ringgit back at the changer and realise the baht they got doesn't match what they "sold" at. Or after a flood week where they over-stocked. That's when the market-association WhatsApp/LINE group starts asking "what rate are you using?"

**Secondary user:** Sungai Kolok money changers, small wholesalers supplying the stalls (who also take ringgit), and the Sungai Kolok municipality / Narathiwat Provincial Chamber of Commerce, which wants a daily signal of cross-border shopping activity.
**Why they care:** Changers get a stable, honest reference board that drives volume. The chamber gets the first-ever daily proxy for Malaysian day-tripper spending in the town.

**Who definitely won't use this:** Bangkok forex traders, tourists looking for the best exchange rate, and large duty-free shops on the Malaysian side that already have POS systems with automatic FX.

## Feature Set

### MVP — Week 1-3
- **06:30 Board Rate push:** A LINE message in Thai and Rumi/Jawi Malay: "Write RM 1 = ฿8.10 today". That's the live MYR/THB mid-rate minus a buffer = (changer spread entered by the vendor or crowd-reported) + 2× the trailing 10-day average daily move.
- **"How much did my old board cost me?" calculator:** The vendor types their current board rate and roughly how many ringgit they take per day. The bot replies with the baht lost (or customers scared off) per week at today's rate.
- **Printable dual-price card:** The bot returns an A5 PNG with the board rate in big numerals plus a ready-made conversion strip (฿20 / 50 / 100 / 200 / 500 → RM). The vendor prints it at the 7-Eleven photocopier or holds the phone up.
- **Flood-week stock warning:** When GloFAS discharge forecast for the Golok at Sungai Kolok passes a locally calibrated threshold (starting rule: >2× the 7-day mean, or a 3-day rain total >80 mm), Thursday's message says "Don't stock perishables for this weekend. River forecast is rising to ~61 m³/s on Sat."
- **Changer spread crowd-report:** Vendors reply "changer 8.05" after changing money back. The median of reports keeps the buffer honest without scraping anyone.

### Version 2 — Month 2-3
- **Market-group mode:** One LINE group admin (usually the market association head) gets the rate pushed to the whole group, so a whole row of stalls uses the same fair rate and nobody undercuts.
- **Weekend footfall forecast:** Combines the Malaysian public/school holiday calendar (Kelantan's Friday–Saturday weekend), rain forecast, river forecast and the rate itself (a strong ringgit pulls more shoppers) into a "busy / normal / dead" weekend outlook for stocking decisions.
- **Weekly ringgit ledger:** The vendor logs RM taken and RM changed back. The bot shows realised FX gain or loss for the week.

### Power User / Pro Features
- **Wholesaler price sheet:** Wholesalers supplying 20–50 stalls get a daily dual-currency price list auto-generated from their baht list.
- **Chamber / municipality dashboard:** Anonymised daily index of active vendors, average board rate, reported ringgit volume bands and flood-day closures. It's the first time-series of cross-border shopping in Sungai Kolok.

## Technical Implementation

### Suggested Stack
Vendors live in LINE and won't install anything, and the whole product is one number a day plus a warning. A LINE Official Account bot is the right shape. The calculation layer can be a single scheduled serverless function.

**Chosen stack:** LINE Messaging API bot + Cloudflare Workers (cron trigger 06:15 ICT) + Cloudflare D1 (SQLite) + a tiny static admin page. It costs almost nothing, has no servers to keep up, and the image cards are rendered with Satori/resvg in the Worker.

### APIs & Data Sources
| API | Specific Endpoint | What It Returns | Refresh Rate | Auth | Cost |
|-----|------------------|-----------------|--------------|------|------|
| Open Exchange Rates (open.er-api.com) | `https://open.er-api.com/v6/latest/MYR` | Latest MYR → THB (and all) rates | Daily | none | free |
| Frankfurter (ECB) | `https://api.frankfurter.dev/v1/{start}..?base=MYR&symbols=THB` | Daily MYR/THB time series for volatility buffer | Daily (ECB business days) | none | free |
| World Bank | `https://api.worldbank.org/v2/country/{MY,TH}/indicator/PA.NUS.FCRF?format=json` | Annual official rates for the "last year's average" comparison | Annual | none | free |
| Open-Meteo Forecast | `https://api.open-meteo.com/v1/forecast?latitude=6.03&longitude=101.97&daily=precipitation_sum,precipitation_probability_max&timezone=Asia/Bangkok&forecast_days=7` | 7-day rain over Sungai Kolok | Hourly model runs | none | free |
| Open-Meteo Flood (GloFAS) | `https://flood-api.open-meteo.com/v1/flood?latitude=6.03&longitude=101.97&daily=river_discharge&forecast_days=7` | Golok River discharge forecast (m³/s) | Daily | none | free |
| LINE Messaging API | `https://api.line.me/v2/bot/message/push` / `multicast` | Push board rate + cards to vendors and groups | On schedule | channel token | free tier 200 msgs/mo on Thai OA free plan; paid plans beyond |

### Database Schema (key tables only)
```
vendors: line_user_id (text pk), stall_type (text), lang (text: th|ms), market_zone (text), est_rm_per_day (int), group_id (text), joined_at (datetime)
daily_rates: date (date pk), mid_rate (real), vol_10d_pct (real), changer_spread_pct (real), board_rate (real), river_q_forecast_max (real), rain_3d_mm (real), flood_flag (bool)
changer_reports: id (int pk), line_user_id (text), reported_rate (real), changer_side (text: th|my), reported_at (datetime)
ledger: id (int pk), line_user_id (text), date (date), rm_taken (int), rm_changed (int), thb_received (int)
```

### Key Technical Decisions
1. **Publish one rounded number, not a live ticker:** Vendors need a rate that stays the same all day and rounds to ฿0.05 so they can do mental math. A live rate that changes by the hour would be ignored. The buffer formula is deliberately simple and explained in one line so vendors trust it.
2. **Crowd-reported changer spread instead of scraping changers:** Sungai Kolok changers don't publish online, and scraping or photographing their windows invites conflict. Vendors' own after-the-fact reports are more honest about the rate they actually got.

### Hardest Technical Challenge
Calibrating the flood warning for a small, flashy river. GloFAS works at ~5 km resolution, and its absolute discharge numbers for the Golok may not match the gauge levels at which the market road actually floods. False alarms on a Thursday cost vendors weekend sales, and a missed one costs a week of stock. **Mitigation:** Use the forecast's *relative* rise (×2 over the 7-day mean) rather than absolute m³/s at first. Backtest against GloFAS archive data and dates of past market closures gathered from local news and vendor memory (the 2022 and 2024 floods). Then check the trigger against Royal Irrigation Department telemetry for the Kolok station once the bot has a season of reports.

## Monetization Strategy

> Note: Not every idea needs Stripe. Some are better as free tools, grant-funded, or sold B2G.

**Model chosen:** Hybrid. Free for individual vendors forever, with a small paid tier for market groups and wholesalers, plus a B2G/chamber data dashboard funded by southern-border economic development programmes.

| Tier | Price | What's Included | Why They Pay This |
|------|-------|-----------------|-------------------|
| Free | $0 | Daily board-rate push, old-board-cost calculator, printable card, flood-week warning | A vendor sees the baht they were losing on day one |
| Market Group / Wholesaler | ~$6/mo (฿200) | Group push for a whole row of stalls, wholesaler dual-currency price sheet, weekly ringgit ledger | One rate for the whole market row stops undercutting, and a wholesaler saves an hour of daily recalculation |
| Chamber / Municipality | ~$150/mo or a grant line | Anonymised cross-border shopping index, flood-closure log, quarterly report | The first daily metric of Malaysian visitor spending in Sungai Kolok, useful in budget requests |

**Why someone pays:** The market association head is tired of vendors arguing about whose board is "too greedy" and whose is "giving money away." Paying ฿200 a month to make the whole row use one neutral, explainable number ends the argument.

**12-month revenue trajectory:**
- Month 3: ~10 groups/wholesalers × $6 = $60/month (free users ~300)
- Month 12: ~45 groups/wholesalers × $6 + 1 chamber/municipal contract × $150 = $420/month

**Alternative if SaaS doesn't work:** Run it as a grant-funded public good under the Southern Border Provinces Administrative Centre (SBPAC) SME support programmes or a Bank of Thailand / Krungthai financial literacy initiative. Or Kelantan–Narathiwat cross-border trade bodies (IMT-GT) can sponsor it as a trade-facilitation tool.

## Marketing Strategy

**Exact communities to reach:**
- "ตลาดสุไหงโก-ลก" and "คนสุไหงโก-ลก" local Facebook groups (town buy-sell and news groups, typically 20k–60k members each; verify counts at launch)
- Kelantan-side shopping groups such as "Shopping Rantau Panjang & Golok" style Facebook groups used by Kelantanese day-trippers (tens of thousands of members; they also post rate comparisons)
- The market associations' own LINE groups at the Tanyong Mas-side wet market and the bridge-approach dry-goods strip. Reach them through the Sungai Kolok municipality's community development office
- Narathiwat Provincial Chamber of Commerce (หอการค้าจังหวัดนราธิวาส) and its Facebook page

**First 10 users and how you get them:**
Spend two weekend mornings at the bridge-approach stalls with a printed card showing that day's rate and the "your board vs. today" loss in baht. Start with the five dried-seafood stalls nearest the immigration checkpoint, since they take the most ringgit, and the two biggest wholesalers supplying them. Get them to add the LINE OA on the spot. Recruit one market-row head to share the group push. Five vendors on one row using the same rate is the proof the rest of the market will copy.

**The press angle:**
"Sungai Kolok vendors are quietly giving Malaysian shoppers a 7% discount. The ringgit rose and the chalk boards didn't." A data story comparing a photo survey of 50 stall boards against the live rate. It suits Isranews / Deep South Watch, Thai PBS regional desks and Malaysian outlets (Sinar Harian, Harian Metro, which cover Rantau Panjang shopping trips).

**Content / SEO play:**
A public daily page "Kadar Ringgit Golok hari ini / อัตราริงกิตโก-ลกวันนี้" showing the fair board rate, the changer median and the river outlook. Kelantanese shoppers already search for exactly this before crossing. Also a monthly "board-rate drift" report.

**Launch sequence:**
1. Two weeks before: photograph and log 50 stall boards, backtest the buffer formula against Frankfurter history, and calibrate the flood flag on the November 2026 run-up.
2. Launch day (a Saturday morning): hand out 200 printed rate cards with the LINE QR at the bridge approach, and post the board-drift data story in the town Facebook groups.
3. Week 1: onboard one market-row group, take the first changer-spread reports, and send the first flood-week warning if the Golok rises as forecast for 12 Nov.

## Competitive Landscape

| Existing Solution | What They Do | Where They Fall Short | Why This Wins |
|-------------------|-------------|----------------------|---------------|
| Money-changer window boards | Show the changer's buy/sell rate | The changer's margin, not the vendor's. Vendors must walk there and guess a buffer | Gives a vendor-specific board rate with an explained buffer, pushed to the phone |
| Google / bank apps (Krungthai NEXT, Maybank) | Live mid-market rate | Vendors can't get the mid rate. The number changes all day and has no buffer | One rounded, all-day number that accounts for spread and volatility |
| Neighbour's chalk board | Social reference rate | Stale for weeks and spreads errors down the row | Becomes the shared neutral reference the row copies |
| RID / DDPM flood warnings | Evacuation-level alerts | Not aimed at stock decisions and arrive too late for Thursday buying | A commerce-framed "don't stock perishables" warning 3 days ahead |

**Moat:** The crowd-reported changer-spread dataset and the market-group habit. Once a market row uses KadarKolok's number as "the rate," a competitor has to win the whole row, not one vendor. The vendor-reported ringgit volume becomes a unique cross-border shopping index.

## Risk Factors

1. **Regulatory:** A tool that "sets" an exchange rate could be read as unlicensed money-changing advice under Bank of Thailand FX rules. → **Mitigation:** Frame it strictly as a *pricing* aid for the vendor's own goods (a dual-currency price list), not an exchange service. Never handle money. Show a disclaimer and the reference rates.
2. **Adoption / social:** Vendors may distrust a rate from an outsider, especially in the Deep South, where outsiders and data collection are viewed warily. → **Mitigation:** Partner with a respected local market head and the chamber, run in Malay and Thai, collect no ID beyond a LINE user ID, and make the formula visible.
3. **Data:** GloFAS can be badly off for the small Golok basin, and Frankfurter skips weekends, which are exactly the busiest market days. → **Mitigation:** Use open.er-api for weekend rates and Frankfurter only for volatility history. Treat the flood flag as relative and calibrate it with a season of local reports.

## Build Reality Check

| Phase | Realistic Timeline | What Exists at End |
|-------|-------------------|-------------------|
| Prototype | 2 weeks | LINE bot that pushes the daily board rate and card, plus the old-board cost calculator |
| Beta | 5 weeks | 50–100 vendors and 2 market groups, changer-spread reports flowing, first flood-week warning tested |
| Launch | 10 weeks | Public daily rate page, group tier live, chamber pilot dashboard |

**Solo founder feasibility:** Yes. The tech is a cron job, five free APIs and a LINE bot. The hard part is two weekends at the Golok bridge, not the code.
**Biggest execution risk:** Earning trust on the ground in Sungai Kolok as an outsider. Without a local Malay-speaking partner (a market head or a Narathiwat-based community worker), vendors won't add the LINE account, however good the number is.

---
*Generated: 2026-11-10 | Industry: finance_economics | Sub-industry: currency_volatility | Geography: thailand*
*APIs queried for real data: Open Exchange Rates API (open.er-api.com), Frankfurter API, World Bank Open Data API (PA.NUS.FCRF for MY and TH), Open-Meteo Forecast API, Open-Meteo Flood API*

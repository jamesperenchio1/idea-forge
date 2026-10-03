---
id: rabies-vaccine-dose-day-stock-board-southern-laos-2026-10-03
title: MaaKat — Rabies Vaccine "Dose-Day" Stock Board for Dog-Bite Families in Champasak & Salavan, Southern Laos
created: 2026-10-03T08:00:00+07:00
industry: health_medical
sub_industry: pharmacy_inventory
geography: laos
apis_used: WHO GHO (NTD_RAB2), World Bank Indicators (SH.XPD.CHEX.PC.CD, SH.XPD.OOPC.CH.ZS), Open Exchange Rates (open.er-api.com), Open-Meteo Forecast
monetization_model: grant-funded
target_user: Parents and grandparents of rice-farming families in Champasak and Salavan provinces (Pathoumphone, Sanasomboun, Khongxedone, Lao Ngam districts) whose child is bitten by a village dog, who get dose 1 of rabies post-exposure vaccine at a district hospital or Pakse, then have to come back on day 3, day 7 and (for some regimens) day 14/28 — on a motorbike, 40-120 km round trip, in October rain — only to sometimes find the pharmacy is out of vaccine or carries a different brand, with household health budgets where per-capita national health spending is now about $27/year and nearly half of it comes out of pocket.
concept_hash: rabies-pep-vaccine-and-rig-dose-day-stock-continuity+champasak-salavan-southern-laos-chong-mek-border+dog-bite-victim-families-and-district-hospital-pharmacists
---

# MaaKat — Rabies Vaccine "Dose-Day" Stock Board for Dog-Bite Families in Champasak & Salavan, Southern Laos

## The Hook
- A seven-year-old in Khongxedone gets bitten by a neighbour's dog. Her grandmother rides 60 km to Pakse for dose 1. On day 3 the vial fridge is empty. Rabies is ~100% fatal once symptoms start, and a skipped or badly delayed dose is how a cheap, preventable death happens.
- MaaKat (ໝາກັດ, "dog bite") is a WhatsApp/Messenger bot plus a one-page stock board. Hospital pharmacists report rabies vaccine and immunoglobulin (RIG) stock with one tap each morning. Families get a reminder the evening before each dose: *"Day 7 tomorrow. Pakse provincial has Verorab ✅. Lao Ngam district: out ❌. Sirindhorn Hospital across Chong Mek: in stock, about 750 THB."*
- Nobody tracks rabies biologics at the pharmacy-shelf level in southern Laos. The data the app collects (which facility ran out, for how long, and how many patients missed a dose) is something WHO's "Zero by 30" rabies programme and Gavi's new rabies-PEP support currently can't see.

## Real Data Found
> Live data queried from real APIs during idea generation — not placeholders.

| Source | Data Point | Value | Queried |
|--------|-----------|-------|---------|
| WHO GHO (`NTD_RAB2`) | Reported human rabies deaths, Lao PDR, 2019 → 2024 | 9 → 11 → 12 → **20 (2022)** → 4 → 6 | 2026-10-03 |
| WHO GHO (`NTD_RAB2`) | Reported human rabies deaths, Thailand 2024 / Cambodia 2024 | 4 / 7 | 2026-10-03 |
| World Bank (`SH.XPD.CHEX.PC.CD`) | Current health expenditure per capita, Lao PDR | **$27.42 (2023)**, down from $41.35 (2022) and $68.62 (2021) | 2026-10-03 |
| World Bank (`SH.XPD.OOPC.CH.ZS`) | Out-of-pocket share of health spending, Lao PDR | **44.84% (2023)**, up from 28.69% (2022) | 2026-10-03 |
| Open Exchange Rates | LAK exchange rates (updated Sat 03 Oct 2026 00:02 UTC) | 1 USD = **22,287 LAK**; 1 LAK = 0.001515 THB (1,000 THB ≈ 660,000 LAK) | 2026-10-03 |
| Open-Meteo Forecast | Pakse (15.12°N, 105.80°E) daily rain, 3–9 Oct 2026 | 1.5, 9.9, 3.5, 2.2, 3.6, **10.1, 14.2 mm**; max temp drops from 31.9 °C to 25.4 °C on 8 Oct | 2026-10-03 |

Laos has a small population (~7.5 M) and still reported more human rabies deaths than Thailand (~70 M) in four of the last six years. Its 2022 count of 20 was five times Thailand's. Reported deaths are a floor, since many rabies deaths in rural Laos happen at home and are never coded. What changed recently is the money. Health spending per Lao person fell by 60% in two years as the kip collapsed (22,287 LAK to the dollar today), and the out-of-pocket share jumped from 29% to 45%. Rabies vaccine is imported and priced in dollars or baht, so every devaluation makes the vial on the pharmacy shelf more expensive and makes provincial pharmacies more likely to under-order.

The Open-Meteo numbers are the practical problem. Days 7 and 8 of a PEP course started this week fall on 8–9 October, the two wettest days in Pakse's forecast (10–14 mm). A grandmother on a Honda Wave on a laterite road will skip a 60 km ride in the rain if she isn't sure the vaccine will be there when she arrives.

## The Problem

Dog bites in rural southern Laos are routine. Village dogs are free-roaming and mostly unvaccinated, and kids are bitten in the face and hands because they're at dog height. The textbook response works: wound washing, then a multi-dose vaccine course over 7–28 days, plus rabies immunoglobulin for deep (Category III) bites. The course only works if the patient completes it. In Champasak and Salavan, completing it means repeat trips to a facility that may or may not have stock that day. District hospital pharmacies hold a few vials at most and reorder through a provincial supply chain that runs on paper and phone calls. RIG is often unavailable outside Pakse, and sometimes in Pakse too. The family only finds out the shelf is empty after the trip.

Families currently work around this in a few ways, and all of them are bad. Some phone a cousin who knows a nurse. Some go straight to Pakse every time, which costs fuel and a lost work day in the middle of the rice harvest. Some cross at Vang Tao–Chong Mek to Sirindhorn Hospital or Phibun Mangsahan in Ubon Ratchathani, where stock is more reliable but costs baht, the brand may differ, and Thai staff have no record of the earlier doses. Many just stop after one or two doses, especially once the wound has healed and the dog still seems fine. Pharmacists, for their part, can't see what's stocked one district over. A clinic with 6 spare vials and one with zero have no channel between them.

If nothing changes, the pattern continues: rabies deaths a few months after a bite, written off as "the dog was crazy", when the actual cause was a missed day-7 dose because nobody knew the Lao Ngam fridge was empty. It's also the area where the Gavi-backed rabies PEP rollout most needs stock-level visibility and currently has none.

## Who Uses This

**Primary user:** A 50-something grandmother in Ban Nong Bok, Khongxedone district, raising two grandkids while their parents work in Thailand. She's on a Lao-language WhatsApp family group and Facebook, has a cheap Android phone and patchy 4G, and reads Lao but not much Thai. She earns from 2–3 hectares of rice and a few cattle. She paid for dose 1 in cash and doesn't know where dose 3 will come from.
**What they do now (and why it sucks):** She rides to the nearest hospital on dose day without knowing if they have vaccine. If they don't, she either rides another 60 km to Pakse or gives up.
**When they pay:** They never pay. This is a free public-health tool. The "conversion moment" is the nurse at dose 1 scanning a QR on the wall and enrolling the family, so the day-3 reminder already includes live stock.

**Secondary user:** Pharmacists and rabies-focal nurses at the 10 district hospitals in Champasak and 8 in Salavan, plus Champasak Provincial Hospital, Salavan Provincial Hospital and the provincial health office's communicable disease unit.
**Why they care:** They stop getting yelled at by families who rode two hours for nothing. They can borrow vials from the next district instead of turning people away. They also get an auto-generated monthly stock-out report to send up the chain, which they currently have to compile by hand.

**Who definitely won't use this:** Vientiane expats and tourists bitten by monkeys in Vang Vieng. They already go straight to Institut Pasteur du Laos or a Bangkok/Udon hospital with travel insurance, and the existing travel-medicine ecosystem serves them.

## Feature Set

### MVP — Week 1-3
- **One-tap stock check-in:** Each morning a pharmacist taps ✅/⚠️/❌ for each item (vaccine brand A, brand B, ERIG, HRIG) in a WhatsApp interactive message. No app to install and no login beyond their phone number.
- **Dose-day calculator:** The nurse enters bite date, Category (II/III), and regimen (Thai Red Cross 2-site ID, Essen IM, or abbreviated WHO 1-week). The bot generates the exact calendar and sends it to the family in Lao.
- **Evening-before reminder with live stock:** At 18:00 the day before each dose, the family gets the nearest 3 facilities with stock status, distance, and last-updated time.
- **Public stock board:** A static Lao/English web page listing every participating facility and current status, with timestamps. It works on 2G and can be screenshotted into family group chats.
- **Missed-dose nudge:** If the next facility's check-in doesn't log the patient within 24h of dose day, the family gets one follow-up message ("Dose 3 can still be given today or tomorrow — here's who has stock") and the enrolling nurse gets an alert.

### Version 2 — Month 2-3
- **Cross-border continuity card:** A printable/QR "PEP card" in Lao + Thai + English with doses given, brand, route, and dates. Thai hospitals in Ubon (Sirindhorn, Phibun Mangsahan, Sunpasitthiprasong) can continue the course correctly instead of restarting it.
- **Vial-sharing requests:** A district with ❌ can post "need 2 vials Verorab". Districts with surplus see it, agree, and log the hand-off (often carried by a staff member already riding to Pakse).
- **Rain-aware nudges:** Uses Open-Meteo to warn families a day early when heavy rain is forecast on dose day and suggests the closest stocked facility rather than the usual one.

### Power User / Pro Features
- **Provincial dashboard:** Stock-out days per facility per month, number of patients who missed a dose during a stock-out, and median distance travelled. Exportable for the Provincial Health Office and partners (WHO Laos, Institut Pasteur du Laos, Gavi programme staff).
- **Bite-cluster map:** Anonymised bite-location pins aggregated by village, to flag a possibly rabid dog (5 bites in one village in 48h) for a One Health / veterinary response team.

## Technical Implementation

### Suggested Stack
**Chosen stack:** WhatsApp Cloud API bot (with Facebook Messenger as fallback) + Cloudflare Workers + D1 (SQLite) + a static stock-board page on Cloudflare Pages. Lao families and district staff already live in WhatsApp and Messenger (LINE is a Thai habit, not a Lao one), and the infrastructure runs free-tier forever on a grant budget.

### APIs & Data Sources
| API | Specific Endpoint | What It Returns | Refresh Rate | Auth | Cost |
|-----|------------------|-----------------|--------------|------|------|
| WhatsApp Cloud API | `POST https://graph.facebook.com/v21.0/{phone_number_id}/messages` | Sends interactive button messages / templates; webhook receives pharmacist taps | real-time | token | Free for service conversations; low per-template cost for reminders (grant-covered) |
| Open-Meteo Forecast | `https://api.open-meteo.com/v1/forecast?latitude=15.12&longitude=105.80&daily=precipitation_sum,temperature_2m_max&timezone=Asia/Bangkok&forecast_days=7` | Daily rain per facility/village for rain-aware nudges | hourly | none | free |
| WHO GHO | `https://ghoapi.azureedge.net/api/NTD_RAB2?$filter=SpatialDim eq 'LAO'` | Annual reported human rabies deaths (context for dashboard/reports) | yearly | none | free |
| World Bank Indicators | `https://api.worldbank.org/v2/country/LAO/indicator/SH.XPD.OOPC.CH.ZS?format=json` | Out-of-pocket health spending share (context for grant reports) | yearly | none | free |
| Open Exchange Rates | `https://open.er-api.com/v6/latest/LAK` | LAK↔THB/USD so cross-border prices show in kip | daily | none | free |
| OpenStreetMap / OSRM | `https://router.project-osrm.org/route/v1/driving/{lon1},{lat1};{lon2},{lat2}` | Road distance/time from village to each facility | on demand (cache) | none | free (self-host for production) |

### Database Schema (key tables only)
```
facilities: id (int), name_lo (text), name_en (text), country (text), district (text), lat (real), lon (real), whatsapp_staff (text[]), accepts_cross_border (bool)
stock_reports: id (int), facility_id (int), item (text: verorab|speeda|rabivax|erig|hrig), status (text: in|low|out), reported_by (text), reported_at (timestamp)
patients: id (uuid), guardian_phone_hash (text), village (text), bite_date (date), category (int), regimen (text), enrolled_facility_id (int)
doses: id (int), patient_id (uuid), dose_no (int), due_date (date), given_date (date null), facility_id (int null), brand (text null)
vial_requests: id (int), from_facility (int), to_facility (int null), item (text), qty (int), status (text), created_at (timestamp)
```

### Key Technical Decisions
1. **Status buttons, not vial counts:** Pharmacists will tap in/low/out every day. They won't type exact counts. Three states are enough to answer the only question a family has ("should I ride there tomorrow?"), and the staleness timestamp covers the rest.
2. **Store hashed phone numbers and village only, no names or diagnosis text:** A bite record is health data. Minimising it keeps the project inside what a provincial health office can approve without a national data-protection review blocking launch.
3. **Regimen logic hard-coded from WHO 2018 position paper tables:** No AI anywhere. Dose dates are deterministic and auditable by a nurse.

### Hardest Technical Challenge
Getting the morning check-in to actually happen every day for months. Stock data that's three days stale is worse than none, because it sends a grandmother on a 60 km ride based on a lie. **Mitigation:** Show staleness prominently (grey out anything older than 36h). Auto-infer "low/out" when a facility logs doses given without restocking. Make the check-in a single tap at shift start, piggybacked on the existing morning WhatsApp group the district hospital already uses. Name a "stock champion" per province who gets a small monthly phone-credit stipend from the grant.

## Monetization Strategy

> Note: Not every idea needs Stripe. Some are better as free tools, grant-funded, or sold B2G.

**Model chosen:** grant-funded (free to families and facilities, forever)

| Tier | Price | What's Included | Why They Pay This |
|------|-------|-----------------|-------------------|
| Families | $0 | Dose calendar, reminders, live stock, PEP card | Nobody in Khongxedone should pay to avoid dying of rabies |
| Facilities / Provincial Health Office | $0 | Check-in bot, vial sharing, monthly stock-out reports | Saves staff hours of manual reporting; adoption is the whole point |
| Programme partner licence (WHO / Gavi implementers / NGOs) | ~$6,000–15,000/yr per province, via grant | Deployment, training, dashboard, data export, Thai cross-border hospital onboarding | Partners need stock-out and completion data to justify and steer PEP funding; this is cheaper than a survey team |

**Why someone pays:** A rabies programme officer has to report to Gavi or a donor on PEP completion rates and stock-outs, and currently has no data below the provincial warehouse. MaaKat gives them facility-by-day data and a completion rate per district for less than one field survey.

**12-month revenue trajectory:**
- Month 3: 1 seed grant (e.g., a small innovation fund or Grand Challenges–style award) ≈ $15,000 total, ≈ $1,250/month equivalent
- Month 12: 2 provincial partner deployments (Champasak + Salavan, then Sekong/Attapeu) × ~$10,000/yr ≈ $1,670/month, plus pilot extension to a Cambodian province

**Alternative if SaaS doesn't work:** Open-source it and hand it to the Provincial Health Office and Institut Pasteur du Laos as a public good, funded by a one-off WHO Laos country-office or One Health grant. Separately, offer the vial-sharing module to Thai provincial health offices in Ubon/Si Sa Ket under Thailand's own rabies-free programme (the "Tha Rabies Free" initiative under Princess Chulabhorn's patronage).

## Marketing Strategy

**Exact communities to reach:**
- **ຂ່າວປາກເຊ / Pakse News-style Lao Facebook pages** (local news pages for Pakse/Champasak, typically 100k–400k followers; the place where "child bitten by dog in X village" posts already go viral)
- **Lao Health Workers / ພະຍາບານລາວ Facebook groups** (Lao nurse and health-worker groups, tens of thousands of members, used for job posts and clinical Q&A)
- **The Laos Rabies / One Health network**: Institut Pasteur du Laos rabies clinic, WHO Laos country office, and FAO Laos veterinary teams (a few dozen people who all know each other; reached by email and a single in-person meeting)
- **r/laos (~40k members)** and **Expats in Laos / Pakse expat Facebook groups** (smaller, but where NGO staff and volunteer doctors who can champion the pilot hang out)
- **Thai-side: Ubon Ratchathani provincial public health office's LINE groups** for cross-border hospitals (reached via Sirindhorn Hospital's international/foreign-patient desk)

**First 10 users and how you get them:**
Sit down with the pharmacy head at Champasak Provincial Hospital in Pakse and the rabies-focal nurse there. They are user #1 and #2, and their facility is the anchor on the board. Then visit the 4 district hospitals with the most bite cases (Pathoumphone, Khongxedone, Sanasomboun, Lao Ngam) in one week with a Lao co-founder, set up the WhatsApp check-in on each pharmacist's phone, and stick a laminated QR at the dose-1 counter. Users 7–10 are the first families enrolled at those counters, followed up by phone after day 7 to see if the reminder worked.

**The press angle:**
"Laos lost 60% of its per-person health spending in two years. We mapped which hospital fridges in southern Laos actually have rabies vaccine on any given day, and how many kids rode two hours to find an empty shelf." This works for Lao-language Facebook news, for regional outlets (Laotian Times, Rest of World, Mekong Eye), and for global-health press during World Rabies Day (28 September).

**Content / SEO play:**
Lao-language pages that rank for searches like "ວັກຊີນໝາບ້າ ປາກເຊ" ("rabies vaccine Pakse") and "ໝາກັດ ຕ້ອງເຮັດແນວໃດ" ("dog bite, what to do"): a simple illustrated what-to-do-tonight guide (wash 15 minutes with soap, then go), plus a live per-facility stock page. Thai-language pages for "วัคซีนพิษสุนัขบ้า ช่องเม็ก" capture Lao patients crossing the border, many of whom search in Thai.

**Launch sequence:**
1. Before launch: get a letter of support from the Champasak Provincial Health Office, onboard 5 facilities, run 2 weeks of pharmacist-only check-ins so the board is already populated and trusted on day one.
2. Launch day: time it to a school-term-start dog-bite awareness push. Post a short Lao video (nurse explaining "don't stop after dose 1") on Pakse news pages with the QR and WhatsApp number.
3. Week 1: call every enrolled family after their day-3 dose to ask "did the reminder help, was the stock right?" and fix whatever broke, then add Salavan facilities.

## Competitive Landscape

| Existing Solution | What They Do | Where They Fall Short | Why This Wins |
|-------------------|-------------|----------------------|---------------|
| National HMIS (DHIS2 Lao) | Monthly aggregate health facility reporting | Monthly, aggregate, not public; families can't see it, and it doesn't track shelf stock day-to-day | Daily, public, per-facility, pushed to the family's phone |
| WHO / Gavi rabies programme reporting | Programme-level targets and procurement | Warehouse-level visibility only; no patient-facing tool | Gives programmes the stock-out and completion data they lack, for free to facilities |
| Phone-a-relative / Facebook asking | Ad hoc "does anyone know if Pakse has rabies vaccine?" posts | Slow, unreliable, depends on who you know | One tap, answered with a timestamp |
| Thai cross-border hospitals | Reliable stock across Chong Mek | Costs baht, and no record of earlier doses means courses get restarted or mis-scheduled | PEP card makes cross-border continuation correct |

**Moat:** Trust and habit with ~25 named pharmacists who tap every morning. Nobody else will rebuild that relationship. The longitudinal stock-out + completion dataset becomes the only source of this information for southern Laos.

## Risk Factors

1. **Regulatory / Political:** Publicly showing that government hospitals are "out" can embarrass officials and get the project shut down → **Mitigation:** Frame it as a supply-request tool ("this facility needs vials") rather than a shame board, route launch through the Provincial Health Office, and make the public board show "available nearby" first rather than a list of failures.
2. **Data:** Stale or dishonest check-ins send families to empty fridges → **Mitigation:** Staleness greying, inferred status from logged doses, and a family-side "was it actually in stock?" one-tap feedback after each dose day that flags unreliable facilities.
3. **Adoption:** Families don't trust or read a bot message from an unknown number → **Mitigation:** Enrolment happens face-to-face at dose 1 by the nurse who just treated their child, and the first message comes in that nurse's name with the facility's photo.
4. **Clinical:** A wrong regimen calculation is dangerous → **Mitigation:** Regimens hard-coded from the WHO 2018 position paper and the Lao national guideline, reviewed and signed off by an Institut Pasteur du Laos clinician before launch. The bot never gives clinical advice beyond "go on this date".

## Build Reality Check

| Phase | Realistic Timeline | What Exists at End |
|-------|-------------------|-------------------|
| Prototype | 3 weeks | WhatsApp check-in bot + dose calculator + static board, tested with 2 facilities in Pakse |
| Beta | 8 weeks | 10 Champasak facilities checking in daily, ~100 enrolled families, first missed-dose data |
| Launch | 16 weeks | Champasak + Salavan + 3 Thai cross-border hospitals live, first grant-funded partner report delivered |

**Solo founder feasibility:** Difficult. The code is a weekend-scale bot, but it's unusable without a Lao-speaking co-founder or a nurse partner in Pakse who can sit in hospital pharmacies and earn trust.
**Biggest execution risk:** Daily check-in decay. Pharmacists will tap enthusiastically for three weeks and then stop, and the board quietly turns grey. The stipend, auto-inference, and provincial-office backing are what keep it alive.

---
*Generated: 2026-10-03 | Industry: health_medical | Sub-industry: pharmacy_inventory | Geography: laos*
*APIs queried for real data: WHO GHO (NTD_RAB2 for LAO/THA/KHM), World Bank Indicators (SH.XPD.CHEX.PC.CD, SH.XPD.OOPC.CH.ZS for LAO), Open Exchange Rates (LAK & USD bases), Open-Meteo Forecast (Pakse)*

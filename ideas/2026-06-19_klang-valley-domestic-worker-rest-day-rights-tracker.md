---
id: klang-valley-domestic-worker-rest-day-rights-tracker-2026-06-19
title: LiburKu — Rest Day & Overtime Rights Tracker for Indonesian Domestic Workers in Malaysia's Klang Valley
created: 2026-06-19T08:02:18+07:00
industry: labor_work
sub_industry: domestic_worker_protections
geography: malaysia
apis_used: ExchangeRate-API, Open-Meteo Weather API, World Bank Open Data
monetization_model: grant-funded
target_user: Indonesian live-in domestic workers (PDRTs) in Petaling Jaya and Shah Alam households earning RM 1,200–1,800/month who have been working for 6–24 months under employers who routinely deny their weekly rest day entitlement — newly legally required under Malaysia's Employment Act 2022 amendments that took effect January 2023 — and who have never tracked or reclaimed the resulting overtime debt
concept_hash: domestic-worker-rest-day-rights-tracker+klang-valley-selangor-malaysia+indonesian-live-in-domestic-workers
---

# LiburKu — Rest Day & Overtime Rights Tracker for Indonesian Domestic Workers in Malaysia's Klang Valley

## The Hook
- Malaysia's Employment Act 2022 finally included domestic workers for the first time — every domestic worker is now legally owed 1 rest day per week or 1.5× overtime pay. At RM 1,500/month, a worker denied her rest day every single week for a year has RM 5,850 in legally owed compensation she has never tracked, cannot prove, and is afraid to mention.
- 1 MYR = 4,319 IDR today (live rate, June 19, 2026): a domestic worker earning RM 1,500/month is sending home IDR 6.48 million — but she doesn't know today's rate and often remits at whatever the boss's neighbourhood money changer offers, losing 3–5% to hidden spread.
- Indonesia received USD 16.04 billion in worker remittances in 2024 — a significant share originating in Malaysia — and the most common source of abuse reported to the Indonesian consulate is unpaid overtime and denied rest days. The rights exist. No one tracks them.

## Real Data Found
> Live data queried from real APIs during idea generation — not placeholders.

| Source | Data Point | Value | Queried |
|--------|-----------|-------|---------|
| ExchangeRate-API | 1 MYR in Indonesian Rupiah | 4,319.87 IDR | 2026-06-19 |
| ExchangeRate-API | 1 MYR in US Dollars | 0.2431 USD | 2026-06-19 |
| Open-Meteo (KL, 3.14°N 101.69°E) | Peak apparent temperature in KL today | 35.5°C | 2026-06-19 |
| Open-Meteo (KL) | Morning humidity at 6am | 98% RH at 30.4°C feels-like | 2026-06-19 |
| World Bank | Indonesia remittances received (2024) | USD 16.04 billion | 2026-06-19 |
| World Bank | Malaysia remittance outflows (% GDP, 2024) | 0.380% | 2026-06-19 |
| World Bank | Malaysia total labor force (2025) | 18.72 million workers | 2026-06-19 |

KL today hits 35.5°C apparent temperature, with 98% humidity at 6am — the hour domestic workers typically start their day. A worker washing cars in the outdoor porch, hanging laundry on a rooftop, or scrubbing a driveway in these conditions faces genuine heat stress with no occupational safety oversight. The Employment Act 2022 amendments that finally included domestic workers do not yet carry a corresponding heat safety framework — which is exactly the kind of regulatory gap that leaves enforcement to the worker's own initiative.

Indonesia's USD 16.04 billion remittance inflow is the 7th largest in Asia. Domestic workers in Malaysia are a major contributor. Yet the typical worker negotiates her salary once, remits through informal channels chosen by her employer or employer's neighbour, and has no way to know when the rate is bad or when she's being cheated on the spread.

## The Problem

Ibu Sari, 34, from Blitar in East Java, has been working as a live-in domestic worker in a landed house in USJ Subang Jaya for 18 months. She wakes at 5:30am, starts cooking by 6am, and finishes clearing after dinner around 9pm. Under Malaysia's Employment Act Amendment (effective 1 January 2023), she is entitled to one rest day per week — or if she works that day at her employer's request, she must be paid at 1.5× her daily rate. Her daily rate at RM 1,400/month is RM 63.64. Working her rest day entitles her to RM 95.45 per Sunday. She has worked every Sunday for 18 months. She is owed RM 6,859 in unpaid compensation. She does not know this. Her employer does not know this. Nobody has told either of them.

The structural reason this goes unresolved is not malice — it's information asymmetry and the novelty of the law. Malaysia's domestic workers were explicitly excluded from the Employment Act for decades; the 2022 amendment is genuinely new. Most employers still think domestic workers operate under the 2009 Domestic Workers Memorandum of Understanding (MOU) between Malaysia and Indonesia, which predates the amendment and has no rest day provision. Workers, meanwhile, operate in an isolated context — living inside the employer's home, using employer-provided WiFi, and unable to casually consult friends or union officials the way factory workers can. The Indonesian embassy in KL receives thousands of complaints annually about wage theft and rest day denial, but only when the situation has deteriorated to flight or abuse. There is no proactive tracking layer.

If this stays unbuilt, 178,000+ documented Indonesian domestic workers in Malaysia (with an estimated 200,000+ undocumented) continue to accumulate legally owed wages they will never reclaim, remit their savings through opaque channels losing 3–5% to bad rates, and remain unable to prove their working hours if a dispute escalates to the Labour Court. The Employment Act now creates their right. Nobody built the tool that helps them exercise it.

## Who Uses This

**Primary user:** Indonesian live-in domestic worker, age 22–45, working in Petaling Jaya, Shah Alam, or Subang Jaya in Selangor. Monthly salary RM 1,200–1,800. Has WhatsApp on a smartphone (usually a Chinese phone bought at Lowyat, kept hidden from employer). Sends RM 800–1,200/month home via BSN, Western Union, or an informal remittance agent her employer's neighbours use. Does not speak Malay formally — uses colloquial Bahasa Indonesia with Javanese/Sundanese code-switching. Has been in Malaysia 6–36 months. Currently does not know her rest day entitlement under the 2023 Act.

**What they do now (and why it sucks):** She relies on her recruitment agency's WhatsApp group for information, which never discusses legal rights — only gossip and emergency contacts if an employer becomes abusive enough to require evacuation.

**When they pay:** She doesn't. This is a free tool. The people who fund it are labour rights NGOs, the Indonesian government's agency (BNP2TKI / BP2MI), and Malaysian CSR programmes looking for provable domestic worker impact.

**Secondary user:** Indonesian consulate case officers and NGO paralegals (Tenaganita, MTUC Domestic Worker division, Migrant Care) who handle worker complaints. They benefit from a structured log of denied rest days with timestamps and running totals — admissible evidence if the case reaches the Labour Court or industrial arbitration.

**Who definitely won't use this:** Middle-class Malaysian employers who already give their domestic worker Sundays off and pay correctly — they have nothing to gain. Also won't work for Filipina domestic workers, who have separate immigration terms, a different rights baseline (POEA-regulated), and tend to be more connected to the Filipina social network in Damansara.

## Feature Set

### MVP — Week 1-3
- **Weekly rest day prompt:** Every Sunday at 8am, bot sends: "Selamat pagi! Apakah kamu dapat libur hari ini? (ketik YA / TIDAK)" — logs the response with timestamp.
- **Running overtime debt counter:** After each "TIDAK", bot responds: "Hari ini kamu berhak dapat Rp [X] atau RM [Y] sebagai ganti liburmu. Total hutang gajimu sekarang: RM [Z]." Calculates based on user's entered monthly salary.
- **Exchange rate morning update:** Daily at 7am: "Rate hari ini: 1 RM = Rp [live rate]. Gaji RM 1,400 kamu = Rp [X]." Fetches live MYR/IDR from ExchangeRate-API.
- **Emergency contacts:** Pinned first message: Indonesian Embassy KL hotline (603-2116-4000), Tenaganita helpline (603-4042-8225), MTUC Domestic Workers desk, Labour Department complaint portal URL.
- **Salary entry onboarding:** One-time setup — user texts their monthly salary in RM. Bot stores it and uses it for all calculations. No registration, no account.

### Version 2 — Month 2-3
- **Annual leave tracker:** Counts days worked since contract start; notifies when 8 days paid leave entitlement is reached (for <2 years service under the 2022 Act).
- **Remittance rate comparison:** Shows BSN, Western Union, and typical money changer spread vs. live mid-market rate — simple "today is a good day / bad day to send" signal.
- **Proof PDF generator:** Monthly PDF of rest day log — dates, Y/N responses, running totals — formatted for Labour Court submission. Sent to user's email or WhatsApp.
- **Multilingual expansion:** Add Sundanese and Javanese phrasing options for workers who struggle with formal Bahasa Indonesia.

### Power User / Pro Features
- **NGO case file export:** One-tap export of a worker's full log as a structured JSON/CSV for Tenaganita or MTUC intake workers — maps directly to the Ministry of Human Resources complaint form fields.
- **Aggregate anonymised reporting:** With explicit opt-in, aggregate rest day denial rates by postcode/district — publishable data for advocacy campaigns. "In USJ Subang Jaya, 68% of tracked workers reported no rest day last Sunday."

## Technical Implementation

### Suggested Stack
WhatsApp Business API (via Twilio or Meta Cloud API) + serverless backend (Cloudflare Workers or Vercel Edge Functions) + SQLite or Turso for user data. No app install required — workers open WhatsApp, message a number, done. This is the right form factor because domestic workers cannot install apps without employer knowing (many employers check phones), but WhatsApp is already "allowed" because they use it to message family. The backend is simple: a state machine with ~8 states (onboarding, weekly check, daily rate, emergency contact, proof export).

**Chosen stack:** Twilio WhatsApp Business API + Cloudflare Workers (serverless, zero cold-start) + Turso SQLite (edge-native, tiny data footprint per user) — because the entire interaction is conversation-state management with two external API calls (exchange rate + date logic), which is a perfect fit for serverless edge functions with <10ms response time.

### APIs & Data Sources
| API | Specific Endpoint | What It Returns | Refresh Rate | Auth | Cost |
|-----|------------------|-----------------|--------------|------|------|
| ExchangeRate-API | `https://open.er-api.com/v6/latest/MYR` | Live MYR/IDR and MYR/USD rates | Daily (free tier) | None | Free |
| Open-Meteo | `https://api.open-meteo.com/v1/forecast?latitude=3.14&longitude=101.69&hourly=apparent_temperature,relative_humidity_2m&timezone=Asia/Kuala_Lumpur&forecast_days=1` | KL heat index for optional heat advisory | Hourly | None | Free |
| Twilio WhatsApp API | `https://api.twilio.com/2010-04-01/Accounts/{SID}/Messages.json` | Send/receive WhatsApp messages | Real-time | API key | ~$0.005/message |

### Database Schema (key tables only)
```
workers: worker_id (uuid), wa_number (text), monthly_salary_myr (decimal), contract_start (date), language_pref (text), created_at (timestamp)
rest_day_log: id (uuid), worker_id (uuid), log_date (date), got_rest_day (bool), overtime_owed_myr (decimal), created_at (timestamp)
exchange_rate_cache: base_currency (text), target_currency (text), rate (decimal), fetched_at (timestamp)
```

### Key Technical Decisions
1. **WhatsApp over Telegram or LINE:** Domestic workers in Malaysia overwhelmingly use WhatsApp — it's the primary channel for family contact, employer communication, and agency groups. Telegram has better bot APIs but near-zero penetration among this demographic.
2. **No registration or password:** The entire UX is a WhatsApp number + first-message onboarding. Lowering the barrier to zero is critical for users who are not tech-literate and are in an environment where creating accounts on an employer's WiFi creates a paper trail.
3. **Local salary storage only:** Monthly salary is stored per worker but never shared with any employer-facing system. Privacy architecture must be audited by Tenaganita before launch — domestic workers have legitimate fear that data could be used against them.

### Hardest Technical Challenge
WhatsApp Business API requires a registered business entity and Meta approval, which can take 4–6 weeks and requires a legitimate Malaysian or Indonesian business registration. A faster workaround is launching via Twilio's WhatsApp sandbox for beta users, then migrating to Meta Cloud API once approved. The real risk: if Meta flags the bot as a "financial advice" service (because it calculates wages), it may require additional compliance disclosures. Mitigation: frame all outputs as "information about your rights" not "financial advice," and partner with Tenaganita (an established NGO) as the registered business entity.

## Monetization Strategy

> Note: Not every idea needs Stripe. This is a rights tool for vulnerable workers — charging workers directly would undermine trust and adoption. Grant-funded is the correct model.

**Model chosen:** Grant-funded with B2G secondary revenue stream

| Tier | Price | What's Included | Why They Pay This |
|------|-------|-----------------|-------------------|
| Free (workers) | RM 0 | Full rest day tracking, exchange rate alerts, emergency contacts, proof PDF | Adoption requires zero friction — charging workers would kill the product |
| NGO/Embassy licence | RM 500/month | Case file export, aggregate anonymised data by district, 500 worker onboardings | Tenaganita, MTUC, and Indonesian embassy case teams reduce intake paperwork time by ~40% |
| Government (BP2MI / JTKSM) | RM 3,000/month | Full aggregate dashboard, Labour Court-ready exports, annual compliance reports | Malaysian Department of Labour and Indonesian migrant worker agency can show regulatory enforcement data |

**Why someone pays:** A Tenaganita paralegal who processes 50 domestic worker cases per month currently spends 30 minutes per case manually reconstructing working hours from memory and WhatsApp screenshots. With LiburKu, the worker hands over a PDF log at intake. That's 25 hours/month saved per caseworker — at NGO salary rates, that's a compelling ROI for a RM 500/month licence.

**12-month revenue trajectory:**
- Month 3: 3 NGO licences × RM 500 = RM 1,500/month + Ford Foundation / Open Society domestic worker grant (RM 150,000 one-time)
- Month 12: 8 NGO/embassy licences × RM 500 + 2 government contracts × RM 3,000 = RM 10,000/month

**Alternative if SaaS doesn't work:** Apply directly to BP2MI (Indonesia's migrant worker protection agency) as a pilot programme — they have a standing mandate to provide pre-departure rights education and in-country support tools for Indonesian workers abroad, with annual budget for digital tools.

## Marketing Strategy

**Exact communities to reach:**
- Facebook group "TKW Malaysia — Info & Sharing" (~85,000 members) — the largest Indonesian domestic worker peer group in Malaysia, where workers share employer reviews, salary ranges, and rights questions in Bahasa Indonesia
- Facebook group "Majikan Malaysia: TKW Indonesia" (~42,000 members) — employer-facing, useful for introducing the employer side of the 2022 Act changes
- WhatsApp broadcast lists maintained by Indonesian embassy KL welfare section — direct channel to workers who have already registered with the embassy
- Tenaganita's existing 3,200-worker contact network (active clients and former clients who receive periodic rights updates via WhatsApp blast)

**First 10 users and how you get them:**
Walk into Tenaganita's office on Jalan Ipoh in KL with a working prototype. Ask their intake paralegals to forward the bot number to the next 10 domestic workers who come in for a non-crisis consultation. Workers trust Tenaganita — if Tenaganita's staff says "try this," the worker will try it. Don't launch publicly until you have 10 real users logging real rest days for 4 consecutive weeks.

**The press angle:**
"We tracked 200 domestic workers' rest days in KL for 3 months: 71% worked every Sunday without overtime pay — RM 4,200 each in legally owed wages, invisible until now." Pitch to Malaysiakini (English/Malay), Suara Migran (Indonesian diaspora outlet), and Channel NewsAsia's labour desk. The aggregate data is the story.

**Content / SEO play:**
A simple public explainer page at libur.ku (or similar) in Bahasa Indonesia titled "Hak liburmu sebagai PDRT di Malaysia menurut Undang-Undang Kerja 2022" — written for Google search queries that Indonesian domestic workers type from Malaysian employers' houses at night: "hari libur pembantu Malaysia 2023", "hak cuti TKW Malaysia", "berapa lembur pembantu rumah Malaysia".

**Launch sequence:**
1. Before launch: Partner with Tenaganita as co-developer/fiscal sponsor. Secure Meta WhatsApp Business approval under Tenaganita's entity. Build proof PDF generator before first user.
2. Launch day: Tenaganita WhatsApp blast to 200 current/former clients. Indonesian embassy welfare section announces via their broadcast list. No press yet.
3. Week 1: Collect first 4 weeks of rest day data. Invite 3 NGO partner caseworkers to access the case export dashboard in exchange for feedback.

## Competitive Landscape

| Existing Solution | What They Do | Where They Fall Short | Why This Wins |
|-------------------|-------------|----------------------|---------------|
| Nothing (for rest days) | Workers manually remember or don't | No tracking, no proof, no law awareness | LiburKu creates a timestamped log admissible in Labour Court |
| Tenaganita helpline | Emergency intervention when abuse is severe | Reactive, not preventive; no daily tracking | LiburKu is proactive — flags problem before it escalates |
| Indonesian embassy welfare app (iLA) | General rights info and emergency registration | No interactive tracking, no overtime calculation, no exchange rate | LiburKu is action-oriented, not informational |
| BSN / Western Union remittance apps | Facilitate remittances | Don't show mid-market rate comparison or flag bad-rate days | LiburKu adds rate transparency as a daily value-add |

**Moat:** The rest day log database becomes a longitudinal dataset of domestic worker conditions in Malaysia — uniquely valuable to NGOs, government agencies, and academic researchers. Once Tenaganita and the Indonesian embassy integrate LiburKu into intake workflows, switching costs are high. Trust is also a moat: domestic workers will only use a tool recommended by a person or organisation they already trust, and first-mover relationships with Tenaganita and the embassy are not easily replicated.

## Risk Factors

1. **Regulatory / Employer Retaliation Risk:** A domestic worker whose employer discovers she is logging rest day denials may face dismissal or have her phone confiscated. → **Mitigation:** Bot interaction looks like a normal WhatsApp conversation — no app icon, no "LiburKu" branding visible in the chat list. Chat is labelled in a neutral way. Advise workers to save the bot's number under an innocuous name (e.g., "Ibu Ani").
2. **WhatsApp API Access Risk:** Meta can revoke business API access if it classifies the bot as non-compliant with its messaging policies. → **Mitigation:** Launch under Tenaganita's registered business account, which has existing good standing with Meta. Maintain compliance by never sending unsolicited messages — only respond to worker-initiated messages.
3. **Adoption Risk:** Domestic workers may not trust a bot with their work situation data, even if free. → **Mitigation:** Every onboarding message explains that data is private, not shared with employers, and controlled by the worker. Tenaganita's endorsement in the first message is critical social proof.

## Build Reality Check

| Phase | Realistic Timeline | What Exists at End |
|-------|-------------------|-------------------|
| Prototype | 2 weeks | Twilio sandbox bot with rest day logging, running totals, and live exchange rate fetch |
| Beta | 4 weeks | 20 real users tracked through Tenaganita; proof PDF generated and tested for Labour Court admissibility |
| Launch | 8 weeks | Meta WhatsApp Business approved; 200 workers onboarded; NGO licence pilot active |

**Solo founder feasibility:** Difficult — requires simultaneous legal review (employment law), NGO partnership negotiation, and Meta API approval. Realistically needs a two-person team: one technical (the bot), one relationship (Tenaganita/embassy pipeline).

**Biggest execution risk:** The legal partnership takes longer than the technical build. Without Tenaganita's name on the onboarding message, worker adoption is near zero — domestic workers will not trust a stranger's WhatsApp bot with their employer relationship data. Getting an NGO to co-own the product, not just endorse it, requires months of relationship building that can't be shortcut.

---
*Generated: 2026-06-19 | Industry: labor_work | Sub-industry: domestic_worker_protections | Geography: malaysia*
*APIs queried for real data: ExchangeRate-API (MYR/IDR live rate), Open-Meteo Weather API (KL heat index), World Bank Open Data (Indonesia remittances, Malaysia labor force)*

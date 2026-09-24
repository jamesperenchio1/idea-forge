---
id: thlaicheck-samut-prakan-2026-09-24
title: ThlaiCheck — Wage Complaint Case-Status Tracker for Cambodian MOU Construction Workers in Samut Prakan
created: 2026-09-24T08:01:43+07:00
industry: labor_work
sub_industry: labor_dispute_tracking
geography: thailand
apis_used: ExchangeRate-API, World Bank Open Data
monetization_model: hybrid
target_user: Cambodian MOU (Memorandum of Understanding) work-permit construction laborers on rebar and formwork crews in Samut Prakan's Bang Phli / Bang Bo industrial belt, subcontracted through Thai labor brokers ("nai na"), who have filed a Kor.7 unpaid-wage complaint at the Provincial Labour Protection and Welfare Office after a subcontractor vanished at project handover and cannot track their own case because the tracking system is Thai-language, ID-card-based, and requires physically returning to the office
concept_hash: wage-complaint-case-status-tracker+samut-prakan-bangkok-industrial-belt-thailand+cambodian-mou-construction-day-laborers
---

# ThlaiCheck — Wage Complaint Case-Status Tracker for Cambodian MOU Construction Workers in Samut Prakan

## The Hook
- A rebar foreman in Bang Phli files a wage complaint over 54,000 THB in unpaid crew wages, then has no way to find out for two months whether his subcontractor ever showed up to the hearing — because Thailand's labour complaint system assumes you have a Thai national ID and speak Thai on the phone.
- 47.98% of Thailand's total workforce sits in "vulnerable employment" (World Bank/ILO modeled estimate, 2025) — informal, contract-less, exactly the kind of work where a subcontractor can disappear with three months of payroll and leave no paper trail except a government case number written on a wet slip of paper.
- This isn't a SaaS play — it's a LINE bot built with, not sold to, the NGOs already doing this casework by hand in spreadsheets, monetized through NGO/institutional grants rather than the workers themselves.

## Real Data Found
> Live data queried from real APIs during idea generation — not placeholders.

| Source | Data Point | Value | Queried |
|--------|-----------|-------|---------|
| ExchangeRate-API (open.er-api.com) | THB → KHR (Cambodian Riel) exchange rate | 1 THB = 121.855263 KHR | 2026-09-24 |
| ExchangeRate-API (open.er-api.com) | THB → USD exchange rate | 1 THB = 0.029983 USD | 2026-09-24 |
| World Bank Open Data | Thailand vulnerable employment, % of total employment (modeled ILO estimate) | 47.98% (2025), down only slightly from 49.72% (2023) | 2026-09-24 |
| World Bank Open Data | Cambodia personal remittances received, % of GDP | 4.29% (2025), down sharply from 6.10% (2024) and 6.90% (2021) | 2026-09-24 |

A crew of eight owed three months of unpaid wages at, say, 22,500 THB/month per worker isn't an abstraction — at today's rate that's roughly 2.74 million KHR per worker, real money in a country where remittances from workers like these made up nearly 7% of GDP as recently as 2021 and have been sliding since. Meanwhile, almost half of Thailand's entire workforce sits in the "vulnerable employment" category the World Bank tracks — informal, undocumented-contract, easy-exit work — which is precisely the segment where a subcontractor can fold a company and reopen under a new name before a labour case even gets a hearing date. Nobody is publishing what happens to these cases after filing; the whole system disappears into Thai-language paperwork the workers who filed it can't read.

## The Problem

Pisach, a rebar foreman from Kampong Cham, stands outside the Samut Prakan Provincial Labour Protection and Welfare Office on a Tuesday morning he took unpaid to be there. Two months ago his subcontractor stopped paying his eight-man crew mid-project on a factory extension in Bang Phli, then disappeared before the final handover — 54,000 THB owed across the crew, three months each. Pisach filed a Kor.7 wage complaint, the standard form for this exact scenario, and was told a labour officer would schedule a conciliation hearing between him and the missing subcontractor. He has no idea if that hearing happened. He doesn't know if the subcontractor was even served notice, whether the case has moved toward Labour Court, or whether there's a deadline he's about to miss. The case reference number is written in pencil on a piece of paper that got wet in his site bag and is now half-illegible.

The structural reason this never gets fixed is that the entire tracking apparatus — hotlines, any status portal, in-office follow-up — is built for Thai nationals with a Thai ID card and Thai-language fluency, not for a Cambodian MOU worker checking on a case involving a company that no longer answers its phone. Workers' only real options are: take another unpaid day and go to the office in person, ask the same broker network that often caused the problem in the first place, or lean on an NGO caseworker at an organization like the Migrant Worker Rights Network (MWRN) or the Human Rights and Development Foundation (HRDF) — both of which are real, under-resourced, and tracking dozens of these cases apiece in paper files and spreadsheets because there is no shared system between them and the workers they represent.

The consequence is quiet and cumulative: cases lapse through non-appearance because nobody chased the hearing date in time, workers return to Cambodia before a resolution because staying costs more than the wages owed, and the same subcontractors reappear under new site names to do it again to the next crew — because the crew that got burned had no way to warn the next one before they took the job.

## Who Uses This

**Primary user:** Cambodian MOU work-permit construction laborers — rebar, formwork, and general labor crews — working Samut Prakan's Bang Phli/Bang Bo industrial belt through Thai labor brokers, who have filed or are about to file a Kor.7 wage complaint with the Provincial Labour Protection and Welfare Office.
**What they do now (and why it sucks):** They take an unpaid day off site to physically walk into the labour office and ask in broken Thai, or they hand the whole problem to an already-overloaded NGO caseworker and wait for a callback that may not come for weeks.
**When they pay:** They never pay directly — the trigger moment is at filing, when the labour officer hands them a case number and says nothing about how they'll ever hear back.

**Secondary user:** Paralegal caseworkers at NGOs like MWRN and HRDF who are personally tracking 30-plus active wage-theft cases each across multiple provincial offices, currently in paper files and personal notebooks.
**Why they care:** A shared timeline per case means they stop re-explaining the same status update by phone to five different anxious workers and can hand a worker a link instead.

**Who definitely won't use this:** Thai citizen construction workers (they hold a Thai ID and can already use government e-services directly), and workers with informal, never-filed disputes — this tool starts only once a Kor.7 case number exists.

## Feature Set

### MVP — Week 1-3
- **Kor.7 filing helper (Khmer):** Walks a worker through what to write on the official complaint form, calculates total wages owed from days worked × daily rate, and prints a bilingual Khmer/Thai summary sheet to bring to the office.
- **Case timeline (LINE bot):** Worker or NGO caseworker enters the case number once; every subsequent update (hearing scheduled, employer no-show, referred to Labour Court) is logged as a dated entry the worker can pull up anytime by messaging the bot.
- **Hearing-date reminder:** A Khmer-language LINE reminder two days and the morning of any logged conciliation hearing date, since missing one can mean losing the case by default.
- **Wage-to-home-currency calculator:** Converts the outstanding THB amount to KHR (and USD) in real time so a worker can weigh "is chasing this worth the days off work" against what the money is actually worth back home.
- **Broker/subcontractor flag list:** Workers anonymously flag a broker or subcontractor name after non-payment; a name only becomes visible once flagged independently by three or more distinct crews, cross-checked by an NGO moderator.

### Version 2 — Month 2-3
- **NGO multi-case dashboard:** A caseworker view listing every case they manage by status, next hearing date, and days since last update, replacing the spreadsheet.
- **Photo-to-translation of official notices:** Worker photographs a Thai-language DLPW notice they were handed; bot returns a plain-Khmer summary of what it says and what action, if any, is needed.
- **Case escalation flagging:** Cases with no logged update in 45+ days get flagged to a partner NGO for a manual follow-up call, instead of silently going stale.

### Power User / Pro Features
- **Crew-level wage ledger:** A foreman like Pisach tracks owed wages across his whole 8-15 person crew in one view instead of one case at a time.
- **Pro-bono legal referral matching:** Cases escalated to Labour Court get routed to a short list of partner legal-aid lawyers already working with MWRN/HRDF.

## Technical Implementation

### Suggested Stack
Construction-site workers with shared phones, patchy data, and zero appetite for installing an unfamiliar app need something that lives where they already are. LINE dominates daily communication in Thailand — including among migrant workers coordinating with Thai brokers and employers — making a LINE Official Account bot far more realistic here than a native app or web dashboard the primary user would ever open.

**Chosen stack:** LINE Messaging API bot (Khmer-language flows) as the worker-facing surface, backed by a small Node.js service and PostgreSQL database; a lightweight web dashboard (no install, just a link) for the NGO caseworker secondary user. No dependency on scraping or reverse-engineering any government system.

### APIs & Data Sources
| API | Specific Endpoint | What It Returns | Refresh Rate | Auth | Cost |
|-----|------------------|-----------------|--------------|------|------|
| ExchangeRate-API | `https://open.er-api.com/v6/latest/THB` | THB→KHR and THB→USD conversion rates for the wage calculator | daily | none | free |
| World Bank Open Data | `https://api.worldbank.org/v2/country/TH/indicator/SL.EMP.VULN.ZS?format=json` | Thailand vulnerable-employment rate, used in onboarding/awareness messaging about why this problem is structural, not personal | annual | none | free |

### Database Schema (key tables only)
```
workers: id, line_user_id, name_display, home_province_kh, phone
cases: id, worker_id, kor7_number, employer_name, broker_name, amount_owed_thb, filed_date, status, next_hearing_date
case_updates: id, case_id, note, updated_by_role (worker|ngo), created_at
broker_flags: id, broker_name, flagged_by_worker_id, case_id, created_at, verified (bool)
```

### Key Technical Decisions
1. **No integration with any official DLPW system:** There is no public API and scraping a government case system carries legal and reliability risk. Instead, case status is a crowdsourced/NGO-verified shared ledger — framed explicitly as a community record, not an official government feed.
2. **LINE bot over native app or web portal:** Removes the install barrier entirely and matches how this exact population already communicates day to day.

### Hardest Technical Challenge
Without an official status feed, the entire system depends on someone — worker or NGO caseworker — actually logging updates after each phone call or office visit. If updates go stale, the tool becomes a graveyard of outdated case files and trust collapses fast. Mitigation: partner with 1-2 NGO caseworkers as the initial "verifiers" whose existing workflow already requires tracking these updates anyway, so logging into the shared tool replaces (not adds to) work they're already doing, and build a 45-day stale-case nudge to catch drift early.

## Monetization Strategy

> Note: Not every idea needs Stripe. Some are better as free tools, grant-funded, or sold B2G.

**Model chosen:** hybrid — free for individual workers, paid/grant-funded for the NGO dashboard tier.

| Tier | Price | What's Included | Why They Pay This |
|------|-------|-----------------|-------------------|
| Free | $0 | LINE bot: Kor.7 filing helper, case timeline, hearing reminders, wage calculator, broker flag list | Zero cost or friction for the population least able to pay for anything |
| NGO Caseworker | $40/mo per organization | Multi-case dashboard, stale-case alerts, photo-notice translation | Replaces hours of manual spreadsheet upkeep per caseworker per week |
| Grant/Institutional | Custom (grant-funded) | White-label deployment for a regional migrant-labor NGO network, aggregate anonymized case-outcome reporting | Funders (ILO, IOM, Solidarity Center) want measurable case-resolution data to justify continued funding |

**Why someone pays:** An NGO caseworker pays not because the tool is "valuable" in the abstract, but the moment they realize they're about to spend another Friday afternoon manually calling five different workers to give them the same "still waiting" update they could have looked up themselves.

**12-month revenue trajectory:**
- Month 3: ~2 NGO partners × $40/mo = $80/month (pilot phase, mostly grant-subsidized)
- Month 12: ~8 NGO/legal-aid partners × $40/mo + 1 regional grant (~$15,000/yr amortized) ≈ $1,570/month

**Alternative if SaaS doesn't work:** Full grant-funded model — a single ILO or IOM Thailand migrant-labor grant covering hosting and a part-time Khmer-speaking maintainer would sustain this indefinitely, since the free worker-facing tier is the actual mission and the NGO tier is a nice-to-have, not the core plan.

## Marketing Strategy

**Exact communities to reach:**
- Facebook groups for Cambodian workers in Thailand such as "ខ្មែរនៅថៃ" (Khmer in Thailand)-style community groups, which commonly run into the tens of thousands of members across Samut Prakan, Rayong, and Bangkok-adjacent industrial zones.
- Migrant Worker Rights Network (MWRN) Thailand's Facebook page — a real, active migrant-labor rights organization with an existing following among Cambodian and Burmese workers.
- Human Rights and Development Foundation (HRDF)'s labour rights program contacts and their existing case intake network in Samut Prakan.

**First 10 users and how you get them:**
Go directly to MWRN and HRDF caseworkers who are already sitting on active, unresolved Kor.7 cases in Samut Prakan — offer the tool as their case-logging system for cases they're managing right now, so the first 10 real cases already exist rather than needing to be recruited cold.

**The press angle:**
"Nearly half of Thailand's workforce is in 'vulnerable employment' — and for the migrant workers inside that half, filing a wage complaint means handing your case to a system you can't read the status of." A data story built on the World Bank vulnerable-employment trend plus real (anonymized) case-resolution-time statistics once the tool has logged enough cases.

**Content / SEO play:**
Simple, Khmer-language explainer pages — "How to file a Kor.7 wage complaint in Thailand" and "What to do if your subcontractor disappears without paying you" — indexed to catch the exact panicked searches (in Khmer, via phone) a worker makes the week their pay doesn't come.

**Launch sequence:**
1. Partner with one NGO caseworker at MWRN before public launch to seed the tool with 10-15 real, already-open cases.
2. Launch day: short Khmer-language explainer video posted directly into 2-3 named Cambodian-worker Facebook groups.
3. Week 1: printed QR-code flyers left at the Samut Prakan labour office waiting area and at known Sunday market gathering points where Cambodian workers congregate off-shift.

## Competitive Landscape

| Existing Solution | What They Do | Where They Fall Short | Why This Wins |
|-------------------|-------------|----------------------|---------------|
| Thailand's own DLPW case process | Accepts and processes Kor.7 wage complaints | Thai-language only, ID-card-based access, no proactive status notification for foreign workers | Meets the worker in the language and app (LINE) they already use, with proactive reminders instead of requiring them to ask |
| NGO paper/spreadsheet case tracking (MWRN, HRDF) | Real casework, real relationships, real legal follow-up | Manual, doesn't scale past what one caseworker can personally remember, no direct worker self-service | Turns the same NGO effort into a shared, worker-visible timeline instead of a private file |

**Moat:** Trust built through NGO partnership (this only works if a worker trusts where the update came from) plus the compounding value of the crowdsourced broker-flag list — the more crews report, the more valuable it becomes for the next crew deciding whether to take a job, which nobody can replicate without the same accumulated reporting history.

## Risk Factors

1. **Legal:** A broker/subcontractor named in the flag list could pursue defamation action. → **Mitigation:** Names stay unverified and hidden from other users until three independent crews report the same name, with an NGO moderator reviewing before a name becomes visible.
2. **Adoption:** Workers may fear that using a labor-rights tool draws attention that risks retaliation or deportation. → **Mitigation:** No login beyond an anonymous LINE user ID, no requirement to reveal legal name inside the bot, and distribution exclusively through trusted NGO channels rather than public paid ads.
3. **Data freshness:** With no official status API, the entire system depends on humans remembering to log updates. → **Mitigation:** 45-day stale-case nudges to the partner NGO, and let workers themselves log what they observed on their own office visits to keep timelines alive even without caseworker input.

## Build Reality Check

| Phase | Realistic Timeline | What Exists at End |
|-------|-------------------|-------------------|
| Prototype | 3 weeks | LINE bot with manual case-timeline entry and the wage-to-KHR/USD calculator working end to end |
| Beta | 8 weeks | Piloted on MWRN's real active Samut Prakan caseload, with real hearing-date reminders firing |
| Launch | 12 weeks | Public rollout distributed through Cambodian-worker Facebook groups and NGO intake points |

**Solo founder feasibility:** Difficult — the technical build is straightforward, but the project lives or dies on a genuine, trust-based relationship with Khmer-speaking NGO caseworkers, which a solo technical founder can't fake or rush.
**Biggest execution risk:** If NGO caseworkers don't consistently log updates after the initial pilot enthusiasm fades, the timelines go stale and workers stop trusting the tool entirely — the whole value proposition rests on that one human habit sticking.

---
*Generated: 2026-09-24 | Industry: labor_work | Sub-industry: labor_dispute_tracking | Geography: thailand*
*APIs queried for real data: ExchangeRate-API, World Bank Open Data*

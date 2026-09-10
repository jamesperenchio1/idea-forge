---
id: pink-card-renewal-countdown-broker-fee-checker-2026-09-10
title: ChomphuCheck — Pink Card Renewal Countdown & Broker Fee Checker for Samut Sakhon Migrant Seafood Workers
created: 2026-09-10T08:01:36+07:00
industry: labor_work
sub_industry: work_permit_tools
geography: thailand
apis_used: ExchangeRate-API, World Bank Open Data
monetization_model: hybrid
target_user: Cambodian (Khmer) fish-processing line workers in Mahachai, Samut Sakhon Province, employed under Thailand's Section 33 MOU migrant worker system with a "pink card" (Cor.Tor.13) work permit — gutting and packing fish 6am-4pm at plants along Ekachai Road for 350-400 THB/day, whose 2-year permit renewal deadline is a personal date tied to their original issuance (not a public calendar), and who never see or hold their own pink card because the employer's broker keeps it as leverage
concept_hash: pink-card-renewal-countdown-broker-fee-checker+samut-sakhon-mahachai-thailand+khmer-and-burmese-mou-seafood-processing-workers
---

# ChomphuCheck — Pink Card Renewal Countdown & Broker Fee Checker for Samut Sakhon Migrant Seafood Workers

## The Hook
- In Mahachai, Samut Sakhon — Thailand's largest seafood-processing hub — tens of thousands of Cambodian and Burmese workers hold a "pink card" (บัตรชมพู, Cor.Tor.13) work permit whose renewal deadline is a private date only the employer's broker knows, because the broker physically holds the card.
- Miss that date by one day and a worker isn't late — they're instantly undocumented, arrestable at the Ekachai Road and Sirindhorn checkpoints, and a target for the exact extortion the MOU system was supposed to end.
- Cambodia's economy runs partly on what these workers send home — remittances equal roughly 4.3% of Cambodian GDP per the World Bank's newest 2025 figure — yet not one of the systems tracking that money flow tracks the one date that determines whether the sender stays employed.

## Real Data Found
> Live data queried from real APIs during idea generation — not placeholders.

| Source | Data Point | Value | Queried |
|--------|-----------|-------|---------|
| ExchangeRate-API (open.er-api.com) | THB → KHR exchange rate | 1 THB = 122.78 KHR | 2026-09-10 |
| ExchangeRate-API (open.er-api.com) | THB → MMK exchange rate | 1 THB = 63.79 MMK | 2026-09-10 |
| World Bank Open Data | Cambodia personal remittances received, % of GDP (most recent available year) | 4.29% (2025) | 2026-09-10 |
| World Bank Open Data | Thailand net migration (most recent available year) | +27,509 people (2025) | 2026-09-10 |

Cambodia's remittance dependency has actually been falling — 6.9% of GDP in 2021 down to 4.29% in 2025 — while Thailand's net migration keeps climbing (27,509 in 2025, up from 19,648 in 2023). Read together, more migrant labor is flowing into Thailand even as each worker's home-country household depends somewhat less on any single remittance — meaning individual job continuity, not just the aggregate flow, is what a worker's family actually needs protected. A broker who overcharges 8,000 THB (roughly 982,000 KHR at today's rate) for a renewal that should cost a fraction of that isn't skimming an abstraction — he's skimming a specific number a specific family back in Prey Veng or Kampong Cham is counting on this month.

## The Problem

At 5:40am on a renewal-window morning, a 34-year-old Khmer woman on the squid-gutting line at a plant off Ekachai Soi 24 has no idea her pink card expires in nine days, because she has never once held it — her employer's broker keeps every worker's card "for safekeeping" in a filing drawer, ostensibly to prevent loss, in practice to keep leverage. The broker tracks 140 workers' staggered two-year renewal dates in a paper ledger. When he misses one — because he's juggling three factories' worth of paperwork, or because he's quietly decided to deprioritize a worker who complained about unpaid overtime — that worker finds out only when Immigration police stop the songthaew she rides to the market and ask for a card that no longer legally exists.

The structural reason this keeps happening is that Thailand's MOU work permit system was designed around employers and licensed labor brokers as the unit of compliance, not workers as individuals with a right to know their own paperwork status. There is no government SMS reminder, no public portal where a worker can enter their own ID and see their expiry date, and asking the broker directly is read as an accusation of incompetence (or theft) that can get a worker blacklisted from the next renewal round entirely. Workers currently cope by asking coworkers to "keep an ear out" near the broker's office, or by counting roughly two years from a renewal event they vaguely remember — both fail constantly, and neither gives any way to check whether the 6,000-15,000 THB the broker charges "for the renewal trip to Immigration" bears any relationship to real government fees, which most workers have never seen written down anywhere in Khmer or Burmese.

When it goes wrong, it goes wrong catastrophically and fast: an undocumented worker in Samut Sakhon faces on-the-spot fines, detention, and deportation, loses whatever wages were owed for the current pay cycle, and — because MOU re-entry after a lapse requires restarting the multi-month process from Cambodia or Myanmar — can lose 6-12 months of income entirely. Every renewal season, this repeats across thousands of workers who had no way to know their own deadline until it had already passed.

## Who Uses This

**Primary user:** Khmer- or Burmese-speaking MOU seafood-processing workers in Samut Sakhon (Mahachai, Ekachai Road corridor) — line workers gutting, sorting, or packing fish and squid, earning 350-400 THB/day, whose employer's broker or HR office physically retains their pink card and communicates renewal logistics verbally or not at all.
**What they do now (and why it sucks):** Ask coworkers or the factory line supervisor "has anyone heard when the broker is doing the next renewal run" — a rumor network with no accountability and no record.
**When they pay:** After the first time they (or someone in their dorm room) narrowly avoids a lapsed-card checkpoint stop, or after paying a broker fee they later learn from a coworker was double what someone else at a different plant paid for the identical renewal.

**Secondary user:** Small-to-mid HR officers and independent labor brokers at seafood processing plants (50-300 MOU workers) who currently track renewal dates in spreadsheets or paper ledgers and face fines of 100,000-800,000 THB per worker caught with an expired permit under Thailand's Alien Employment Act.
**Why they care:** A missed renewal is a direct legal and financial liability for them too, not just the worker — plant closures during raids stop production lines for days.

**Who definitely won't use this:** Undocumented workers who never had an MOU permit to begin with (a different, harder problem this doesn't attempt to solve), and large processing conglomerates with in-house compliance departments and existing HRIS systems already tracking this internally.

## Feature Set

### MVP — Week 1-3
- **Personal countdown lookup:** Worker (or a literate coworker/NGO volunteer on their behalf) enters their pink card issue date once via a LINE bot; the bot calculates and stores the exact 2-year (or applicable MOU term) expiry date and sends a countdown.
- **Khmer/Burmese/Thai alert cascade:** Automated LINE push messages at 90/60/30/14/7/1 days before expiry, in the worker's chosen language, with a plain-language explanation of what to ask their employer for.
- **Government fee reference card:** A static, screenshot-friendly card (in Khmer, Burmese, Thai) listing the actual published government renewal fee schedule, so a worker can silently compare it to what a broker is charging before agreeing.
- **"What to do if it's already late" flow:** A decision-tree message pointing to the nearest Samut Sakhon labor rights NGO (e.g., MWRN) hotline if a card has already lapsed, since self-reporting timing affects legal options.
- **No-install onboarding:** Entirely inside LINE (already installed and used daily by this population for work communication) — zero app download required.

### Version 2 — Month 2-3
- **Anonymous broker fee reporting:** Workers can anonymously submit what they were charged for a renewal run; the bot aggregates by plant/broker (not by individual worker) so others can see "workers at this plant reported paying 6,000-8,000 THB" before agreeing to a number.
- **Dorm/plant group mode:** A broker or NGO caseworker can register a batch of workers at once and get a single weekly digest of whose deadlines are approaching, instead of managing 140 dates by memory.
- **Document photo vault:** Workers can photograph their own pink card (once they briefly have access to it) and store an encrypted copy in the bot's chat history as personal proof of status, independent of the broker retaining the physical original.

### Power User / Pro Features
- **Plant-wide compliance dashboard (for HR officers):** A simple web view listing all registered workers' upcoming deadlines sorted by urgency, exportable as a CSV for their own compliance filing.
- **Multi-plant broker view:** For legitimate labor agents managing workers across several factories, a consolidated calendar replacing the paper ledger entirely.

## Technical Implementation

### Suggested Stack
A native app makes no sense here — the user base already lives inside LINE for every other piece of work communication, has inconsistent smartphone storage space for new installs, and needs something a literate coworker or NGO volunteer can set up on someone else's behalf in two minutes at a dorm.

**Chosen stack:** LINE Messaging API bot (webhook on a small Node.js/Express service) + PostgreSQL for worker records and scheduled reminders, deployed on a low-cost VPS or Render/Fly.io free tier — because it requires zero install, matches existing behavior, and keeps the entire system cheap enough to run as a near-free community tool.

### APIs & Data Sources
| API | Specific Endpoint | What It Returns | Refresh Rate | Auth | Cost |
|-----|------------------|-----------------|--------------|------|------|
| LINE Messaging API | `POST https://api.line.me/v2/bot/message/push` | Sends scheduled countdown/reminder messages to a worker's LINE account | on-demand (cron-triggered) | channel access token | free tier sufficient at this scale |
| ExchangeRate-API | `GET https://open.er-api.com/v6/latest/THB` | THB→KHR / THB→MMK rates, so a quoted broker fee in Baht is shown in the worker's home currency for comparison | daily | none | free |
| World Bank Open Data | `GET https://api.worldbank.org/v2/country/KHM/indicator/BX.TRF.PWKR.DT.GD.ZS?format=json` | Cambodia remittance dependency trend, used in NGO/press materials to contextualize stakes | annual | none | free |

### Database Schema (key tables only)
```
workers: id (uuid), line_user_id (text), preferred_language (enum: km|my|th), permit_issue_date (date), permit_expiry_date (date), plant_id (uuid, nullable), created_at (timestamp)
plants: id (uuid), name (text), district (text), hr_contact_line_id (text, nullable)
fee_reports: id (uuid), plant_id (uuid, nullable), amount_thb (numeric), reported_at (timestamp) -- no worker_id stored, intentionally anonymous
reminder_log: id (uuid), worker_id (uuid), days_before_expiry (int), sent_at (timestamp)
```

### Key Technical Decisions
1. **LINE over a custom app or Telegram:** LINE is already the default chat app for Thai workplace communication, including between migrant workers and Thai employers/brokers — meeting users where they already are removes the single biggest adoption barrier for this demographic.
2. **Fee reports stored anonymously, aggregated only by plant:** Directly tying an underpaying-broker report to an individual worker's identity would expose them to retaliation; aggregation preserves the deterrent value of transparency without that risk.
3. **Manual date entry instead of OCR on the pink card:** Workers rarely have physical possession of the card long enough to photograph it reliably; a simple "when was it issued" question (verified against known MOU term lengths) is more robust than betting the MVP on OCR accuracy for a document workers may only see for minutes at a time.

### Hardest Technical Challenge
Getting the initial permit issue date accurately into the system at all, given workers often don't have their own card in hand and may not remember or know the exact date. Mitigation: partner with a Samut Sakhon migrant worker NGO (e.g., Migrant Worker Rights Network) for initial onboarding events where staff who do have (temporary, permission-based) access to worker documentation help batch-enter dates, rather than relying on individual self-service accuracy from day one.

## Monetization Strategy

> Note: Not every idea needs Stripe.

**Model chosen:** hybrid — free for individual workers (this population cannot and should not be asked to pay for a right-to-know-your-own-legal-status tool), paid for the plant/broker-facing compliance dashboard.

| Tier | Price | What's Included | Why They Pay This |
|------|-------|-----------------|-------------------|
| Free (Worker) | $0 | Personal countdown, alerts, fee reference card, NGO hotline routing | This is the entire point of the tool — a paywall here defeats the mission and the demographic literally cannot afford one |
| Free (Small Plant, <30 workers) | $0 | Basic dashboard, manual worker entry | Acquisition — gets brokers/HR comfortable with the tool before they have enough workers to need automation |
| Plant Pro | ~500-1,500 THB/month | Bulk worker import, CSV compliance export, multi-plant broker view, priority support | A single avoided 100,000+ THB fine for one expired permit pays for years of the subscription — this is trivial insurance-grade pricing for the employer side |

**Why someone pays:** Not the worker, ever, meaningfully — the plant HR officer or labor broker pays because the cost of one compliance failure dwarfs the subscription, and because it replaces error-prone manual tracking they're already doing badly.

**12-month revenue trajectory:**
- Month 3: ~5 plants × 800 THB/month ≈ 4,000 THB/month (~$120) — proof of concept via direct NGO-facilitated introductions
- Month 12: ~40 plants × 1,000 THB/month ≈ 40,000 THB/month (~$1,200) — modest but sustainable alongside grant support for the worker-facing free tier

**Alternative if SaaS doesn't work:** Grant/NGO-funded as a standalone worker-protection tool (ILO, IOM, or Thai-based migrant rights organizations fund exactly this category of intervention), with the plant-side dashboard treated as a nice-to-have rather than the core revenue plan.

## Marketing Strategy

**Exact communities to reach:**
- Facebook group "សហគមន៍ជនជាតិខ្មែរនៅប្រទេសថៃ" (Khmer Community in Thailand) — a large, active Khmer-migrant-focused Facebook group used for job postings and mutual aid among Cambodian workers in Thailand
- Migrant Worker Rights Network (MWRN) — a real, established Samut Sakhon-based NGO working directly with MOU migrant workers on exactly this kind of documentation and exploitation issue
- Facebook groups for Burmese migrants in Thailand such as "မဟာချဲရှိမြန်မာများ" (Myanmar workers in Mahachai) style community pages that circulate job and documentation information among the Burmese seafood-worker population

**First 10 users and how you get them:**
Partner directly with MWRN's Samut Sakhon field office for an in-person outreach session at a Sunday market or dormitory common area (the one weekly window when shift workers are reliably off and gathered) — NGO caseworkers who already have trusted relationships enter the first cohort's permit dates on the spot using their existing (permission-based) case files, turning day one into real, working countdowns rather than a cold app download.

**The press angle:**
"Cambodian and Burmese seafood workers don't know their own work permit expiry dates — because their employer keeps the only copy" — a concrete, checkable, human-rights-adjacent story that Thai-language labor outlets and regional migration-focused outlets (e.g., Prachatai, regional editions of outlets covering Mekong labor migration) regularly cover.

**Content / SEO play:**
A public, plain-language "Pink Card Renewal: What It Should Cost" page in Khmer, Burmese, and Thai listing the actual government fee schedule — the single most searched, most opaque piece of information for this population, currently scattered across inconsistent Facebook posts and broker word-of-mouth.

**Launch sequence:**
1. Build the Khmer/Burmese fee reference content and verify it against current Ministry of Labour published fees with MWRN's input before writing a line of bot code.
2. Launch the LINE bot quietly with one partner NGO and one pilot plant (via that NGO's existing HR contact) to validate the onboarding flow.
3. Week 1 post-launch: distribute a simple printed QR-code flyer (Khmer/Burmese/Thai) at the pilot plant's dormitory entrance and MWRN's office, since this population responds to a physical, trusted-source flyer far more reliably than a digital ad.

## Competitive Landscape

| Existing Solution | What They Do | Where They Fall Short | Why This Wins |
|-------------------|-------------|----------------------|---------------|
| Employer/broker paper ledgers | Track renewal dates for compliance purposes | Worker has zero visibility or independent copy of their own deadline; single point of failure if the broker errs or acts in bad faith | Gives the worker their own, independent, private record of the same date |
| MWRN and similar NGO casework (manual) | Provide direct legal aid and documentation help when problems arise | Reactive — engages after a lapse or dispute has already occurred, not before | Proactive alerting catches the deadline before it becomes a legal emergency |
| Nothing (most workers) | — | No system at all for the majority of workers outside a plant with strong HR practices | First tool that puts the deadline directly and privately in the worker's own hands |

**Moat:** Trust and distribution through NGO partnership, not technology — once MWRN or a similar organization treats this as their referral tool for new MOU workers, that relationship is difficult for a generic competitor to replicate, and the anonymized broker-fee dataset becomes more useful (and more of a deterrent to overcharging) the longer it accumulates.

## Risk Factors

1. **Adoption — worker distrust of anything resembling employer/government surveillance:** A tool asking for personal permit data could be mistaken for exactly the kind of tracking workers fear → **Mitigation:** Launch exclusively through trusted NGO intermediaries first, never directly from an employer, and be explicit that data is not shared with employers or authorities.
2. **Data — inaccurate self-reported issue dates producing wrong countdowns:** A worker who misremembers their issue date gets a false sense of security → **Mitigation:** Cross-check entered dates against known MOU permit term-length patterns and flag implausible entries for NGO staff review during onboarding events.
3. **Retaliation — a broker who discovers a plant's fee reports could try to identify and punish the reporting worker:** → **Mitigation:** Aggregate fee reports at the plant level only, with a minimum report threshold (e.g., 3+ reports) before any average is displayed, so no single report is ever individually visible.

## Build Reality Check

| Phase | Realistic Timeline | What Exists at End |
|-------|-------------------|-------------------|
| Prototype | 3 weeks | Working LINE bot: manual date entry, countdown calculation, scheduled alerts in 3 languages |
| Beta | 8 weeks | 1 NGO partner, 1 pilot plant, real workers receiving real countdown alerts |
| Launch | 14 weeks | Multi-plant rollout via NGO network, basic HR dashboard live for paying plants |

**Solo founder feasibility:** Difficult — the technical build is genuinely small (a solo developer could ship the MVP bot in the stated timeline), but the NGO relationship-building and translation/cultural-accuracy work this depends on for legitimacy is not a solo technical task.
**Biggest execution risk:** Without a credible NGO or community gatekeeper vouching for it, this tool looks indistinguishable from the extractive, trust-abusing systems it's trying to counter — distribution, not code, is what determines whether this gets used at all.

---
*Generated: 2026-09-10 | Industry: labor_work | Sub-industry: work_permit_tools | Geography: thailand*
*APIs queried for real data: ExchangeRate-API, World Bank Open Data*

---
id: [slug]-[YYYY-MM-DD]
title: [Full App Title]
created: [ISO 8601 datetime]
industry: [industry_key from taxonomy]
sub_industry: [sub_industry_key from taxonomy]
geography: [primary geography: thailand | southeast_asia | global | usa]
apis_used: [comma separated list of APIs queried]
monetization_model: [freemium | b2b-saas | one-time | marketplace | grant-funded | free | hybrid]
target_user: [DETAILED — not "professionals" but "rubber tappers in Surat Thani Province leasing 5-10 rai plots from Bangkok-based absentee landowners who tap 6am-9am and lose 30% yield when they miss the humidity window"]
concept_hash: [core-subject+geographic-context+who-uses-it]
---

# [App Title]

## The Hook
- [Pitch line 1 — specific, visceral, makes a weird investor lean forward. Names real places, real numbers.]
- [Pitch line 2 — the data angle or the "nobody has thought of this" moment]
- [Pitch line 3 — optional, the monetization or scale angle]

## Real Data Found
> Live data queried from real APIs during idea generation — not placeholders.

| Source | Data Point | Value | Queried |
|--------|-----------|-------|---------|
| [API Name] | [what was measured] | [actual value with units] | [date] |
| [API Name] | [what was measured] | [actual value with units] | [date] |

[1-2 paragraphs contextualizing what this data means. What does it reveal that most people don't know?
E.g., "PM2.5 readings from OpenAQ show Bang Rak district at 87 µg/m³ — nearly 6x WHO's daily safe limit of 15 µg/m³.
Three streets away, the reading drops to 42. Nobody building in Bangkok knows this before signing a 2-year lease."]

## The Problem

[Paragraph 1: Open with a specific, visceral real-world scenario. Name the province, the person, the exact moment.
Ground it immediately in the Real Data Found above.]

[Paragraph 2: Explain the structural reason this problem exists — why nobody has solved it, what workarounds people use now and why they fail.]

[Paragraph 3: The consequence of inaction — what keeps happening if this doesn't get built.]

## Who Uses This

**Primary user:** [Hyper-specific persona with location, daily routine, income level if relevant, current behavior]
**What they do now (and why it sucks):** [Their terrible workaround in one sentence]
**When they pay:** [The exact trigger moment — "after the second harvest lost to a missed weather window, they Google alternatives"]

**Secondary user:** [Second distinct segment — often B2B if primary is consumer, or vice versa]
**Why they care:** [One sentence]

**Who definitely won't use this:** [Anti-persona — helps scope the product]

## Feature Set

### MVP — Week 1-3
- **[Feature name]:** [What it does — one sentence, specific]
- **[Feature name]:** [What it does]
- **[Feature name]:** [What it does]
- **[Feature name]:** [What it does]
- **[Feature name]:** [What it does]

### Version 2 — Month 2-3
- **[Feature name]:** [What it does]
- **[Feature name]:** [What it does]
- **[Feature name]:** [What it does]

### Power User / Pro Features
- **[Feature name]:** [What it does]
- **[Feature name]:** [What it does]

## Technical Implementation

### Suggested Stack
[NOT fixed — choose what fits this problem specifically. Consider:
- Next.js + Supabase + Vercel — good for data-heavy web dashboards
- React Native + Expo — good for mobile-first, field use in rural/remote areas
- PWA with offline support — critical for low-connectivity regions (rubber farmers, fishing crews)
- Telegram/LINE bot — ideal when users already live in chat apps (common in Thailand)
- Static site + serverless functions — cheap, fast, good for public data portals
- BrowserOS-style client-side app — when no backend is needed, all data from public APIs
- CLI tool — developer tools, OSINT tools, data journalist tools
- Simple mobile web (no app install) — when target users won't install apps]

**Chosen stack:** [Your specific recommendation + 1 sentence why]

### APIs & Data Sources
| API | Specific Endpoint | What It Returns | Refresh Rate | Auth | Cost |
|-----|------------------|-----------------|--------------|------|------|
| [API Name] | `[exact endpoint URL]` | [specific data description] | [real-time / hourly / daily] | [none / key / token] | [free] |

### Database Schema (key tables only)
```
[table_name]: [field1 (type)], [field2 (type)], [field3 (type)]
[table_name]: [field1 (type)], [field2 (type)]
```

### Key Technical Decisions
1. **[Decision]:** [Rationale — why this approach over alternatives]
2. **[Decision]:** [Rationale]

### Hardest Technical Challenge
[The single thing most likely to kill this technically. Be honest. Then: mitigation.]

## Monetization Strategy

> Note: Not every idea needs Stripe. Some are better as free tools, grant-funded, or sold B2G.

**Model chosen:** [freemium / b2b-saas / one-time / grant-funded / data-licensing / etc.]

| Tier | Price | What's Included | Why They Pay This |
|------|-------|-----------------|-------------------|
| Free | $0 | [features] | [acquisition hook] |
| [Tier name] | $[X]/mo | [features] | [value unlock] |
| [Tier name] | $[X]/mo | [features] | [enterprise hook] |

**Why someone pays:** [Not "it's valuable" — the specific moment and emotional driver]

**12-month revenue trajectory:**
- Month 3: ~[N] paying users/contracts × $[X] = $[Z]/month
- Month 12: ~[N] paying users/contracts × $[X] = $[Z]/month

**Alternative if SaaS doesn't work:** [NGO grant / government contract / data licensing / one-time purchase / sponsorship]

## Marketing Strategy

**Exact communities to reach:**
- [Named Facebook group / LINE group / subreddit / Thai-language forum — include estimated member count]
- [Community 2 — specific, named]
- [Community 3 — specific, named]

**First 10 users and how you get them:**
[Not "post on Product Hunt." The actual first 10 people: who they are, where they are, how you reach them specifically]

**The press angle:**
[The weird data story this app produces that gets media coverage. What's the headline?
"Bangkok landlords don't disclose that 40% of condos are in sinking zones — we mapped it"]

**Content / SEO play:**
[The specific searchable content this app creates — data pages, rankings, maps — that drives organic traffic]

**Launch sequence:**
1. [Step 1 — before launch]
2. [Step 2 — launch day]
3. [Step 3 — week 1]

## Competitive Landscape

| Existing Solution | What They Do | Where They Fall Short | Why This Wins |
|-------------------|-------------|----------------------|---------------|
| [Name or "Nothing exists"] | [description] | [gap] | [your edge] |

**Moat:** [What makes this defensible once established — data flywheel / regulatory relationships / local trust / first-mover data collection / community lock-in]

## Risk Factors

1. **[Risk type — Data / Regulatory / Adoption / Technical / Market]:** [Specific risk description] → **Mitigation:** [Specific mitigation]
2. **[Risk type]:** [Specific risk] → **Mitigation:** [Specific mitigation]
3. **[Risk type]:** [Specific risk] → **Mitigation:** [Specific mitigation]

## Build Reality Check

| Phase | Realistic Timeline | What Exists at End |
|-------|-------------------|-------------------|
| Prototype | [X] weeks | [What a user can actually do] |
| Beta | [X] weeks | [First real users, real data] |
| Launch | [X] weeks | [Paying customers or deployed] |

**Solo founder feasibility:** [Yes / Difficult / No] — [Honest 1-sentence reason]
**Biggest execution risk:** [The non-technical thing that kills most apps in this space]

---
*Generated: [date] | Industry: [industry_key] | Sub-industry: [sub_industry_key] | Geography: [geography]*
*APIs queried for real data: [list of APIs actually called during generation]*

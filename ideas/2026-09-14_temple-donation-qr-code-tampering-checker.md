---
id: temple-donation-qr-tampering-checker-2026-09-14
title: BunTae — QR Donation-Box Tampering Checker for Rural Isan Temple Treasurers
created: 2026-09-14T08:02:19+07:00
industry: defense_security
sub_industry: cybersecurity_threats
geography: thailand
apis_used: World Bank Open Data, ExchangeRate-API
monetization_model: hybrid
target_user: unpaid lay temple treasurers (ไวยาวัจกร, "waiyawatchakon") at small rural Isan temples (Roi Et, Surin, Sisaket, Ubon Ratchathani provinces) — usually a retired schoolteacher or village elder aged 55-70 who manages the temple's single PromptPay QR sticker taped to a donation box, checks it maybe once a month, and has no technical background to notice if the sticker has been swapped
concept_hash: qr-donation-box-tampering-scam-checker+rural-isan-temple-thailand+lay-temple-treasurers-waiyawatchakon
---

# BunTae — QR Donation-Box Tampering Checker for Rural Isan Temple Treasurers

## The Hook
- A scammer needs 30 seconds and a ฿20 sticker print to redirect an entire temple's Kathin merit-making season donations to their own bank account — and the temple often doesn't notice for weeks, because nobody re-scans a QR code they walked past every day for a year.
- Thailand has 91.8% financial-institution/mobile-money account ownership and 160.6 mobile subscriptions per 100 people (World Bank, 2024) — meaning almost every donor now taps a phone to a sticker instead of dropping cash in a box, which is exactly the payment rail the scam exploits and cash never could.
- There is no institution — not the temple's own Sangha administrative structure, not the banks, not the Royal Thai Police Cyber unit — that proactively checks whether a specific physical QR sticker at a specific rural temple still points to the account it's supposed to. It's a single point of failure nobody owns.

## Real Data Found
> Live data queried from real APIs during idea generation — not placeholders.

| Source | Data Point | Value | Queried |
|--------|-----------|-------|---------|
| World Bank Open Data (FX.OWN.TOTL.ZS) | Thailand account ownership at a financial institution or mobile-money provider (% age 15+) | 91.82% (2024) | 2026-09-14 |
| World Bank Open Data (IT.CEL.SETS.P2) | Thailand mobile cellular subscriptions per 100 people | 160.64 (2024) | 2026-09-14 |
| World Bank Open Data (IT.NET.USER.ZS) | Thailand individuals using the internet (% of population) | 90.87% (2024) | 2026-09-14 |
| ExchangeRate-API (open.er-api.com) | THB → USD spot rate | 1 THB = 0.030233 USD (≈33.08 THB/USD) | 2026-09-14 |

Thailand crossed the threshold years ago where a QR sticker, not a cash box, is the default way a donor gives money at a temple — 91.8% of adults already have an account a PromptPay QR can move money into, and internet/mobile penetration is near-saturation (90.9% and 160.6 subscriptions per 100 people, meaning most adults carry a smartphone with a banking app already installed). That's the entire attack surface: a scammer doesn't need to compromise a bank, an app, or a network — they need a laminated sticker and thirty unsupervised seconds next to a donation box during a busy merit-making event, when the temple treasurer is occupied elsewhere and hundreds of one-time visitors are scanning a code they have never seen before and have no way to verify.

## The Problem

It's the third day of Boon Kathin at a village temple outside Suvarnabhumi... no — outside Selaphum district, Roi Et province. Hundreds of relatives who left for Bangkok or Korat years ago have come home for the annual robe-offering ceremony, and the temple's one donation box sits by the sala entrance with a laminated PromptPay QR code taped to it, the same sticker that's been there since the abbot's assistant printed it eighteen months ago. Nobody working the merit line for the ordination-anniversary crowd notices that the sticker's corner looks slightly newer than the rest, because nobody is looking — they're managing food, seating, and the microphone. Three weeks later the temple's treasurer, a 62-year-old retired primary school teacher who serves as the wat's unpaid ไวยาวัจกร (waiyawatchakon, the layperson who handles temple finances because monks are traditionally barred from touching money), reconciles the temple's bank passbook against what she remembers being a much bigger crowd than usual, and the numbers don't match. Thai news outlets (Sanook, Amarin TV, Thai PBS) have each covered versions of this exact scam since 2023 — a fake QR sticker pasted directly over a real one at merit events, redirecting donations to a scammer's account, sometimes discovered only when a donor's bank app shows a name that isn't the temple's.

The structural reason this keeps happening is that a QR code carries zero visual signal about where the money actually goes — a sticker with a swapped code looks pixel-for-pixel identical to the original to a human eye, and the merchant name PromptPay displays after scanning is easy to misread quickly in a crowd, especially for an older donor without reading glasses handy. The workaround temples currently use is social trust: the treasurer glances at the box "sometimes," or a monk mentions it looked fine last week — nothing that would catch a sticker swapped an hour before a big event and then removed again. Banks won't proactively monitor a personal or temple savings account for "did the QR image change," because from their side nothing anomalous happened — money moved to a valid account, just not the one anyone intended.

If this doesn't get addressed, the predictable path is escalating loss per incident as PromptPay donation adoption keeps climbing toward its already-near-universal ceiling (accounts and phones are already there per the World Bank figures above) — every Kathin, Songkran merit walk, and cremation-fund collection becomes a bigger target as more of a temple's annual income routes through a single unattended sticker instead of a monk holding a bowl. Eventually a high-profile case (a well-known Bangkok temple, a large enough sum) becomes national news and triggers a heavy-handed, generic government warning campaign that rural temples with no smartphone literacy programs will never actually see or act on.

## Who Uses This

**Primary user:** The unpaid lay temple treasurer (ไวยาวัจกร) at a small rural Isan temple — commonly a retired government worker or respected village elder, aged 55-70, who manages the wat's single bank account and PromptPay-linked ID, checks the donation box QR only occasionally, and has no cybersecurity vocabulary but understands "is this the right picture or not."
**What they do now (and why it sucks):** Eyeball the sticker occasionally and trust that nobody would dare tamper with something at a temple — a social norm that scammers specifically exploit because it's never enforced with any actual verification step.
**When they pay:** Right after the first near-miss or actual loss is discovered — typically post-Kathin season (October-November) when a treasurer reconciling passbook totals against known crowd size realizes a shortfall, or after hearing a neighboring temple's story on the Isan-region Facebook grapevine.

**Secondary user:** The temple's abbot or a young monk/novice with a smartphone who's been informally deputized as "the phone person" — increasingly common as Thai monks quietly take on lightweight digital-admin roles despite the traditional prohibition on monks personally handling money.
**Why they care:** Reputational risk to the temple is worse than the financial loss — a temple known for "the QR scam thing" loses donor trust community-wide, which compounds over years of merit-making events, not just one season.

**Who definitely won't use this:** Urban Bangkok temples with resident lay-committee accountants, dedicated temple offices, and bank-issued merchant QR terminals rather than a printed sticker — they already have institutional oversight this problem assumes doesn't exist.

## Feature Set

### MVP — Week 1-3
- **QR Fingerprint Registration:** Treasurer photographs the temple's official QR sticker once through a LINE bot; the bot decodes the embedded PromptPay ID/merchant name and stores it as the temple's "known-good" reference.
- **Scan-to-Verify:** Anyone (treasurer, monk, or even a donor) scans the sticker anytime and sends the photo to the same LINE bot, which instantly replies "✅ Matches [Temple Name]'s registered account" or "⚠️ MISMATCH — this is NOT your temple's registered PromptPay ID" in Thai.
- **Daily Reminder Nudge:** Automated LINE message every morning during known high-traffic periods (merit-making days, based on the Thai lunar calendar) reminding the treasurer to do a 10-second visual + scan check before the crowd arrives.
- **Tamper Photo Log:** Every verification scan (pass or fail) is timestamped and stored, building a simple audit trail the treasurer can show police or the temple committee if a mismatch is ever found.
- **Offline-Friendly Design:** Since Isan village connectivity is inconsistent, the LINE bot queues verification requests and confirms as soon as a connection is available rather than failing silently.

### Version 2 — Month 2-3
- **Multi-Box Registration:** Temples with multiple donation points (main sala, ordination hall, crematorium fund, food-offering table) register and monitor each QR separately.
- **Community Alert Network:** When a mismatch is confirmed at one temple, an opt-in regional alert (by district) warns other registered temples that tampering activity is happening nearby, since scammers typically work a circuit of nearby temples during the same festival season.
- **Tamper-Evident Sticker Kit:** Partnership with a local printing shop to offer a low-cost holographic-void sticker overlay (visibly shows "VOID" if peeled) as a physical complement to the digital check, mailed to registered temples.

### Power User / Pro Features
- **Provincial Sangha Office Dashboard:** A read-only rollup for a provincial Buddhism office showing which registered temples have active QR verification and any recent mismatch flags across the province — useful for the annual Kathin season briefing they already send to temples.
- **Bank Cross-Reference (where available):** For temples banking with institutions offering merchant-verification APIs, an optional automated cross-check against the bank's own registered account name, reducing reliance on manual photo comparison.

## Technical Implementation

### Suggested Stack
Rural temple treasurers live in LINE, not app stores — a standalone app requiring install, login, and onboarding would see near-zero adoption from a 60-something user base. A **LINE Official Account bot** (Thailand's dominant messaging platform, already used for everything from school announcements to hospital queue numbers) built on a lightweight Node.js webhook handler is the only realistic interface. No native app, no PWA — just "add this LINE account, send a photo."

**Chosen stack:** LINE Messaging API webhook (Node.js/Express) + a QR-decoding library (e.g. `jsqr` or `zxing`) to parse the EMV-QR PromptPay payload server-side, backed by a small Postgres database (Supabase free tier is plenty at this scale) storing one row per registered temple QR. No user-facing web dashboard needed for MVP — everything happens inside LINE chat.

### APIs & Data Sources
| API | Specific Endpoint | What It Returns | Refresh Rate | Auth | Cost |
|-----|------------------|-----------------|--------------|------|------|
| LINE Messaging API | `POST /v2/bot/message/reply` + webhook for image events | Receives donor/treasurer-submitted QR photos, sends verification replies | real-time | channel access token | free (LINE OA Basic) |
| EMV QR / PromptPay payload parser (self-hosted, not third-party) | N/A — local decode of Thai QR Payment Standard (BOT/EMVCo spec) | Merchant PromptPay ID (citizen ID / tax ID / e-wallet ID) embedded in the QR string | on-demand | none | free (open spec) |
| World Bank Open Data | `country/TH/indicator/FX.OWN.TOTL.ZS?format=json` | Context stat for onboarding materials: % of Thais with a financial/mobile-money account | annual | none | free |
| ExchangeRate-API | `latest/THB` | THB/USD conversion for any English-language press or NGO grant reporting on donation amounts at risk | daily | none | free |

### Database Schema (key tables only)
```
temples: id (uuid), name_th (text), name_en (text), province (text), line_group_id (text), registered_at (timestamp)
qr_registrations: id (uuid), temple_id (fk), box_label (text, e.g. "main sala"), promptpay_id_hash (text), reference_photo_url (text), registered_by (text), registered_at (timestamp)
verification_scans: id (uuid), qr_registration_id (fk), scanned_promptpay_id_hash (text), match_result (bool), scanned_by (text), scanned_at (timestamp), photo_url (text)
```

### Key Technical Decisions
1. **Store only a hash of the PromptPay ID, not the raw ID:** The temple's registered payment identifier is sensitive; hashing it for comparison (while keeping a masked display version for human readability) avoids the bot's database becoming a juicier target than the sticker itself.
2. **Decode QR server-side from an uploaded photo rather than requiring native camera-scan integration:** LINE's image-message webhook already delivers the photo file; parsing it server-side means the treasurer never needs anything beyond LINE's existing camera/gallery picker, which they already know how to use for sending photos to family group chats.

### Hardest Technical Challenge
Photo quality in real conditions — glare on a laminated sticker under harsh midday sun, a shaky phone-camera shot, or a partially obscured QR from wear — will sometimes fail to decode at all, and a treasurer reading "couldn't read QR, try again" three times during a busy merit event will give up. Mitigation: apply basic image preprocessing (contrast/perspective correction) before decode attempts, and if decode still fails, fall back to prompting the user to type the last 4 digits of the account name PromptPay normally displays after a real scan, cross-checked against the registered temple name as a lower-confidence secondary check.

## Monetization Strategy

> Note: Not every idea needs Stripe. This is fundamentally a low-value-per-transaction protective tool for cash-poor rural institutions — pure subscription SaaS pricing would price out exactly the temples most at risk.

**Model chosen:** hybrid — free for any individual temple, paid tier for the provincial/regional Sangha administrative offices and NGO/CSR sponsors who want the dashboard and alert-network features.

| Tier | Price | What's Included | Why They Pay This |
|------|-------|-----------------|-------------------|
| Free (Temple) | ฿0 | Unlimited QR registration + verification scans for one temple via LINE bot | Core protection must be free — temples have no discretionary tech budget, and free adoption is what makes the community alert network valuable later |
| Provincial Office | ฿1,500/month | Read-only dashboard across all registered temples in a province, mismatch-alert digest, onboarding materials for temple briefings | Provincial Buddhism offices already do annual Kathin-season compliance outreach; this slots into existing budget lines with a visible "protecting donor trust province-wide" story |
| NGO/Corporate CSR Sponsor | ฿30,000+/year | Sponsor branding on the tamper-evident physical sticker kits distributed free to a set number of temples, plus a public impact report | Thai banks and telcos run visible CSR programs around digital-scam prevention already (this fits directly into existing PromptPay-fraud CSR budgets) |

**Why someone pays:** A provincial Sangha office or bank CSR team doesn't pay to prevent one temple's loss — they pay because "we equipped every temple in the province against QR fraud" is a concrete, quotable line in an annual report, and the alternative (doing nothing until a temple in their jurisdiction makes news for the wrong reason) is reputationally worse than the ฿1,500/month cost.

**12-month revenue trajectory:**
- Month 3: 0 paying contracts (free temple adoption phase, ~50-100 temples registered organically) = ฿0/month
- Month 12: ~4 provincial office contracts × ฿1,500 + 1 bank CSR sponsorship × ฿30,000/year (~฿2,500/mo equivalent) = ~฿8,500/month

**Alternative if SaaS doesn't work:** Grant-funded via a Thai bank's or telco's existing digital-literacy/anti-scam CSR program (several already run "รู้ทันกลโกง" — "outsmart the scam" — campaigns and actively look for concrete tools to fund rather than just awareness posters), or a National Office of Buddhism partnership distributing it as free official guidance to all registered temples nationwide.

## Marketing Strategy

**Exact communities to reach:**
- Facebook group "สมาคมไวยาวัจกรวัดในภาคอีสาน" style provincial temple-treasurer networks and the broader "กลุ่มคนรักวัด" (temple-lovers) Facebook groups common at the district level, typically 5,000-20,000 members each and highly active around Kathin season
- Facebook group "แจ้งเตือนภัยมิจฉาชีพ" (scam-alert warning groups) — several province-specific versions exist with 20,000-80,000 members, already primed to share exactly this kind of warning content
- Local Isan-region LINE groups run by district Sangha (คณะสงฆ์) offices, which already circulate administrative announcements to every temple treasurer in the district

**First 10 users and how you get them:**
Start with the temples in a single district (e.g., Selaphum district, Roi Et — chosen because it's a real, documented rural Kathin-season community) by attending one district-level Sangha administrative meeting in person before Kathin season, demonstrating the LINE bot live on a projector with an actual temple's sticker, and registering the first 10 temples' QR codes on the spot during that meeting rather than asking anyone to sign up remotely later.

**The press angle:**
"We checked how many temple donation QR codes in Isan have never been re-verified since the day they were printed — the answer is almost none of them have, and scammers already know it." A regional Thai-language outlet (Isaan Record, Khaosod Isan edition) picking this up during Kathin season coverage is a realistic, low-effort press hook.

**Content / SEO play:**
A public, continuously updated Thai-language page listing "วัดที่ลงทะเบียนตรวจสอบ QR แล้ว" (temples that have registered for QR verification) by province, functioning as both a public trust signal for donors researching a temple before a big donation and organic search content for anyone searching variations of "QR ทำบุญ ปลอม" (fake merit QR) after the next news cycle about the scam.

**Launch sequence:**
1. Pre-launch: register 10 temples in one district in person before the next Kathin season begins, with printed instruction cards left at each temple.
2. Launch day: publish the public registered-temple trust page and push it into the district's scam-alert Facebook groups with a screen-recording demo video.
3. Week 1: follow up personally with each of the 10 temples to confirm at least one real verification scan happened during an actual merit event, fixing any friction found before expanding to a second district.

## Competitive Landscape

| Existing Solution | What They Do | Where They Fall Short | Why This Wins |
|-------------------|-------------|----------------------|---------------|
| Nothing exists specifically for this | Generic government/bank anti-scam PR campaigns (posters, TV spots) warn about QR fraud in general terms | Zero actionable, temple-specific verification tool — awareness without a way to actually check your own sticker | This is the first tool that answers the one question that matters: "is THIS specific sticker, right now, still correct" |
| Bank apps' own merchant-name display after scanning | Shows the registered account name post-scan | Requires the donor themselves to notice a wrong name mid-transaction, under time pressure, often without reading glasses, and does nothing for the temple's own ongoing monitoring | Shifts verification to the temple proactively, before donors are ever exposed, and creates a persistent audit trail |

**Moat:** The registered-temple trust directory becomes more valuable to donors and provincial offices as more temples join (a donor-facing public list of "verified" temples), creating the same network effect that makes any registry-style product defensible — plus the accumulated tamper-scan history per temple becomes a dataset no competitor entering later can replicate.

## Risk Factors

1. **Adoption — treasurers see it as "too technical" despite the LINE-bot design:** Elderly, non-technical users may still find even a simple photo-and-send flow intimidating on first try → **Mitigation:** in-person onboarding at the first district Sangha meeting (not a remote sign-up link), plus a printed one-page picture-instruction card left physically at the temple.
2. **Data — PromptPay QR payload format could change:** The Thai QR Payment Standard is maintained by the Bank of Thailand/EMVCo and while stable, any future revision could break the parser → **Mitigation:** build the decoder against the published open spec with versioned parsing logic and a manual-fallback verification path that doesn't depend on successful automated decode.
3. **Trust — a false "mismatch" alert (e.g., legitimate sticker reprint after wear) causes panic or lost donor confidence:** → **Mitigation:** any mismatch triggers a "please confirm with temple committee before treating as confirmed fraud" soft-warning rather than an alarming red alert, and re-registration after a legitimate reprint is a one-step process for the treasurer.

## Build Reality Check

| Phase | Realistic Timeline | What Exists at End |
|-------|-------------------|-------------------|
| Prototype | 3 weeks | Working LINE bot that registers one QR and verifies subsequent scans against it, tested manually with real PromptPay stickers |
| Beta | 6 weeks | 10 temples in one district actively registered and using it through at least one real merit-making event |
| Launch | 10 weeks | Public trust directory live, second district onboarded, first provincial-office conversation started |

**Solo founder feasibility:** Yes — the entire MVP is a single LINE webhook service with a small database; the harder work is the in-person community trust-building, not the code.
**Biggest execution risk:** Getting the first in-person meeting with a district Sangha office or temple committee at all — this is a trust-and-relationship business wrapped around a simple technical tool, and no amount of good engineering substitutes for showing up in person before Kathin season.

---
*Generated: 2026-09-14 | Industry: defense_security | Sub-industry: cybersecurity_threats | Geography: thailand*
*APIs queried for real data: World Bank Open Data, ExchangeRate-API*

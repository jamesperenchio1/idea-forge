You are building a working MVP from the app idea seed provided below. Execute every step without asking for confirmation.

---

## STEP 1 — CALL THE REAL APIs

For each entry in the seed's `apis` array, make a real HTTP request using Bash(curl). Capture actual values — not placeholders, not estimates.

If an endpoint fails, consult /home/james/idea-forge/data/api-knowledge-base.json for an alternative. You must have at least 2 real data points before continuing.

## STEP 2 — GENERATE THE FULL IDEA DOCUMENT

Using the seed + the real data from Step 1, write a complete idea document following the template at:
  /home/james/idea-forge/templates/idea-template.md

Fill every section. The "Real Data Found" table must contain actual values from Step 1 with source + date.

Get today's Bangkok date: `TZ=Asia/Bangkok date +%Y-%m-%d`

Save to: /home/james/idea-forge/ideas/[YYYY-MM-DD]_[seed-slug].md

## STEP 3 — UPDATE THE REGISTRY

Read /home/james/idea-forge/data/registry.json. Write an updated version:
1. Increment `total_ideas`
2. Append to `ideas` array: id, title, file, created_at (ISO8601 Bangkok), industry, sub_industry, geography, concept_hash, apis_used
3. Add concept_hash to `concept_hashes_used`
4. Update `industries_covered` — add sub_industry under its industry key
5. Update `rotation_state`: last_industry, last_sub_industry, last_geography, last_3_industries (keep 3), last_3_geographies (keep 3)
6. Update `last_updated`

Save back to /home/james/idea-forge/data/registry.json

## STEP 4 — BUILD THE MVP

Create a working project at: ~/projects/[seed-slug]/

Requirements:
- Use the stack from the seed's `stack` field
- Display REAL live data from the APIs (same endpoints as Step 1 — called at runtime, not hardcoded)
- Build the single core feature only — the thing that makes the idea worth building
- Runnable with ONE command — document it in README.md
- No mock/fake data. If an API call fails at runtime, show a real error message.

Structure to create (adapt for chosen stack):
```
~/projects/[slug]/
  README.md          ← What it is, setup steps, the one-command run instruction
  .env.example       ← Any required API keys / config vars
  src/ or app/       ← Application code
  package.json / requirements.txt / Makefile / etc.
```

For web apps: make it work on localhost, include a note in README about adding a Caddy route at /etc/caddy/Caddyfile if the user wants it public.

## STEP 5 — GIT COMMIT THE IDEA

```bash
cd /home/james/idea-forge
git add ideas/ data/registry.json
git commit -m "idea: $(TZ=Asia/Bangkok date +%Y-%m-%d) — IDEA_TITLE_HERE"
git push origin main
```
Replace IDEA_TITLE_HERE with the actual title.

## COMPLETION CHECK

- [ ] Real API data fetched (actual values with units)
- [ ] Full idea doc saved to ideas/
- [ ] registry.json updated
- [ ] MVP project created at ~/projects/[slug]/
- [ ] App is runnable (README has the one-line command)
- [ ] Git committed and pushed

Do not ask for confirmation at any step. Just execute.

---
## IDEA SEED

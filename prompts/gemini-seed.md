The JSON context provided above contains three concatenated files: registry.json, industry-taxonomy.json, and api-knowledge-base.json. Read all of it carefully before generating.

## Your task

Generate exactly {{N}} distinct app idea seeds as a valid JSON array.

## Rules

1. Check `industries_covered` in the registry — pick industries/sub-industries NOT already covered, or least covered
2. Try to avoid industries in `rotation_state.last_3_industries` but not strictly.
3. Each `concept_hash` must NOT appear in `concept_hashes_used`
4. Ideas must be weird, niche, non-corporate:
   - NO: generic productivity, "Uber for X", social media, AI chatbots, anything a McKinsey consultant would pitch
   - YES: hyper-local, strange verticals, specific people with daily frustrating problems
5. `target_user` must be hyper-specific: job + location + daily behavior. Not "farmers" — "rubber tappers in Chumphon Province who tap 6am-9am and lose yield when they miss the humidity window"
6. Geography mix: Thailand 40%, SE Asia 20%, global/other 40%
7. Each idea must reference a minimum of 2–4+ real APIs from the api-knowledge-base. Use exact endpoint URLs with realistic parameters.
8. `concept_hash` format: `core-subject+geographic-context+who-uses-it`

## Output format

Output ONLY a valid JSON array. No markdown fences, no explanation, no preamble. Start with `[` end with `]`.

Each element:
```
{
  "title": "App name (1-3 words, creative)",
  "slug": "descriptive-kebab-case-5-8-words",
  "tagline": "One punchy line: who uses it and what it fixes",
  "industry": "industry_key from taxonomy",
  "sub_industry": "sub_industry_key from taxonomy",
  "geography": "thailand | southeast_asia | indonesia | vietnam | philippines | global | etc",
  "target_user": "Hyper-specific persona with job, location, daily routine",
  "problem": "2 sentences max. Exact thing that goes wrong. Terrible current workaround.",
  "apis": [
    {"name": "API name from knowledge base", "endpoint": "exact URL with realistic params", "what_it_gives": "specific data"},
    {"name": "API 2", "endpoint": "exact URL", "what_it_gives": "specific data"}
  ],
  "stack": "PWA | Next.js | Telegram bot | React Native | LINE bot | static site | Python CLI | etc",
  "concept_hash": "core-subject+geographic-context+who-uses-it",
  "why_interesting": "One sentence on why this angle is genuinely novel"
}
```

Today's date: {{DATE}}

---
name: okr-review
description: Refine an existing OKR draft in guided mode. Use when the human asks to improve a draft OKR or explicitly invokes $okr-review.
---

# OKR Review

Use this skill as the entrypoint for OKR draft refinement.

## Invocation

- `$okr-review`
- `$okr-review refine`
- `$okr-review audit` (routes to `$okr-audit`)

## Workflow Source

1. Read `skills/okr-review.md` from the current workspace.
2. Scan all files under `context/` recursively before substantive review.
3. Validate `context/okr-ground-rules.md` for completion, not only existence.
4. Treat rules as not configured if required fields are missing (scope, levels, cycle length, check-in rhythm, ownership model, source of truth) or placeholders remain (`[...]`, `[Team/Company-wide]`, `[Name]`, `TBD`, `TODO`).
5. If ground rules are missing/not configured, propose `$okr-ground-rules` first.
6. If no usable draft is provided, ask for paste/link or route to `$okr-write`.
7. If human asks for strict scorecard/expert audit, route to `$okr-audit`.
8. Execute remaining refinement workflow exactly, using a per-step pattern:
   - Assessment of draft quality using draft evidence + OKR intent + strategic context.
   - 2-3 move-forward options with tradeoffs.
   - One decision question to choose option A/B/C (or custom rewrite).

## Output Requirements

- Keep one-question-at-a-time flow.
- Tie major recommendations to concrete context facts.
- At each step, assess first and then propose options (not question-only prompts).
- Enforce focus limits: max 3 objectives, 2-4 KRs per objective.
- Close with refined final OKR and clear next actions.

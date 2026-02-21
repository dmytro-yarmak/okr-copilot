---
name: okr-review
description: Run an OKR review and refinement workflow in guided or expert-audit mode. Use when the human asks to review OKRs, improve an OKR draft, or explicitly invokes $okr-review.
---

# OKR Review

Use this skill as the entrypoint for OKR review sessions in Codex.

## Invocation

- `$okr-review`
- `$okr-review guided`
- `$okr-review expert-audit`

## Workflow Source

1. Read `skills/okr-review.md` from the current workspace.
2. Before mode selection, scan all files under `context/` recursively and summarize relevant OKR context.
3. Use scanned context throughout writing/reviewing, not only at startup.
4. Tie major recommendations and rewrites to concrete facts from relevant context documents.
5. Validate `context/okr-ground-rules.md` for completion, not only existence.
6. Treat ground rules as not configured if core fields are missing (scope, levels, cycle length, check-in rhythm, ownership model, source of truth) or placeholders remain (`[...]`, `[Team/Company-wide]`, `[Name]`, `TBD`, `TODO`).
7. If ground rules are missing or not configured, propose running `$okr-ground-rules` first.
8. Continue review without ground rules only if the human explicitly chooses to proceed.
9. Execute the remaining review workflow exactly (mode selection, ground rules, OKR type, then guided or expert-audit phases).

## Grounding Files

Always ground review in:

- `context/okr-ground-rules.md`
- `context/company.md` (if present)
- Additional relevant files found in `context/`

## Output Requirements

- Enforce focus limits: max 3 objectives, 2-4 KRs per objective.
- Close with revised final OKR and clear next actions.
- Keep language concrete, concise, and practical.

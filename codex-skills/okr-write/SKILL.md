---
name: okr-write
description: Draft a new OKR from scratch in guided mode. Use when the human asks to create an OKR or explicitly invokes $okr-write.
---

# OKR Write

Use this skill as the entrypoint for drafting a new OKR.

## Invocation

- `$okr-write`
- `$okr-write team`
- `$okr-write department`

## Workflow Source

1. Read `skills/okr-write.md` from the current workspace.
2. Scan all files under `context/` recursively before drafting.
3. Validate `context/okr-ground-rules.md` for completion, not only existence.
4. If ground rules are missing/not configured, propose `$okr-ground-rules` first.
5. Execute drafting workflow exactly, one question at a time.

## Output Requirements

- Keep ownership with the human; guide, do not replace.
- Enforce focus limits: max 3 objectives, 2-4 KRs per objective.
- Close with complete OKR draft and next step recommendation (`$okr-review` or `$okr-audit`).

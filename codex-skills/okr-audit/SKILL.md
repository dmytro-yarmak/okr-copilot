---
name: okr-audit
description: Run a mostly autonomous expert audit of a complete OKR draft. Use when the human asks for strict scorecard review, risk-focused critique, or explicitly invokes $okr-audit.
---

# OKR Audit

Use this skill as the entrypoint for strict OKR auditing.

## Invocation

- `$okr-audit`
- `$okr-audit strict`

## Workflow Source

1. Read `skills/okr-audit.md` from the current workspace.
2. Scan all files under `context/` recursively before auditing.
3. Validate `context/okr-ground-rules.md` for completion, not only existence.
4. If ground rules are missing/not configured, propose `$okr-ground-rules` first.
5. If no usable draft is provided, ask for paste/link or route to `$okr-write`.
6. Run mostly autonomous audit with only minimal blocking clarifications.

## Output Requirements

- Return severity-ordered findings, scorecard, revised OKR, and concrete fix actions.
- Cite context signals used.
- Keep language direct and practical.

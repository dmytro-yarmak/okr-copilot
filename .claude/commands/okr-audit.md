---
description: Run a mostly autonomous expert audit of an OKR draft.
---

Read `skills/okr-audit.md` and execute it exactly.

Requirements:
- Scan `context/` recursively before auditing.
- Validate `context/okr-ground-rules.md` for completion (not only existence).
- Ask only minimal blocking clarifications, then provide full audit report.
- If no usable draft is provided, ask for paste/link or route to `/okr-write`.
- Return severity-ordered findings, scorecard, revised OKR proposal, and fix actions.

Use `$ARGUMENTS` as optional strictness hint.

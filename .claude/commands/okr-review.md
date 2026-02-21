---
description: Run the OKR review workflow in guided or expert-audit mode.
---

Read `skills/okr-review.md` and execute it exactly.

Requirements:
- Ask one question at a time in guided mode.
- Before mode selection, scan `context/` recursively and summarize relevant context for OKRs.
- Use scanned `context/` facts throughout writing/reviewing, not only at startup.
- Tie major recommendations and rewrites to concrete facts from relevant context documents.
- Validate `context/okr-ground-rules.md` for completion, not only existence.
- Treat the file as not configured if core fields are missing (scope, levels, cycle length, check-in rhythm, ownership model, source of truth) or placeholders remain (`[...]`, `[Team/Company-wide]`, `[Name]`, `TBD`, `TODO`).
- If ground rules are missing or not configured, propose running `/okr-ground-rules` first.
- Continue review without ground rules only if the human explicitly chooses defaults.

Use `$ARGUMENTS` as optional mode hint (`guided` or `expert-audit`).

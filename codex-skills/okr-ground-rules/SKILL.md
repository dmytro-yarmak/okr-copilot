---
name: okr-ground-rules
description: Define reusable OKR ground rules and save them for future review sessions. Use when the human asks to set OKR rules, standardize OKR process expectations, or explicitly invokes $okr-ground-rules.
---

# OKR Ground Rules

Use this skill as the entrypoint for OKR ground-rules setup in Codex.

## Invocation

- `$okr-ground-rules`
- `$okr-ground-rules team`
- `$okr-ground-rules company`

## Workflow Source

1. Read `skills/okr-ground-rules.md` from the current workspace.
2. Before questioning, scan all files under `context/` recursively and summarize relevant constraints and strategic context.
3. Execute the workflow exactly and save confirmed rules to `context/okr-ground-rules.md`.

## Output Requirements

- Keep every rule explicit and testable.
- Ask one question at a time.
- Produce a final structured rules summary before save.

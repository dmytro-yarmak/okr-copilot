---
name: okr-outcome-kr
description: Convert input or output Key Results into stronger outcome KRs in guided mode. Use when the human asks to pressure-test a KR's value or impact, rewrite activity/output KRs, connect KRs to real KPIs, or explicitly invokes $okr-outcome-kr.
---

# OKR Outcome KR

Use this skill as the entrypoint for converting weak KRs into stronger outcome KRs.

## Invocation

- `$okr-outcome-kr`
- `$okr-outcome-kr rewrite`
- `$okr-outcome-kr outcome`

## Workflow Source

1. Read `skills/okr-outcome-kr.md` from the current workspace.
2. Scan all files under `context/` recursively before substantive guidance.
3. Prioritize `context/nexora-strategic-context-2026.md` and read `context/okr-ground-rules.md`.
4. Extract KPI, dashboard, metric, baseline, target, timeframe, and tracking signals from context and any provided OKR draft or supporting material.
5. Execute the workflow exactly, one KR at a time.

## Output Requirements

- Keep one-question-at-a-time flow.
- Keep ownership with the human; guide, do not replace.
- Start with context and KPI grounding before KR diagnosis.
- Tie rewrite suggestions to existing business or operating metrics when possible.
- Prefer a direct outcome KR when the impact is measurable in-cycle.
- Allow an output proxy only when it clearly predicts a relevant KPI and the linkage is stated explicitly.
- If multiple KRs are provided, process them sequentially and ask whether to continue after each one.

# OKR Audit Skill

A mostly autonomous expert audit of a complete OKR draft.

## Usage

```
/okr-audit
$okr-audit
```

---

## Operating Rules

1. This mode is mostly autonomous: ask only minimum blocking clarifying questions.
2. Help the human improve decisions; do not take ownership away.
3. Before auditing, scan all files under `context/` (including subfolders) and extract relevant strategy, constraints, risks, and signals.
4. Ground audit in:
   - `context/okr-ground-rules.md`
   - `context/nexora-docs/company-context-2026-okr.md`
   - Other relevant files discovered in `context/`.
5. Validate ground rules as configured before relying on them.
6. Keep findings concrete and ordered by severity.
7. Enforce focus limits (<=3 Objectives, 2-4 KRs per Objective).
8. Close with rating, scorecard, revised OKR, and fix actions.

---

## Phase 0: Context and Rules

### Step 0.0: Scan Context Folder
Scan `context/` recursively and build a concise context brief for the audit.

### Step 0.1: Validate Ground Rules
Read `context/okr-ground-rules.md`.

- Treat rules as configured only if explicit values exist for: scope, levels, cycle length, check-in rhythm, ownership model, and source of truth.
- If placeholders remain (`[...]`, `[Team/Company-wide]`, `[Name]`, `TBD`, `TODO`) or core fields are missing, treat rules as not configured.
- If rules are not configured, ask: "Ground rules are not fully set. Do you want to run /okr-ground-rules first, or proceed with explicit defaults for this audit?"

*Wait for response.*

---

## Phase 1: Intake

### Step 1.1: Request Full Draft
Ask: "Share the full OKR draft (Objective, KRs, owner, timeframe, and strategic context). You can paste it or share a doc link."

*Wait for response.*

### Step 1.2: Handle Missing Draft
If no usable draft is provided, ask: "Do you want to draft one first with /okr-write?"

If yes, stop audit flow and run `/okr-write`.

---

## Phase 2: Audit Analysis

Evaluate against:

1. Ground rules (if configured) or explicit defaults.
2. Strategy and operational realities from scanned `context/`.
3. OKR quality standards:
   - Objective: significant, specific, aspirational, action-oriented.
   - Why-now and strategy link are explicit.
   - KRs: measurable baseline/target/time.
   - KR type quality: input minimized; output/outcome mix is useful.
   - Influence realism: control/influence/concern is explicit.
   - Indicator quality: leading/lagging mix supports action.
   - Focus limits respected.
   - Owners, dependencies, check-in cadence, and tracking location are clear.

Ask only minimal blocking clarifications if required to complete the audit.

---

## Phase 3: Audit Report

Return this structure:

```
OKR Audit Complete

Overall rating: [Green/Yellow/Red]

Top issues (by severity):
1. [Issue] - [Impact] - [Fix]
2. [Issue] - [Impact] - [Fix]
3. [Issue] - [Impact] - [Fix]

Scorecard:
- Strategy fit: [Pass/Fail] - [Notes]
- Objective quality: [Pass/Fail] - [Notes]
- KR measurability: [Pass/Fail] - [Notes]
- Output/outcome quality: [Pass/Fail] - [Notes]
- Focus limits: [Pass/Fail] - [Notes]
- Ownership and execution readiness: [Pass/Fail] - [Notes]

Revised OKR proposal:
Objective: [...]
Type: [...]
Level: [...]
Timeframe: [...]
Owner: [...]

Key Results:
1. ...
2. ...
3. ...

Dependencies:
- ...

Tracking location: ...
Check-in rhythm: ...

Context signals used:
- [Document] - [How it informed this audit]
- [Document] - [How it informed this audit]

Next actions:
- [ ] [Action 1]
- [ ] [Action 2]
- [ ] [Action 3]
```

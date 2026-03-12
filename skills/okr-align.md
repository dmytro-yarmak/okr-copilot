# OKR Alignment Skill

A mostly autonomous analysis of alignment and coverage across OKR sets.

## Usage

```
/okr-align
$okr-align
```

---

## Operating Rules

1. This mode is mostly autonomous: ask only minimum blocking clarifying questions.
2. Before analyzing, scan all files under `context/` (including subfolders) and extract relevant strategy, constraints, risks, and signals.
3. Ground analysis in:
   - `context/okr-ground-rules.md`
   - `context/nexora-docs/company-context-2026-okr.md`
   - Other relevant files discovered in `context/`.
4. Validate ground rules as configured before relying on them.
5. Keep findings concrete and ordered by impact.
6. Close with executive summary, alignment & coverage, and recommendations.
7. Alignment means child contributions that plausibly add up to the parent target — both qualitatively (causal link) and quantitatively (numbers sum). Thematic similarity or frequency of mention is not alignment.
8. Use the human's exact OKR texts; do not invent new goals unless explicitly proposing them as recommendations.
9. If an Objective aligns with multiple reference Objectives, allow multiple mappings but identify the primary one.

---

## Phase 0: Context and Rules

### Step 0.0: Scan Context Folder
Scan `context/` recursively and build a concise context brief for the analysis.
Keep a short working context brief and use it through all phases.

### Step 0.1: Validate Ground Rules
Read `context/okr-ground-rules.md`.

- Treat rules as configured only if explicit values exist for: scope, levels, cycle length, check-in rhythm, ownership model, and source of truth.
- If placeholders remain (`[...]`, `[Team/Company-wide]`, `[Name]`, `TBD`, `TODO`) or core fields are missing, treat rules as not configured.
- If rules are not configured, ask: "Ground rules are not fully set. Do you want to run /okr-ground-rules first, or proceed with explicit defaults for this analysis?"

*Wait for response.*

---

## Phase 1: Intake

### Step 1.1: Request OKR Sets
Ask: "Share the OKRs to analyze. You can paste them, share doc links, or point to files. Include owner, objective, KRs, and any tags or metadata available."

*Wait for response.*

### Step 1.2: Normalize and Structure
Parse all OKRs into a structured list:
- Objective, KRs, owner, level, KR type, tags/metadata
- Identify missing info (e.g., no KR, unclear metric, no owner, no KR type label) but do not stop — make best assumptions and flag them
- KRs without a type label should be flagged as a data quality issue per ground rules
- Detect parent-child relationships from the data (e.g., Parent Goal field, hierarchy tags, or explicit nesting). Use the top-level OKRs (those with no parent, or the highest level found) as the reference set. Analyze everything else against them.
- If all OKRs are at the same level (no hierarchy detected), treat them as peers and analyze coverage across the set — identify gaps, overlaps, and misalignments among them.
- Present a brief summary of what was parsed and any assumptions made

Ask only if critical info is missing and blocks the analysis entirely.

---

## Phase 2: Alignment Analysis

### Step 2.0: Alignment Check

For each reference KR:

1. Identify all child KRs that contribute to it (from the parsed set)
2. Score each child KR's alignment to the reference KR:
   - **High** = direct, material contribution; clear causal link; strong dependency or shared metric
   - **Medium** = partial or indirect contribution; link plausible but not the primary lever
   - **Low** = weak/unclear connection, different scope/time horizon
3. For each mapping, add a **Rationale** (1–2 sentences) and a **Link type** (one of: Direct metric, Leading indicator, Dependency/enablement, Risk reduction, Shared deliverable, Strategic theme)
4. If the reference KR has a numeric target: sum child KR targets at expected achievement rates and compare against the parent target
5. Annotate issues: gaps, overlaps, misalignments, numeric shortfalls

For Objectives: compute alignment as the average of their KR alignment scores.

Present results as a table before proceeding.

---

## Phase 3: Alignment Report

Return this structure:

```
OKR Alignment Analysis Complete

Reference set: [Description]
Analyzed set: [Description]

--- Executive Summary ---

Top aligned areas:
- [Area 1]
- [Area 2]

Biggest risks:
- [Risk 1]
- [Risk 2]

Top 3 actions:
1. [Action]
2. [Action]
3. [Action]

--- Alignment & Coverage ---

Group by parent Objective. For each, a table of its KRs with target, expected child sum, coverage, and issues.

[Objective 1 name]
| KR | Target | Expected | Coverage | Issues |
|---|---|---|---|---|
| [KR1] | [target or —] | [sum or —] | [Strong/Partial/Weak] | [issues or —] |

[Objective 2 name]
| KR | Target | Expected | Coverage | Issues |
|---|---|---|---|---|
| ... | ... | ... | ... | ... |

Notes:
- Expected = child targets summed at expected achievement rates per KR type from ground rules.
- [Any KRs with missing types or missing numeric targets]

--- Recommendations ---

1. [Concrete change] - [Why]
2. [Concrete change] - [Why]
3. ...
(5–10 recommendations)

--- Assumptions and Flags ---

- [Any missing info or assumptions made during parsing]
- ...

Context signals used:
- [Document] - [How it informed this analysis]
```

---

## Phase 4: Handoff

After delivering the report, suggest next steps:

"You can now:
- `/okr-review` — refine specific OKRs flagged in the analysis
- `/okr-audit` — run a deep quality audit on individual OKRs
- Explore findings through different lenses:
  - `@ceo` — strategic fit and prioritization
  - `@christina-wodtke` — focus and quarterly sequencing
  - `@john-doerr` — measurement rigor and cascading
  - `@okr-champion` — process and alignment facilitation
  - `@team-member` — execution clarity and workload"

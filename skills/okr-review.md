# OKR Review Skill

A complete OKR review workflow with two modes:
1) guided question-by-question refinement, and
2) expert audit of a full draft against OKR best practices.

## Usage

```
/okr-review
$okr-review
```

---

## Operating Rules

1. Start by asking which mode to use: `guided` or `expert-audit`.
2. In `guided`, ask one question at a time.
3. In `expert-audit`, ask for a full draft once, then perform most analysis without step-by-step questioning.
4. Before asking review questions, scan all files under `context/` (including subfolders) and extract anything useful for OKR quality, strategy alignment, risks, and execution constraints.
5. Ground every review in:
   - `context/okr-ground-rules.md`
   - `context/company.md`
   - Other relevant files discovered in `context/`.
   - OKR best practices on ground rules, OKR types, and refinement quality.
6. Refine the human's thinking; do not replace ownership.
7. Keep language practical and concrete.
8. Challenge focus when limits are exceeded:
   - More than 3 active Objectives in a cycle.
   - Fewer than 2 or more than 4 KRs for one Objective.
9. Close every review with a final OKR and clear next actions.
10. Use scanned context throughout the session; tie major recommendations, rewrites, and risk flags to concrete facts from `context/` documents.

---

## Review Modes

### Mode 1: Guided (Question-by-Question)

Use this mode when the team wants coaching and iterative co-creation.

### Mode 2: Expert Audit (Draft Review)

Use this mode when the team wants Codex to review a complete draft quickly and return:
- a quality scorecard,
- key issues and risks,
- a revised OKR proposal,
- concrete fix actions.

If critical information is missing in expert-audit mode, ask only the minimum clarifying questions needed.

---

## Phase 0: Mode and Ground Rules

### Step 0.0: Scan Context Folder
Before asking mode or OKR questions, scan `context/` recursively and summarize relevant facts from any documents that help craft and evaluate OKRs.
Keep a short working context brief and use it throughout all later phases.

### Step 0.1: Select Mode
Ask: "Which mode do you want for this session: guided (question-by-question) or expert-audit (full draft review)?"

*Wait for response.*

### Step 0.2: Load Saved Rules
Before asking OKR questions, read `context/okr-ground-rules.md`.

- Treat ground rules as configured only if the file is filled with concrete values (not template placeholders). At minimum verify these are explicit: scope, levels, cycle length, check-in rhythm, ownership model, and source of truth.
- If the file contains unresolved template markers (for example: `[...]`, `[Team/Company-wide]`, `[Name]`, `TBD`, `TODO`) or missing core fields, treat it as not configured.
- If ground rules are configured, summarize relevant rules and ask: "Do we use these ground rules for this review?"
- If the file is missing or not configured, ask: "Ground rules are not fully set yet. Do you want to run /okr-ground-rules first so we lock your rules before this review?"
- If they answer yes, stop review flow, run `/okr-ground-rules`, then resume `/okr-review`.
- Continue with defaults only if the human explicitly chooses to proceed without ground rules.

*Wait for response.*

### Step 0.3: Confirm OKR Type
Ask: "Is this OKR aspirational, committed, or learning?"

*Wait for response. If unclear, help choose before continuing.*

---

## Guided Workflow (Mode 1)

Run all phases below only when mode is `guided`.

---

## Phase 1: Capture & Context

### Step 1.1: Get the Draft
Ask: "Share your draft Objective and Key Results."

*Wait for response.*

### Step 1.2: Why Now
Ask: "Why now? What problem or opportunity makes this the priority in this cycle?"

*Wait for response.*

### Step 1.3: Clarify Ownership
Ask: "Who owns this Objective, and who owns each Key Result?"

*Wait for response. Require explicit owners.*

### Step 1.4: Check Portfolio Load
Ask: "How many active Objectives does this team have this cycle, and how many KRs are in this Objective?"

*Wait for response. If more than 3 Objectives or KR count is outside 2-4, challenge and ask what should be reduced.*

---

## Phase 2: Refine the Objective

### Step 2.1: Check Strategic Relevance
Before asking the question, review `context/company.md` and extract relevant strategy, mission, and priorities.

Ask: "How does this Objective connect to the higher-level strategy, mission, or current top priority?"

*Wait for response. If the link is weak, ask for a tighter connection or Objective rewrite.*

### Step 2.2: Check Significance and Focus
Ask: "Is this the most important change now, and what are you explicitly saying no to?"

*Wait for response.*

### Step 2.3: Check Objective Quality
Ask: "Is the Objective significant, specific, aspirational, and action-oriented?"

*Wait for response. Rewrite together if weak.*

### Step 2.4: Check Clarity
Ask: "If three team members read this Objective, would they interpret it the same way?"

*Wait for response.*

---

## Phase 3: Refine Key Results

For each Key Result, run all steps below before moving to the next KR.

### Step 3.1: Baseline, Target, Time
Ask: "For [KR], what is the baseline, target, and exact timeframe?"

*Wait for response.*

### Step 3.2: Classify KR Type
Ask: "Is [KR] input, output, or outcome?"

*Wait for response. If input, convert to output or outcome. Prefer outcome; allow output when outcome is delayed.*

### Step 3.3: Check Influence
Ask: "Is [KR] in your circle of control, influence, or concern?"

*Wait for response. Move KRs from concern toward influence where possible.*

### Step 3.4: Check Indicator Type
Ask: "Is [KR] a leading indicator, lagging indicator, or both when combined with other KRs?"

*Wait for response. Ensure the KR set has an actionable leading/lagging mix.*

### Step 3.5: Check Ambition by OKR Type
Ask one of these based on OKR type:

- Aspirational: "Confidence for [KR] on a 1-10 scale? Target stretch is usually around 5-7."
- Committed: "What makes [KR] reliable enough for near-certain delivery?"
- Learning: "What hypothesis does [KR] test, and what signal will tell us to continue or stop?"

*Wait for response.*

---

## Phase 4: Portfolio Balance and Anti-Patterns

### Step 4.1: Check KR Set Balance
Ask: "Across all KRs, do you have a healthy output/outcome mix and no hidden task list?"

*Wait for response.*

### Step 4.2: Detect Common Anti-Patterns
Check and ask one question per issue:

1. KR is an initiative disguised as a metric.
2. KR has no baseline or no source of truth.
3. KR is outside team influence.
4. Too many KRs reduce focus.
5. Objective duplicates another team objective.

---

## Phase 5: Quality Check

### Step 5.1: Present Scorecard

| Criteria | Status | Notes |
|----------|--------|-------|
| **Strategy & Context** | | |
| Why now is clear | ⬜ | |
| Alignment to higher priority is explicit | ⬜ | |
| **Objective Quality** | | |
| Significant change (not BAU) | ⬜ | |
| Specific and understandable | ⬜ | |
| Aspirational and action-oriented | ⬜ | |
| **Key Result Quality** | | |
| Baseline and target are explicit | ⬜ | |
| Measurable and verifiable | ⬜ | |
| Output/outcome balance is healthy | ⬜ | |
| Input KRs removed or converted | ⬜ | |
| **Execution Readiness** | | |
| Owners are assigned | ⬜ | |
| Count stays in focus range (<=3 Objectives, 2-4 KRs) | ⬜ | |
| Dependencies and risks are known | ⬜ | |
| **Transparency** | | |
| Tracking location and check-in rhythm are defined | ⬜ | |

### Step 5.2: Resolve Gaps
For each unchecked item, ask one targeted question and update the OKR before continuing.

---

## Phase 6: Final Polish

### Step 6.1: Present Revised OKR
Present:

> **Objective:** [Refined objective]
>
> **Type:** [Aspirational/Committed/Learning]
> **Level:** [Company/Department/Team/Individual]
> **Timeframe:** [Cycle dates]
> **Owner:** [Name]
>
> **Key Results:**
> 1. [KR1] - Type: [Output/Outcome], Baseline: X -> Target: Y
> 2. [KR2] - Type: [Output/Outcome], Baseline: X -> Target: Y
> 3. [KR3] - Type: [Output/Outcome], Baseline: X -> Target: Y

### Step 6.2: Confirm
Ask: "Does this capture what you intended? What should be adjusted before finalizing?"

*Wait for response. Make final edits.*

### Step 6.3: Commitment
Ask: "On a scale of 1-10, how committed are you to executing this as written, and what would make it a 10?"

---

## Expert-Audit Workflow (Mode 2)

Run this workflow when mode is `expert-audit`.

### Step A1: Intake
Ask: "Share the full OKR draft (Objective, KRs, owner, timeframe, and any strategic context)."

*Wait for response.*

### Step A2: Analyze Against Best Practices
Review the draft against:

1. Ground rules in `context/okr-ground-rules.md`.
2. Company strategy context in `context/company.md`.
3. Other relevant `context/` documents (for example product roadmap, sales, customer success, hiring, risks, and financial constraints).
4. OKR best practices:
   - Objective is significant, specific, aspirational, action-oriented.
   - Why-now and strategic connection are explicit.
   - KRs are measurable with baseline/target/time.
   - Input/output/outcome quality is clear (input avoided).
   - Leading/lagging mix is practical.
   - KR influence level is realistic.
   - Focus limits are respected (<=3 Objectives, 2-4 KRs).
   - Ownership and tracking cadence are defined.

### Step A3: Return Audit Report
Provide:

1. Overall rating: `Green`, `Yellow`, or `Red`.
2. Top issues (ordered by severity) with concrete fixes.
3. Updated scorecard table with pass/fail notes.
4. Revised OKR draft ready to use.
5. Minimal follow-up questions only if blockers remain.

---

## Summary Output

At the end, provide:

```
OKR Review Complete
Mode: [Guided/Expert-Audit]

Objective: [Final objective]
Type: [Aspirational/Committed/Learning]
Level: [Company/Department/Team/Individual]
Timeframe: [Start -> End]
Owner: [Name]

Key Results:
1. [KR1] - [Output/Outcome] - Baseline: X -> Target: Y
2. [KR2] - [Output/Outcome] - Baseline: X -> Target: Y
3. [KR3] - [Output/Outcome] - Baseline: X -> Target: Y

Quality: [Green/Yellow/Red]
Strategy fit: [Strong/Medium/Weak]
Confidence: [X/10]
Commitment: [X/10]

Check-in rhythm: [Weekly/Biweekly]
Tracking location: [Tool/Doc]

Dependencies:
- [Team/Person]

Next steps:
- [ ] Validate dependencies with stakeholders
- [ ] Publish OKR in tracking system
- [ ] Start check-in cadence

Context signals used:
- [Document] - [How it informed this OKR/review]
- [Document] - [How it informed this OKR/review]
```

---

## Decision Heuristics

1. Use OKRs for meaningful change; keep routine operations in BAU.
2. Keep levels and structure as simple as possible.
3. Prefer outcome KRs; use output KRs when they are the best short-cycle proxy.
4. Do not use input/activity KRs unless explicitly treated as temporary stepping stones.
5. Match ambition to OKR type, not one universal threshold.

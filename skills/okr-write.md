# OKR Write Skill

A guided workflow to draft a new OKR from scratch.

## Usage

```
/okr-write
$okr-write
```

---

## Operating Rules

1. Ask one question at a time and wait for an answer before proceeding.
2. Help the human think and decide; do not take ownership away.
3. Before drafting, scan all files under `context/` (including subfolders) and extract strategic signals, risks, constraints, and opportunities.
4. Ground drafting in:
   - `context/okr-ground-rules.md`
   - `context/company.md`
   - Other relevant files discovered in `context/`.
5. Validate that ground rules are configured, not only present.
6. Keep the draft practical and concrete.
7. Enforce focus limits:
   - Max 3 active Objectives in a cycle.
   - 2-4 KRs per Objective.
8. Close with a complete draft and next step options (`/okr-review` or `/okr-audit`).

---

## Phase 0: Context and Rules

### Step 0.0: Scan Context Folder
Before asking drafting questions, scan `context/` recursively and summarize relevant facts for this OKR.
Keep a short working context brief and use it throughout the workflow.

### Step 0.1: Validate Ground Rules
Read `context/okr-ground-rules.md`.

- Treat rules as configured only if explicit values exist for: scope, levels, cycle length, check-in rhythm, ownership model, and source of truth.
- If placeholders remain (`[...]`, `[Team/Company-wide]`, `[Name]`, `TBD`, `TODO`) or core fields are missing, treat rules as not configured.
- If rules are not configured, ask: "Ground rules are not fully set. Do you want to run /okr-ground-rules first, or continue with explicit defaults for this draft?"

*Wait for response.*

### Step 0.2: Confirm Draft Parameters
Ask one question at a time to confirm:
1. OKR type (`aspirational`, `committed`, or `learning`)
2. Level (`company`, `department`, `team`, or `individual`)
3. Timeframe (cycle dates)

---

## Phase 1: Draft the Objective

### Step 1.1: Priority and Why-Now
Ask: "What is the most important change this team must drive in this cycle, and why now?"

*Wait for response.*

### Step 1.2: Strategy Link
Using the context brief, ask: "How does this connect to current strategy and top priorities?"

*Wait for response.*

### Step 1.3: Focus Check
Ask: "How many active Objectives does this team already have this cycle?"

*Wait for response. If above 3, challenge and ask what should be deprioritized.*

### Step 1.4: Objective Draft
Ask: "Draft one Objective sentence that is significant, specific, aspirational, and action-oriented."

*Wait for response and refine if needed.*

---

## Phase 2: Draft Key Results

For each KR, run all checks before moving to the next KR.

### Step 2.1: Draft KR Statement
Ask: "What is your first Key Result for this Objective?"

*Wait for response.*

### Step 2.2: Baseline, Target, Time
Ask: "For this KR, what is the baseline, target, and exact timeframe?"

*Wait for response.*

### Step 2.3: KR Type Quality
Ask: "Is this KR input, output, or outcome?"

*Wait for response. Convert input KRs toward output/outcome where possible.*

### Step 2.4: Influence and Indicator
Ask: "Is this KR in your control/influence/concern, and is it a leading or lagging indicator?"

*Wait for response and refine if weak.*

### Step 2.5: Ownership
Ask: "Who is the owner of this KR?"

*Wait for response.*

### Step 2.6: Repeat and Count Check
Repeat Steps 2.1-2.5 until KR set is complete.

- If fewer than 2 KRs, ask for additional measurable KR(s).
- If more than 4 KRs, challenge focus and reduce.

---

## Phase 3: Execution Readiness

### Step 3.1: Objective Ownership
Ask: "Who owns the Objective overall?"

*Wait for response.*

### Step 3.2: Dependencies and Risks
Ask: "What dependencies or risks could block this OKR?"

*Wait for response.*

### Step 3.3: Tracking and Cadence
Ask: "Where will this be tracked, and what is the check-in rhythm?"

*Wait for response.*

---

## Phase 4: Draft Output

Present:

```
OKR Draft Complete

Objective: [Draft objective]
Type: [Aspirational/Committed/Learning]
Level: [Company/Department/Team/Individual]
Timeframe: [Start -> End]
Owner: [Name]

Key Results:
1. [KR1] - [Output/Outcome] - Baseline: X -> Target: Y - Owner: [Name]
2. [KR2] - [Output/Outcome] - Baseline: X -> Target: Y - Owner: [Name]
3. [KR3] - [Output/Outcome] - Baseline: X -> Target: Y - Owner: [Name]

Dependencies:
- [Dependency]

Tracking location: [Tool/Doc]
Check-in rhythm: [Weekly/Biweekly]

Context signals used:
- [Document] - [How it informed this draft]
- [Document] - [How it informed this draft]
```

Then ask: "Do you want to refine this with /okr-review or run a strict scorecard with /okr-audit?"

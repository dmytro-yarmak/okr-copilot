# OKR Review Skill

A guided workflow to refine an existing OKR draft.

## Usage

```
/okr-review
$okr-review
```

Legacy note: if the human asks for strict expert audit, route to `/okr-audit` or `$okr-audit`.

---

## Operating Rules

1. This skill is for refinement of an existing draft.
2. Ask one question at a time and wait for an answer before proceeding.
3. Help the human think and decide; do not take ownership away.
4. Before asking review questions, scan all files under `context/` (including subfolders) and extract strategy, constraints, risks, and useful signals.
5. Ground every review in:
   - `context/okr-ground-rules.md`
   - `context/company.md`
   - Other relevant files discovered in `context/`.
6. Validate that ground rules are configured, not only present.
7. Keep language practical and concrete.
8. Enforce focus limits:
   - Max 3 active Objectives in a cycle.
   - 2-4 KRs per Objective.
9. Close with a refined final OKR and clear next actions.
10. Tie major recommendations and rewrites to concrete facts from context documents.

---

## Phase 0: Routing, Context, and Rules

### Step 0.0: Check Intent
Ask: "Are we refining an existing draft, or do you want a strict scorecard-style audit?"

- If the human chooses strict audit, route to `/okr-audit` and follow that workflow.
- If the human chooses refinement, continue.

### Step 0.1: Get Draft
Ask: "Share your current OKR draft (paste or doc link)."

- If no usable draft is provided, ask: "Do you want to draft one first with /okr-write, or paste/link a draft now?"
- If they choose draft-first, stop review flow and run `/okr-write`.

### Step 0.2: Scan Context Folder
Scan `context/` recursively and summarize relevant facts for this review.
Keep a short working context brief and use it through all phases.

### Step 0.3: Validate Ground Rules
Read `context/okr-ground-rules.md`.

- Treat rules as configured only if explicit values exist for: scope, levels, cycle length, check-in rhythm, ownership model, and source of truth.
- If placeholders remain (`[...]`, `[Team/Company-wide]`, `[Name]`, `TBD`, `TODO`) or core fields are missing, treat rules as not configured.
- If rules are not configured, ask: "Ground rules are not fully set. Do you want to run /okr-ground-rules first, or continue with explicit defaults for this review?"

*Wait for response.*

### Step 0.4: Confirm OKR Type
Ask: "Is this OKR aspirational, committed, or learning?"

*Wait for response. If unclear, help choose.*

---

## Phase 1: Refine Objective

### Step 1.1: Why-Now Clarity
Ask: "Why now? What problem or opportunity makes this the priority this cycle?"

*Wait for response.*

### Step 1.2: Strategy Link
Using the context brief, ask: "How does this Objective connect to current strategy and top priorities?"

*Wait for response. If weak, ask for tighter rewrite.*

### Step 1.3: Focus and Tradeoffs
Ask: "What are you explicitly saying no to so this stays focused?"

*Wait for response.*

### Step 1.4: Objective Quality
Ask: "Is this Objective significant, specific, aspirational, and action-oriented?"

*Wait for response and refine wording if needed.*

---

## Phase 2: Refine Key Results

For each KR, run all checks before moving to next KR.

### Step 2.1: Measurability
Ask: "For this KR, what are baseline, target, and exact timeframe?"

*Wait for response.*

### Step 2.2: KR Type
Ask: "Is this KR input, output, or outcome?"

*Wait for response. Move input KRs to output/outcome where possible.*

### Step 2.3: Influence
Ask: "Is this KR in your control, influence, or concern?"

*Wait for response. Improve toward control/influence.*

### Step 2.4: Indicator Quality
Ask: "Is this KR leading, lagging, or paired with another KR for balance?"

*Wait for response.*

### Step 2.5: Ambition Check by Type
Ask one based on OKR type:

- Aspirational: "Confidence for this KR on 1-10? Stretch should usually be around 5-7."
- Committed: "What makes this KR reliable enough for near-certain delivery?"
- Learning: "What hypothesis does this KR test, and what signal means continue/stop?"

*Wait for response.*

### Step 2.6: KR Count and Portfolio Load
Ask: "How many active Objectives does this team have and how many KRs are in this Objective?"

*Wait for response. Challenge if over limits.*

---

## Phase 3: Execution Readiness

### Step 3.1: Ownership
Ask: "Who owns the Objective, and who owns each KR?"

*Wait for response. Require explicit owners.*

### Step 3.2: Dependencies and Risks
Ask: "What dependencies or risks could prevent this OKR from succeeding?"

*Wait for response.*

### Step 3.3: Tracking and Cadence
Ask: "Where will progress be tracked, and what is the check-in rhythm?"

*Wait for response.*

---

## Phase 4: Final Output

Present:

```
OKR Review Complete

Objective: [Final objective]
Type: [Aspirational/Committed/Learning]
Level: [Company/Department/Team/Individual]
Timeframe: [Start -> End]
Owner: [Name]

Key Results:
1. [KR1] - [Output/Outcome] - Baseline: X -> Target: Y - Owner: [Name]
2. [KR2] - [Output/Outcome] - Baseline: X -> Target: Y - Owner: [Name]
3. [KR3] - [Output/Outcome] - Baseline: X -> Target: Y - Owner: [Name]

Quality: [Green/Yellow/Red]
Strategy fit: [Strong/Medium/Weak]
Confidence: [X/10]
Commitment: [X/10]

Dependencies:
- [Dependency]

Tracking location: [Tool/Doc]
Check-in rhythm: [Weekly/Biweekly]

Context signals used:
- [Document] - [How it informed this review]
- [Document] - [How it informed this review]

Next steps:
- [ ] [Action 1]
- [ ] [Action 2]
- [ ] [Action 3]
```

Then ask: "Do you want a strict scorecard and risk review with /okr-audit?"

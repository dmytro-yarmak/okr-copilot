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
   - Strategy context files discovered in `context/` (for example: strategy memos, board updates, roadmap notes, market/customer reports)
   - Other relevant files discovered in `context/`.
5. Validate that ground rules are configured, not only present.
6. Keep the draft practical and concrete.
7. Enforce focus limits:
   - Max 3 active Objectives in a cycle.
   - 2-4 KRs per Objective.
8. Close with a complete draft and next step options (`/okr-review` or `/okr-audit`).
9. Keep support concise and decision-oriented: provide only the most useful options and short rationale.
10. Treat examples as scaffolding, not forced outputs; the human can adapt or write custom text.

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
Using the context brief, extract 3-5 top strategic priorities for this cycle.

- Present a numbered list of priority options with one-line urgency rationale per option.
- Always include a `Custom priority` option.
- Ask: "What is the most important change this team must drive in this cycle, and why now? Choose one option (or `Custom priority`) and include your why-now."

If the context brief is too weak to extract priorities, ask:
"I do not have enough strategy context to rank priorities yet. Share your top 3 priorities for this cycle and why now for each."

*Wait for response.*

### Step 1.2: Objective Draft Support
Before asking for the final Objective sentence:
- Provide one concise objective template tailored to selected OKR type and level.
- Provide 2 strong example Objectives aligned to selected priority.
- Provide 1 anti-example and briefly explain why it is weak.
- Keep all examples concise.

Then ask: "Which option should we use for your Objective: Example A, Example B, or a custom draft?"

*Wait for response, then refine if needed and check objective quality (significant, specific, aspirational, action-oriented).*

---

## Phase 2: Draft Key Results

For each KR, run all checks before moving to the next KR.

### Step 2.1: Draft KR Statement
Apply this support pattern at the start of **every** KR (KR1, KR2, KR3, KR4 if needed):

- Provide 3-5 candidate KR metric patterns aligned to the selected priority and current Objective.
- Provide 2 strong KR examples and 1 anti-example.
- Add a short note for each strong example on why it is measurable and useful.
- Keep options concise and decision-oriented.

Then ask: "For this KR, which pattern or example do you want to adapt, or what is your custom KR draft?"

*Wait for response.*

### Step 2.2: Baseline, Target, Time
Ask: "For this KR, what is the baseline, target, and exact timeframe?"

*Wait for response.*

### Step 2.3: KR Type Quality
Assess the KR type yourself: input, output, or outcome.

*If KR is input or output, propose a rewrite to make it outcome-based where possible.*

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

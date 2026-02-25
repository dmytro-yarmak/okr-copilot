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
3. For every step, use this sequence:
   - **Assessment**: evaluate current draft quality using evidence from the draft, OKR intent, and company strategic context.
   - **Options**: propose 2-3 concrete ways forward with tradeoffs.
   - **Decision question**: ask the human to choose one option (or provide a custom rewrite).
4. Help the human think and decide; do not take ownership away.
5. Before asking review questions, scan all files under `context/` (including subfolders) and extract strategy, constraints, risks, and useful signals.
6. Ground every review in:
   - `context/okr-ground-rules.md`
   - `context/nexora-docs/company-context-2026-okr.md`
   - Other relevant files discovered in `context/`.
7. Validate that ground rules are configured, not only present.
8. Keep language practical and concrete.
9. Enforce focus limits:
   - Max 3 active Objectives in a cycle.
   - 2-4 KRs per Objective.
10. Close with a refined final OKR and clear next actions.
11. Tie major recommendations and rewrites to concrete facts from context documents.

---

## Step Response Contract

For each step below, always respond in this structure:

1. **Assessment**
   - What is strong.
   - What is weak/risky.
   - Why this matters for the selected OKR type and strategic context.
2. **Options**
   - Option A: [path + tradeoff]
   - Option B: [path + tradeoff]
   - Option C (optional): [path + tradeoff]
3. **Decision**
   - One question asking the human to choose A/B/C or provide an alternative.

---

## Phase 0: Routing, Context, and Rules

### Step 0.0: Check Intent
Assess whether the request is:
- Guided refinement of a draft.
- Strict scorecard/risk audit.
- Draft creation need (no usable draft yet).

Options:
- A. Continue guided refinement in this flow.
- B. Route to strict audit (`/okr-audit`).
- C. Route to draft creation (`/okr-write`) if no usable draft exists.

Decision question: "Which path should we take: A (refine), B (audit), or C (draft first)?"

### Step 0.1: Get Draft
Assess draft completeness: Objective, KRs, owner(s), timeframe, and stated intent.

Options:
- A. Paste the full draft now.
- B. Share link + include missing fields inline.
- C. Draft first with `/okr-write`.

Decision question: "Which option do you choose: A, B, or C?"

### Step 0.2: Scan Context Folder
Scan `context/` recursively and summarize relevant facts for this review.
Keep a short working context brief and use it through all phases.

Assess context sufficiency for this specific OKR.

Options:
- A. Proceed using current context brief.
- B. Add missing strategic context (extra docs or facts) before review.
- C. Proceed with explicit assumptions and flag uncertainty.

Decision question: "Should we proceed with A, B, or C?"

### Step 0.3: Validate Ground Rules
Read `context/okr-ground-rules.md`.

- Treat rules as configured only if explicit values exist for: scope, levels, cycle length, check-in rhythm, ownership model, and source of truth.
- If placeholders remain (`[...]`, `[Team/Company-wide]`, `[Name]`, `TBD`, `TODO`) or core fields are missing, treat rules as not configured.

Options:
- A. Run `/okr-ground-rules` first.
- B. Continue this review with explicit temporary defaults.

Decision question: "Ground rules are incomplete. Choose A (configure rules) or B (continue with defaults)."

### Step 0.4: Confirm OKR Type
Assess whether the selected type matches draft ambition, certainty, and strategic need.

Options:
- A. Aspirational (stretch outcomes, lower confidence acceptable).
- B. Committed (high-confidence delivery).
- C. Learning (hypothesis-testing and decision signal).

Decision question: "Which type best fits this cycle: A, B, or C?"

---

## Phase 1: Refine Objective

### Step 1.1: Why-Now Clarity
Assess if the draft clearly states why-now urgency and business impact.

Options:
- A. Keep current why-now statement with minor tightening.
- B. Reframe around a specific risk/opportunity from context.
- C. Reframe around explicit customer/revenue/operational impact.

Decision question: "Which why-now path should we take: A, B, or C?"

### Step 1.2: Strategy Link
Assess strategy fit against strategic pillars and top company priorities from context.

Options:
- A. Align Objective to the strongest current strategic pillar.
- B. Keep Objective but narrow scope to one strategic priority.
- C. Rewrite Objective to remove weak/indirect alignment.

Decision question: "Which strategy-fit option do you choose: A, B, or C?"

### Step 1.3: Focus and Tradeoffs
Assess focus quality and whether the draft defines clear tradeoffs.

Options:
- A. Keep current scope and explicitly list deprioritized work.
- B. Reduce scope of this Objective and move other work out.
- C. Split work: keep this Objective focused and park spillover for next cycle.

Decision question: "Which focus option should we apply: A, B, or C?"

### Step 1.4: Objective Quality
Assess Objective quality (significant, specific, aspirational, action-oriented) and show a short score.

Options:
- A. Minimal rewrite (preserve intent, tighten language).
- B. Medium rewrite (improve specificity and action orientation).
- C. Full rewrite (replace with a clearer strategy-aligned Objective).

Decision question: "Which rewrite level do you want: A, B, or C?"

---

## Phase 2: Refine Key Results

For each KR, run all checks before moving to next KR.

### Step 2.1: Measurability
Assess measurability completeness: baseline, target, metric definition, timeframe.

Options:
- A. Keep metric and fill missing baseline/target/timeframe fields.
- B. Replace metric with a cleaner measurable indicator.
- C. Split KR into leading + lagging pair if one metric is insufficient.

Decision question: "For this KR, choose measurability path A, B, or C."

### Step 2.2: KR Type Quality
Assess the KR type yourself: input, output, or outcome.

Options:
- A. Keep as output KR (if output is the right control point this cycle).
- B. Convert to outcome KR.
- C. Pair output KR with outcome KR to keep execution and impact linked.

Decision question: "Which KR type path do you choose: A, B, or C?"

### Step 2.3: Influence and Indicator Quality
Assess controllability (control/influence/concern) and signal balance (leading/lagging).

Options:
- A. Keep current KR and add a leading indicator.
- B. Rewrite KR to increase team influence/control.
- C. Keep KR as lagging and add an operational proxy for weekly steering.

Decision question: "Choose A, B, or C for influence/signal design."

### Step 2.4: Ambition Check by Type
Assess ambition against selected OKR type and strategic urgency.

Options by type:
- Aspirational:
  - A. Keep stretch target (expected confidence around 5-7).
  - B. Increase stretch if strategic urgency is high.
  - C. De-risk slightly if capability/dependency gap is too large.
- Committed:
  - A. Keep target and lock execution assumptions.
  - B. Lower target to preserve high confidence.
  - C. Keep target and add contingency plan for reliability.
- Learning:
  - A. Keep hypothesis and sharpen success/fail signal.
  - B. Narrow scope to faster learning loop.
  - C. Reframe KR around a stronger decision threshold.

Decision question: "For this KR, which ambition option do you choose?"

### Step 2.5: KR Count and Portfolio Load
Assess workload against focus limits and team capacity.

Options:
- A. Keep current KR set (within limits and capacity).
- B. Merge/reduce KRs to improve focus.
- C. Keep KR count but explicitly deprioritize competing work.

Decision question: "Choose A, B, or C for KR portfolio load."

---

## Phase 3: Execution Readiness

### Step 3.1: Ownership
Assess ownership clarity and accountability risk.

Options:
- A. Keep current owners and clarify accountability boundaries.
- B. Reassign one or more KR owners to match execution reality.
- C. Add shared ownership model with explicit decision owner.

Decision question: "Which ownership option should we apply: A, B, or C?"

### Step 3.2: Dependencies and Risks
Assess risk profile and dependency fragility against strategy and timeline.

Options:
- A. Keep plan and monitor top risks weekly.
- B. Add mitigation actions and trigger thresholds now.
- C. Adjust KR targets/scope to reduce dependency risk.

Decision question: "Which risk path do you choose: A, B, or C?"

### Step 3.3: Tracking and Cadence
Assess tracking system quality and check-in cadence suitability for OKR type.

Options:
- A. Keep current tracking location and cadence.
- B. Increase check-in frequency for faster steering.
- C. Keep cadence but improve dashboard/score definitions.

Decision question: "Which tracking option should we use: A, B, or C?"

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

Decision trail:
- Objective choices: [Selected options]
- KR choices: [Selected options]
- Execution choices: [Selected options]

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

Then ask: "Do you want to (A) finalize this version, (B) run one more refinement pass, or (C) run strict scorecard and risk review with /okr-audit?"

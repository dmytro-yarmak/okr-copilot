# OKR Outcome KR Skill

A guided workflow to move input or output KRs toward outcome KRs without losing connection to real operating metrics.

## Usage

```
/okr-outcome-kr
$okr-outcome-kr
```

---

## Operating Rules

1. Ask one question at a time and wait for an answer before proceeding.
2. Start with context loading and KPI discovery before rewriting any KR.
3. Ground every recommendation in:
   - `context/nexora-strategic-context-2026.md`
   - `context/okr-ground-rules.md`
   - Other relevant files discovered in `context/`
   - Any provided OKR draft, dashboard names, or supporting notes
4. Prefer existing company KPIs, dashboards, and operating metrics over invented measures.
5. If no useful KPI anchor is available, ask which scorecard, dashboard, or metric the team already uses before inventing a new one.
6. Process one KR at a time, even if the human pastes several KRs.
7. Prefer direct outcome KRs when impact is measurable in-cycle; allow output KRs only as explicit short-cycle proxies.
8. Keep language practical, concise, and decision-oriented.
9. Close each KR with a selected rewrite and a clear next step: continue to the next KR, route to `/okr-review`, or stop.

---

## Step Response Contract

For each substantive step below, respond in this structure:

1. **Assessment**
   - What the current KR is measuring.
   - Why that is strong, weak, or risky.
   - Which context or KPI signals matter most here.
2. **Options**
   - Option A: [path + tradeoff]
   - Option B: [path + tradeoff]
   - Option C (optional): [path + tradeoff]
3. **Decision**
   - One question asking the human to choose A/B/C or provide a custom rewrite.

---

## Phase 0: Context And KPI Grounding

### Step 0.0: Scan Context Folder
Scan `context/` recursively and keep a short working brief with:
- top strategic priorities
- main risks and constraints
- existing KPI candidates
- named dashboards or tracking systems

### Step 0.1: Read Strategy Context First
Read `context/nexora-strategic-context-2026.md` before diagnosing the KR.

Extract priority and KPI signals such as:
- churn, retention, NPS, ARR
- activation, adoption, health scores, time-to-value
- lead time, deployment frequency, failure rate, uptime
- attrition, eNPS, hiring funnel, productivity
- named dashboards already used by the team

### Step 0.2: Read Ground Rules
Read `context/okr-ground-rules.md`.

- Treat rules as configured only if explicit values exist for scope, levels, cycle length, check-in rhythm, ownership model, and source of truth.
- If placeholders remain (`[...]`, `[Team/Company-wide]`, `[Name]`, `TBD`, `TODO`) or core fields are missing, continue with temporary defaults and state them explicitly.
- Default temporary rule set:
  - prefer outcome KRs
  - allow output KRs as short-cycle proxies
  - avoid input KRs unless there is a hard causal chain and no better control point

### Step 0.3: Confirm Objective And KR Scope
Assess whether the human provided:
- one Objective + one KR
- one Objective + multiple KRs
- an isolated KR with weak context

Options:
- A. Proceed with the provided Objective and first KR.
- B. Proceed KR by KR from the provided list.
- C. Ask for the missing Objective or business context first.

Decision question: "Which path should we take: A, B, or C?"

---

## Phase 1: Diagnose The Current KR

Run this phase for one KR at a time.

### Step 1.1: Classify KR Type
Assess the KR as input, output, or outcome.

Options:
- A. Keep as an outcome KR with minor tightening.
- B. Convert the KR toward a direct outcome.
- C. Treat the KR as a possible short-cycle proxy and test its value chain first.

Decision question: "For this KR, should we take path A, B, or C?"

### Step 1.2: Explain The Value Gap
Explain why the KR is strong or weak by asking:
- What changes if this KR succeeds?
- Who benefits?
- Why does that matter this cycle?

Options:
- A. The primary value is customer or business impact.
- B. The primary value is team or operational effectiveness.
- C. The value is unclear and needs sharper framing first.

Decision question: "Which value path best fits this KR: A, B, or C?"

### Step 1.3: Map To KPI Anchors
Map the value chain to the closest existing KPI or operating metric already in use.

Look for anchors in the context or draft such as:
- churn, retention, NRR, ARR, NPS
- activation, adoption, time-to-value, health score
- lead time, deployment frequency, uptime, failure rate
- eNPS, attrition, productivity
- a named dashboard or scorecard already used by the team

Options:
- A. Anchor the KR to an existing company KPI.
- B. Anchor the KR to an existing operating metric or dashboard proxy.
- C. Ask the human which metric or dashboard the team already uses before rewriting.

Decision question: "Which KPI anchor should we use: A, B, or C?"

---

## Phase 2: Test Whether Outcome Is Usable This Cycle

### Step 2.1: Check In-Cycle Measurability
Assess whether the impact can be measured this cycle with a clear baseline, target, and timeframe.

Options:
- A. The impact is measurable this cycle, so use a direct outcome KR.
- B. The impact is only partly measurable this cycle, so pair a short-cycle proxy with the intended outcome.
- C. The lagging impact will not move in time, so keep an output proxy with explicit KPI linkage.

Decision question: "Which measurability path fits this KR: A, B, or C?"

### Step 2.2: Check Influence And Control Point
Assess whether the team can materially influence the chosen metric this cycle.

Options:
- A. Keep the direct outcome because the team has enough influence.
- B. Keep the outcome, but add a leading operating metric for weekly steering.
- C. Use the output proxy as the main KR because it is the best controllable signal this cycle.

Decision question: "Which control-point option should we use: A, B, or C?"

---

## Phase 3: Rewrite The KR

### Step 3.1: Draft Rewrite Options
Draft 2-3 candidate rewrites with tradeoffs:
- one direct outcome rewrite when possible
- one paired proxy option when useful
- one tighter custom variation if needed

Each option must include:
- metric name
- baseline and target if known
- timeframe
- why it links to the Objective and KPI anchor

Decision question: "Which rewrite should we use: A, B, C, or a custom version?"

### Step 3.2: Confirm Final KR Form
Present the selected KR in this structure:

```
Objective: [Objective]
Original KR: [Original text]
Selected KR type: [Outcome / Output proxy / Outcome + proxy pair]
Final KR: [Chosen rewrite]
KPI anchor: [Metric or dashboard]
Why this is better: [One or two lines]
```

Then ask: "Do you want to continue to the next KR, refine this one further, or route the full OKR into /okr-review?"

---

## Examples

### Example 1: Move From Output To Outcome

Objective: Enhance Teams Effectiveness

Original KR:
`Created teams' maturity model`

Value chain:
- The maturity model helps teams identify gaps and improve how they work.
- The real value is faster delivery, lower friction, and better team health.

Possible KPI anchors:
- lead time for change
- deployment frequency
- eNPS
- regretted attrition

Better rewrite options:
- `Reduce median lead time for feature delivery from X to Y by [date].`
- `Increase team eNPS from X to Y by [date].`
- `Increase teams meeting maturity benchmark from X% to Y% by [date]` only if this is the strongest controllable proxy and the impact link is stated.

### Example 2: Keep A Valid Proxy When Lagging Impact Is Too Slow

Objective: Improve onboarding outcomes in Growth accounts

Original KR:
`Launch onboarding checklist for all new Growth accounts`

Context:
- The desired impact is lower early churn, but churn may move too slowly for this cycle.
- The team already tracks onboarding completion in Gainsight.

Valid rewrite path:
- Preferred outcome if measurable: `Increase 14-day onboarding milestone completion from 41% to 70% by Jun 30, 2026.`
- Valid proxy if lagging impact cannot move in time: keep a rollout or completion metric only if it is tied explicitly to activation or early-churn improvement.

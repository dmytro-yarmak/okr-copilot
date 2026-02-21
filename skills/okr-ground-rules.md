# OKR Ground Rules Setup Skill

A workflow to define reusable OKR ground rules once and store them for all future OKR sessions.

## Usage

```
/okr-ground-rules
$okr-ground-rules
```

---

## Operating Rules

1. Ask one question at a time.
2. Wait for an answer before moving on.
3. Turn every rule into explicit, testable language.
4. Challenge vague rules until they become operational.
5. Save finalized rules to `context/okr-ground-rules.md`.

---

## Phase 0: Context

### Step 0.1: Scan Context Folder
Scan `context/` recursively and summarize any constraints, strategy signals, and operating realities that should shape OKR ground rules.

### Step 0.2: Read Company Context
Read `context/company.md` before asking questions.

### Step 0.3: Read Existing Ground Rules
Read `context/okr-ground-rules.md` before asking setup questions.

- If rules are already configured, summarize them and ask: "Do we refine these rules or rewrite from scratch?"
- If file is placeholder-only or incomplete, treat as not configured and continue setup.

### Step 0.4: Confirm Scope
Ask: "Are these ground rules for one team, multiple teams, or company-wide?"

*Wait for response.*

---

## Phase 1: Structural Rules

### Step 1.1: OKR Levels
Ask: "Which OKR levels are allowed (company, department, team, individual), and which are mandatory?"

*Wait for response. Clarify where each level is useful, where it adds overhead, and when exceptions are allowed.*

Decision guidance:
- Typical options: company+team mandatory with department optional; company+department+team mandatory in larger orgs; individual OKRs only in mature systems.
- Require an explicit rule for exceptions so level usage stays consistent quarter to quarter.

### Step 1.2: Cycle and Cadence
Ask: "What is the OKR cycle length and what is the check-in rhythm?"

*Wait for response. Require a specific cycle length, check-in frequency, and review owner.*

Decision guidance:
- Common cycle options: quarterly; 6-8 week cycles in volatile environments; annual objective with quarterly KR milestones for long horizon work.
- Common check-in options: weekly team check-ins; biweekly for slower functions; monthly executive review for cross-team dependencies.

### Step 1.3: Focus Limits
Ask: "Confirm limits for focus: max Objectives per cycle and KR range per Objective."

*Wait for response. Challenge anything above 3 Objectives or outside 2-4 KRs unless there is a clear exception rule.*

Decision guidance:
- Default: 1-3 Objectives per team and 2-4 KRs per Objective.
- If exceptions are allowed, require criteria upfront (for example: turnaround teams, merger periods, regulated initiatives).

### Step 1.4: OKR Types and Expectations
Ask: "How should aspirational, committed, and learning OKRs be used and evaluated in this organization?"

*Wait for response. Require explicit scoring expectations for each type.*

Decision guidance:
- Aspirational: stretch goals where 60-80% achievement can still be a success.
- Committed: delivery-critical goals expected to land near full completion.
- Learning: hypothesis goals scored by decision-quality outcomes (validated/invalidated and what changed).

---

## Phase 2: Quality and Execution Rules

### Step 2.1: KR Quality Rules
Ask: "What is your rule for input/output/outcome KRs?"

*Wait for response. Recommend: avoid input KRs, prefer outcome KRs, allow output KRs as short-cycle proxies.*

Decision guidance:
- Outcome KRs: preferred default for behavior or business change.
- Output KRs: valid when they are the strongest near-term predictor of an intended outcome.
- Input KRs: allow only by exception and only with a clear logic chain to outcome.
- Require baseline, target, and deadline for every KR.

### Step 2.2: Ownership Rules
Ask: "What ownership model do you want for Objectives and KRs?"

*Wait for response. Require a named owner for each Objective and each KR.*

Decision guidance:
- Common model: one accountable owner per Objective and per KR, with contributors listed separately.
- Alternative model: two co-owners allowed only for cross-functional KRs with explicit decision rights.

### Step 2.3: Alignment Rules
Ask: "How should teams handle vertical alignment to strategy and horizontal alignment across teams, including your cascading-vs-laddering mix and primary alignment model (classic, roadmap, flat, or hybrid)?"

*Wait for response. Capture both directionality (top-down vs bottom-up) and operating model choice.*

Decision guidance:
- Vertical alignment rule: define how each team Objective must connect to strategy (direct parent link, strategic pillar link, or explicit contribution statement).
- Horizontal alignment rule: define how teams resolve overlap and dependencies (planning sync, dependency map, peer review, or leadership arbitration).
- Cascading vs laddering mix: set an explicit target balance (for example 70/30, 50/50, or context-based by function).
- Classic model: strongest top-down clarity and process discipline; higher coordination overhead and lower team autonomy.
- Roadmap model: strongest long-term continuity for functions like R&D; lower short-term adaptability.
- Flat model: highest team autonomy and faster adaptation; requires stronger horizontal coordination controls.
- Hybrid model: recommended in most orgs; choose model by function, maturity, and business volatility.

### Step 2.4: Incentives
Ask: "How (if at all) should OKR scoring connect to bonuses or performance reviews?"

*Wait for response. Force a clear policy: none, indirect, or direct linkage.*

Decision guidance:
- No direct linkage: safest default for learning, ambition, and anti-gaming.
- Indirect linkage: evaluate OKR quality, collaboration, and learning behavior, not raw score attainment.
- Direct linkage: use only with clear safeguards (calibration, anti-sandbagging checks, and appeals process), usually limited to committed goals.

### Step 2.5: Transparency and Tooling
Ask: "Where will OKRs live, who can view them, and what is the single source of truth?"

*Wait for response. Require a single source of truth and a visibility policy.*

Decision guidance:
- Tooling options: dedicated OKR platform, project tracker, or structured document/spreadsheet with strict ownership.
- Visibility options: fully open by default; open within leadership + all managers; restricted only where legally required.
- Define update SLAs (for example: KR status refreshed weekly before check-in).

---

## Phase 3: Finalize and Save

### Step 3.1: Present Final Ground Rules
Present the rules in this structure:

```
OKR Ground Rules

Scope: [Team/Company-wide]

1) Structure
- Levels: [...]
- Cycle length: [...]
- Check-in rhythm: [...]
- Focus limits: <=3 Objectives, 2-4 KRs per Objective

2) OKR Types
- Aspirational: [...]
- Committed: [...]
- Learning: [...]

3) KR Design
- Input/output/outcome rule: [...]
- Leading/lagging expectation: [...]

4) Ownership and Alignment
- Ownership model: [...]
- Vertical alignment rule: [...]
- Horizontal alignment rule: [...]
- Cascading vs laddering mix: [...]
- Alignment model: [classic/roadmap/flat/hybrid + when to use]

5) Incentives
- Bonus/performance linkage rule: [...]
- Safeguards against score gaming: [...]

6) Transparency and Tracking
- Source of truth: [...]
- Visibility rule: [...]
- Update cadence and owner: [...]
```

### Step 3.2: Confirm
Ask: "Do these ground rules represent how you want OKRs to run going forward?"

*Wait for response. Refine if needed.*

### Step 3.3: Save
After confirmation, update `context/okr-ground-rules.md` with the finalized rules so future `/okr-review` sessions load them first.

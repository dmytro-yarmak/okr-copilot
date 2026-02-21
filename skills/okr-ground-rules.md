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

*Wait for response.*

### Step 1.2: Cycle and Cadence
Ask: "What is the OKR cycle length and what is the check-in rhythm?"

*Wait for response.*

### Step 1.3: Focus Limits
Ask: "Confirm limits for focus: max Objectives per cycle and KR range per Objective."

*Wait for response. Challenge anything above 3 Objectives or outside 2-4 KRs unless there is a clear exception rule.*

### Step 1.4: OKR Types and Expectations
Ask: "How should aspirational, committed, and learning OKRs be used and evaluated in this organization?"

*Wait for response.*

---

## Phase 2: Quality and Execution Rules

### Step 2.1: KR Quality Rules
Ask: "What is your rule for input/output/outcome KRs?"

*Wait for response. Recommend: avoid input KRs, prefer outcome KRs, allow output KRs as short-cycle proxies.*

### Step 2.2: Ownership Rules
Ask: "What ownership model do you want for Objectives and KRs?"

*Wait for response. Require a named owner for each Objective and each KR.*

### Step 2.3: Alignment Rules
Ask: "How should teams handle vertical alignment to strategy and horizontal alignment across teams?"

*Wait for response.*

### Step 2.4: KPIs, BAU, and Incentives
Ask: "What stays in KPIs/BAU and how (if at all) should OKR scoring connect to bonuses or performance reviews?"

*Wait for response.*

### Step 2.5: Transparency and Tooling
Ask: "Where will OKRs live, who can view them, and what is the single source of truth?"

*Wait for response.*

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

5) Boundaries and Incentives
- BAU/KPI boundary: [...]
- Score-to-performance rule: [...]

6) Transparency and Tracking
- Source of truth: [...]
- Visibility rule: [...]
```

### Step 3.2: Confirm
Ask: "Do these ground rules represent how you want OKRs to run going forward?"

*Wait for response. Refine if needed.*

### Step 3.3: Save
After confirmation, update `context/okr-ground-rules.md` with the finalized rules so future `/okr-review` sessions load them first.

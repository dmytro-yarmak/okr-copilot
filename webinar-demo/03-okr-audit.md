# Demo 03: `$okr-audit`

## Purpose

Show strict scorecard behavior: fast risk detection, focus enforcement, and concrete fixes.

## Overloaded Draft Input (Intentional)

Paste this into the audit session:

```text
Objective 1: Grow top-line revenue fast in Q2.
KRs:
1) Make 400 outbound calls per week.
2) Run 20 webinars.
3) Increase pipeline from EUR8.5M to EUR12M.
4) Improve win rate from 21% to 30%.
5) Hire more AEs.
6) Post 3 LinkedIn updates per week.

Objective 2: Improve customer outcomes.
KRs:
1) Send weekly tips newsletter.
2) Hold monthly customer townhall.
3) Reduce Growth churn from 18% to 10%.
4) Improve NPS from 42 to 60.
5) Build 15 new playbooks.

Objective 3: Make support world-class.
KRs:
1) Resolve tickets faster.
2) First response time from 4.2h to 1.5h.
3) Resolution time from 22h to 10h.
4) First contact resolution from 58% to 78%.
5) Add AI support bot.
6) Hire 5 support engineers.

Objective 4: Build best AI product in market.
KRs:
1) Launch AI Manager Coaching Assistant.
2) Improve AI usage from 32% to 70%.
3) Ship 10 new AI features.
4) Reduce model hallucination rate.
5) Publish AI thought leadership report.
6) Win 3 AI innovation awards.
7) Improve roadmap confidence.

Objective 5: Improve internal execution.
KRs:
1) Increase engineering happiness from 6.2/10 to 8/10.
2) Improve deployment frequency from 2x/week to daily.
3) Reduce p95 page load from 3.2s to 1.5s.
4) Reduce cloud spend by 30%.
5) Increase test coverage from 60% to 80%.
6) Run weekly architecture forums.

Owner: Leadership team
Timeframe: 2026
Tracking: TBD
```

## Copy-Paste Prompt

```text
$okr-audit

Run strict audit mode on this draft.
Use Nexora context and enforce focus limits.
Return severity-ordered findings, scorecard, revised proposal, and fix actions.

[paste overloaded draft]
```

## Expected Audit Output (Abridged)

```text
OKR Audit Complete

Overall rating: Red

Top issues (by severity):
1) Focus violation: 5 Objectives and many with 5-7 KRs.
   Impact: execution overload; low delivery confidence.
   Fix: reduce to max 3 Objectives, 2-4 KRs each.
2) Input-heavy KRs dominate (calls, webinars, posts) with weak outcome linkage.
   Impact: activity can increase while business results miss.
   Fix: convert to outcome/output KRs tied to retention, win rate, support quality.
3) Ownership and timeframe are vague ("leadership team", "2026", "TBD tracking").
   Impact: weak accountability and poor check-in discipline.
   Fix: assign named owner per Objective/KR, quarter dates, and single tracking source.

Scorecard:
- Strategy fit: Pass (priority areas are real)
- Objective quality: Fail
- KR measurability: Fail
- Output/outcome quality: Fail
- Focus limits: Fail
- Ownership and execution readiness: Fail

Revised OKR proposal:

Objective 1:
Increase Growth-segment retention through stronger adoption in Q2 2026.
KRs:
1) 30-day activation: 12% -> 30%
2) 14-day onboarding milestone completion: 41% -> 70%
3) Growth annualized churn: 18% -> 14%

Objective 2:
Improve pipeline efficiency and deal quality in Q2 2026.
KRs:
1) Qualified opportunities: 98 -> 120
2) Win rate: 21% -> 26%
3) Average sales cycle: 65 days -> 55 days

Objective 3:
Stabilize support and platform reliability for scale in Q2 2026.
KRs:
1) First response time: 4.2h -> <2h
2) First contact resolution: 58% -> 72%
3) p95 page load time: 3.2s -> 1.8s

Next actions:
- Assign one named owner per Objective and KR within 48 hours.
- Publish in single source of truth and start weekly check-ins.
- Remove non-essential KRs not tied to quarterly outcomes.
```

## Presenter Talk Track (30-45 sec)

"Audit mode is where power shows up. It does not just critique wording. It ranks risks, scores the draft, and returns a leaner plan that a team can actually execute."

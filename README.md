# OKR Co-pilot

> AI as your OKR co-pilot, not an autopilot.

This repository provides tools, personas, and skills for using AI to enhance your OKR (Objectives and Key Results) process while keeping humans in the driver's seat.

## Philosophy

**Co-pilot, not Autopilot**: AI assists your strategic thinking but doesn't take over.

- One question at a time
- Human makes all final decisions
- AI challenges, suggests, and refines - never dictates

## Practice Context

Use our fictional company **Nexora** to practice OKR creation. The company context is spread across multiple documents — just like in a real organization:

| Document | Description |
|----------|-------------|
| [Q4 2025 Board Update](context/nexora-docs/q4-2025-board-update.md) | Financials, ARR, margins, cash position, risks |
| [Strategy Memo 2026](context/nexora-docs/strategy-memo-2026.md) | CEO's vision, strategic pillars, priorities |
| [All-Hands Notes — Jan 2026](context/nexora-docs/all-hands-notes-jan-2026.md) | Leadership updates, challenges, Q&A |
| [Product Roadmap H1 2026](context/nexora-docs/product-roadmap-h1-2026.md) | AI features, enterprise hardening, tech debt |
| [Competitive Landscape](context/nexora-docs/competitive-landscape-q1-2026.md) | Competitor profiles, win/loss analysis |
| [Sales Pipeline Report](context/nexora-docs/sales-pipeline-q1-2026.md) | Pipeline by segment, top deals, team metrics |
| [Customer Success Review](context/nexora-docs/customer-success-review-q4-2025.md) | Churn, NPS, health scores, expansion |
| [Hiring Plan 2026](context/nexora-docs/hiring-plan-2026.md) | Headcount, critical roles, attrition data |

**Exercise:** Ask Claude to synthesize these documents into a company overview, then use it to create team-level OKRs.

---

## Quick Start

### 1. Set Co-pilot Mode

Start any AI session with this opening prompt:

```
You are my OKR co-pilot. Ask one question at a time.
I'm the driver - I make all final decisions.
Start by asking: What's the most important thing your team needs to achieve?
```

### 2. Use Expert Personas

Get different perspectives on your OKRs:

| Persona | Best For | Key Focus |
|---------|----------|-----------|
| [Christina Wodtke](personas/christina-wodtke.md) | Focus & prioritization | "Is this the ONE thing?" |
| [John Doerr](personas/john-doerr.md) | Ambition & alignment | "Is this ambitious enough?" |
| [OKR Champion](personas/okr-champion.md) | Process & facilitation | "Have you aligned with others?" |
| [CEO](personas/ceo.md) | Strategy & vision | "Does this move us toward our vision?" |
| [Team Member](personas/team-member.md) | Reality & execution | "Can we actually do this?" |

### 3. Set Ground Rules Once

Define organizational OKR rules to reuse in future sessions:

[`/okr-ground-rules`](skills/okr-ground-rules.md) or `$okr-ground-rules` - Helps you define:
- OKR levels and cycle cadence
- Focus limits (<=3 Objectives, 2-4 KRs)
- OKR type expectations (aspirational, committed, learning)
- KR design, ownership, transparency, and boundaries

Rules are saved in [`context/okr-ground-rules.md`](context/okr-ground-rules.md).

### 4. Use the OKR Review Skill

Complete guided workflow through all phases:

[`/okr-review`](skills/okr-review.md) or `$okr-review` - Takes you through:
1. **Mode Selection** - Choose guided coaching or expert-audit review
2. **Load Ground Rules** - Reuse saved rules from previous sessions
3. **Guided Mode** - Question-by-question refinement workflow
4. **Expert-Audit Mode** - Full draft review against best practices
5. **Final Output** - Revised OKR with quality score and next actions

## For Codex CLI Users

Clone the repo, then install Codex skills from this repository:

```bash
./scripts/install-codex-skills.sh
```

Or use the Make target:

```bash
make install-codex-skills
```

What this does:

- Copies skills from `codex-skills/` into `~/.codex/skills/`
- Installs `okr-review` and `okr-ground-rules` for `$skill-name` invocation

Then restart Codex and use:

- `$okr-ground-rules`
- `$okr-review`

## For Claude Code Users

Copy this repo and use with Claude Code:

1. Clone the repository
2. The `CLAUDE.md` file configures personas and skills
3. Use `@persona-name` to activate a perspective
4. Use `/okr-ground-rules` to set reusable rules
5. Use `/okr-review` to run the complete review workflow

## MCP Integrations

Connect your OKR co-pilot to:

- **Google Docs** - Collaborative OKR documents
- **Jira** - Link OKRs to execution
- **Oboard** - OKR management platform

See the `/mcp` directory for integration guides.

## Resources

- [Radical Focus](https://www.amazon.com/Radical-Focus-Achieving-Important-Objectives/dp/0996006028) by Christina Wodtke
- [Measure What Matters](https://www.whatmatters.com/) by John Doerr
- [What Matters](https://www.whatmatters.com/) - OKR resources and examples

## Contributing

This repo is designed to be forked and customized for your organization. Add your own:

- Personas (industry experts, internal leaders)
- Skills (your OKR workflow)
- MCP integrations (your tools)

## License

MIT - Use freely, modify for your needs.

---

*Created for the webinar: "AI as Your OKR Co-pilot, Not an Autopilot"*

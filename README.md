# OKR Co-pilot

> AI as your OKR co-pilot, not an autopilot.

This repository provides tools, personas, and prompts for using AI to enhance your OKR (Objectives and Key Results) process while keeping humans in the driver's seat.

## Philosophy

**Co-pilot, not Autopilot**: AI assists your strategic thinking but doesn't take over.

- One question at a time
- Human makes all final decisions
- AI challenges, suggests, and refines - never dictates

## Quick Start

### 1. Set Co-pilot Mode

Start any AI session with the [co-pilot mode prompt](prompts/copilot-mode.md):

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

### 3. Use the OKR Review Skill

Complete guided workflow through all phases:

[`/okr-review`](skills/okr-review.md) - Takes you through:
1. **Capture & Context** - Understand the OKR and its purpose
2. **Refine Objective** - Make it inspiring and focused
3. **Refine Key Results** - Ensure measurable outcomes
4. **Quality Check** - Validate against best practices
5. **Alignment Check** - Connect to strategy and dependencies
6. **Final Polish** - Confirm and commit

## For Claude Code Users

Copy this repo and use with Claude Code:

1. Clone the repository
2. The `CLAUDE.md` file configures personas and skills
3. Use `@persona-name` to activate a perspective
4. Use `/okr-review` to run the complete review workflow

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
- Prompts (common scenarios)
- MCP integrations (your tools)

## License

MIT - Use freely, modify for your needs.

---

*Created for the webinar: "AI as Your OKR Co-pilot, Not an Autopilot"*

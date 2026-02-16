# Product Roadmap — H1 2026

**Owner:** Thomas Richter, CTO
**Last updated:** February 5, 2026
**Status:** DRAFT — pending leadership review

---

## Roadmap Principles

1. **AI-first:** Every major feature should leverage our data and AI capabilities
2. **Enterprise-ready:** We must close the gaps that prevent larger deals
3. **Platform performance:** Speed and reliability are features
4. **Reduce complexity:** Simplify where possible — for customers AND our engineering team

---

## Theme 1: AI-Powered Learning (40% of eng capacity)

### AI Learning Path Generator
- **Status:** In development (alpha target: end of March)
- **Description:** Automatically generates complete learning curricula based on role requirements, current skill levels, and career goals. Uses our proprietary skill taxonomy and content catalog.
- **Why it matters:** This is our next big differentiator. Currently customers spend 20+ hours manually building learning paths. We can reduce that to minutes.
- **Dependencies:** Requires skill taxonomy V3 (shipping in Feb), content provider API improvements
- **Risk:** ML model quality — early testing shows paths are "good but not great" for niche technical roles. Need more training data.

### Predictive Skill Readiness Dashboard
- **Status:** Design phase
- **Description:** Predicts when employees will be ready for target roles based on learning velocity, assessment scores, and engagement patterns.
- **Why it matters:** Customers constantly ask "is our training working?" This gives them a forward-looking answer.
- **Target:** Beta in May, GA in June
- **Dependencies:** Data pipeline improvements needed — current analytics infrastructure can't handle the query complexity

### AI Manager Coaching Assistant
- **Status:** Research/prototype
- **Description:** An AI assistant that helps managers have better development conversations with their team members. Provides talking points, suggests focus areas, surfaces relevant data.
- **Why it matters:** Manager quality is the #1 predictor of learning engagement. If we help managers be better coaches, our platform drives better outcomes.
- **Target:** Prototype by June, no GA commitment yet
- **Risk:** This is ambitious. May need to scope down to "AI-generated talking points" for V1.

---

## Theme 2: Enterprise Hardening (25% of eng capacity)

### ISO 27001 Certification Prep
- **Status:** In progress
- **Description:** Infrastructure and process changes needed for ISO 27001 certification. Required by several enterprise prospects in our pipeline.
- **Target:** Audit-ready by end of Q2
- **Dependencies:** SecOps team capacity (currently just 2 people)

### Advanced RBAC (Role-Based Access Control)
- **Status:** Design phase
- **Description:** Fine-grained permission system for enterprise customers who need department-level admin controls, content restrictions, and approval workflows.
- **Target:** Beta in April
- **Why it matters:** Top 3 feature request from enterprise customers. Blocking 4 deals totaling ~€800K ARR.

### Custom Reporting Builder
- **Status:** In development
- **Description:** Allow enterprise admins to build their own reports and dashboards without relying on our team.
- **Target:** GA in March
- **Note:** V1 is templates-based. Full custom builder is H2.

### SCIM Provisioning
- **Status:** Planned
- **Description:** Automated user provisioning/deprovisioning via SCIM protocol. Required for large orgs with strict access management.
- **Target:** May

---

## Theme 3: Platform Health (20% of eng capacity)

### Tech Health Sprint
- **Status:** Started January 2026
- **Description:** Dedicated 20% of engineering capacity to reducing technical debt. Focus areas:
  - Content delivery module refactoring (est. 6 weeks)
  - Learning path engine rewrite (est. 8 weeks)
  - Database query optimization (ongoing)
  - Test coverage improvement (target: 60% → 80%)
- **Why now:** Sprint velocity declined 15% in Q4. Engineers report frustration with "fighting the codebase." If we don't invest now, velocity will continue declining.
- **Target outcomes:**
  - Page load time p95: from 3.2s to under 1.5s
  - Deployment frequency: from 2x/week to daily
  - Engineering satisfaction score: from 6.2/10 to 8/10

### Infrastructure Cost Optimization
- **Status:** In analysis
- **Description:** Cloud costs have grown 3x while revenue grew 1.5x. We need to right-size our infrastructure.
- **Target:** 30% reduction in cloud spend by end of Q2
- **Owner:** DevOps team

---

## Theme 4: Integrations & Ecosystem (15% of eng capacity)

### Slack Integration GA
- **Status:** In beta (47 customers testing)
- **Description:** Nudges, learning reminders, and quick skill checks directly in Slack.
- **Target:** GA in February
- **Feedback so far:** Very positive. "This is how you get people to actually do their learning" — beta customer

### Microsoft Teams Integration
- **Status:** Planned
- **Description:** Same functionality as Slack integration, for Microsoft shops.
- **Target:** April
- **Note:** Many enterprise customers are Teams-only. This is a gap.

### Content Provider Marketplace V2
- **Status:** Design
- **Description:** Expanded marketplace with more providers, better search, and customer reviews.
- **Target:** June
- **Partners in pipeline:** LinkedIn Learning, Coursera for Business, Pluralsight

---

## Not Doing in H1 (Explicitly Deprioritized)

- **Mobile app** — deprioritized in favor of enterprise features
- **Gamification features** — nice to have but not strategic
- **Self-serve analytics API** — too early, not enough demand
- **Multi-language AI** (beyond EN/NL/DE) — H2 at earliest

---

## Risks & Dependencies

1. **ML engineer hiring** — 4 open roles, critical for AI features. If we can't fill by March, AI Learning Path Generator will slip.
2. **Content delivery refactoring** may surface unexpected issues — could impact other timelines
3. **ISO 27001** requires cross-functional effort beyond just engineering
4. **Integration partners** (LinkedIn Learning, Coursera) have their own timelines we can't control

---

## Staffing

**Current engineering team: 65 engineers**
- Backend: 22
- Frontend: 16
- Data & AI: 15
- DevOps/Infra: 6
- QA: 6

**Open roles: 12** (4 ML Engineers, 3 Backend, 2 Frontend, 1 DevOps, 2 QA)

**Data & AI team: 15 people**
- 6 ML Engineers
- 4 Data Engineers
- 3 Data Scientists
- 2 AI Product Managers

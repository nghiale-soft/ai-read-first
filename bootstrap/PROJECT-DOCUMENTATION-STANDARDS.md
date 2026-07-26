# Project Documentation Standards

Use an artifact-oriented structure. Roles own and approve artifacts; role names
do not become isolated documentation folders.

## Role model

| Role | Primary responsibility | Typical artifacts |
|---|---|---|
| PM | Delivery objective, scope, milestones, dependencies, and project risks | project charter, delivery plan, risk register |
| PO | Product vision, stakeholders, capabilities, priority, backlog, and acceptance | product vision, capability map, roadmap, backlog |
| BA | Business processes, rules, actors, use cases, functional requirements, and detailed behavior | SRS, process flows, use cases, screen specifications |
| SA | System context, architecture, technology choices, integrations, runtime flows, deployment, and NFR design | architecture, tech stack, integration map, ADRs |
| Tech Lead | Source structure, module boundaries, architecture patterns, coding conventions, and dependency direction | source tree, implementation patterns, engineering standards |
| Design | User journeys, interaction states, visual system, responsive behavior, and accessibility | UX flows, screen designs, design tokens, component states |
| Tester | Test strategy, scenarios, cases, automation, regression, and E2E | test plan, test cases, automation map, test evidence |
| QA | Quality governance, traceability, quality gates, security scanning, performance, and release readiness | quality plan, traceability matrix, Sonar/CVE/load gates |
| Dev | Implementation plan, code, technical tests, migrations, operational notes, and verification evidence | current task, implementation plan, technical design, change evidence |

Role names are defaults. A project may map them to its organization, but it must
preserve the responsibility and approval boundary.

## Artifact metadata

Each material project document should state:

```yaml
owner: <role>
contributors: []
status: draft | in-review | accepted | superseded | unverified
last_verified: YYYY-MM-DD | TBD
evidence:
  - <source path, decision, command, test, or user confirmation>
```

Do not label AI-generated content `accepted` without human confirmation or
authoritative repository evidence.

## Traceability

Maintain links across:

```text
objective
→ capability
→ requirement
→ UX/API/data/architecture design
→ implementation task
→ test case and quality gate
→ release evidence
```

Use stable identifiers when the project needs formal traceability, for example
`OBJ-001`, `CAP-001`, `REQ-001`, `SCR-001`, `ADR-001`, `TC-001`, and `REL-001`.

## Progressive documentation

Not every project needs every optional file on day one. Create the baseline index,
profile, ownership map, vision/scope, architecture, requirements index, current
task, test strategy, quality plan, and changelog. Add detailed artifacts when a
real requirement or verified repository evidence requires them.

Empty polished documents are worse than explicit unknowns. Use:

```text
TBD — user confirmation required
```

## Language

`ai-read-first` remains in English so it can be shared across projects.
`docs/project/` uses the primary documentation language recorded in
`project-profile.yaml`.

Within project documentation:

- keep terminology consistent through a glossary
- preserve code identifiers and external contracts exactly
- add a short translation only when stakeholders need it
- do not mix languages sentence by sentence without a terminology reason
- record a fallback language for external or cross-team communication when needed

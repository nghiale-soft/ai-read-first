# Verification Levels (stack-agnostic ladder)

Tests are organized by **level**, not by technology or workflow. A project picks the
levels that apply to its stack. This ladder is shared across all projects and all
languages — web E2E is only one level, not the whole story.

| Level | Focus | Typical tools |
|---|---|---|
| L0 Unit | function/class logic, no I/O | JUnit, Jest, pytest, ... |
| L1 Integration | service + real dependencies (DB/Redis/queue) | Testcontainers, Spring Boot test |
| L2 API/Contract | real HTTP boundary of a service | Postman + Newman, Bruno, Karate, REST Assured |
| L3 UI E2E | user journey in a real browser | Playwright, Cypress |
| L4 Performance | load/soak/spike with thresholds | k6, JMeter, Gatling |
| L5 Security | SAST + CVE + secrets (+ DAST) | Sonar, Trivy, gitleaks, ZAP |

## Mapping to existing guides

- L1/L2 → `../mandatory/API-SERVICE-WORKFLOW.md`
- L3 → `../mandatory/WEB-E2E.md`, `../mandatory/DESKTOP-MOBILE-E2E.md`
- L1 (async flows) → `../mandatory/MESSAGING-WORKFLOW.md`, `../mandatory/FILE-WORKFLOW.md`
- L5 (partial) → `../optional/SONAR.md`, `../optional/CVE-SCANNING.md`
- Dedicated guides: [L2-API-CONTRACT.md](./L2-API-CONTRACT.md), [L4-PERFORMANCE-LOAD.md](./L4-PERFORMANCE-LOAD.md), [L5-SECURITY.md](./L5-SECURITY.md)

## Rules of thumb

- Faster levels run more often: L0/L1 on every commit/PR, L2 on PR, L3+ on merge/schedule.
- Each level needs a concrete "pass" definition, not human judgment.
- Prefer a few robust levels that run in CI over many manual checklists.
- Every project with business logic must define at least one mandatory business
  verification capability — see `../QUALITY-CAPABILITY-SELECTOR.md`.

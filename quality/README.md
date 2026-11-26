# Quality Guide

Select only the levels and workflow guides relevant to the project.

| Level | Focus | Typical tools |
|---|---|---|
| L0 Unit | function/class logic, no I/O | JUnit, Jest, pytest |
| L1 Integration | service with real dependencies | Testcontainers, framework integration tests |
| L2 API/Contract | real service boundary | Postman/Newman, Bruno, Karate, REST Assured |
| L3 UI E2E | user journey in a real UI | Playwright, Cypress |
| L4 Performance | load, soak, and spike thresholds | k6, JMeter, Gatling |
| L5 Security | SAST, CVE, secrets, optional DAST | Sonar, Trivy, gitleaks, ZAP |

Every project with business logic must use
[`mandatory/BUSINESS-VERIFICATION.md`](./mandatory/BUSINESS-VERIFICATION.md) and
the closest workflow guide:

- Web UI: [`mandatory/WEB-E2E.md`](./mandatory/WEB-E2E.md)
- Desktop/mobile: [`mandatory/DESKTOP-MOBILE-E2E.md`](./mandatory/DESKTOP-MOBILE-E2E.md)
- API/service: [`mandatory/API-SERVICE-WORKFLOW.md`](./mandatory/API-SERVICE-WORKFLOW.md)
- Messaging: [`mandatory/MESSAGING-WORKFLOW.md`](./mandatory/MESSAGING-WORKFLOW.md)
- Files: [`mandatory/FILE-WORKFLOW.md`](./mandatory/FILE-WORKFLOW.md)

Detailed level guides exist for
[`L2 API contracts`](./levels/L2-API-CONTRACT.md),
[`L4 performance`](./levels/L4-PERFORMANCE-LOAD.md), and
[`L5 security`](./levels/L5-SECURITY.md).

Faster levels should run more often, and every selected level needs a concrete
pass definition. Prefer a few reliable CI checks over many manual checklists.

CVE and Sonar setup are optional. Read their guides only when the project
profile enables them, the user requests them, or the project already uses them.
Do not silently install optional tools or alter CI.

# Quality Capability Selector

Quality capabilities are split into mandatory and optional groups.

## Mandatory

Every project with business logic must define and execute one business verification capability:

- E2E, or
- equivalent executable domain workflow testing

Read:

```text
mandatory/BUSINESS-VERIFICATION.md
```

Then load a matching implementation guide:

- `mandatory/WEB-E2E.md`
- `mandatory/API-SERVICE-WORKFLOW.md`
- `mandatory/MESSAGING-WORKFLOW.md`
- `mandatory/FILE-WORKFLOW.md`
- `mandatory/DESKTOP-MOBILE-E2E.md`

## Optional — user choice

CVE scanning and Sonar are optional to initialize.

Read these only when:

- the project profile enables them
- the user requests them
- an existing project already uses them

```text
optional/CVE-SCANNING.md
optional/SONAR.md
```

Do not silently install optional tools or alter CI.

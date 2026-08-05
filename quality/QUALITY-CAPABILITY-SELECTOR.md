# Quality Capability Selector

Quality capabilities are organized two ways: **verification levels** (what to test,
stack-agnostic) and **business verification** (how to verify a specific domain flow).

## Step 1 — Choose verification levels

Start from the ladder:

```text
levels/README.md
```

It maps each level (L0 Unit → L5 Security) to the matching guide. Pick the levels
that apply to the project's stack; do not read every guide.

## Step 2 — Mandatory business verification

Every project with business logic must define and execute one business verification
capability (E2E or an equivalent executable domain workflow test). Read:

```text
mandatory/BUSINESS-VERIFICATION.md
```

Then load a matching implementation guide:

- `mandatory/WEB-E2E.md` (web UI — see also `levels/L3` context)
- `mandatory/API-SERVICE-WORKFLOW.md` (backend — see also `levels/L2-API-CONTRACT.md`)
- `mandatory/MESSAGING-WORKFLOW.md`
- `mandatory/FILE-WORKFLOW.md`
- `mandatory/DESKTOP-MOBILE-E2E.md`

## Step 3 — Optional — user choice

CVE scanning and Sonar are optional to initialize (see also `levels/L5-SECURITY.md`).

Read these only when:

- the project profile enables them
- the user requests them
- an existing project already uses them

```text
optional/CVE-SCANNING.md
optional/SONAR.md
```

Do not silently install optional tools or alter CI.

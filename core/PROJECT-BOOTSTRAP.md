# Project documentation bootstrap

Use when `docs/project/` is missing or incomplete. Inspect the README, build and lock files, source/test roots, CI/deployment config, API/schema definitions, and maintained docs. Record verified facts such as the stack and configured commands. For unresolved business decisions, ask using [Core Rules](CORE-RULES.md). If the owner cannot confirm, record `TBD — awaiting confirmation` and the question.

Choose the documentation language from explicit instructions, existing project profile, maintained docs/README, then business specs. Record its IETF tag (e.g. `vi-VN`) and fallback. Keep identifiers and contracts exact, and use a glossary for consistent terminology. Ask if the evidence is weak or mixed.

## Baseline

Create the index, profile, ownership map, vision/scope, requirements index, architecture, current task, test strategy, quality plan, and changelog with evidence-backed content. Group by artifact under `docs/project/` (e.g. `product/`, `requirements/`, `architecture/`, `planning/`, `testing/`). Create optional artifacts only as needed. The index routes each task to relevant files.

Assign artifact owners and approval boundaries: PM owns delivery/scope/risks, PO product priorities/acceptance, BA processes/requirements, SA architecture/integrations, Tech Lead source conventions, Design UX/accessibility, Tester scenarios/E2E, QA quality gates/traceability, and Dev implementation/evidence. Map roles to the actual team.

For material documents record owner, contributors, status (`draft`, `in-review`, `accepted`, `superseded`, or `unverified`), last verification date, and evidence. Mark accepted only with human confirmation or authoritative evidence. Link objectives → capabilities → requirements → design → implementation → tests/gates → release evidence. Use stable IDs when formal traceability is needed.

Define executable business verification and present optional CVE/Sonar setup using the [Quality Guide](../quality/README.md). Confirm before changing architecture or tooling that affects dependencies or CI.

## Project profile template

Fill the verified fields in `docs/project/project-profile.yaml`. Enable business verification when the project has business logic.

```yaml
project:
  name: TBD
  type: TBD
  languages: []
  frameworks: []

documentation:
  primary_language: TBD
  primary_language_evidence: TBD
  fallback_language: en
  preserve_identifiers: true
  glossary: requirements/glossary.md

roles:
  pm: TBD
  po: TBD
  ba: TBD
  sa: TBD
  tech_lead: TBD
  design: TBD
  tester: TBD
  qa: TBD
  dev: AI-assisted

build:
  commands: []

verification:
  formatter: TBD
  lint: TBD
  compile_or_typecheck: TBD
  unit_test: TBD
  integration_test: TBD
  business_verification:
    required: true
    type: TBD
    command: TBD

optional_capabilities:
  cve_scanning:
    enabled: false
    tool: null
  sonar:
    enabled: false
    tool: null

risk:
  public_api: TBD
  database: TBD
  messaging: TBD
  file_processing: TBD
  sensitive_data: TBD
```

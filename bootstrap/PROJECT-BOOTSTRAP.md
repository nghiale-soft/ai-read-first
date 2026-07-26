# Project Documentation Bootstrap

Use this when `docs/project/` is missing or incomplete.

Also read:

1. [`PROJECT-DOCUMENTATION-STANDARDS.md`](./PROJECT-DOCUMENTATION-STANDARDS.md)
2. [`PROJECT-STRUCTURE-TEMPLATE.md`](./PROJECT-STRUCTURE-TEMPLATE.md)

## Inspect before creating

Inspect only high-signal files first:

- root README
- build manifests
- package managers and lock files
- source roots
- test roots
- CI configuration
- container or deployment configuration
- API/schema definitions
- existing project documentation and its dominant human language

## Determine documentation language

Choose the primary language for `docs/project/` using this evidence order:

1. explicit user or organization instruction
2. `project-profile.yaml`
3. existing maintained project documentation and root README
4. dominant language of business-facing specifications

Do not infer documentation language from programming languages or a small sample
of code comments. Record an IETF language tag such as `en`, `en-US`, or `vi-VN`.

Keep code identifiers, API fields, schema names, protocol terms, commands, and
official product names unchanged when translation would reduce precision.

If evidence is mixed or weak, use:

```text
TBD — user confirmation required
```

## Create this structure

```text
docs/project/
├── PROJECT-INDEX.md
├── project-profile.yaml
├── rules/
├── overview/
├── governance/
├── product/
├── requirements/
├── architecture/
├── engineering/
├── ux/
├── planning/
├── testing/
├── quality/
└── release/
```

## Evidence rules

AI may populate facts directly supported by repository evidence, such as:

- programming language
- framework
- module names
- configured build commands
- existing test tools
- deployment files

AI must not invent:

- business purpose
- business actors
- product vision, priorities, or roadmap intent
- requirements, acceptance criteria, or screen behavior
- visual design decisions or accessibility targets
- architecture intent
- authorization rules
- retention policy
- integration contracts
- non-obvious data semantics

Unknown content must be:

```text
TBD — user confirmation required
```

## Completion sequence

1. Create project skeleton.
2. Determine and record the primary documentation language.
3. Generate `project-profile.yaml`.
4. Generate `PROJECT-INDEX.md`.
5. Create the artifact ownership and traceability map.
6. Detect existing toolchain.
7. Populate verified artifacts and mark unknowns for role-owner confirmation.
8. Present optional capability choices for CVE and Sonar.
9. Ensure mandatory business verification is defined.
10. Ask for confirmation before implementing architecture or tooling that changes dependencies/CI.

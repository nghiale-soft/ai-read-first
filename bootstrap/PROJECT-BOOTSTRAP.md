# Project Documentation Bootstrap

Use this when `docs/project/` is missing or incomplete.

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

## Create this structure

```text
docs/project/
├── PROJECT-INDEX.md
├── project-profile.yaml
├── rules/
├── overview/
├── architecture/
├── planning/
├── design/
├── testing/
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
2. Generate `project-profile.yaml`.
3. Generate `PROJECT-INDEX.md`.
4. Detect existing toolchain.
5. Present optional capability choices for CVE and Sonar.
6. Ensure mandatory business verification is defined.
7. Ask for confirmation before implementing architecture or tooling that changes dependencies/CI.

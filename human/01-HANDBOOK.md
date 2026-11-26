# Human Handbook

## Philosophy

AI should behave like a careful engineer, not an uncontrolled autocomplete
system. The kit prioritizes safety, evidence, existing code, minimal changes,
deterministic tools, business correctness, selective context, and truthful
reporting.

Token efficiency comes from one AI entry point, task classification, selective
rule and tool loading, project indexes, targeted search, affected-scope checks,
diff reuse, and filtered logs. Results vary, so no fixed saving is promised.

## Quality model

Every business-code change needs executable verification at the closest useful
boundary: web, desktop/mobile, API/service, messaging, file processing, CLI, or
domain workflow. Compilation or isolated utility tests alone do not prove a
cross-layer business workflow.

CVE scanning and Sonar are optional. Enable them only when requested, selected
by the project profile, or already configured; do not silently install them or
alter CI.

## Usage

For an existing project:

1. Add `ai-read-first` under `docs/` and retain or create `docs/project/`.
2. Record the documentation language, project profile, index, and artifact owners.
3. Point the AI tool to `START-HERE.md`.
4. Keep project-specific facts outside `ai-read-first`.

For a project without documentation, Project Bootstrap Mode inspects high-signal
repository evidence, proposes artifact-oriented documentation, records only
verified facts, asks for unknown business decisions, and defines traceability
and business verification.

Before implementation, the AI reports the task, loaded context, expected scope,
verification, and unknowns. After implementation, it reports changed behavior,
commands, evidence, unverified items, and remaining risks.

## FAQ

### Why are `README.md`, `human/`, and `START-HERE.md` separate?

The short README routes each audience. Human guidance can grow without entering
normal AI context, while `START-HERE.md` controls selective operational loading.

### Why not load every rule?

Most rules and technology guides are irrelevant to a given task. Recursive
loading wastes context and increases instruction conflicts.

### Is UI E2E always mandatory?

No. Executable business verification is mandatory, but an API, messaging, file,
CLI, or domain workflow may be the correct boundary.

### Does this replace developer review?

No. High-risk changes still require confirmation and human review.

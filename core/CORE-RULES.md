# Core AI Rules

## Rule 0 — Safety over completion

If completing the task would violate a rule or risk user-owned work, stop and report the conflict.

## No invention

Do not invent requirements, architecture, schemas, business flows, contracts, defaults, or acceptance criteria.

## Scope lock

Only change what the task requires. Do not silently:

- refactor unrelated code
- rename unrelated symbols
- clean warnings outside scope
- format the whole repository
- upgrade dependencies
- alter compatibility or architecture

## Existing code first

Before creating a new file, class, component, helper, abstraction, or dependency:

1. Search for existing implementations and related symbols.
2. Inspect shared modules and configured libraries.
3. Reuse when behavior and lifecycle match.
4. Explain why a new implementation is necessary.

## Minimal diff

Prefer the smallest patch that can be verified. Do not rewrite a whole file to change a small region.

## Generated-code protection

Do not edit generated sources, vendor code, build output, dependency caches, or generated clients directly. Modify the source definition or generator.

## Truthful reporting

Do not state that code builds, tests pass, a vulnerability is fixed, or work is complete unless it was actually verified.

Status labels such as `Ready`, `Pass`, `Healthy`, `Completed`, and `Production
Ready` require evidence. Record the relevant command or check, result, date, and
source revision when the status may outlive the current task.

## Repository truth hierarchy

When documentation and implementation disagree, investigate the conflict instead
of silently choosing the more convenient source. Use this default evidence order:

```text
executable tests and observed runtime behavior
  ↓
source code and active configuration
  ↓
accepted architecture decisions and current task contracts
  ↓
overview, roadmap, status, and planning documents
```

Higher evidence does not automatically invalidate an accepted requirement.
Report whether the implementation is ahead of, behind, or inconsistent with the
documented intent, and update the appropriate source of truth within task scope.

## Documentation drift

Before describing work as missing or complete:

1. Search for the relevant endpoint, symbol, configuration, migration, and test.
2. Compare the implementation with the documented contract, not only its name.
3. Distinguish fully implemented, partially implemented, planned, and unverified.
4. Do not rewrite historical decisions to match current code; supersede them
   explicitly when required.

## Commit handoff

After a material, coherent change has been verified, and relevant changes remain
uncommitted, suggest a commit to the user. Include:

- why the change is ready to commit
- the exact intended file paths to stage
- a concise commit message
- copy-ready commands, for example:

```bash
git add <path-1> <path-2>
git commit -m "<type>: <concise description>"
```

Stage only task-owned paths. Do not suggest `git add -A` or `git add .` when the
worktree contains unrelated changes. If the commit boundary is ambiguous, report
that ambiguity instead of guessing.

Do not run the commit or push unless the user requested publication or otherwise
authorized that Git action.

## Failure budget

After three failed attempts on the same root problem:

- stop random changes
- summarize attempts
- identify likely root causes
- change approach or ask the user

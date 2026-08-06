# Multi-Dev Workflow (small teams with AI)

Complements `GIT-COLLABORATION.md`. Applies when a small team (e.g. 2–5 devs)
shares one repository and an AI agent commits to the same tree.

## 1. Task-scope ownership

- Every task has a declared file scope. Do not edit files outside it without
  confirming with the task owner / tech lead first.
- High-collision shared files (DI registration, shared models, shared
  repositories, common widgets) must be announced before editing; prefer
  coalescing multiple additions into one commit.
- Never reformat, reindent, rename, or refactor unrelated symbols in the files
  you touch — noisy diffs increase conflicts.

## 2. Conflict confirmation rule

- On a merge/rebase conflict that touches another developer's code, **stop and
  ask the human** instead of silently resolving.
- Present: the conflicting file, both sides, and a proposed merge. Wait for
  confirmation. Never discard the other party's work.

## 3. Clean history, no garbage commits

- One logical change per commit; message `<Type>(<scope>): <summary>`.
- No WIP / merge-noise commits. Squash before merge when commits are too small.
- Prefer `git pull --rebase` over merge commits for local integration.
- Rebase only unpushed local commits on your own branch; never rewrite a
  shared branch.
- Review `git diff --cached` before committing; stage exact paths, never
  `git add -A` blindly.

## 4. AI behavior

- Announce every staged/committed action; never silently amend or rebase
  shared commits.
- Keep the working tree of unrelated tasks untouched; commit only task-owned
  paths.

# Git Collaboration (multi-human / multi-AI)

Standards for repositories where several humans and AI agents commit to the same tree.
Goal: transparent history, no garbage commits, conflicts surfaced clearly, no work lost.

## Task ownership and collision control

- Announce high-collision shared files before changing them.
- Follow the [change budget](CHANGE-AND-DELETION-SAFETY.md#change-budget).

## Branch & push policy

- Never push directly to `develop`/`main` or a shared long-lived branch — open a PR/MR and get a review.
- Never force-push a branch others may have based on. `--force-with-lease` reduces, but does not remove, the risk of a shared rewrite.
- Do not rebase or rewrite commits already pushed to a shared branch; merge instead.
- Rebase only your own un-pushed local commits, on your own branch.

## Commit hygiene (humans and AI)

- One commit = one logical change; message `<Type>(<scope>): <summary>` with a capitalized Type.
- Stage only task-owned paths and review `git diff --cached` before committing. Avoid bulk staging.
- Never commit: secrets, keys, keystores, build artifacts, generated files, test output, large binaries.
- **Author = the account that performed the work.** Do not add attribution trailers that misrepresent authorship.
- AI agents: announce every staged/committed action; never silently amend or rebase shared commits.

## Conflict handling

- On merge conflict, surface it explicitly (affected files + both sides); never silently pick one side.
- Resolve at the semantic boundary, then re-run tests for the merged result.
- Do not resolve a conflict by discarding the other party's change without stating it.
- If a conflict touches another owner's logic or the resolver does not fully
  understand it, present both sides and a proposed merge, then ask the owner or
  tech lead before resolving.

## No lost code

- Follow the [approval gate](CHANGE-AND-DELETION-SAFETY.md#prohibited-without-explicit-approval) and back up uncommitted work before an approved destructive Git operation.
- Stash instead of discard when work is interrupted.
- Before a destructive rewrite, create a backup branch or tag.
- After any rewrite, verify `git status --short` and `git log` show the intended state — nothing silently vanished.
## Nested repositories and submodules

In repositories containing Git submodules, nested repositories, or vendored
working copies:

1. Inspect status at the parent repository.
2. Inspect status inside every nested repository in scope.
3. Confirm the nested repository remote, branch, and expected revision before
   committing or pushing.
4. Stage paths explicitly; do not assume a modified submodule pointer describes
   all nested changes.
5. Never discard, overwrite, or absorb nested uncommitted work into an unrelated
   parent commit.

## Commit handoff

After a material, coherent change has been verified, and relevant changes remain
uncommitted, suggest a commit to the user. Include:

- why the change is ready to commit
- the exact intended file paths to stage
- a concise commit message
- copy-ready commands, for example:

```bash
git add <path-1> <path-2>
git commit -m "Feat(<scope>): <concise description>"
```

Use the commit format above. If the repository enforces a different commit-message
format, follow that local rule and state the exception.

Stage only task-owned paths. Do not suggest `git add -A` or `git add .` when the
worktree contains unrelated changes. If the commit boundary is ambiguous, report
that ambiguity instead of guessing.

Do not run the commit or push unless the user requested publication or otherwise
authorized that Git action.

# Git Collaboration (multi-human / multi-AI)

Standards for repositories where several humans and AI agents commit to the same tree.
Goal: transparent history, no garbage commits, conflicts surfaced clearly, no work lost.

## Branch & push policy

- Never push directly to `develop`/`main` or a shared long-lived branch — open a PR/MR and get a review.
- Never force-push a branch others may have based on. `--force-with-lease` reduces, but does not remove, the risk of a shared rewrite.
- Do not rebase or rewrite commits already pushed to a shared branch; merge instead.
- Rebase only your own un-pushed local commits, on your own branch.

## Commit hygiene (humans and AI)

- One commit = one logical change; message `<Type>(<scope>): <summary>` with a capitalized Type.
- Review `git diff --cached` before committing — never `git add -A` blindly.
- Never commit: secrets, keys, keystores, build artifacts, generated files, test output, large binaries.
- **Author = the account that performed the work.** Do not add attribution trailers that misrepresent authorship.
- AI agents: announce every staged/committed action; never silently amend or rebase shared commits.

## Conflict handling

- On merge conflict, surface it explicitly (affected files + both sides); never silently pick one side.
- Resolve at the semantic boundary, then re-run tests for the merged result.
- Do not resolve a conflict by discarding the other party's change without stating it.
- If a conflict spans logic the resolver does not fully understand, stop and ask a human.

## No lost code

- Never run `git reset --hard`, `git clean -fd`, or `git checkout -- <file>` on uncommitted work without a backup.
- Stash instead of discard when work is interrupted.
- Before a destructive rewrite, create a backup branch or tag.
- After any rewrite, verify `git status --short` and `git log` show the intended state — nothing silently vanished.
- Submodules / nested repos: inspect the parent and every nested repo in scope; never absorb nested work into an unrelated parent commit.

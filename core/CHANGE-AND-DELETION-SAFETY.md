# Change and Deletion Safety

## User ownership

Uncommitted, untracked, staged, and locally modified files belong to the user.

Before risky changes, inspect:

```bash
git status --short
git diff -- <affected-paths>
```

## Prohibited without explicit approval

```text
git reset --hard
git clean -fd
git checkout -- <file>
git restore --source ...
git stash drop
rm -rf
database cleanup
production migration
production deployment
package publication
image publication
```

Also obtain explicit approval for deletion, architecture changes, public API or
message contract changes, database migrations, authentication or authorization
changes, production operations, and dependency-wide upgrades.

## Deletion gate

Do not delete a file, class, method, route, API, configuration, test, or dependency because it appears unused.

Before deletion:

1. Search static references.
2. Check dependency injection, reflection, routing, configuration, scripts, CI/CD, and runtime loading.
3. Check tests and generated references.
4. List exactly what will be deleted and why.
5. Obtain explicit approval.

## Change budget

Before editing, declare expected:

```text
files changed
new files
deleted files
dependency changes
public contract changes
```

If actual scope exceeds the declared budget, stop and update the plan.

## File scope lock

Do not edit a file outside the plan. Explain and update the plan before adding it.

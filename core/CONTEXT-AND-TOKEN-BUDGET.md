# Context and Token Budget

## Progressive disclosure

Load context in rounds:

1. Entry point, core safety rules, project index, current task.
2. Task-specific rule and one technology tool file.
3. Relevant design document and target source.
4. Direct dependencies only.
5. Additional context only when a concrete unanswered question appears.

## Before opening another file

Know:

- what question the file should answer
- why the answer is required
- whether symbol search or a small range is enough
- whether the content was already loaded and unchanged

## Efficient inspection

Prefer:

- symbol and exact-text search
- changed files and affected modules
- relevant line ranges
- compiler error locations
- filtered logs
- diffs instead of rereading whole files

Before proposing or running a build command, verify the repository topology and
configured entry point. For example, confirm whether Maven has a root aggregator,
whether JavaScript uses npm, pnpm, or yarn workspaces, and whether a command must
run inside a nested project. Do not infer workspace support from directory layout
alone.

Avoid:

- scanning the entire repository without a reason
- loading all language tool files
- loading full build logs
- repeating summaries of unchanged rules
- reading generated output or dependency directories

## Context reuse

Within the same task:

- do not reread unchanged files
- do not re-summarize loaded rules
- reload only changed sections or diffs

## Log reduction

Extract:

```text
tool/module
file
line and column
error code
root message
small surrounding context
```

Do not feed thousands of unrelated log lines into the reasoning context.

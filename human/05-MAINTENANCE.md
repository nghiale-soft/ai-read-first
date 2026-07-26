# Maintenance

When updating this repository:

- keep `README.md` short
- keep `START-HERE.md` as the only AI entry point
- keep human documentation under `human/`
- keep technology-neutral rules under `core/`
- keep stack-specific commands under `tools/`
- keep optional and mandatory quality capabilities separate
- do not add project-specific facts
- avoid duplicating the same rule in several files
- keep links relative
- avoid absolute local paths
- ensure examples are clearly examples, not universal commands

## Before publishing

### Structure

- `README.md` explains the kit to developers.
- `START-HERE.md` remains the only canonical AI entry point.
- Core rules remain technology-neutral.
- Technology instructions stay in separate tool files.
- Project-specific content is not added to this repository.

### Behavior

- Safety takes priority over task completion.
- AI loads only task-relevant files.
- Existing code is searched before new code is generated.
- Deletion and destructive operations require explicit approval.
- Business-code changes require business verification.
- Documentation-only work uses factual documentation verification.
- CVE and Sonar initialization remain optional.
- Commands are examples unless repository configuration confirms them.

### Quality

- Relative links and referenced paths are valid.
- No local absolute paths are committed.
- Duplicated rule definitions have not drifted.
- Templates contain no invented project facts.
- New technology guides include concrete commands and selection rules.
- Status claims include evidence or are explicitly marked unverified.

# Maintainer Checklist

Use this when publishing or updating `ai-read-first`.

## Structure

- `README.md` explains the kit to developers.
- `START-HERE.md` is the only canonical AI entry point.
- Core rules remain technology-neutral.
- Technology instructions stay in separate tool files.
- Project-specific content is not added to this repository.

## Behavior

- Safety takes priority over task completion.
- AI loads only task-relevant files.
- Existing code is searched before new code is generated.
- Deletion and destructive operations require explicit approval.
- Business verification remains mandatory.
- CVE and Sonar initialization remain optional.
- Commands are examples unless the repository config confirms them.

## Quality

- Links are relative and valid.
- No local absolute paths are committed.
- No duplicated rule definitions drift across files.
- Templates contain no invented project facts.
- New technology guides are added only when they provide concrete commands and selection rules.

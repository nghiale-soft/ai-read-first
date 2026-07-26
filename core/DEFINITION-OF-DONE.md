# Definition of Done

A task is done only when applicable checks pass.

## Analysis

- Scope and acceptance criteria are understood.
- Existing implementation was inspected.
- Contract, data, security, and compatibility risks were assessed.

## Implementation

- Diff is minimal and within scope.
- No invented behavior or placeholder disguised as completion.
- No secret or sensitive data was introduced.
- Resources and error paths are handled.

## Verification

- Changed files were formatted using project tooling.
- Affected scope was linted, parsed, compiled, or type-checked.
- Relevant unit/integration tests ran.
- Mandatory business verification ran.
- Diff and git status were reviewed.

## Delivery

- Relevant documentation was updated.
- No temporary files or unexpected artifacts remain.
- Unverified items and remaining risks are reported.

## Documentation-only work

When the deliverable is documentation rather than business code:

- claims were checked against relevant source, configuration, tests, or accepted decisions
- links and referenced paths were checked
- status claims include evidence or are explicitly marked unverified
- assumptions and unresolved conflicts are visible
- business E2E is not required unless the document is an executable specification or release gate

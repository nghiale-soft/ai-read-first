# Usage

## Existing project

1. Add `ai-read-first` under `docs/`.
2. Create or retain `docs/project/`.
3. Detect and record the project's primary documentation language.
4. Add a project index and project profile.
5. Assign artifact ownership by project role.
6. Point the AI tool to `START-HERE.md`.
7. Keep project-specific facts outside `ai-read-first`.

## New project without project documentation

AI enters Project Bootstrap Mode and:

1. inspects high-signal repository files
2. detects language, framework, build, tests, and CI
3. detects the primary documentation language independently from programming languages
4. proposes artifact-oriented `docs/project/`
5. assigns PM, PO, BA, SA, Tech Lead, Design, Tester, QA, and Dev ownership
6. populates only verifiable facts
7. marks unknown business information for confirmation
8. defines traceability and mandatory business verification
9. offers optional CVE and Sonar initialization

## Expected AI behavior

Before coding, AI should report:

- task type
- rules loaded
- tool guide loaded
- project documents loaded
- expected change scope
- planned verification
- unknowns

After coding, AI should report:

- files changed
- behavior changed
- commands run
- business verification
- results
- unverified items
- remaining risks

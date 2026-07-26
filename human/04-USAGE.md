# Usage

## Existing project

1. Add `ai-read-first` under `docs/`.
2. Create or retain `docs/project/`.
3. Add a project index and project profile.
4. Point the AI tool to `START-HERE.md`.
5. Keep project-specific facts outside `ai-read-first`.

## New project without project documentation

AI enters Project Bootstrap Mode and:

1. inspects high-signal repository files
2. detects language, framework, build, tests, and CI
3. proposes `docs/project/`
4. populates only verifiable facts
5. marks unknown business information for confirmation
6. defines mandatory business verification
7. offers optional CVE and Sonar initialization

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

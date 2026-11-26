# Mandatory AI entry point

Read this file first. Load only the rules and project context needed for the task.

## Always read

- [Core rules](core/CORE-RULES.md)
- [Change and deletion safety](core/CHANGE-AND-DELETION-SAFETY.md)
- [Context budget](core/CONTEXT-AND-TOKEN-BUDGET.md)
- [Git collaboration](core/GIT-COLLABORATION.md)

## Project context

Start with `docs/project/PROJECT-INDEX.md` and `docs/project/project-profile.yaml`.
Then read the selected project rules, `docs/project/planning/current-task.md`
if present, relevant artifacts, and finally the affected source and direct dependencies.
If the project docs are missing or incomplete, follow [Project Bootstrap](core/PROJECT-BOOTSTRAP.md).

## Route by task

| When | Read |
|---|---|
| Documentation, implementation, technical analysis, or release | [Engineering standards](core/ENGINEERING-STANDARDS.md) |
| Security, architecture/refactoring, API, database, messaging, or trust boundaries | [Security baseline](core/SECURITY-BASELINE.md) |
| Code, build, test, runtime, or technical behavior | [Tool selector](tools/TOOL-SELECTOR.md), then the matching stack guide |
| Testing or tooling bootstrap | [Quality guide](quality/README.md), then applicable guides |
| Delivering a change | [Verification workflow](core/VERIFICATION-WORKFLOW.md) and [Definition of Done](core/DEFINITION-OF-DONE.md) |

If the task cannot be classified safely, ask using the core rules.

## Execute and report

Before editing, summarize the task, relevant rules and evidence inspected,
change budget, planned verification, and unknowns. Check the approval gates.
Search for reuse, make the smallest scoped change, verify, then review the diff.
Report files and behavior changed, checks run and their results, skipped checks,
remaining risks, and Git handoff when applicable.

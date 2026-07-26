# MANDATORY AI ENTRY POINT

This is the only default entry point for AI agents.

Do not recursively read this repository.
Do not load `README.md`, `human/`, `integrations/`, or `templates/`
unless the current task explicitly requires them.

Load only files selected by this document.

---

## 1. Determine project state

Check whether this folder exists:

```text
docs/project/
```

### Existing project documentation

If it exists:

1. Read `docs/project/PROJECT-INDEX.md`.
2. Read `docs/project/project-profile.yaml`.
3. Load only project files selected by the index and current task.

### Missing or incomplete project documentation

If it does not exist, or required files are missing:

1. Read [`bootstrap/PROJECT-BOOTSTRAP.md`](./bootstrap/PROJECT-BOOTSTRAP.md).
2. Read [`bootstrap/PROJECT-DOCUMENTATION-STANDARDS.md`](./bootstrap/PROJECT-DOCUMENTATION-STANDARDS.md).
3. Inspect existing README, manifests, build files, CI files, source layout, tests, and maintained project documentation.
4. Determine the project's primary documentation language from evidence.
5. Propose the artifact-oriented project documentation structure and role ownership.
6. Create only factual skeletons or content supported by repository evidence.
7. Mark unknown business information as `TBD — user confirmation required`.
8. Do not invent product intent, requirements, architecture, design, data contracts, or security behavior.

---

## 2. Always load these rules

Read:

1. [`core/CORE-RULES.md`](./core/CORE-RULES.md)
2. [`core/CHANGE-AND-DELETION-SAFETY.md`](./core/CHANGE-AND-DELETION-SAFETY.md)
3. [`core/CONTEXT-AND-TOKEN-BUDGET.md`](./core/CONTEXT-AND-TOKEN-BUDGET.md)

---

## 3. Classify the task

Choose one or more:

- Question / analysis
- Documentation
- Bug fix
- New feature
- Refactor
- Architecture
- API or contract change
- Database change
- Async or messaging
- Security
- Performance
- Release
- Project bootstrap
- Tooling bootstrap

If the task cannot be classified safely, stop and ask.

---

## 4. Load task-specific rules

| Task | Additional files |
|---|---|
| Question / analysis | `core/ENGINEERING-STANDARDS.md` when technical behavior is discussed |
| Documentation | `core/ENGINEERING-STANDARDS.md` |
| Bug fix | Engineering, tool selector, verification, DoD |
| New feature | Engineering, verification, DoD; security when a trust boundary is affected |
| Refactor / architecture | Engineering, security, verification, DoD, versioning |
| API / database / messaging | Engineering, security, verification, DoD, versioning |
| Security | Security, verification, DoD |
| Performance | Engineering, verification, DoD |
| Release | Versioning, verification, DoD |
| Project bootstrap | Bootstrap rules and tooling capability rules |
| Tooling bootstrap | Tool selector and quality capability rules |

Core files:

```text
core/
├── CORE-RULES.md
├── CHANGE-AND-DELETION-SAFETY.md
├── CONTEXT-AND-TOKEN-BUDGET.md
├── ENGINEERING-STANDARDS.md
├── SECURITY-BASELINE.md
├── DEFINITION-OF-DONE.md
├── VERSIONING-STANDARDS.md
└── VERIFICATION-WORKFLOW.md
```

---

## 5. Select technology tools

For code, build, test, runtime, or technical-behavior work, read
[`tools/TOOL-SELECTOR.md`](./tools/TOOL-SELECTOR.md).

Then load only the file for the detected stack, for example:

```text
tools/frontend/JS-TS-JSX.md
tools/backend/JAVA-SPRING.md
tools/backend/PYTHON.md
tools/backend/RUBY.md
tools/backend/GO.md
```

Do not load unrelated tool files.

For planning or documentation-only work that does not discuss or change technical
behavior, skip technology tool files.

---

## 6. Load project context

Read in this order:

1. `docs/project/PROJECT-INDEX.md`
2. Project rules selected by the index
3. `docs/project/planning/current-task.md`
4. Relevant product, requirements, UX, architecture, engineering, testing, and quality documents
5. Relevant source files and direct dependencies

Do not read the entire project documentation tree by default.

---

## 7. Before implementation

Report briefly:

```text
Task type:
Core rules loaded:
Tool rules loaded:
Project files loaded:
Source files inspected:
Expected files changed:
Expected new files:
Expected deleted files:
Dependency changes expected:
Verification planned:
Unknowns:
```

High-risk changes require explicit confirmation:

- deletion
- architecture
- public API or message contract
- database migration
- authentication or authorization
- destructive command
- production operation
- dependency-wide upgrade

---

## 8. Execution order

```text
Understand
  ↓
Reuse search
  ↓
Plan
  ↓
Edit minimal scope
  ↓
Format changed files
  ↓
Lint / parse / compile affected scope
  ↓
Run business verification
  ↓
Run broader tests when required
  ↓
Review diff and report facts
```

Business verification is mandatory for business-code changes. It must be either:

- E2E for a user-visible or cross-component workflow, or
- an executable domain workflow test that proves the affected business behavior.

Documentation-only changes require factual verification against the relevant
source, configuration, tests, or authoritative project decisions instead of
business E2E.

CVE scanning and Sonar initialization are optional capabilities selected by the user or project profile.

---

## 9. Final report

Include:

```text
Files changed:
Behavior changed:
Tools run:
Business verification:
Results:
Not run:
Remaining risks:
```

Never claim success for a command that was not executed.

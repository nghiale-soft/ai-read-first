# Mandatory Business Verification

Business-code changes must have an executable proof that the affected workflow works.

## Selection

Choose the closest meaningful boundary:

- browser/desktop/mobile E2E
- API/service workflow
- messaging workflow
- file-processing workflow
- CLI/domain workflow

## Required properties

The verification must:

- execute the affected business behavior
- assert a meaningful result, state transition, or persisted outcome
- include important failure behavior when applicable
- avoid mocking away the boundary that caused the risk
- be repeatable in local or CI test environments

## Bootstrap rule

If no suitable framework exists:

1. Identify the lightest tool compatible with the project.
2. Propose dependency and CI changes.
3. Obtain approval when a new dependency or infrastructure is required.
4. Create at least one critical-path verification for the current feature.

Do not mark a business feature complete with only syntax, compile, or isolated utility tests.

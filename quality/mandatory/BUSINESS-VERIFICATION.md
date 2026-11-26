# Mandatory Business Verification

Business-code changes must have an executable proof that the affected workflow works.

## Selection

Choose the closest meaningful boundary:

- browser/desktop/mobile E2E
- API/service workflow
- messaging workflow
- file-processing workflow
- CLI/domain workflow

Use E2E when practical for user-visible, cross-component, upload/download,
authentication, transaction, or critical API workflows. Otherwise, use an
executable workflow test across the affected boundaries. An isolated unit test
is insufficient for cross-layer changes unless the project index explains why.

## Required properties

The verification must:

- execute the affected business behavior
- assert a meaningful result, state transition, or persisted outcome
- include important failure behavior when applicable
- avoid mocking away the boundary that caused the risk
- be repeatable in local or CI test environments
- report [the evidence environment](../../core/VERIFICATION-WORKFLOW.md#evidence-classification)

When content quality is part of the requirement, also assert meaningful
properties such as non-empty values, expected cardinality, uniqueness,
referential consistency, or minimum completeness. Do not use fake fallback data
to hide a missing integration or infrastructure failure.

## Bootstrap rule

If no suitable framework exists:

1. Identify the lightest tool compatible with the project.
2. Propose dependency and CI changes.
3. Obtain approval when a new dependency or infrastructure is required.
4. Create at least one critical-path verification for the current feature.

Do not mark a business feature complete with only syntax, compile, or isolated utility tests.

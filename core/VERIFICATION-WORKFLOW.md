# Verification Workflow

## Deterministic tools first

Use this order:

```text
formatter on changed files
  ↓
linter auto-fix on changed files
  ↓
parser / compiler / type checker on affected scope
  ↓
relevant unit tests
  ↓
mandatory business verification
  ↓
broader integration or full suite when risk requires
```

## Business verification is mandatory for business-code changes

For every business-code change, use one executable proof:

### E2E

Required for user-visible, cross-component, upload/download, authentication, transaction, or critical API workflows when an E2E environment is practical.

### Equivalent domain workflow test

Allowed when UI E2E is not appropriate. It must execute the affected business flow across its meaningful boundaries, not merely test an isolated utility.

Examples:

- service API → validation → persistence → response
- producer → message contract → consumer behavior
- file upload → storage → metadata → download verification
- command handler → domain state transition → persisted result

A unit test alone is insufficient for a cross-layer business change unless the project index explicitly explains why.

## Documentation-only verification

Documentation-only work does not require business E2E unless it changes an
executable specification or release gate. Verify it by:

- checking links and referenced paths
- comparing claims with relevant source, configuration, tests, or accepted ADRs
- marking unknown or unexecuted status as unverified
- reviewing the rendered structure when formatting or navigation changed

Report the facts verified, assumptions, unknowns, and sources inspected.

## Scope expansion

Start with affected files/modules. Run the full suite before release, high-risk merge, or when impact cannot be bounded.

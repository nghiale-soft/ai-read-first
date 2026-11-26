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

## Business-code changes

Follow [Mandatory Business Verification](../quality/mandatory/BUSINESS-VERIFICATION.md).

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

## Evidence classification

Report the environment and boundary actually verified: mock/fixture, local real
service, test database, staging, or production read-only observation. Do not
describe mock-backed results as real integration or production verification.

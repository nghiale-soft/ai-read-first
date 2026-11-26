# Engineering Standards

## Reuse and cohesion

Reuse code only when meaning, lifecycle, ownership, and failure behavior match. Do not create a shared abstraction solely because two code fragments look similar.

## Single source of truth

- Keep shared configuration, URLs, limits, status definitions, labels, and
  localization keys in the project's authoritative source.
- Do not duplicate mutable business constants across application layers or tests.
- When changing a shared key or contract, search all consumers and update or
  explicitly preserve them.

## Impact analysis

When one defect may come from shared logic or a repeated data pattern:

1. Find all call sites, consumers, and affected data shapes.
2. Define the bounded impact set using repository and runtime evidence.
3. Fix the shared cause when safe; do not patch only the reported example.
4. Add regression coverage for the affected class of behavior.

Do not scan or mutate an entire production dataset unless scope, authorization,
and operational safety justify it.

## Behavior preservation

For bug fixes and refactors:

- identify existing behavior
- change only requested behavior
- preserve compatibility unless explicitly approved
- add regression coverage where practical

## Contract protection

Public APIs, shared DTOs, database schemas, events, message schemas, permissions, and external file formats are high-risk contracts.

Evaluate:

- consumers
- backward compatibility
- migration
- rollback
- versioning
- contract tests

## Contract-first gate

Before implementing or materially changing a public API, database schema, event,
message, or external file format, establish enough of the contract to implement
without inventing behavior. Resolve, as applicable:

- request, response, validation, and stable error semantics
- authorization and trust boundaries
- compatibility and migration
- idempotency, retry, and concurrency
- partial failure and rollback or compensation
- operational limits and timeouts

If an unresolved choice would materially change consumers, stored data, security,
or failure behavior, stop and request a decision.

## Batch operation semantics

For batch APIs and bulk workflows, define:

- maximum item count and payload or resource limits
- atomic versus partial-success behavior
- a stable per-item success or error result
- duplicate handling and idempotent retry behavior
- response ordering and correlation with input
- timeout, cancellation, and cleanup behavior
- concurrency control when items target the same resource

Do not silently omit failed items from a batch response unless the accepted
contract explicitly requires it.

## Resource safety

Manage lifecycle of streams, files, connections, HTTP responses, threads, executors, and listeners. Stream or chunk large data where feasible.

Long-running commands and jobs must have observable progress, a timeout or
review interval appropriate to the project, and a cancellation/cleanup path. If
progress stops, inspect logs and the process state before retrying or changing
the implementation. Do not impose one universal time limit on every toolchain.

## Async and transaction behavior

Define:

- transaction boundary
- retry and idempotency
- duplicate handling
- ordering
- timeout
- partial failure
- compensation or rollback

## Error handling and logging

- Do not swallow exceptions.
- Do not log credentials, tokens, secrets, or sensitive payloads.
- Preserve useful error context.
- Avoid logging large binary or document bodies.

## Versioning

Use project-defined versioning. When Semantic Versioning applies, use
`MAJOR.MINOR.PATCH`: major for breaking changes, minor for backward-compatible
features, and patch for backward-compatible fixes.

Do not silently change the meaning of an existing API, field, event, or stored
document. A release records its version or tag, behavior changes, migrations,
breaking changes, and rollback considerations.

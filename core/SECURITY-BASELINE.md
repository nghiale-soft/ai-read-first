# Security Baseline

- Never hardcode secrets, credentials, tokens, or private keys.
- Never place plaintext credentials in agent rules, skills, documentation,
  examples, source control, or chat output. Use environment injection, an
  approved secret manager, or key-based authentication.
- Validate inputs at trust boundaries.
- Enforce authorization on the server.
- Treat missing or unknown permission as deny.
- Protect against injection, path traversal, unsafe upload, and unbounded payload size.
- Do not weaken security configuration to make tests pass.
- Do not scan or attack production endpoints without explicit authorization.
- Do not automatically upgrade many dependencies in response to a CVE.
- Do not log authorization headers or sensitive document content.

For multi-user or multi-tenant systems:

- Bind persisted and cached data to an explicit owner or tenant scope.
- Enforce object authorization on the server; do not trust client-side filters.
- Clear account-scoped local state, tokens, and sensitive caches on logout.
- Verify isolation with an Account A → logout → Account B workflow, including
  direct-object access attempts where applicable.

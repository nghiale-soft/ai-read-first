# Security Baseline

- Never hardcode secrets, credentials, tokens, or private keys.
- Validate inputs at trust boundaries.
- Enforce authorization on the server.
- Treat missing or unknown permission as deny.
- Protect against injection, path traversal, unsafe upload, and unbounded payload size.
- Do not weaken security configuration to make tests pass.
- Do not scan or attack production endpoints without explicit authorization.
- Do not automatically upgrade many dependencies in response to a CVE.
- Do not log authorization headers or sensitive document content.

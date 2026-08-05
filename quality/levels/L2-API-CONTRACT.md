# L2 — API / Contract Tests

Verify the real HTTP boundary of a backend service:
request → validation/security → service/domain → persistence or external adapter → response/state.
Language-agnostic: the Postman collection pattern below applies to any backend.

## Postman collection pattern (the executable contract)

1. **Environments** — one per stage (local/dev/uat/prod): base URL, credentials, tokens.
   Never hardcode secrets in the collection; reference `{{var}}` and inject from CI secrets.
2. **Request chaining** — an auth/login request stores its token into an environment
   variable; later requests consume it. Order inside a collection is explicit.
3. **Test scripts** — assert status code, response schema, business rules, persisted state.
4. **Runner** — Newman (CLI) in CI with html reporter. Bruno / Karate / REST Assured are
   equivalent where the team already uses them.

## Minimum assertions per endpoint

- HTTP status + content-type
- Response schema: required fields and types
- Business invariant (e.g. created resource is fetchable; delete → read returns 404)
- Error contract: validation 400, auth 401, permission 403 — with deterministic messages
- Authorization: the same request with wrong/absent token is rejected

## CI integration

- Run a fast subset on every PR; full suite nightly or on merge to main.
- Fail the build when a contract changes without the collection being updated.
- Keep collections versioned next to the code that serves the API.

## Do NOT

- Point tests at a live production environment.
- Rely on state left behind by previous runs — tests must be repeatable and idempotent.
- Skip the authorization-negative cases (they are where access-control regressions hide).

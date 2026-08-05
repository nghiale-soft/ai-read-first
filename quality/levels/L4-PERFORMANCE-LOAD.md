# L4 — Performance / Load Tests

Verify the system under expected and peak load. Stack-agnostic.

## Tooling

- **k6** — scriptable, CI-friendly, recommended default
- JMeter / Gatling — valid alternatives when the project already uses them

## Minimum coverage

- **Smoke** — 1 virtual user, happy path: validates the setup works before spending time.
- **Load** — expected concurrency sustained for a defined duration: assert thresholds below.
- **Soak** (optional) — extended run to catch leaks (memory, connections, disk).
- **Spike** (optional) — sudden burst: measure recovery time back to baseline.

## Pass/fail thresholds (define explicitly)

- Latency: p95, p99 per endpoint class
- Error rate: < 1% (or stricter for critical paths)
- Throughput: minimum req/s
- Soak: no monotonic memory growth

## CI integration

- Smoke + short load on every merge to main.
- Full load/soak on schedule or before a release; store results as evidence.
- Gate the release on threshold pass, not on "it did not crash".

## Do NOT

- Run load tests against production without explicit approval.
- Share one dataset across concurrent test runs — generate per-run data to avoid
  write conflicts that fake throughput problems.

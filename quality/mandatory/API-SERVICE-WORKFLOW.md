# API and Service Workflow Verification

Execute the real application boundary as far as practical:

```text
request
→ validation/security
→ service/domain
→ persistence or external adapter
→ response/state assertion
```

Suitable tools include Spring Boot integration tests, REST Assured, Testcontainers, Newman/Bruno CLI, Karate, pytest integration tests, Rails request specs, and platform equivalents.

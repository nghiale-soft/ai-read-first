# Messaging Workflow Verification

Verify:

```text
producer
→ serialized contract
→ broker or realistic test transport
→ consumer
→ business side effect
```

Assert contract fields, duplicate behavior, retry/idempotency, ordering assumptions, and failure handling when relevant.

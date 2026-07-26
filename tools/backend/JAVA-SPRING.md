# Java and Spring

## Fast repair order

Prefer wrapper commands.

Maven examples:

```bash
./mvnw spotless:apply
./mvnw -pl <affected-module> -am compile
./mvnw -pl <affected-module> -am test
```

Gradle examples:

```bash
./gradlew spotlessApply
./gradlew :<module>:compileJava
./gradlew :<module>:test
```

Only call Spotless or another formatter when configured.

## Spring-specific checks

Based on the change, verify:

- application context and bean creation
- configuration properties binding
- dependency injection ambiguity
- security filter behavior
- transaction boundaries
- repository/query correctness
- Flyway or Liquibase validation
- Kafka producer/consumer contract and error handling

## Business verification

Use Spring Boot integration tests, REST Assured, MockMvc with real application boundaries, Testcontainers, Kafka integration tests, or API E2E as appropriate.

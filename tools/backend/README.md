# Additional Backend Stacks

Use project-configured commands first. The commands below are defaults only when
the repository does not define a more specific workflow.

## .NET

```bash
dotnet format
dotnet build
dotnet test --filter <affected-tests>
```

Use `WebApplicationFactory`, API integration tests, or project E2E for business
verification.

## Go

```bash
gofmt -w <changed-files>
go vet ./<affected-package>/...
go test ./<affected-package>/...
go build ./...
```

Use `golangci-lint` only when configured. Verify the affected HTTP, RPC,
message, or domain workflow.

## PHP

Use configured PHP CS Fixer, PHPStan, PHPUnit, and HTTP/application integration
or domain workflow tests.

## Rust

```bash
cargo fmt --check
cargo clippy --all-targets --all-features
cargo check
cargo test <relevant-test>
```

Use an integration or executable domain workflow test for changed business
behavior.

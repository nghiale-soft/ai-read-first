# Tool Selector

Detect the stack from repository evidence, then load only matching tool files.

| Evidence | Load |
|---|---|
| `package.json`, `.tsx`, `.jsx` | `frontend/JS-TS-JSX.md` |
| `pom.xml`, Spring dependencies | `backend/JAVA-SPRING.md` |
| Gradle JVM build | `backend/JAVA-SPRING.md` |
| `pyproject.toml`, Python source | `backend/PYTHON.md` |
| `Gemfile`, Ruby source | `backend/RUBY.md` |
| `go.mod` | `backend/README.md` (Go section) |
| `Cargo.toml` | `backend/README.md` (Rust section) |
| `pubspec.yaml` | [Flutter](#flutter) |
| `.csproj`, `.sln` | `backend/README.md` (.NET section) |
| `composer.json` | `backend/README.md` (PHP section) |
| Dockerfile/Kubernetes/Terraform | [Containers and infrastructure](#containers-and-infrastructure) |

Rules:

1. Prefer commands and scripts already configured in the repository.
2. Detect npm, pnpm, yarn, Maven Wrapper, Gradle Wrapper, virtual environment, or equivalent.
3. Do not install a new formatter/linter when an existing one is configured.
4. Run changed-file or affected-module checks first.
5. Do not load unrelated language files.

## Flutter

Use the configured workflow or start with `dart format <changed-files>`,
`flutter analyze`, and `flutter test <relevant-tests>`. Verify business
workflows with `integration_test` or existing E2E. Build unrelated platforms
only when the impact requires it.

## Containers and infrastructure

Use configured checks for matching files, such as Hadolint for Dockerfiles,
Trivy for images/config, Checkov or tfsec for Terraform, and kube-linter or
kube-score for Kubernetes. Obtain approval before deploying, publishing images,
scanning production registries, or changing live infrastructure.

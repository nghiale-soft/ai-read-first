# Tool Selector

Detect the stack from repository evidence, then load only matching tool files.

| Evidence | Load |
|---|---|
| `package.json`, `.tsx`, `.jsx` | `frontend/JS-TS-JSX.md` |
| `pom.xml`, Spring dependencies | `backend/JAVA-SPRING.md` |
| Gradle JVM build | `backend/JAVA-SPRING.md` |
| `pyproject.toml`, Python source | `backend/PYTHON.md` |
| `Gemfile`, Ruby source | `backend/RUBY.md` |
| `go.mod` | `backend/GO.md` |
| `Cargo.toml` | `backend/RUST.md` |
| `pubspec.yaml` | `frontend/DART-FLUTTER.md` |
| `.csproj`, `.sln` | `backend/DOTNET.md` |
| `composer.json` | `backend/PHP.md` |
| Dockerfile/Kubernetes/Terraform | `platform/CONTAINER-IAC.md` |

Rules:

1. Prefer commands and scripts already configured in the repository.
2. Detect npm, pnpm, yarn, Maven Wrapper, Gradle Wrapper, virtual environment, or equivalent.
3. Do not install a new formatter/linter when an existing one is configured.
4. Run changed-file or affected-module checks first.
5. Do not load unrelated language files.

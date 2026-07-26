# Python

Use project-configured tools from `pyproject.toml`, tox, nox, or CI.

Typical order:

```bash
ruff format <changed-files>
ruff check <changed-files> --fix
python -m compileall <affected-path>
mypy <affected-path>
pytest <relevant-tests>
```

Fallback tools such as Black, isort, Flake8, or Pylint are used only when already configured.

Use API/UI integration tests or executable domain workflow tests for business verification.

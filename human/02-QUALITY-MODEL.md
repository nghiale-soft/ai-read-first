# Quality Model

## Mandatory business verification

Every business-code change requires executable verification.

Depending on the task, this may be:

- web E2E
- desktop or mobile E2E
- API/service workflow test
- messaging workflow test
- file-processing workflow test
- CLI or domain workflow test

Compilation or isolated utility tests alone do not prove a cross-layer business workflow.

## Optional capabilities

The following are optional to initialize:

- CVE/dependency scanning
- SonarQube or SonarCloud

They should be enabled only when:

- the user requests them
- the project profile enables them
- the project already uses them

AI must not silently install them or alter CI.

# Overview

`ai-read-first` is a reusable documentation kit for teams that use AI coding assistants.

Its goals are to:

- reduce unnecessary token and context usage
- reduce developer supervision effort
- prevent accidental deletion or overwriting of user code
- reduce duplicate code and unnecessary abstractions
- guide AI toward project-configured tools
- enforce small, reviewable changes
- require executable verification of business behavior
- provide a consistent workflow across repositories

This repository is documentation-first. It is not a runtime framework, autonomous coding system, CI platform, or code generator.

## Main audiences

### AI agents

AI agents start from:

```text
START-HERE.md
```

They must load only task-relevant rules, technology guides, project documents, and source files.

### Developers and maintainers

Human documentation lives in:

```text
human/
```

This separation allows detailed human documentation without adding it to the AI's normal context.

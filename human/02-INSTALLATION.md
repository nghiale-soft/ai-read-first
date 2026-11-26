# Installation

Run installation commands from the root of the project that will use
`ai-read-first`. The shared repository belongs at:

```text
<project-root>/docs/ai-read-first/
```

The recommended project layout is:

```text
docs/
├── ai-read-first/
└── project/
```

`ai-read-first` remains generic and reusable.
`project` contains repository-specific documentation.

## Git submodule

Recommended when the project repository is allowed to reference GitHub:

```bash
cd <project-root>
git submodule add https://github.com/nghiale-soft/ai-read-first.git docs/ai-read-first
git submodule update --init --recursive
```

## Git subtree

Use this when the project wants the files in its own history:

```bash
cd <project-root>
git subtree add \
  --prefix=docs/ai-read-first \
  https://github.com/nghiale-soft/ai-read-first.git \
  main --squash
```

## Direct copy

Use a separate clone when the project must not publish `ai-read-first` to its own
remote:

```bash
cd <project-root>
git clone https://github.com/nghiale-soft/ai-read-first.git docs/ai-read-first
```

Then add `docs/ai-read-first/` to the parent project's `.gitignore`. The nested
clone keeps its own Git history and can be updated or pushed independently.

Do not run `git add -A` from the parent project until the chosen installation
mode and parent Git status have been verified.

## AI tool bridge

Use a small bridge file that points directly to:

```text
docs/ai-read-first/START-HERE.md
```

Templates are available under:

```text
integrations/
```

The bridge should not duplicate the rule set.

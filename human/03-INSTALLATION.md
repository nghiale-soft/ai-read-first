# Installation

The recommended project layout is:

```text
docs/
├── ai-read-first/
└── project/
```

`ai-read-first` remains generic and reusable.
`project` contains repository-specific documentation.

## Git submodule

Example:

```bash
git submodule add <repository-url> docs/ai-read-first
git submodule update --init --recursive
```

## Git subtree

Example:

```bash
git subtree add --prefix=docs/ai-read-first <repository-url> main --squash
```

## Direct copy

Copy the repository contents into:

```text
docs/ai-read-first/
```

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

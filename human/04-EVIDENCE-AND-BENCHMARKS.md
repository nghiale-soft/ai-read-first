# Evidence and Benchmarks

This document explains what `ai-read-first` is expected to improve, what it
costs, and how the project will collect reproducible evidence.

## Current evidence status

The repository does not yet claim a measured percentage reduction in token use,
completion time, defects, or rework.

The benefits below are engineering hypotheses supported by the design of the
workflow, not controlled benchmark results. They must not be presented as proven
percentages until raw comparison data is published.

## Expected effects

`ai-read-first` is designed to reduce:

- irrelevant repository scanning
- loading unrelated technology instructions
- duplicate implementations and unnecessary abstractions
- changes outside the requested scope
- accidental damage to uncommitted or nested-repository work
- implementation before requirements or contracts are sufficiently defined
- build and test commands that do not match repository topology
- documentation claims that drift from source and executable evidence
- repeated repair caused by missing business verification

It is also designed to improve:

- traceability from objective and requirement to implementation and test
- role ownership across PM, PO, BA, SA, Tech Lead, Design, Tester, QA, and Dev
- truthful status reporting
- reproducible verification
- safe Git handoff with scoped commit suggestions

## Context cost

The framework has an up-front context cost. At the time this document was
created, the mandatory entry point and always-loaded core rules contained:

| Content | Words | Bytes |
|---|---:|---:|
| `START-HERE.md` | 740 | 5,722 |
| Three always-loaded core rule files | 1,029 | 6,860 |
| Total mandatory text | 1,769 | 12,582 |

Token count depends on the model tokenizer. Word and byte counts are repository
measurements; any token conversion is an estimate unless raw model usage is
captured.

For very small tasks, this fixed context may cost more tokens than an unguided
run. The expected benefit is primarily on medium, large, cross-component, or
high-risk tasks where avoided scanning and rework can exceed the fixed cost.

## Claims policy

Use these labels:

- **Measured** — supported by published raw run data.
- **Observed** — seen in a real task but without a controlled comparison.
- **Hypothesis** — expected from the workflow but not yet measured.
- **Unknown** — insufficient evidence.

Do not convert an observed example into a general percentage claim.

## Benchmark design

Use paired runs:

```text
Run A: same task and source, without ai-read-first or docs/project
Run B: same task and source, with ai-read-first and docs/project
```

Keep constant:

- model and model version
- reasoning setting
- initial source revision
- task prompt and acceptance criteria
- sandbox and network access
- available tools
- dependency cache and test environment where practical

Change only the documentation/rule context under evaluation.

One pair is a case study, not a general benchmark. Use multiple tasks and, when
possible, alternate run order to reduce warm-cache and ordering effects.

## Metrics

Capture for each run:

| Metric | Evidence |
|---|---|
| Input, cached, and output tokens | Raw model/API or CLI usage event |
| Wall-clock duration | Start/end timestamps |
| Files inspected | Tool event log |
| Commands executed and failures | Raw command log |
| Files changed and diff size | Git diff/stat |
| Out-of-scope changes | Review against declared scope |
| Build, test, and business verification | Command and exit status |
| Rework attempts | Edit/test cycles after first attempted solution |
| Review defects | Fixed scoring rubric |
| Final correctness | Same deterministic test and reviewer rubric |

Token saving, when token usage is available:

```text
token_saving_percent =
  (tokens_without_framework - tokens_with_framework)
  / tokens_without_framework
  * 100
```

Report negative values when the framework uses more tokens.

## Evidence record

Store each case study under:

```text
human/evidence/<case-id>/
├── README.md
├── task.md
├── environment.yaml
├── baseline/
│   ├── raw-events.jsonl
│   ├── final-answer.md
│   ├── diff.patch
│   └── verification.txt
├── guided/
│   ├── raw-events.jsonl
│   ├── final-answer.md
│   ├── diff.patch
│   └── verification.txt
└── comparison.md
```

Do not commit credentials, document content, customer data, internal URLs, or
other sensitive project information. Redaction must preserve enough structure to
audit the result.

## EDMS case studies

Future EDMS feature work can provide real-world evidence, but EDMS contains
organization-specific context. Publish only sanitized metrics, task descriptions,
diff summaries, and verification evidence approved for public release.

Current published EDMS case studies:

```text
None yet.
```

## Publication threshold

A percentage claim in the repository overview requires:

1. at least five paired tasks across more than one task category
2. raw token usage for both sides
3. the same correctness and review rubric
4. no excluded failed runs without explanation
5. median and range, not only the best result
6. links to sanitized raw evidence

Until this threshold is met, describe benefits qualitatively and link to individual
case studies as observations.

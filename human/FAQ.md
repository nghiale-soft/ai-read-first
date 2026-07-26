# FAQ

## Why keep README so short?

Git hosting platforms display it automatically, but AI agents may also open it accidentally. A short README keeps that cost low and redirects each audience correctly.

## Why separate `human/` from AI rules?

Human documentation can grow without becoming part of normal AI context.

## Why is `START-HERE.md` separate?

It is an operational bootloader. It controls task classification and selective loading.

## Why not let AI read every rule?

Most rules and technology guides are irrelevant to a given task. Recursive loading wastes tokens and increases instruction conflicts.

## Are Sonar and CVE tools mandatory?

No. They are optional capabilities selected by the user or project profile.

## Is E2E always mandatory?

Executable business verification is mandatory. UI E2E is used when appropriate; an equivalent API, messaging, file, CLI, or domain workflow test may be used for other systems.

## Does this replace developer review?

No. High-risk changes still require confirmation and human review.

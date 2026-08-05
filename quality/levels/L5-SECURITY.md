# L5 — Security Verification

Layered checks — none of them alone is sufficient. Combine static, dependency,
secrets, and (optionally) dynamic testing.

## Static (SAST)

- SonarQube/SonarCloud quality gates: no new blocker/critical findings; coverage and
  duplication thresholds per project profile.
- Language analyzers: SpotBugs, ESLint security rules, and equivalents.

## Dependency / supply chain

- CVE scan: OSV, Trivy, Snyk, GitHub Dependabot, or equivalent.
- Do not auto-upgrade many dependencies in response to a CVE — review each change
  (see `../core/SECURITY-BASELINE.md`).

## Secrets

- Secret scan in CI (gitleaks/trufflehog) and a pre-commit hook.
- Blocklist: API keys, passwords, tokens, keystores, private keys in source control.
  A keystore committed to git is only as safe as its password.

## Dynamic (DAST, optional)

- OWASP ZAP baseline against a non-production deployment.
- Focus: auth bypass, IDOR / horizontal privilege, path traversal, unsafe upload.

## Evidence

- Store scan reports as release evidence.
- Record accepted risks with an expiry date and owner.

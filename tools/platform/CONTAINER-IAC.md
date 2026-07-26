# Container and Infrastructure as Code

Use only when matching files exist.

Possible configured tools:

- Hadolint for Dockerfile
- Trivy for filesystem/image/config
- Checkov or tfsec for Terraform/IaC
- kube-linter or kube-score for Kubernetes manifests

Do not deploy, publish images, scan production registries, or modify live infrastructure without explicit approval.

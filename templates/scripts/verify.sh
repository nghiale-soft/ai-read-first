#!/usr/bin/env bash
set -euo pipefail

echo "Project-specific verification commands must be configured."
echo "Required stages:"
echo "1. format changed files"
echo "2. lint/parse/compile affected scope"
echo "3. relevant tests"
echo "4. mandatory business verification"
exit 2

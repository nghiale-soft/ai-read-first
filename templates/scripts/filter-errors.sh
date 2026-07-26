#!/usr/bin/env bash
set -euo pipefail

if [ "$#" -ne 1 ]; then
  echo "Usage: $0 <log-file>" >&2
  exit 2
fi

grep -E -i '(^|[[:space:]])(error|fatal|exception|failed|failure)([[:space:]:]|$)|\.[A-Za-z0-9]+:[0-9]+(:[0-9]+)?' "$1" \
  | tail -n 300

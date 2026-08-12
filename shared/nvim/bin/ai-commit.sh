#!/usr/bin/env bash
# Generates a single-line conventional commit message for staged changes via opencode.
set -euo pipefail

diff_file="$(mktemp)"
trap 'rm -f "$diff_file"' EXIT

git diff --cached >"$diff_file"
if [[ ! -s "$diff_file" ]]; then
  echo "No staged changes to summarize" >&2
  exit 1
fi

opencode run /commit \
  -f "$diff_file" \
  2>/dev/null |
  sed -E 's/\x1B\[[0-9;]*[mK]//g' |
  grep -v '^[[:space:]]*$' |
  head -1

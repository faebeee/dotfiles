#!/usr/bin/env bash
# Generates a single-line conventional commit message for staged changes via opencode.
set -euo pipefail

MODEL="${AI_COMMIT_MODEL:-opencode/nemotron-3-ultra-free}"

diff_file="$(mktemp)"
trap 'rm -f "$diff_file"' EXIT

git diff --cached >"$diff_file"
if [[ ! -s "$diff_file" ]]; then
  echo "No staged changes to summarize" >&2
  exit 1
fi

opencode run \
  "Write a conventional commit message (type: summary) for the staged git diff below. Use the imperative mood, no trailing period, max 72 characters, ONE line only. Output ONLY the message - no markdown, no code fences, no explanation, no surrounding quotes." \
  --model "$MODEL" \
  -f "$diff_file" \
  2>/dev/null |
  sed -E 's/\x1B\[[0-9;]*[mK]//g' |
  grep -v '^[[:space:]]*$' |
  head -1

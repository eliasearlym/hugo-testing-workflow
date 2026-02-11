#!/bin/bash
# Parse linter JSON output into a simple summary

if [ -z "$1" ]; then
  echo "Usage: parse-output.sh <linter-output.json>"
  exit 1
fi

cat "$1" | jq -r '.[] | "\(.filePath):\(.line) \(.severity) \(.message)"' 2>/dev/null || echo "Failed to parse output"

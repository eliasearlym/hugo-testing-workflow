#!/bin/bash
# Detect project type and run the appropriate linter

if [ -f "package.json" ]; then
  echo "Detected Node.js project"
  npx eslint . --format json 2>/dev/null || echo "ESLint not available"
elif [ -f "pyproject.toml" ] || [ -f "setup.py" ]; then
  echo "Detected Python project"
  ruff check . --output-format json 2>/dev/null || echo "Ruff not available"
else
  echo "Unknown project type — skipping lint"
fi

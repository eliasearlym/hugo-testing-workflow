# Review Command

Trigger a code review on the current working tree.

## Usage

```
/review [--staged] [--files path1 path2 ...]
```

## Options

- `--staged` — Only review staged changes (default: all uncommitted changes)
- `--files` — Review specific files instead of the full changeset

## Behavior

1. Collect the diff (or file contents if `--files` is used)
2. Run the linting skill to gather static analysis results
3. Pass both to the code-reviewer agent
4. Output the agent's structured feedback

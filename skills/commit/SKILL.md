---
name: commit
description: Use when the user asks to stage or commit work, prepare a commit message, amend a commit, or save an intentional repository change in Git history.
---

# Commit

## Overview

Create a reviewable commit from the intended change. Treat selecting the diff, verifying its claims, and writing its message as one operation.

## Inspect Before Staging

Read the repository instructions, `git status --short`, the relevant staged and unstaged diffs, the current branch, and recent commit messages. Separate the requested change from unrelated user work before changing the index.

If the intended behavior has not been checked recently, use `verify` before the commit. A commit may honestly record incomplete work when the user requests it, but its message must not claim more than the evidence supports.

## Commit Procedure

1. Identify the exact files or hunks that belong together.
2. Stage only those paths or hunks. Avoid broad staging in a mixed worktree.
3. Re-read `git diff --cached` and `git status --short`.
4. Derive the message from the staged diff and repository convention.
5. Commit non-interactively unless signing, hooks, or credentials require user action.
6. Report the commit hash and any remaining staged, unstaged, or untracked work.

Use the repository's message convention. When none exists, prefer a concise imperative subject that names the user-visible purpose; add a body when the reason, migration, risk, or limitation would otherwise be unclear.

## Boundaries

- Do not stage unrelated files merely to make the tree clean.
- Do not amend, bypass hooks, add authorship trailers, or rewrite history unless requested or required by established repository policy.
- Do not push or create a pull request unless the user requested that separate outcome.
- If generated files are required, regenerate and inspect them before staging.

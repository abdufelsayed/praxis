---
name: commit
description: Use before running `git commit`, writing commit messages, saving completed work, preparing conventional commits, or committing changes linked to issues, plans, or PRs.
---

# Commit

Create a clean commit.

## Required Reads

Load `praxis:verify` before committing when the commit claims working behavior. Load `praxis:worktree` first when committing from an isolated worktree.

## Flow

1. Inspect `git status` and the diff.
2. Confirm the current branch/worktree is the intended one.
3. Include only intended changes.
4. Run or cite relevant verification.
5. Write a concise conventional message when the repo uses that style.
6. Reference issues when useful.

Never commit unrelated user work. If the worktree is dirty with unrelated changes, leave them unstaged.

## Next Skills

Load `praxis:pr` when repo convention or the user expects branch review after the commit.

---
name: commit
description: Use before staging changes, writing a commit message, or running git commit so one intentional change is recorded without absorbing unrelated work.
---

# Commit

Inspect the branch, worktree, `git status --short`, staged and unstaged diffs, untracked files, repository instructions, and recent commit convention. Identify the requested change and keep unrelated user work unstaged.

Run or cite verification appropriate to the behavior the commit will claim. Stage only intended files or hunks, then re-read `git diff --cached` and status before committing. Do not default to broad staging in a mixed worktree.

Write the message from the staged diff. Follow the repository convention; when none exists, use the concise Conventional Commit guidance in [references/message-conventions.md](references/message-conventions.md). Explain motivation, user-visible behavior, risk, migration, or “no behavior change” only when that context improves review.

When repository policy requires agent attribution, follow its existing co-author convention. If attribution is required but its identity or email is unknown, ask before committing; never leave placeholders in a real message.

Run `git commit` non-interactively unless signing, hooks, credentials, or user judgment require interaction. Report the commit hash and remaining staged, unstaged, or untracked work.

Do not amend, bypass hooks, rewrite history, push, create a PR, or include unrelated or unreviewed generated output unless the user explicitly requested that outcome.

---
name: commit
description: Use before staging changes, writing a commit message, or running git commit so one intentional change is recorded without absorbing unrelated work.
---

# Commit

Inspect the branch, worktree, `git status --short`, staged and unstaged diffs, untracked files, repository instructions, and recent commit convention. Identify the requested change and keep unrelated user work unstaged.

Run or cite verification appropriate to the behavior the commit will claim. Stage only intended files or hunks, then re-read `git diff --cached` and status before committing. Do not default to broad staging in a mixed worktree.

Write the message from the staged diff and follow the repository convention. When none exists, use:

```text
<type>(<optional scope>): <imperative subject>

<why the change exists and material behavior or risk>

<issue, breaking-change, or attribution footers>
```

Use `feat`, `fix`, `refactor`, `perf`, `docs`, `test`, `build`, `ci`, or `chore` as appropriate. Keep the subject scannable and omit the trailing period. Use a body only when motivation, behavior, migration, or risk is not obvious from the diff. Use `Fixes` only when integration should close an issue and `Refs` for context. Put breaking-change and issue footers before the co-author footer. Use real message paragraphs, never literal `\n` escapes.

When an agent materially writes committed code, documentation, tests, or migrations, include one `Co-Authored-By` footer unless the user or repository forbids it. Identify the actual agent application and model, following an existing bot email or repository convention:

```text
Co-Authored-By: Codex GPT-5.6 Sol <configured-ai-author-email>
```

If the email is unknown, ask once before the first attributed commit in that repository. Never leave a placeholder in a real message. This footer is the only AI indicator; do not add generated-by text, prompt links, model metadata, or tool traces unless repository policy requires them.

Run `git commit` non-interactively unless signing, hooks, credentials, or user judgment require interaction. Report the commit hash and remaining staged, unstaged, or untracked work.

Do not amend, bypass hooks, rewrite history, push, create a PR, or include unrelated or unreviewed generated output unless the user explicitly requested that outcome.

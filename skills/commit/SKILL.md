---
name: commit
description: Use before staging or committing changes so one intentional change is recorded without absorbing unrelated work.
---

# Commit

Inspect the branch, worktree, `git status --short`, staged and unstaged diffs, untracked files, repository instructions, and recent commit convention. Identify the requested change and keep unrelated user work unstaged.

Run or cite verification appropriate to the behavior the commit will claim. Stage only intended files or hunks, then re-read `git diff --cached` and status before committing. Do not default to broad staging in a mixed worktree.

Write the message from the staged diff and follow the repository convention. When none exists, use:

```text
<type>(<optional scope>): <imperative subject>

<why the change exists and material behavior or risk>

<issue or breaking-change footers>
```

Use `feat`, `fix`, `refactor`, `perf`, `docs`, `test`, `build`, `ci`, or `chore` as appropriate. Keep the subject scannable and omit the trailing period. Use a body only when motivation, behavior, migration, or risk is not obvious from the diff. Use `Fixes` only when integration should close an issue and `Refs` for context. Use real message paragraphs, never literal `\n` escapes.

Do not add `Co-Authored-By` or any other AI-attribution footer, generated-by text, prompt links, model metadata, or tool traces to commit messages. Attribution is added only when the user explicitly requests it for that repository.

Run `git commit` non-interactively unless signing, hooks, credentials, or user judgment require interaction. Report the commit hash and remaining staged, unstaged, or untracked work.

Do not amend, bypass hooks, rewrite history, push, create a PR, or include unrelated or unreviewed generated output unless the user explicitly requested that outcome.

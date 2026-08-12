---
name: commit
description: Use for every request to commit changes or draft a commit message. Creates Sentry-style conventional commits with issue references.
---

# Sentry Commit Messages

## Before Committing

Inspect the branch and repository state:

```bash
git branch --show-current
git status --short
git diff
git diff --cached
```

For a message-only request, inspect the relevant diff and return the proposed
message without staging, creating a branch, or committing.

If the branch is `main` or `master`, create a feature branch unless the user
explicitly requested a direct commit. Re-check the branch and stop if it is
still `main` or `master`.

Commit one coherent, independently reviewable change at a time. Preserve
unrelated staged, unstaged, and untracked work. If unrelated staged content
would enter the commit, stop and report the conflict instead of altering it.

## Message Rules

Use:

```text
<type>(<scope>): <subject>

<optional body>

<optional footer>
```

- Scope is optional. Add `!` before `:` for a breaking change.
- Write the subject in imperative, present tense; capitalize it, omit the
  trailing period, and keep it at 70 characters or fewer.
- Keep every line under 100 characters.
- Use the body only when useful. Explain what changed and why, including
  previous behavior or motivation when it helps.
- Never include customer or organization names, user emails, support ticket
  contents, secrets, or PII. Describe the technical symptom instead.

Allowed types: `feat`, `fix`, `ref`, `perf`, `docs`, `test`, `build`, `ci`,
`chore`, `style`, `meta`, `license`, and `revert`.

Use `ref` for refactoring without behavior changes, `style` for formatting
without logic changes, and `meta` for repository metadata.

## Footers

- `Fixes <issue>` closes an issue when merged.
- `Refs <issue>` links an issue without closing it.
- For breaking changes, add `BREAKING CHANGE: <impact>`.

Use issue footers only for identifiers verified from the request or repository.

## Creating the Commit

Stage only the intended paths or hunks, then re-read `git diff --cached` and
`git status --short`. Run relevant checks before committing.

Use separate `-m` arguments for paragraphs and footers. Never put literal
`\n` sequences in a commit message or open an interactive editor.

```bash
git commit -m "fix(api): Handle null response in user endpoint" \
  -m "Return 404 when the user API finds a deleted account." \
  -m "Fixes SENTRY-5678"
```

Run normal hooks and never bypass them without an explicit request for that
exact exception. If a hook changes the snapshot, inspect the staged diff and
rerun affected checks before retrying.

After success, inspect the resulting commit and `git status --short`. Report
the commit hash, subject, checks, and remaining work. Do not amend, rewrite
history, push, or create a PR unless the user separately requests it.

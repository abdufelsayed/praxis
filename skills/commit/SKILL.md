---
name: commit
description: Draft or create a coherent Git commit with a concise conventional message. Use when the requester asks for a commit or commit message.
---

# Commit

Inspect the branch, working tree, staged diff, and relevant unstaged diff before
writing the message. A message-only request authorizes no Git mutation.

## Write the message

Use:

```text
<type>(<optional scope>): <subject>

<optional body>

<optional footer>
```

Choose from `feat`, `fix`, `refactor`, `perf`, `docs`, `test`, `build`,
`ci`, `chore`, and `revert`.

- Write an imperative, capitalized subject with no trailing period; keep it at
  70 characters or fewer.
- Add `!` before `:` only for a breaking external contract.
- Use the body when the reason, previous behavior, or non-obvious effect helps a
  future reader. Write paragraphs, not a file list.
- Keep lines under 100 characters.
- Use `Fixes <issue>` to close a verified issue, `Refs <issue>` to link one, and
  `BREAKING CHANGE: <impact>` when applicable.
- Describe technical behavior without secrets, PII, customer names, or private
  ticket contents.

## Create the commit

Create the commit only when explicitly asked. Stage only the intended paths or
hunks, preserving unrelated staged, unstaged, and untracked work. Stop if
unrelated staged content would enter the commit.

Run checks appropriate to the change, then reread `git diff --cached` and
`git status --short`. Pass each message paragraph with a separate `git commit
-m` argument so the commit contains real newlines. Run normal hooks.

After success, inspect the commit and worktree. Report the hash, subject, checks,
and remaining work. Amending, rewriting history, pushing, and creating a PR each
require separate authorization.

---
name: safety
description: Use before destructive, irreversible, broad, cross-project, data-affecting, permission-changing, force-push, reset, checkout overwrite, worktree removal, migration, secret, production, or mass rewrite operations.
---

# Safety

Pause before hard-to-undo actions.

## Protected Actions

- deleting files outside known generated directories;
- force push, history rewrite, hard reset, checkout overwrite;
- force-removing a dirty or unmerged worktree;
- database migrations or destructive SQL;
- production writes;
- recursive permission/ownership changes;
- broad generated rewrites;
- touching data outside the intended workspace.

## Gate

State the target, why it is needed, how unrelated work is protected, and rollback options. For worktrees, inspect `git worktree list` and `git status --short` in the target first. Ask before irreversible or cross-project actions.

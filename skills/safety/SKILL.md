---
name: safety
description: Use before destructive, irreversible, broad, cross-project, data-affecting, permission-changing, force-push, reset, checkout overwrite, worktree removal, migration, secret, production, or mass rewrite operations.
---

# Safety

Pause before hard-to-undo actions.

## Required Reads

Load the domain skill for the action first, such as `praxis:worktree`, `praxis:commit`, `praxis:pr`, or `praxis:execute`. Use safety as the gate before the risky step, not as a substitute for understanding the task.

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

## Output

- action being gated;
- risk and blast radius;
- safer alternative or rollback path;
- approval needed, approved, or blocked.

## Transition

```text
output: safety decision or safer path
state: approved | blocked | safer-path
next: original domain skill | discuss | stop
evidence: target path, git state, backup, rollback plan, or user approval
```

## Next Skills

Return to the original domain skill after the user approves or a safer path is chosen.

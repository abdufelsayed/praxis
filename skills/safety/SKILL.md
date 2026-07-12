---
name: safety
description: Use immediately before destructive, irreversible, production, data-affecting, permission-changing, force, secret-handling, cross-project, or broad rewrite operations.
---

# Safety

## Overview

Pause at the last responsible moment before the risky mutation. Make the target, loss, blast radius, approval, and recovery path explicit without adding ceremony to ordinary edits.

## The Check

1. Name the exact target and command or mutation.
2. Explain why it is needed and what could be lost, exposed, or disrupted.
3. Inspect current state, ownership, dependencies, and unrelated work.
4. Bound the blast radius: identify what is included and how everything else is excluded.
5. Prefer a reversible alternative and state the rollback or recovery path.
6. Confirm the user approved this exact scope. Earlier approval is sufficient when it clearly covers the same operation and nothing material changed.
7. Execute narrowly and verify the resulting state.

Always perform this check before force pushes, history rewrites, hard resets, checkout overwrites, removal of dirty or unmerged worktrees, destructive migrations or SQL, production writes, secret exposure, recursive permission changes, and mass deletion outside known generated output.

## Stop Conditions

Stop when:

- the target or owner is ambiguous;
- unrelated work cannot be protected;
- rollback is impossible and the exact loss was not approved;
- credentials or authority are missing;
- evidence changed since approval;
- the command expands beyond the agreed scope.

Ask for the smallest missing decision. Do not request generic confirmation when the user already approved a precise reversible operation.

## Example

Weak: “This is destructive. Are you sure?”

Useful: “`git branch -D feat/cache` will delete two commits not reachable from another local branch. The linked worktree is clean, and commit `abc1234` is pushed to `origin/feat/cache`, so recovery is possible. You approved deleting that branch and worktree; I’ll remove only those two targets, then verify `git worktree list` and branch state.”

After the check, return to the original task. Do not create a standing safety record.

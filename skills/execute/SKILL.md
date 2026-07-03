---
name: execute
description: Use when implementing an approved plan, ready issue, or focused vertical slice. Executes one task at a time, updates durable state, uses subagents when useful and allowed, and verifies before claiming progress.
---

# Execute

Follow the plan, but keep judgment on.

Read `../workflow/references/lifecycle.md` when updating durable status or moving queued work.

## Flow

1. Read the full plan or issue and linked context.
2. Confirm the correct branch/worktree. For non-trivial work, use `praxis:worktree` before editing unless the user or repo says otherwise.
3. Check for stale assumptions or blockers before editing.
4. Set durable status to running when using local artifacts.
5. Execute one vertical slice at a time.
6. Use `praxis:tdd` for behavior changes and bug fixes when practical.
7. Use `praxis:subagents` for independent slices when allowed.
8. Run verification before marking checkboxes done.
9. Use `praxis:review` and `praxis:verify` before completion.

Stop for missing dependencies, destructive steps, repeated verification failure, plan/codebase conflict, or user tradeoff decisions.

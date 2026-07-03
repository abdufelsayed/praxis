---
name: execute
description: Use when implementing an approved plan, ready issue, or focused vertical slice. Executes one task at a time, updates durable state, uses subagents when useful and allowed, and verifies before claiming progress.
---

# Execute

Follow the plan, but keep judgment on.

## Flow

1. Read the full plan or issue and linked context.
2. Check for stale assumptions or blockers before editing.
3. Set durable status to running when using local artifacts.
4. Execute one vertical slice at a time.
5. Use `praxis:tdd` for behavior changes and bug fixes when practical.
6. Use `praxis:subagents` for independent slices when allowed.
7. Run verification before marking checkboxes done.
8. Use `praxis:review` and `praxis:verify` before completion.

Stop for missing dependencies, destructive steps, repeated verification failure, plan/codebase conflict, or user tradeoff decisions.

---
name: queue
description: Use when running a queue of ready issues or plans until empty, blocked, verification fails, risk requires a checkpoint, or the user asks for an agent loop over durable work.
---

# Queue

Run durable work one slice at a time.

Read `../workflow/references/lifecycle.md` for queue state transitions and side exits.

## Plan Queue

```text
.agents/plans/draft/
.agents/plans/ready/
.agents/plans/running/
.agents/plans/blocked/
.agents/plans/done/
```

## Loop

1. Pick the highest-priority unblocked item; oldest first when priority is absent.
2. Read linked issue, plan, spec, and context.
3. Review stale or broad plans before execution.
4. Use `praxis:worktree` for each non-trivial item so queued work stays isolated.
5. Execute one slice.
6. Verify acceptance criteria.
7. Update status before continuing.

Stop when blocked, scope changes, verification fails after a real fix attempt, or user judgment is needed.

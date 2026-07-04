---
name: queue
description: Use when processing multiple ready issues or plans one slice at a time until done, blocked, verification fails, or state must be saved.
---

# Queue

Run durable work one slice at a time.

## Required Reads

Read `../kernel/references/state-machine.md` only when moving local queue state.
Read `../kernel/references/storage-policy.md` only when the queue location is not already known.

## Loop

1. Pick the highest-priority unblocked item; oldest first when priority is absent.
2. Read linked issue, plan, spec, and context.
3. Review stale or broad plans before execution.
4. Load `praxis:worktree` for non-trivial implementation items.
5. Load `praxis:subagents` before parallel or external-agent execution; use runtime briefs and progress.
6. Load `praxis:execute` for one slice.
7. Load `praxis:verify` for acceptance criteria.
8. Update status before continuing.

Stop when blocked, scope changes, verification fails after a real fix attempt, or user judgment is needed.

## Transition

```text
output: queue progress, completed item, blocker, context update, or handoff
state: ready | running | blocked | done
next: execute | context | handoff | discuss | stop
evidence: item path, status move, verification result, or blocker
```

## Next Skills

Load `praxis:context` after meaningful queue progress or before stopping with partial state. Load `praxis:handoff` when another agent or session must continue the queue.

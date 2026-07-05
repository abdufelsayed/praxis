---
name: queue
description: Use when processing multiple ready issues or plans one slice at a time until done, blocked, verification fails, or state must be saved.
---

# Queue

## Kernel Gate

If `praxis:kernel` did not route you to this skill in the current turn, read `../kernel/SKILL.md`, `../kernel/references/control-plane.md`, and `../kernel/references/routes.md` before acting. Obey any active `Agent Control` header before this skill's local flow.

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

## Supervisor Rhythm

- Keep the active item visible; do not silently batch.
- After each slice, decide whether to continue, repair, update context, hand off, or stop.
- If a queue item reveals missing intent or bad slicing, route back to `issue` or `plan`.
- For long runs, update runtime progress after meaningful transitions so another session can resume.

## Transition

```text
output: queue progress, completed item, blocker, context update, or handoff
lane: <current lane>
state: ready | running | blocked | done
result: item-complete | queue-progress | blocked
next: execute | context | handoff | discuss | stop
evidence: item path, status move, verification result, or blocker
```

## Next Skills

Load `praxis:context` after meaningful queue progress or before stopping with partial state. Load `praxis:handoff` when another agent or session must continue the queue.

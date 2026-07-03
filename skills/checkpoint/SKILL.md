---
name: checkpoint
description: Use when the user asks to checkpoint, or when compaction/pause/agent transfer requires choosing whether to update context or write a handoff. Routes immediately to the durable owner.
---

# Checkpoint

Choose the durable owner. Checkpoint is a routing action, not a separate artifact.

Use this only when the user asks for a checkpoint or continuity risk is real. For ordinary current-state updates, use `praxis:context`; for ownership transfer, use `praxis:handoff`.

## Choose Target

- Load `praxis:context` when the same owner can continue and living state is enough.
- Load `praxis:handoff` when another agent, thread, or future session needs restart instructions.

Do not create a separate checkpoint file unless the repo has that convention.

## Summary

If staying in chat, summarize only:

- goal;
- current state;
- next step;
- blockers;
- verification status.

## Transition

```text
output: context update, handoff path, or checkpoint summary
state: current | handoff | blocked
next: context | handoff | stop
evidence: changed files, commands, blockers, or verification status
```

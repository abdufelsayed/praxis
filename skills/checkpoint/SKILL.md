---
name: checkpoint
description: Use during long conversations, before compaction risk, before switching agents or threads, after major decisions, after subagent work, or whenever current state should be saved so work can continue without replaying the transcript. Updates context or creates a handoff depending on whether ownership is changing.
---

# Checkpoint

Save the current state in the smallest durable place that helps continuation.

## Required Reads

Read `../workflow/references/lifecycle.md` when the checkpoint captures a lifecycle transition.
Read `../workflow/references/persistence.md` before choosing where state should live.

## Choose Target

- Update `praxis:context` when the same agent/session can continue later and living state is enough.
- Use `praxis:handoff` when another agent, thread, or future session needs explicit continuation instructions.

Do not create a separate checkpoint file unless the repo has that convention.

## Contract

Capture only what is needed to resume:

- goal;
- current state;
- decisions or constraints;
- changed files or artifacts;
- next step;
- blockers;
- verification status.

## Transition

```text
output: context update, handoff path, or checkpoint summary
state: current | handoff | blocked
next: continue | handoff | stop
evidence: files, artifacts, commands, blockers, or verification status
```

## Next Skills

Load `praxis:context` for living state updates. Load `praxis:handoff` when ownership is transferring.

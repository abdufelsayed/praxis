---
name: checkpoint
description: Use during long conversations, before compaction risk, before switching agents or threads, after major decisions, after subagent work, or whenever current state should be saved so work can continue without replaying the transcript.
---

# Checkpoint

Write a compact state snapshot.

## Required Reads

Read `../workflow/references/artifacts.md` for the canonical checkpoint shape.
Read `../workflow/references/lifecycle.md` when the checkpoint captures a lifecycle transition.
Read `../workflow/references/persistence.md` before choosing the checkpoint path.

## Contents

- Goal.
- What has been decided.
- What has changed.
- Current files/artifacts.
- Next step.
- Blockers.
- Verification status.

## Location

Use repo convention first. Otherwise write to:

```text
.agents/state/YYYY-MM-DD-short-title.md
```

## Next Skills

Load `praxis:handoff` when ownership is transferring to another thread, agent, or future session.

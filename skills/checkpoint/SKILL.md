---
name: checkpoint
description: Use during long conversations, before compaction risk, before switching agents or threads, after major decisions, after subagent work, or whenever current state should be saved so work can continue without replaying the transcript.
---

# Checkpoint

Write a compact state snapshot.

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

If the checkpoint is only for handoff, use `praxis:handoff`.

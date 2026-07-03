# Praxis Routing

Use the lightest workflow that protects correctness and context.

## Levels

- L0 inspect or answer: read, explain, no durable artifact unless context is already long.
- L1 small reversible edit: inspect, edit, run the smallest relevant check, report evidence.
- L2 focused task: clarify if needed, create a worktree by default, make a short plan in chat or `.agents/plans/`, implement, verify.
- L3 substantial work: use durable context, create a worktree, plan, execute in slices, review, verify, finish.
- L4 long-running queue or swarm: use issues/plans, checkpoints, one worktree per active branch or worker, subagents when allowed, human checkpoints.

Escalate for multi-file behavior changes, unclear bugs, migrations, auth, data loss risk, security, CI/deploy, long conversations, or work likely to survive compaction.

De-escalate for tiny reversible edits, pure explanation, or user instructions to stay lightweight.

For durable work state, queue movement, or handoff decisions, use `lifecycle.md`.

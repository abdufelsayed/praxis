# Praxis Routing

Use the lightest workflow that protects correctness and context.

## Authority

This file chooses workflow level and required reads. It is the only place that classifies L0-L4 work.

Use:

- `lifecycle.md` for durable states and transitions;
- `artifacts.md` for artifact purpose and shape;
- `persistence.md` for storage and ignore policy;
- `praxis:docs` for user-facing or developer-facing documentation;
- `praxis:agent-guide` for AGENTS.md or scoped agent-facing repo guidance;
- individual skills for command behavior.

## Levels

- L0 inspect or answer: read, explain, no durable artifact unless context is already long.
- L1 small reversible edit: inspect, edit, run the smallest relevant check, report evidence.
- L2 focused task: clarify if needed, create a worktree by default, make a short plan in chat or `.agents/plans/`, implement, verify.
- L3 substantial work: use durable context, create a worktree, plan, execute in slices, review, verify, finish.
- L4 long-running queue or swarm: use issues/plans, checkpoints, one worktree per active branch or worker, subagents when allowed, human checkpoints.

## Route Reads

When a route reaches a domain below, load the named skill or reference before acting in that domain:

- L0: no extra reads unless the answer depends on repo convention, source truth, or durable context.
- L1: load the relevant domain skill, then `praxis:verify` before claiming the edit works.
- L2: load `praxis:setup` when repo conventions are unknown, `praxis:worktree` before non-trivial edits, `praxis:plan` before writing an executable plan, `praxis:execute` before implementation, and `praxis:verify` before completion. Load `lifecycle.md` only if persisting status.
- L3: load `lifecycle.md`, `praxis:context` or `praxis:checkpoint`, `praxis:worktree`, `praxis:plan`, `praxis:execute`, `praxis:review`, `praxis:verify`, and `praxis:finish`.
- L4: load `lifecycle.md`, `praxis:issue`, `praxis:queue`, `references/subagents.md`, `praxis:subagents`, `praxis:worktree`, and the phase skills for each active slice.

For durable artifacts, also load `references/artifacts.md` and the target artifact skill before writing or reshaping the artifact.

For documentation, load `praxis:docs`. Documentation is not a Praxis artifact unless it is agent-only state; do not use artifact shapes as README, guide, or architecture-doc templates.

For AGENTS.md or scoped agent guidance, load `praxis:agent-guide`. Agent guides are stable repo orientation, not workflow state, user docs, or Praxis artifacts.

Escalate for multi-file behavior changes, unclear bugs, migrations, auth, data loss risk, security, CI/deploy, long conversations, or work likely to survive compaction.

De-escalate for tiny reversible edits, pure explanation, or user instructions to stay lightweight.

For artifact storage, local paths, or `.gitignore` decisions, use `persistence.md`.

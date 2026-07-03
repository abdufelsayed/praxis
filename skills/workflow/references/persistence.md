# Praxis Persistence

Default local artifact root:

```text
.agents/
```

Use repo policy first. If `AGENTS.md`, docs, GitHub, Linear, or another tracker defines where work lives, follow that.

When using local files, prefer:

```text
.agents/context/
.agents/discussions/
.agents/decisions/
.agents/specs/
.agents/issues/
.agents/plans/
.agents/handoffs/
.agents/reviews/
.agents/verification/
.agents/state/
.agents/worktrees/
```

If `.agents/` is used for local private state, ensure `.agents/` is present in `.gitignore` unless the repo explicitly commits agent artifacts.

Persist context when the conversation has durable decisions, multiple detours, open questions, long-running work, subagents, or compaction risk.

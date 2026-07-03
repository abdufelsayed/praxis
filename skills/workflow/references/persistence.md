# Praxis Persistence

Persistence is storage policy, not artifact meaning or shape. Use `artifacts.md` and the target template for purpose; use this file for trackers, paths, and ignore behavior.

## When To Read

Read this file before choosing artifact locations, tracker behavior, local markdown paths, worktree locations, or `.gitignore` policy.

## Preference Order

1. Follow explicit user instruction.
2. Follow repo instructions and configured trackers.
3. Use GitHub, Linear, or another repo tracker for team-visible issues when that is the repo norm.
4. Use local `.agents/` markdown for private agent state, drafts, exploratory notes, handoffs, or repos without a tracker convention.

Do not move durable state between these backends just for neatness. Move it when the audience or workflow changes.

## Local Root

Default private root:

```text
.agents/
```

When `.agents/` stores local private state, ensure `.agents/` is ignored unless the repo explicitly commits agent artifacts.

## Local Artifact Paths

```text
.agents/context/
.agents/explorations/
.agents/decisions/
.agents/specs/
.agents/issues/
.agents/plans/
.agents/evidence/
.agents/handoffs/
```

Use status subdirectories only where they help queues or long-running work:

```text
.agents/issues/{inbox,draft,ready,running,blocked,done}/
.agents/plans/{draft,ready,running,blocked,done}/
```

## Naming

- Prefer `YYYY-MM-DD-short-title.md` for dated artifacts.
- Prefer stable names for living context, such as `project.md`, `session.md`, or `<workstream>.md`.
- Keep filenames short, lowercase, and descriptive.
- Link branches, worktrees, PRs, commits, and CI runs from artifacts when relevant.

## Worktrees

By default, create autonomous or parallel worktrees under:

```text
.agents/worktrees/<flattened-branch>/
```

Worktree directories are execution infrastructure. Record their branch/path in context, issues, plans, evidence, or handoffs when that helps coordination.

## Context Persistence Gate

Persist context when the conversation has durable decisions, multiple detours, open questions, long-running work, subagents, parallel branches, or compaction risk.

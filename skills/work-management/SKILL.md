---
name: work-management
description: Use when engineering work must be represented, prioritized, queued, or coordinated durably across issues, dependencies, workstreams, owners, or sessions.
---

# Work Management

Use the repository's configured tracker or program surface. Create a local artifact only when the repository already uses one or the user explicitly requests it.

## Issues

An actionable work item owns one observable outcome, its scope, acceptance criteria, dependencies, evidence or reproduction when relevant, and the next owner or action. Split items only when their outcomes can be accepted independently. Verify current source and linked changes before triaging or closing. Adapt [references/issue-template.md](references/issue-template.md) when a local format is needed.

## Queues

When several ready items must run serially, classify them from current evidence as ready, active, blocked, done, or stale. Respect explicit priority; otherwise use dependency order, then age. Select one item, complete and verify it, update the original tracker, and re-read the queue before choosing another. Do not create a second queue when the tracker already expresses order; adapt [references/queue-view.md](references/queue-view.md) only for an explicitly requested local view.

## Programs

For initiatives spanning independently tracked outcomes, keep one current direction: objective and finish condition, boundaries, decisions and open questions, linked workstreams with owners and state, cross-workstream dependencies, risks, and one coordination action. Issues and plans retain executable detail. Adapt [references/program-template.md](references/program-template.md) only when a durable program record is warranted.

Current source, merged work, and the latest instruction outrank tracker prose. Stop when the next action requires missing product judgment, a dependency is unavailable, or the remaining work is stale.

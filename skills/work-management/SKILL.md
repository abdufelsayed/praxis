---
name: work-management
description: Use when engineering work must be represented, prioritized, queued, or coordinated durably across issues, dependencies, workstreams, owners, or sessions.
---

# Work Management

Use the repository's configured tracker or program surface. Create a local artifact only when the repository already uses one or the user explicitly requests it.

## Issues

An actionable work item owns one observable outcome, its scope, acceptance criteria, dependencies, evidence or reproduction when relevant, and the next owner or action. Keep the issue's outcome distinct from an implementation plan, and do not disguise an unresolved product decision as implementation detail. Split items only when their outcomes can be accepted independently. Verify current source and linked changes before triaging or closing.

When a local format is needed, use: title as outcome; status `draft`, `ready`, `active`, `blocked`, or `done`; problem and evidence; in/out scope; observable acceptance criteria; dependencies; and one concrete next action with owner when known.

## Queues

When several ready items must run serially, classify them from current evidence as ready, active, blocked, done, or stale. Respect explicit priority; otherwise use dependency order, then age. Select one item, read its requirements and dependencies, complete and verify it, update the original tracker, and re-read the queue before choosing another. Route independent items to `dispatch-subagents` when delegation is allowed. Do not silently skip a blocked high-priority item; record the blocker and explain the next eligible choice.

Do not create a second queue when the tracker already expresses order. For an explicitly requested local view, use a table with ID, outcome, state, dependency, and next action plus one ordering rule; keep details in linked issues or plans.

## Programs

For initiatives spanning independently tracked outcomes, keep one current direction: objective and measurable finish condition, boundaries, decisions and open questions, linked workstreams with owners, state, and next action, cross-workstream dependencies, risks, and one coordination action. Issues and plans retain executable detail. Do not mark a program complete merely because its queue is empty; verify the finish condition and unresolved risks directly.

When a durable program record is warranted, use those fields and a workstream table rather than copying issue or plan details.

Current source, merged work, and the latest instruction outrank tracker prose. Stop when the next action requires missing product judgment, a dependency is unavailable, requirements changed, verification failed after diagnosis, the requested processing limit was reached, or the remaining work is stale.

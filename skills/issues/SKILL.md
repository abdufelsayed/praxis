---
name: issues
description: Use when engineering work must be represented, prioritized, or tracked durably as issues across owners or sessions, or a serial queue of ready items must run.
---

# Issues

Use the repository's configured tracker when one owns the work. Otherwise write durable local issues under `.agents/`; do not keep tracked intent only in chat or mirror an external tracker locally.

## Issues

An issue owns one observable outcome, its scope, acceptance criteria, dependencies, evidence or reproduction when relevant, and the next owner or action. Keep the issue's outcome distinct from an implementation plan, and do not disguise an unresolved product decision as implementation detail — route that to `clarify`. Split items only when their outcomes can be accepted independently. Verify current source and linked changes before triaging or closing.

Store local issues at `.agents/issues/<state>/YYYY-MM-DD-short-title.md`, using `inbox`, `draft`, `ready`, `running`, `blocked`, or `done`, and move the file when its state changes. Treat legacy `active` as `running`. When no format exists, use:

```markdown
---
type: issue
created: YYYY-MM-DD
part-of: <campaign or none>
blocked-by: <issue links or none>
---

# <Outcome>
## Problem And Evidence
## Scope
- In:
- Out:
## Acceptance Criteria
- [ ] <verifiable result>
## Dependencies
## Next Action
<one concrete action, with owner when known>
```

## Queues

When several ready items must run serially, classify them from current evidence as ready, running, blocked, done, or stale. Respect explicit priority; otherwise use dependency order, then age. Select one item, read its requirements and dependencies, complete and verify it, update the original tracker, and re-read the queue before choosing another. Route independent items to `dispatch` when delegation is allowed. Do not silently skip a blocked high-priority item; record the blocker and explain the next eligible choice.

Queues are operational views, not artifacts. Do not create a queue file; derive order from the tracker, issues, plans, or campaign, and update those owning records as work changes. If a legacy `.agents/queues/` view contains unique state, reconcile that state into its owners before retiring the view.

Current source, merged work, and the latest instruction outrank tracker prose. Stop when the next action requires missing product judgment, a dependency is unavailable, requirements changed, verification failed after diagnosis, the requested processing limit was reached, or the remaining work is stale.

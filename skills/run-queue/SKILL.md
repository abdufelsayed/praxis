---
name: run-queue
description: Use when several ready issues or plans must be processed serially, one bounded item at a time, with explicit ordering, stop conditions, and status updates.
---

# Run Queue

## Overview

Supervise several durable work items serially. Select one ready item, execute and verify it, update its real status, then reconsider the queue before taking another.

## Build The Queue

Read the configured tracker or user-provided item list. Classify each item as ready, active, blocked, done, or stale using current dependencies and source. Respect explicit priority; otherwise prefer dependency order, then the oldest ready item.

Do not create a queue artifact when the tracker or issue list already represents the queue. Adapt [references/queue-view.md](references/queue-view.md) only when a durable local view is explicitly needed.

## Run One Item

1. Select one ready item and state why it is next.
2. Read its requirements, linked plan, dependencies, and acceptance criteria.
3. Use `execute-plan` when it has an accepted plan; otherwise implement a clear bounded item directly. Return to `design` when behavior or boundaries require invention.
4. Run the item's focused and integrated checks.
5. Update the original item with its true state, evidence, and next action.
6. Re-read the queue before selecting another item because completion may unblock or invalidate work.

Use `dispatch-subagents` instead when independent items should run concurrently and delegation is allowed.

## Stop Conditions

Stop when the next item requires user judgment, a dependency is missing, requirements have changed, verification fails after a real diagnosis attempt, the remaining items are stale, or the requested processing limit is reached. Do not skip a blocked high-priority item silently; record the blocker and explain the next eligible choice.

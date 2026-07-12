---
name: execute-plan
description: Use when a written implementation plan, accepted task list, or prepared sequence must be carried out with task-level checks and progress tracking.
---

# Execute Plan

## Overview

Execute an accepted plan without treating it as infallible. Reconcile it with current source, complete one independently checkable task at a time, and preserve visible progress.

## Review The Plan

Before editing:

1. Read the entire plan and its linked requirements.
2. Inspect the current branch, working tree, relevant source, and repository instructions.
3. Identify stale paths, missing dependencies, contradictory requirements, unsafe operations, and checks that cannot prove their task.
4. Resolve material contradictions before starting. Fix harmless mechanical drift in the plan as you work.

Use `worktree` when isolation is requested or collision risk warrants it. Use `dispatch-subagents` only when the plan contains genuinely independent work and delegation is allowed.

## Execute Task By Task

For each task:

1. Mark it in progress using the host's plan mechanism or the plan's existing checkboxes.
2. Restate the task's observable result and proof.
3. Read the exact files and local patterns before editing.
4. Implement the smallest coherent result.
5. Run the task's focused check and inspect the diff.
6. Mark the task complete only when its acceptance criteria pass.

Do not create a second tracking artifact. Update the accepted plan only when it is already durable and future execution depends on the correction.

## Stop Conditions

Stop and report the exact signal when the plan requires an unresolved product choice, conflicts with current source, would overwrite unrelated work, expands into a different subsystem, or repeatedly fails its stated verification. Use `debug` when failure diagnosis is required.

After all tasks pass, use `verify` for the integrated claim. Commit, pull-request, handoff, merge, or cleanup work only when the user requests that outcome; load its specific skill when one exists.

For a durable execution plan, adapt [references/execution-checklist.md](references/execution-checklist.md) only when the existing plan has no usable progress fields.

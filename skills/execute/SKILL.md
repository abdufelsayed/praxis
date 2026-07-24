---
name: execute
description: Use when an accepted plan must run or resume toward an integrated verified result.
---

# Execute

Run accepted plans. Authoring and acceptance belong to `plan`.

## Resume

Read the entire plan, current repository instructions, branch, worktree, and relevant source before editing. Reconcile the plan with current reality: compare its Execution block against git history and the working tree, mark genuinely completed tasks from evidence, and stop for material contradictions — a plan that disagrees with reality returns to `plan` for revision. Update harmless path or symbol drift in place.

## Select

Work the frontier: any task whose `Blocked by` is fully complete. Take one task, mark it current in the Execution block, and keep exactly one task current.

Delegation is the recommended path for multi-task plans: each delegatable task goes to a fresh worker per `dispatch`, keeping your context for coordination. Run inline only when a task is tiny, tightly coupled to its neighbors, or delegation is unavailable. Use `worktree` when isolation becomes necessary.

Execute all tasks without pausing to check in: stop only for a `BLOCKED` worker, genuine ambiguity, an unresolved product choice (route `clarify`), or completion.

## Advance

For an inline task: implement it, inspect its diff, run its stated check, and mark it complete only when its acceptance signal holds.

For a delegated task: dispatch per `dispatch` — the worker implements, tests, and writes its report as durable evidence; review the returned diff with `review` (both axes, a fresh reviewer when delegation allows); loop fixes per `dispatch`'s breaker rules; mark complete only when the review is clean or its findings are adjudicated at the cap.

After every task transition, update the plan's Execution block: checkboxes, current task, blocked-by, next action. The plan file is the only progress surface; never create a second one. Keep evidence in checks, commits, or final verification rather than copying logs into the plan.

## Window

The context window is a runtime resource with a **smart zone**: past roughly 120k tokens, reasoning degrades even though the window still accepts text. Do not push long phases on a degraded window — finish the phase, then fork with `handoff` and continue fresh. Compaction continues in place at intentional phase boundaries; handoff forks. Never compact mid-phase: the summary drops exactly the detail the phase needs.

## Finish

For a substantial delegated run, close with a whole-diff two-axis `review` before the integrated claim. Then preflight: state the strongest practical objections to your own readiness across intent, scope, evidence, and delegation, and resolve or route each. Then use `verify` for the integrated claim. Commit, PR, and handoff follow only as separately requested outcomes.

## Stop

Stop when execution requires an unresolved product choice (route `clarify`), would overwrite unrelated work, expands into another subsystem, repeatedly fails a stated proof, or the plan contradicts reality (route `plan`). A blocked plan moves to `plans/blocked/` with the exact signal recorded.

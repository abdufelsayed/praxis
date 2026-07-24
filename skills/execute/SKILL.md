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

Small or tightly-coupled tasks run inline. Tasks marked delegatable, or independent work when delegation is allowed, go to `dispatch` with the plan task ID cited in the brief; use `worktree` when isolation becomes necessary.

## Advance

For the current task: implement it, inspect its diff, run its stated check, and mark it complete only when its acceptance signal holds. A delegated task completes only after its returned diff passes `review` against the task's contract.

After every task transition, update the plan's Execution block: checkboxes, current task, blocked-by, next action. The plan file is the only progress surface; never create a second one. Keep evidence in checks, commits, or final verification rather than copying logs into the plan.

## Finish

Before the integrated claim, preflight: state the strongest practical objections to your own readiness across intent, scope, evidence, and delegation, and resolve or route each. Then use `verify` for the integrated claim. Commit, PR, and handoff follow only as separately requested outcomes.

## Stop

Stop when execution requires an unresolved product choice (route `clarify`), would overwrite unrelated work, expands into another subsystem, repeatedly fails a stated proof, or the plan contradicts reality (route `plan`). A blocked plan moves to `plans/blocked/` with the exact signal recorded.

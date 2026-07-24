---
name: execute
description: Use when an accepted plan must run or resume toward an integrated verified result.
---

# Execute

Run accepted plans. Authoring and acceptance belong to `plan`.

Read the shared [assurance ladder](../../references/assurance.md) before choosing how to run a task. An accepted plan supplies scope and checks; it does not make delegation or independent review automatic.

## Resume

Read the entire plan, current repository instructions, branch, worktree, and relevant source before editing. Reconcile the plan with current reality: compare its Execution block against git history and the working tree, mark genuinely completed tasks from evidence, and stop for material contradictions — a plan that disagrees with reality returns to `plan` for revision. Update harmless path or symbol drift in place.

## Select

Work the frontier: any task whose `Blocked by` is fully complete. Take one task, mark it current in the Execution block, and keep exactly one task current.

Execute all tasks without pausing to check in: stop only for a `BLOCKED` worker, genuine ambiguity, an unresolved product choice (route `clarify`), or completion.

## Advance

Use direct assurance unless the user requested delegation, the plan explicitly selected it for a justified boundary, or isolated context materially improves this task. Direct work means implement, inspect the diff, run the task's decisive check, and mark complete only when its acceptance signal holds.

For a task marked `Owner: worker`, use `dispatch` with the `worker` role, inspect the returned changes or evidence, resolve concerns, and run the decisive integration check. Delegation alone does not add a reviewer. Apply `review` with `reviewer` only when `Independent review` or current evidence names a risk covered by independent assurance.

When a check or review finds a defect, send the verified finding to the current owner, inspect the correction, and rerun the narrow proof. If the same cause survives a correction, stop the retry cycle and reframe the task, strengthen the brief, change ownership, or return a faulty plan to `plan`.

At each meaningful execution boundary — task start, completion, blocking, or a material next-action change — update the plan's Execution block: checkboxes, current task, blocked-by, next action. Do not rewrite it for narration or internal tool steps. The plan file is the only durable progress surface; never create a second one. Keep evidence in checks, commits, or final verification rather than copying reports or logs into the plan.

Use native messages for coordination and the host's wait or monitoring primitive for running work. At a coherent boundary, a degraded session continues fresh from current source, Git, and the plan's Execution block. Use `handoff` only for a user-requested transfer.

## Finish

Inspect the integrated diff and use `verify` for the plan's completion claim. Verification stays direct unless fresh isolated execution materially improves the proof, in which case dispatch `verifier`. Add a whole-diff `reviewer` only when independent assurance applies to the integrated result. Resolve mismatches among intent, scope, evidence, and the final tree before reporting completion. Commit, PR, and handoff follow only as separately requested outcomes.

## Stop

Stop when execution requires an unresolved product choice (route `clarify`), would overwrite unrelated work, expands into another subsystem, repeatedly fails a stated proof, or the plan contradicts reality (route `plan`). A blocked plan moves to `plans/blocked/` with the exact signal recorded.

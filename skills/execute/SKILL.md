---
name: execute
description: Use when an accepted plan must run or resume toward an integrated verified result.
---

# Execute

Run accepted plans. Authoring and acceptance belong to `plan`.

Read the [assurance ladder](../../references/assurance.md) before choosing ownership. An accepted plan supplies scope and checks; it does not make delegation or independent review automatic.

## Resume

Read the entire plan, repository instructions, branch, worktree, and relevant source before editing. Reconcile its Execution block against Git and current files. Mark completed work only from evidence, update harmless path drift, and return material contradictions to `plan`.

When the plan implements an evolution, read [control flow](../../references/control-flow.md) and require all three preconditions: an approved map, the same named evolution explicitly authorized, and this plan approved. Missing or conflicting authority stops before source mutation. Pair, when active, still requires permission at every mutation boundary.

## Advance

Work the frontier: choose one task whose dependencies are complete, mark it current, implement it, inspect the diff, run its decisive check, and mark it done only when the signal holds. Update the Execution block at task start, completion, blocking, or a material next-action change; keep exactly one current task and no parallel progress record.

Execute an approved evolution plan without routine check-ins. Stop only for genuine ambiguity, unresolved product intent, a blocking signal, repeated proof failure, unrelated work at risk, or a discovery that changes contract, compatibility, system direction, or the evolution boundary. A local reversible choice may take the conservative path when it preserves all accepted behavior and is reported and verified.

Use direct assurance unless the user requested delegation, the plan selected it for a justified boundary, or isolated context materially improves the task.

For a task marked `Owner: worker`, use `dispatch` with the `worker` role, inspect the returned changes or evidence, resolve concerns, and run the decisive integration check. Delegation alone does not add a reviewer. Apply `review` with `reviewer` only when `Independent review` or current evidence names a risk covered by independent assurance.

When a check or review finds a defect, correct the verified cause and rerun the narrow proof. If the same cause survives a correction, stop the retry cycle and reframe the task, ownership, or plan.

Use native messages for coordination and the host's wait or monitoring primitive for running work. At a coherent boundary, a degraded session continues fresh from current source, Git, and the plan's Execution block. Use `handoff` only for a user-requested transfer.

## Finish

Inspect the integrated diff and use `verify` for every completion claim. Add independent verification or review only when its assurance trigger exists. Resolve mismatches among intent, scope, evidence, and the final tree before reporting completion.

For an evolution, keep the plan `running` after internal proof and run the Plannotator result gate. Bounded feedback may be corrected autonomously inside the accepted plan, then re-reviewed; broader feedback returns to the relevant earlier gate. Approval closes the evolution: move the plan to `done`, clear the current and authorized evolution, update learning, and stop with no next evolution selected.

Commit, PR, push, deployment, merge, and handoff remain separately authorized outcomes unless the accepted plan explicitly included them. A blocked plan moves to `plans/blocked/` with the exact signal recorded.

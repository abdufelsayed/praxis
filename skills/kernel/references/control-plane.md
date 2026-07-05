# Praxis Control Plane

The control plane makes Praxis binding. It tells agents when to enter the framework, what must be read, which artifact instructions override improvisation, and when a route is no longer optional.

## Entry Contract

Enter through `praxis:kernel` when any of these are true:

- the user mentions Praxis;
- work involves implementation, repair, planning, specs, docs, AGENTS.md, review, verification, commit, PR, worktrees, handoff, or subagents;
- the work is broad, risky, delegated, multi-session, or after compaction;
- an existing Praxis artifact is linked or active.

Do not answer from memory about the process. Read the current skill or reference file before acting on it.

## Required Reads

Minimum entry:

1. `kernel/SKILL.md`
2. `kernel/references/control-plane.md`
3. `kernel/references/routes.md`

Then load exactly the current driver skill and any reference it names as required.

For `fast` direct inspection or tiny edit, the kernel may skip deeper references after routing. For `focused`, `full`, `swarm`, recovery, failed verification, or any artifact-producing work, read `process-model.md` too.

Driver skills own the executable process. References define shared vocabulary, templates, storage policy, quality gates, and runtime primitives; they do not replace the driver skill's local procedure.

## Direct Driver Gate

If a non-kernel Praxis skill loads first, its first act is to read `../kernel/SKILL.md`, `../kernel/references/control-plane.md`, and `../kernel/references/routes.md`. Driver-local flow starts only after this gate and after any active `Agent Control` header is obeyed.

## Artifact Control Headers

Specs, issues, and plans carry process instructions for future agents. Treat these as active control data, not prose.

Required header keys:

```text
Agent Control:
- Required process:
- Execution mode:
- Review gate:
- Verification gate:
```

Rules:

- If a saved artifact has `Required process`, follow it before editing.
- If the header is missing on a spec, issue, or plan you are about to use, repair the artifact or route to its owner skill before execution.
- If the header conflicts with the latest user instruction, follow the user and update or supersede the artifact.
- If the artifact is stale, do not work around it silently; route to `explore`, `spec`, `issue`, or `plan`.

## Binding Routes

Some routes are mandatory once their condition is true:

| Condition | Required route |
| --- | --- |
| Multi-task plan with independent tasks | `subagents` or `queue`; no ad hoc inline execution. |
| Plan says `Execution mode: subagents` | `subagents`; create briefs/reports and review each task. |
| Plan says `Execution mode: queue` | `queue`; execute one ready slice at a time. |
| Failed verification | `repair`, `execute`, `blocked`, or replan; never delivery. |
| Critical/Important review findings | `execute` or `repair`; do not continue to done. |
| Missing acceptance criteria for non-trivial work | `spec` or `issue`; do not invent requirements. |
| Dirty tree before commit/PR | `commit`/`pr` safety path; stage only intended changes. |
| Destructive, force, production, data, migration, or broad rewrite | `safety` before the step. |

## Subagent Execution Contract

When `subagents` is the required process:

1. Create or update runtime progress.
2. Extract bounded task briefs; do not make workers read the whole plan when a brief can carry the needed slice.
3. Use a fresh worker per task unless the user or tool environment prevents it.
4. Require a worker report for each task.
5. Create a review package or inspect the exact diff before task review.
6. Review requirement compliance first, implementation quality second.
7. Do not mark the task complete with open Critical or Important findings.
8. Run supervisor-owned final verification after integration.

Worker reports are never completion proof.

## Anti-Freestyle Rules

- Do not skip a required skill because the next code edit seems obvious.
- Do not collapse spec, issue, plan, execution, review, and verification into one undocumented pass for non-trivial work.
- Do not treat artifact templates as suggestions when creating that artifact type.
- Do not substitute a final summary for a required artifact, review, verification, or handoff.
- Do not continue past failed gates by saying the remaining issue is probably harmless.

## Recovery

After compaction, interruption, stale context, or a messy branch:

1. Re-read the latest user request.
2. Inspect branch, dirty tree, linked artifacts, runtime progress, and latest verification.
3. Reconstruct the current required process from artifact headers and state.
4. Continue only when the next required route is clear; otherwise update context or ask.

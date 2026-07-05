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
| User asks to grill, stress-test, challenge, or poke holes | `grill-me`. |
| Full, swarm, risky, or architecture-shaping design/spec/issue/plan is about to become `ready` | `preflight` before execution. |
| Agent is about to start substantial implementation, delegation, delivery, commit, or PR from its own plan with consequential assumptions | `preflight`. |
| Preflight finds unresolved user/product judgment or proposal pressure | `grill-me` or `discuss`; do not ask before self-checking source facts. |
| Broad design/spec affects architecture, public API, data, security, migration, or UX | `preflight` before ready; `review` before delivery when risk remains. |
| Non-trivial full/swarm implementation will edit code in a git repo | `worktree` before editing unless the user, repo policy, or current harness explicitly requires the primary checkout. |
| Multi-task plan with independent tasks and delegation available | `subagents`; no ad hoc inline execution. |
| Multi-task plan with ordered/coupled slices or no delegation tool | `queue`; execute one ready slice at a time. |
| Plan says `Execution mode: subagents` | `subagents`; dispatch actual workers, collect reports, review each task, and integrate as supervisor. |
| Plan says `Execution mode: queue` | `queue`; execute one ready slice at a time. |
| Failed verification | `repair`, `execute`, `blocked`, or replan; never delivery. |
| Critical/Important review findings | `execute` or `repair`; do not continue to done. |
| Missing acceptance criteria for non-trivial work | `spec` or `issue`; do not invent requirements. |
| Dirty tree before commit/PR | `commit`/`pr` safety path; stage only intended changes. |
| Destructive, force, production, data, migration, or broad rewrite | `safety` before the step. |

## Execution Spine

The normal substantial implementation path is:

```text
spec/issue/plan -> preflight -> worktree -> execute | queue | subagents -> review -> verify -> deliver
```

Use the lightest branch that still preserves correctness:

- `execute`: one bounded local slice with direct proof.
- `queue`: multiple ready slices, executed serially by the supervisor.
- `subagents`: fork/join execution where the supervisor dispatches fresh workers and reviewers, then integrates accepted work.

Once an artifact or route selects `queue` or `subagents`, that choice is binding until the user changes it, the artifact is revised, or the tool environment makes it impossible. Do not downgrade to inline execution because it feels faster.

## Subagent Execution Contract

When `subagents` is the required process:

1. Create or update runtime progress.
2. Extract bounded task briefs; do not make workers read the whole plan when a brief can carry the needed slice.
3. Dispatch a fresh worker per task with the current harness's native subagent/delegation tool unless the tool environment prevents it.
4. If no subagent tool exists, record `subagents unavailable` and route to `queue`; do not silently direct-execute under the subagents label.
5. Require a worker report for each task.
6. Create a review package or inspect the exact diff before task review.
7. Review requirement compliance first, implementation quality second.
8. Do not mark the task complete with open Critical or Important findings.
9. Run supervisor-owned final verification after integration.
10. Run a final integrated review when multiple tasks, workers, or branches contributed to the result.

Worker reports are never completion proof.

## Preflight Contract

When `preflight` is required, self-check before moving:

1. State the proposed next action and the claim it depends on.
2. Generate strong practical objections to the route, assumptions, scope, design, sequencing, proof, delegation, and handoff.
3. Resolve source-answerable objections from repo/source evidence instead of asking the user.
4. Route revisions to the owning skill: `design`, `spec`, `issue`, `plan`, `safety`, `explore`, `review`, or `verify`.
5. Use `grill-me` only for unresolved user/product judgment or human-facing proposal challenge.

## Human Challenge Contract

When `grill-me` is required, challenge before building:

1. Ask one question at a time.
2. Include the agent's recommended answer with each question.
3. Inspect repo/source facts instead of asking the user when local evidence can answer.
4. Walk dependent decisions in order, then update the spec, design, plan, issue, or decision that will drive execution.
5. Do not treat a chat answer as durable if another agent will need it.

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

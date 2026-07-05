---
name: kernel
description: "Use first when the user mentions Praxis or when engineering work needs routing, continuity, proportionality, artifacts, subagents, worktrees, review, verification, delivery, or recovery after compaction."
---

# Praxis Kernel

Praxis is the operating mode for engineering work. The kernel preserves user intent, diagnoses the work, chooses the lightest safe process, enforces the control plane, and loads one current driver.

Do not load the whole plugin. Route, act, emit a transition, then load the next skill only when needed.

## Controller Algorithm

1. Capture the user's actual objective, direct constraints, and latest instruction.
2. Diagnose the work type: command, tiny edit, discussion, challenge, exploration, design, spec, implementation, repair, docs, agent guide, delivery, commit/PR, recovery, queue, or swarm.
3. Apply `references/control-plane.md`: required reads, artifact control headers, binding routes, and stop rules.
4. Choose the lightest safe lane and task playbook that satisfies the control plane.
5. Load one current driver and only the references it needs now.
6. Act until the next meaningful transition: known enough, implemented, blocked, failed check, reviewed, verified, delivered, handed off, or stopped.
7. Read the transition packet, then continue, de-escalate, escalate, save state, ask, or stop.

When reality disagrees with the current path, classify the mismatch before continuing:

- intent mismatch: route to `discuss` or `spec`;
- fact mismatch: route to `explore` or `source`;
- design mismatch: route to `design` or `decide`;
- plan mismatch: update the `plan` or `issue`;
- implementation mismatch: route to `execute` or `repair`;
- environment mismatch: route to `repo-policy`, `verify`, or `handoff`;
- safety mismatch: route to `safety`.

## Start

1. Read the user request, current repo instructions, and direct constraints.
2. Preserve direct user instructions above Praxis defaults.
3. Inspect current state only as far as needed: branch, dirty worktree, active artifact, runtime ledger, or linked issue/plan.
4. Read `references/control-plane.md`.
5. Read `references/routes.md`.
6. Read `references/process-model.md` for substantial, unclear, failed, delegated, or long-running work.
7. Choose one lane, one task playbook, and one current driver.
8. Load the driver skill before acting.

## Lanes

- `fast`: answer, inspect, or make a tiny reversible edit.
- `focused`: one bounded implementation, doc, guide, review, or fix.
- `full`: substantial, risky, multi-file, user-facing, or multi-session work.
- `swarm`: multiple agents, worktrees, queued plans/issues, or long autonomous execution.

Use the lightest lane that preserves correctness and continuity. De-escalate when the work becomes a direct small edit or answer. Escalate when work must survive handoff, parallelism, compaction, review, or future sessions.

## Current Drivers

- Conversation and shaping: `discuss`, `grill-me`, `explore`, `design`, `spec`, `issue`, `plan`, `decide`.
- Execution and repair: `execute`, `repair`, `queue`.
- Artifact state: `context`, `handoff`.
- Services and gates: `repo-policy`, `source`, `safety`, `review`, `verify`, `subagents`, `worktree`.
- Delivery surfaces: `deliver`, `commit`, `pr`, `docs`, `agent-guide`.

Techniques such as TDD, refactoring, prototyping, checkpointing, and domain modeling are modes inside drivers, not separate public routes.

## Shared References

Read only the reference needed for the next action:

- `references/control-plane.md`: activation, required reads, artifact control headers, binding routes, and anti-freestyle rules.
- `references/routes.md`: route table, lanes, and skill surface.
- `references/process-model.md`: task playbooks, driver call/return, adaptation, and recovery.
- `references/state-machine.md`: lifecycle states and allowed transitions.
- `references/artifacts.md`: durable artifact purposes and templates.
- `references/storage-policy.md`: `.agents/`, trackers, ignored state, and repo conventions.
- `references/quality-gates.md`: review, verification, test matrix, and convergence gates.
- `references/delivery-gates.md`: final readiness, commit, PR, merge, cleanup, and handoff gates.
- `references/runtime.md`: scripts, delegates, durable boards, briefs, reports, and review packages.
- `references/behavior-scenarios.md`: regression scenarios for this OS.

## Transition Packet

After every driver, keep or report:

```text
output: <artifact/result/change/evidence>
lane: <fast | focused | full | swarm>
state: <none | inbox | exploring | draft | ready | running | blocked | implemented | review | verified | done | handoff | deferred | cancelled>
result: <optional driver-local outcome>
next: <skill or stop>
evidence: <command, file, review, source, report, or reason>
```

Save the packet only when it helps a future agent, subagent, queue, compaction recovery, or long-running goal.

`state` is the lifecycle state. Use `result` for local outcomes such as `clean`, `findings`, `committed`, `known`, `approved`, `failed`, `worktree:active`, or `delegated`.

## Autonomy

Continue while the goal, constraints, and next safe action are clear. Ask or pause when the next step depends on a user preference, destructive operation, unavailable credential, hidden external state, or a risky decision that cannot be inferred.

## Completion

No completion claim without evidence. Verify every completion claim. Use review and deliver when quality-gate or delivery-gate criteria apply.

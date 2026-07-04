---
name: kernel
description: "Use first when the user mentions Praxis or when engineering work needs routing, continuity, proportionality, artifacts, subagents, worktrees, review, verification, delivery, or recovery after compaction."
---

# Praxis Kernel

Praxis is the operating mode for engineering work. The kernel preserves user intent, chooses the lightest safe route, and loads one current driver.

Do not load the whole plugin. Route, act, emit a transition, then load the next skill only when needed.

## Start

1. Read the user request, current repo instructions, and direct constraints.
2. Preserve direct user instructions above Praxis defaults.
3. Inspect current state only as far as needed: branch, dirty worktree, active artifact, runtime ledger, or linked issue/plan.
4. Read `references/routes.md`.
5. Choose one lane and one current driver.
6. Load the driver skill before acting.

## Lanes

- `fast`: answer, inspect, or make a tiny reversible edit.
- `focused`: one bounded implementation, doc, guide, review, or fix.
- `full`: substantial, risky, multi-file, user-facing, or multi-session work.
- `swarm`: multiple agents, worktrees, queued plans/issues, or long autonomous execution.

Use the lightest lane that preserves correctness and continuity. Escalate when work must survive handoff, parallelism, compaction, review, or future sessions.

## Current Drivers

- Conversation and shaping: `discuss`, `explore`, `design`, `spec`, `issue`, `plan`, `decide`.
- Execution and repair: `execute`, `repair`, `queue`.
- Artifact state: `context`, `handoff`.
- Services and gates: `repo-policy`, `source`, `safety`, `review`, `verify`, `subagents`, `worktree`.
- Delivery surfaces: `deliver`, `commit`, `pr`, `docs`, `agent-guide`.

Techniques such as TDD, refactoring, prototyping, checkpointing, and domain modeling are modes inside drivers, not separate public routes.

## Shared References

Read only the reference needed for the next action:

- `references/routes.md`: route table, lanes, and skill surface.
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
state: <none | exploring | draft | ready | running | blocked | implemented | review | verified | done | handoff | deferred | cancelled>
next: <skill or stop>
evidence: <command, file, review, source, report, or reason>
```

Persist the packet only when it helps a future agent, subagent, queue, compaction recovery, or long-running goal.

## Autonomy

Continue while the goal, constraints, and next safe action are clear. Ask or pause when the next step depends on a user preference, destructive operation, unavailable credential, hidden external state, or a risky decision that cannot be inferred.

## Completion

No completion claim without evidence. Route through `review`, `verify`, and `deliver` when the work is more than tiny or when the claim must survive handoff.

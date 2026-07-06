---
name: execute
description: Use when implementing one bounded plan, ready issue, or focused vertical slice. Includes TDD, refactor, and integration modes under one execution driver.
---

# Execute

## Kernel Gate

If `praxis:kernel` did not route you to this skill in the current turn, read `../kernel/SKILL.md`, `../kernel/references/control-plane.md`, and `../kernel/references/routes.md` before acting. Obey any active `Agent Control` header before this skill's local flow.

Follow the plan, but keep judgment on.

Execute one bounded unit, then emit a transition. Do not absorb final review, verification, or delivery into execution.

`execute` is for one local slice. If the active artifact requires `queue` or `subagents`, route there before editing. Do not downgrade a supervisor workflow into inline implementation because the first edit seems obvious.

## Required Reads

- Read the linked plan, issue, spec, context, or direct user request.
- Read `../kernel/references/control-plane.md` when linked artifacts contain `Agent Control`.
- Read `../kernel/references/state-machine.md` when updating durable status.
- Load `praxis:repo-policy` when commands, branch policy, or repo rules are unknown.
- Load `praxis:preflight` before starting substantial, risky, delegated, or agent-authored plans that lack a current preflight.
- Load `praxis:refine` when source or implementation contradicts the plan, issue, spec, design, or program truth.
- Load `praxis:worktree` before non-trivial implementation isolation.

## Modes

- `behavior`: implement user-visible or API behavior; prefer tests through public seams.
- `refactor`: preserve behavior while improving structure; keep checks green.
- `integration`: wire existing pieces together with contract checks.
- `generated/mechanical`: use scripts or formatters; review generated output.

## Execution Procedure

1. Restate the slice in operational terms: what will change, what will not, and what proves it.
2. Inspect the branch, dirty tree, linked artifact status, and relevant repo commands before editing.
3. If `Agent Control` names `preflight`, `queue`, `subagents`, review, or verification gates, route there before local edits.
4. Read the closest source, tests, configs, and existing patterns. Do not implement from the plan alone when code can contradict it.
5. Choose one mode: behavior, refactor, integration, or generated/mechanical.
6. For behavior and repair work, prefer a failing test or narrow repro before changing production code when practical.
7. Make the smallest coherent vertical change. Keep unrelated cleanup out unless it is required for the slice.
8. After editing, inspect your own diff against the goal, files in scope, acceptance criteria, and stop rules.
9. Run the targeted proof. If it fails, capture the exact signal and route to `repair` or `refine` when it disproves the model.
10. Return implemented work to `review`, `verify`, or `deliver`; do not self-certify final completion.

## Flow

1. Confirm the goal, scope, acceptance criteria, and correct checkout.
2. Read artifact `Agent Control` and obey its required process before editing.
3. Check for stale assumptions or blockers before editing; use preflight for substantial or agent-authored work.
4. Mark durable work `running` when using local artifacts or a tracker.
5. Implement one vertical slice.
6. Use TDD when practical for behavior or bug-fix work.
7. Keep refactors tied to the current goal.
8. Load `praxis:subagents` before delegating independent slices.
9. Run local checks that prove the slice.
10. Route to `review`, `verify`, `repair`, or `refine`.

## Adaptation

- De-escalate to a direct edit when the task is smaller than the plan implied.
- Stop and route to `refine` when code facts contradict the plan, issue, spec, design, or program truth.
- Stop and route to `subagents` or `queue` when the plan's execution mode requires it.
- Route to `preflight` when the plan, route, proof, or delegation has consequential assumptions that were not self-checked.
- Route failed checks to `repair` with the exact failing signal, or `refine` when the check is a counterexample to the current model.
- Route unclear acceptance criteria to `discuss` or `spec`.
- Route risky broad changes to `safety` before the step, not after.
- Do not claim final completion; execution returns implemented work or a blocker.

## Delegated Execution

For full or swarm work:

- create a runtime directory;
- write task briefs;
- dispatch actual workers when the route is `subagents`;
- require worker reports;
- review requirement compliance before implementation quality;
- integrate as supervisor;
- verify the integrated result.

If the plan says `Execution mode: subagents`, delegated execution is mandatory unless the user changes the mode or the tool environment cannot support workers. If workers are unavailable, route to `queue` and record the reason.

Do not satisfy a subagents plan by executing all tasks locally. The supervisor may integrate, repair, or handle small glue, but the worker slices must be dispatched when the required tool exists.

Do not satisfy a queue plan by silently doing multiple slices in one pass. Return after one bounded slice with evidence and next route.

## Self-Review Before Transition

Before leaving execution, check:

- changed files match the intended slice;
- acceptance criteria have evidence or named gaps;
- tests were added or intentionally skipped for a clear reason;
- generated output, formatting, and lockfiles are intentional;
- no unrelated user work was staged, reverted, or absorbed.

## Stop Conditions

Stop for missing dependencies, destructive steps, repeated verification failure, plan/codebase conflict, hidden context, or user tradeoff decisions.

## Transition

```text
output: implemented slice, changed files, or blocker
lane: <current lane>
state: running | blocked | implemented
result: slice-implemented | blocked
next: refine | preflight | queue | subagents | review | verify | repair | plan | discuss | stop
evidence: diff, tests, commands, report, or blocker details
```

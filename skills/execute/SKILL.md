---
name: execute
description: Use when implementing one bounded plan, ready issue, or focused vertical slice. Includes TDD, refactor, and integration modes under one execution driver.
---

# Execute

## Kernel Gate

If `praxis:kernel` did not route you to this skill in the current turn, read `../kernel/SKILL.md`, `../kernel/references/control-plane.md`, and `../kernel/references/routes.md` before acting. Obey any active `Agent Control` header before this skill's local flow.

Follow the plan, but keep judgment on.

Execute one bounded unit, then emit a transition. Do not absorb final review, verification, or delivery into execution.

## Required Reads

- Read the linked plan, issue, spec, context, or direct user request.
- Read `../kernel/references/control-plane.md` when linked artifacts contain `Agent Control`.
- Read `../kernel/references/state-machine.md` when updating durable status.
- Load `praxis:repo-policy` when commands, branch policy, or repo rules are unknown.
- Load `praxis:worktree` before non-trivial implementation isolation.

## Modes

- `behavior`: implement user-visible or API behavior; prefer tests through public seams.
- `refactor`: preserve behavior while improving structure; keep checks green.
- `integration`: wire existing pieces together with contract checks.
- `generated/mechanical`: use scripts or formatters; review generated output.

## Flow

1. Confirm the goal, scope, acceptance criteria, and correct checkout.
2. Read artifact `Agent Control` and obey its required process before editing.
3. Check for stale assumptions or blockers before editing.
4. Mark durable work `running` when using local artifacts or a tracker.
5. Implement one vertical slice.
6. Use TDD when practical for behavior or bug-fix work.
7. Keep refactors tied to the current goal.
8. Load `praxis:subagents` before delegating independent slices.
9. Run local checks that prove the slice.
10. Route to `review`, `verify`, or `repair`.

## Adaptation

- De-escalate to a direct edit when the task is smaller than the plan implied.
- Stop and replan when code facts contradict the plan, issue, or spec.
- Stop and route to `subagents` or `queue` when the plan's execution mode requires it.
- Route failed checks to `repair` with the exact failing signal.
- Route unclear acceptance criteria to `discuss` or `spec`.
- Route risky broad changes to `safety` before the step, not after.
- Do not claim final completion; execution returns implemented work or a blocker.

## Delegated Execution

For full or swarm work:

- create a runtime directory;
- write task briefs;
- require worker reports;
- review requirement compliance before implementation quality;
- integrate as supervisor;
- verify the integrated result.

If the plan says `Execution mode: subagents`, delegated execution is mandatory unless the user changes the mode or the tool environment cannot support workers. If workers are unavailable, route to `queue` and record the reason.

## Stop Conditions

Stop for missing dependencies, destructive steps, repeated verification failure, plan/codebase conflict, hidden context, or user tradeoff decisions.

## Transition

```text
output: implemented slice, changed files, or blocker
lane: <current lane>
state: running | blocked | implemented
result: slice-implemented | blocked
next: review | verify | repair | plan | discuss | stop
evidence: diff, tests, commands, report, or blocker details
```

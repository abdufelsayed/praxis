# Plan Template

Use for non-trivial, risky, queued, multi-session, or delegable implementation. A plan should let another agent execute without reconstructing the conversation. Omit empty sections.

```markdown
# <Feature Or Work Slice> Plan

Goal: <one sentence>
State: draft | ready | running | blocked | done
Linked: <issue/spec/decision/context paths, or "none">
Branch/worktree: <expected branch and path, or "not needed">

Agent Control:
- Required process: `praxis:plan` to edit this plan; `praxis:subagents` for independent multi-task execution, otherwise `praxis:queue` or `praxis:execute`.
- Execution mode: direct | queue | subagents | handoff
- Review gate: `praxis:preflight` before ready for full/swarm/risky work; `praxis:grill-me` only for unresolved user/product judgment; task review after each delegated task; final review before delivery for multi-task/risky work.
- Verification gate: every `CHK-*` must pass or be marked blocked/unverified before delivery.

## Goal Contract

- Outcome:
- Constraints:
- Stop conditions:
- Verification:
- User-preemption or approval points:

## Context

- <fact, constraint, repo pattern, or decision the executor needs>

## Scope

In:
- <observable work>

Out:
- <explicit non-goal>

## Acceptance Criteria

- AC-1: <behavior, result, command, or manual check>

## Tasks

### T1: <name>

Files:
- Create: `<path>`
- Modify: `<path>`
- Test: `<path or command>`

Steps:
- [ ] <small executable step>
- [ ] CHK-1: Run `<command>` and expect `<signal>`

Review:
- <none | task review | delegated review | final diff review>

## Verification Matrix

| ID | Claim | Check | Expected Signal | Status |
| --- | --- | --- | --- | --- |
| CHK-1 | <claim> | `<command or manual check>` | <signal> | pending |

## Risks And Blockers

- <risk, blocker, rollback note, or "none known">

## Preflight Notes

- <self-check objection, evidence, resulting plan change, or "not needed because ...">

## Challenge Notes

- <user-facing challenge question, answer/source fact, resulting plan change, or "not needed because ...">

## Handoff

- Current state:
- Next command:
- Anything not verified:
```

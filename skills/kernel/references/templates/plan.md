# Plan Template

Use for non-trivial, risky, queued, multi-session, or delegable implementation. A plan should let another agent execute without reconstructing the conversation. Omit empty sections.

```markdown
# <Feature Or Work Slice> Plan

Goal: <one sentence>
State: draft | ready | running | blocked | done
Truth Status: draft | provisional | accepted | superseded | invalidated
Linked: <issue/spec/decision/context paths, or "none">
Program: <program path or "none">
Depends on:
Supersedes:
Superseded by:
Evidence:
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

Outcome:
- <one independently reviewable result>

Files:
- Create: `<path>`
- Modify: `<path>`
- Test: `<path or command>`

Ownership:
- Owns: `<files, package, API, or behavior>`
- Depends on: `<task IDs, interfaces, decisions, or "none">`
- Must not touch: `<files/contracts another task owns, or "none">`

Interfaces:
- Consumes: `<function, API, schema, component, command, or "none">`
- Produces: `<function, API, schema, component, command, or "none">`

Acceptance:
- AC-T1-1: <checkable task outcome>

Steps:
- [ ] <small executable step>
- [ ] CHK-1: Run `<command>` and expect `<signal>`

Review:
- Requirement focus: <what the reviewer must compare against>
- Quality focus: <risk, edge case, integration, test, or "standard task review">

Stop Rules:
- Stop if <hidden context, destructive step, file collision, missing dependency, or "none beyond normal stop rules">

## Verification Matrix

| ID | Claim | Check | Expected Signal | Status |
| --- | --- | --- | --- | --- |
| CHK-1 | <claim> | `<command or manual check>` | <signal> | pending |

## Risks And Blockers

- <risk, blocker, rollback note, or "none known">

## Truth Dependencies

- <program/design/spec/decision/ASM/HYP/CAND IDs this plan depends on>
- Stop and route to `praxis:refine` if <counterexample or invalidation condition>.

## Preflight Notes

- <self-check objection, evidence, resulting plan change, or "not needed because ...">

## Challenge Notes

- <user-facing challenge question, answer/source fact, resulting plan change, or "not needed because ...">

## Handoff

- Current state:
- Next command:
- Anything not verified:
```

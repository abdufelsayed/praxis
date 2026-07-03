# Plan Template

Use for non-trivial, risky, queued, multi-session, or delegable implementation. A plan should let another agent execute without reconstructing the conversation. Omit empty sections.

```markdown
# <Feature Or Work Slice> Plan

Goal: <one sentence>
State: draft | ready | running | blocked | done
Linked: <issue/spec/decision/context paths, or "none">
Branch/worktree: <expected branch and path, or "not needed">

## Context

- <fact, constraint, repo pattern, or decision the executor needs>

## Scope

In:
- <observable work>

Out:
- <explicit non-goal>

## Acceptance Criteria

- <behavior, result, command, or manual check>

## Tasks

### Task 1: <name>

Files:
- Create: `<path>`
- Modify: `<path>`
- Test: `<path or command>`

Steps:
- [ ] <small executable step>
- [ ] Run `<command>` and expect `<signal>`

## Review And Verification

- Review gate: <none | plan review | task review | final diff review>
- Verification:
  - `<command>` -> <expected signal>
- Manual checks:
  - <check, or "none">

## Risks And Blockers

- <risk, blocker, rollback note, or "none known">

## Handoff

- Current state:
- Next command:
- Anything not verified:
```

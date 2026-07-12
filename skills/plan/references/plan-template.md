# [Change] Implementation Plan

## Outcome

State the observable result in one sentence.

## Scope

- Include: behavior this plan delivers.
- Exclude: nearby work that must stay unchanged.

## Global Constraints

- Copy exact project-wide requirements that every task must respect.

## Tasks

### Task 1: Independently testable result

**Files**
- Create: `path`
- Modify: `path`
- Test: `path`

**Interfaces**
- Consumes: none
- Produces: exact symbol, type, file format, or behavior

**Change**
- Required behavior and edge cases.

**Check**
- Run: `command`
- Expected: decisive output or state.

Repeat only for coherent tasks. Put contracts before consumers.

## Risks

List only risks that change sequencing, compatibility, rollback, or verification.

## Completion

- `integrated command` — expected final signal
- Behavior that requires direct observation rather than a command

## Execution

Use `execute-plan` to carry out this plan inline. Use `dispatch-subagents` only for tasks marked independent when delegation is allowed.

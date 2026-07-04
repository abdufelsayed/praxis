# Handoff Template

Use when another agent, thread, or future session must continue the work. Omit empty sections.

```markdown
# <Workstream> Handoff

Date: <YYYY-MM-DD>

## Goal

<What the work is trying to accomplish.>

## Current State

- Status: <running | blocked | paused | ready | done>
- Branch/worktree: <branch/path if relevant>
- Tracker: <issue/plan/PR if relevant>

## What Changed

- <file, artifact, command, or behavior changed>

## Decisions And Constraints

- <choice, user preference, repo rule, or constraint>

## Verification

- `<command or check>` -> <result>
- Not verified: <gap or "none known">

## Next Action

<The next concrete step for the receiving agent.>

## Risks Or Blockers

- <risk/blocker, owner, needed input>
```

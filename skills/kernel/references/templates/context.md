# Context Template

Use for living state that helps a future agent resume without replaying the conversation. Omit empty sections.

```markdown
# <Project, Session, or Workstream> Context

Last updated: <YYYY-MM-DD>

## Current Truth

- <fact, convention, accepted decision, active constraint, branch, or blocker>

## Active Goal

<What we are trying to accomplish now.>

## State

- Status: <active | blocked | paused | done>
- Branch/worktree: <branch/path if relevant>
- Tracker: <issue/plan/PR if relevant>

## Open Questions Or Blockers

- <question/blocker, owner, needed decision>

## Next Action

<One concrete next step or "none".>

## Links

- <related decision/spec/issue/plan/evidence/handoff/source path>
```

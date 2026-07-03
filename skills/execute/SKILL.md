---
name: execute
description: Use when implementing a plan, ready issue, or focused vertical slice. Executes one bounded unit, updates state when needed, and verifies progress.
---

# Execute

Follow the plan, but keep judgment on.

Load this skill before implementing a plan, issue, or vertical slice. Execute one bounded unit, then emit a transition.

If execution requires a branch, parallel worker, behavior change, review, or completion claim, load the named downstream skill before acting in that domain.

Read `../workflow/references/lifecycle.md` when updating durable status or moving queued work.

## Flow

1. Read the full plan or issue and linked context.
2. Confirm the correct branch/worktree. For non-trivial work, load `praxis:worktree` before editing unless the user or repo says otherwise.
3. Check for stale assumptions or blockers before editing.
4. Set durable status to running when using local artifacts.
5. Execute one vertical slice at a time.
6. Load `praxis:tdd` for behavior changes and bug fixes when practical.
7. Load `praxis:subagents` before delegating independent slices when allowed.
8. Run verification before marking checkboxes done.
9. Load `praxis:review` and `praxis:verify` before completion.

Stop for missing dependencies, destructive steps, repeated verification failure, plan/codebase conflict, or user tradeoff decisions.

## Transition

```text
output: implemented slice, changed files, or blocker
state: running | blocked | implementation-complete
next: review | verify | debug | plan | discuss | stop
evidence: commits, diff, tests, commands, or blocker details
```

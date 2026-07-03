---
name: plan
description: Use when work is large, risky, multi-file, queued, multi-session, requires review, should feed a plan loop, or needs executable steps before implementation. Writes plans another agent can execute without replaying the conversation.
---

# Plan

Write executable recipes, not essays.

## Required Reads

Load this skill before writing or reshaping an executable plan. If planning depends on repo conventions, load `praxis:setup` or `praxis:conventions` first. If implementation is expected, load `praxis:worktree` before choosing branch or worktree expectations.

Read `../workflow/references/artifacts.md` for the canonical plan shape.
Read `../workflow/references/lifecycle.md` before moving a plan between draft, ready, running, blocked, or done.
Read `../workflow/references/persistence.md` before choosing a local plan path.

## Location

Use repo convention first. Otherwise:

```text
.agents/plans/draft/YYYY-MM-DD-short-title.md
```

## Include

- goal;
- linked issue/spec;
- context the worker needs;
- files likely to change;
- branch/worktree expectation for execution, using Conventional-Commit-style branch names when a worktree is needed;
- acceptance criteria;
- vertical tasks with checkboxes;
- exact commands and expected signals;
- blockers and rollback notes.

## Rules

- Prefer behavior tests over implementation tests.
- Avoid placeholders such as "handle edge cases" or "add tests" without specifics.
- Keep tasks small enough for execution and review.
- Load `praxis:review` before moving a plan to ready.

## Next Skills

Load `praxis:execute` when the plan is ready to run. Load `praxis:checkpoint` when plan work pauses or risks compaction.

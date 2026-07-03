---
name: plan
description: Use when work is large, risky, multi-file, queued, multi-session, requires review, should feed a plan loop, or needs executable steps before implementation. Writes plans another agent can execute without replaying the conversation.
---

# Plan

Write executable recipes, not essays.

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
- acceptance criteria;
- vertical tasks with checkboxes;
- exact commands and expected signals;
- blockers and rollback notes.

## Rules

- Prefer behavior tests over implementation tests.
- Avoid placeholders such as "handle edge cases" or "add tests" without specifics.
- Keep tasks small enough for execution and review.
- Use `praxis:review` before moving a plan to ready.

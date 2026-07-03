---
name: plan
description: Use when work is large, risky, multi-file, queued, multi-session, requires review, should feed a plan loop, or needs executable steps before implementation. Writes plans another agent can execute without replaying the conversation.
---

# Plan

Write executable recipes, not essays.

## Required Reads

Load this skill before writing or reshaping an executable plan. If planning depends on repo conventions, load `praxis:setup` or `praxis:conventions` first. If implementation is expected, load `praxis:worktree` before choosing branch or worktree expectations.

Read `../workflow/references/lifecycle.md` before moving a plan between draft, ready, running, blocked, or done.
Read `../workflow/references/persistence.md` before choosing a local plan path.
Use `../workflow/references/templates/plan.md` for durable plan files, especially when another agent, a queue, or a future session may execute the plan.

## Location

Use repo convention first. Otherwise:

```text
.agents/plans/draft/YYYY-MM-DD-short-title.md
```

## Contract

Plans turn intent into executable work.

Minimal plans include:

- goal;
- scope;
- ordered steps;
- verification.

Full implementation plans include:

- goal and linked issue/spec;
- context the worker needs;
- constraints and acceptance criteria;
- branch/worktree expectation;
- task list with checkbox steps;
- per-task files, interfaces, commands, and expected signals;
- review and verification gates;
- blockers, rollback, and handoff notes.

## Rules

- Prefer behavior tests over implementation tests.
- Avoid placeholders such as "handle edge cases" or "add tests" without specifics.
- Keep tasks small enough for execution and review.
- Do not make every plan full-size. Match the contract to workflow level and risk.
- Load `praxis:review` before moving a plan to ready.

## Transition

Output:

```text
output: plan path or chat plan
state: draft | ready | blocked
next: execute | review | discuss | stop
evidence: linked spec/issue, code facts, commands, or unresolved blockers
```

## Next Skills

Load `praxis:execute` when the plan is ready to run. Load `praxis:handoff` when plan work pauses or transfers.

---
name: plan
description: Use when work needs executable steps before implementation, especially large, risky, multi-file, queued, multi-session, reviewed, or delegable work.
---

# Plan

Write executable recipes, not essays.

## Required Reads

Load this skill before writing or reshaping an executable plan. Load `praxis:repo-policy` only when repo rules affect the plan.

Use `../kernel/references/templates/plan.md` for durable plan files, especially when another agent, a queue, or a future session may execute the plan.
Read `../kernel/references/state-machine.md` only when moving a plan between draft, ready, running, blocked, or done.
Read `../kernel/references/storage-policy.md` only when the repo has no established plan path.

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

Full plans may include:

- goal and linked issue/spec;
- context the worker needs;
- constraints and acceptance criteria;
- branch/worktree expectation when implementation will start;
- task list with checkbox steps;
- per-task files, interfaces, commands, and expected signals;
- review and verification gates;
- blockers, rollback, and handoff notes.

## Rules

- Prefer behavior tests over implementation tests.
- Avoid placeholders such as "handle edge cases" or "add tests" without specifics.
- Keep tasks small enough for execution and review.
- Do not make every plan full-size. Match the contract to workflow level and risk.
- Review before moving a risky or delegable plan to ready.

## Transition

Output:

```text
output: plan path or chat plan
state: draft | ready | blocked
next: execute | review | discuss | stop
evidence: linked spec/issue, code facts, commands, or unresolved blockers
```

## Next Skills

Load `praxis:execute` when the plan is ready to run. Load `praxis:worktree` before implementation isolation. Load `praxis:handoff` when plan work pauses or transfers.

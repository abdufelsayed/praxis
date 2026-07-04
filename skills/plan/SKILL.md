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
- For full or swarm plans, give tasks and checks stable IDs such as `T1` and `CHK-1`.

## Adaptation

- If execution discovers the plan is wrong, update or replace the plan before continuing.
- If a task cannot be verified, add a concrete check, manual proof, or blocker.
- If work can split safely, mark ownership and independent checks for each slice.
- If scope grows beyond the user's request, stop and route to `discuss`, `spec`, or `issue`.
- Remove stale steps instead of preserving them as warnings unless they prevent a likely future mistake.

## Ready Gate

A plan is `ready` only when the executor can start without reconstructing context: scope is bounded, task order is clear, blockers are named, required checks are mapped to claims, and branch/worktree expectations are known or explicitly unnecessary.

## Transition

Output:

```text
output: plan path or chat plan
lane: <current lane>
state: draft | ready | blocked
result: plan-created | plan-updated | plan-ready
next: worktree | execute | review | handoff | discuss | stop
evidence: linked spec/issue, code facts, commands, or unresolved blockers
```

## Next Skills

Load `praxis:execute` when the plan is ready to run. Load `praxis:worktree` before implementation isolation. Load `praxis:handoff` when plan work pauses or transfers.

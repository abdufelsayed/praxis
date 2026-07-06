---
name: plan
description: Use when work needs executable steps before implementation, especially large, risky, multi-file, queued, multi-session, reviewed, or delegable work.
---

# Plan

## Kernel Gate

If `praxis:kernel` did not route you to this skill in the current turn, read `../kernel/SKILL.md`, `../kernel/references/control-plane.md`, and `../kernel/references/routes.md` before acting. Obey any active `Agent Control` header before this skill's local flow.

Write executable recipes, not essays. A plan that says `subagents` must be usable as a source for task briefs; a plan that says `queue` must be runnable one slice at a time without re-discovering context.

## Required Reads

Load this skill before writing or reshaping a durable executable plan. Load `praxis:program` when the plan depends on durable program truth. Load `praxis:refine` when evidence invalidates the plan or a truth dependency. Load `praxis:repo-policy` only when repo rules affect the plan.

If the user only needs a quick conversational approach and no future owner, queue, delegation, review, resume, or execution state depends on it, do not call it a plan. Answer through `praxis:discuss`, `praxis:design`, or direct execution instead.

Use `../kernel/references/templates/plan.md` for durable plan files, especially when another agent, a queue, or a future session may execute the plan.
Read `../kernel/references/state-machine.md` only when moving a plan between draft, ready, running, blocked, or done.
Read `../kernel/references/storage-policy.md` only when the repo has no established plan path.
Load `praxis:preflight` before marking a full, swarm, risky, architecture-shaping, agent-authored, or weakly verified plan ready.
Load `praxis:grill-me` only when unresolved user/product judgment or proposal pressure remains after preflight.

## Location

Use repo convention first. Otherwise:

```text
.agents/plans/draft/YYYY-MM-DD-short-title.md
```

## Contract

Plans turn intent into executable work.

Every saved plan must include `Agent Control` with required process, execution mode, review gate, and verification gate. If the header is missing, repair the plan before executing it.

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
- task list with stable IDs such as `T1`, `T2`;
- per-task files, ownership, interfaces, commands, expected signals, and review focus;
- review and verification gates;
- blockers, rollback, and handoff notes.
- truth dependencies and invalidation stop rules.

## Plan Writing Procedure

1. Name the real outcome in one sentence.
2. Read the linked user request, issue, spec, decision, code facts, and repo policy needed to make the work executable.
3. Decide whether this needs a durable plan. If the next executor does not need saved state, answer or execute directly instead.
4. Choose execution mode before writing tasks: `direct`, `queue`, `subagents`, or `handoff`.
5. Write `Agent Control` first so future agents know the required process before reading the body.
6. Turn acceptance criteria into concrete checks. Give non-trivial checks stable IDs such as `CHK-1`.
7. Split tasks by reviewable outcome, not by vague activity. Each task should say what changes, where, who owns the files, and how it is checked.
8. For `subagents`, make each task independently extractable: include exact scope, files, interfaces/dependencies, acceptance criteria, checks, stop rules, and review focus in that task section.
9. For `queue`, make task order and dependency reasons explicit so the supervisor can execute one slice at a time.
10. State branch/worktree expectation, ownership boundaries, blockers, and stop conditions.
11. Name truth dependencies from program/design/spec/decision records and stop conditions that should route to `refine`.
12. Run preflight when assumptions, scope, sequencing, delegation, or proof could change execution.
13. Self-review the plan as the next agent: if they would need to rediscover intent, files, commands, proof, or worker boundaries, tighten the plan before marking it ready.

## Execution Handoff

- `direct`: one bounded executor can run the plan now; route to `execute`.
- `queue`: tasks are ordered, coupled, or supervisor-owned; route to `queue` and run one slice at a time.
- `subagents`: tasks are independent enough for bounded workers; route to `subagents` and create briefs/reports/reviews through actual dispatch.
- `handoff`: another session or human must continue; route to `handoff` with the plan as the source of work.

Do not leave execution mode implicit on a saved plan. Do not make workers infer task boundaries from prose.

## Rules

- Prefer behavior tests over implementation tests.
- Avoid placeholders such as "handle edge cases" or "add tests" without specifics.
- Keep tasks small enough for execution and review.
- Do not make every plan full-size. Match the contract to workflow level and risk.
- Review before moving a risky or delegable plan to ready.
- For full or swarm plans, give tasks and checks stable IDs such as `T1` and `CHK-1`.
- For independent multi-task plans, set `Execution mode: subagents` unless the user or environment requires `queue`.
- For tightly coupled multi-step work, set `Execution mode: queue`; do not leave execution mode implicit.
- Do not make a subagent read the whole plan when a task section can carry its bounded work.
- Do not put exact values only in a shared preamble when a delegated worker needs them; copy binding values into the task or make the brief generator include them.

## Adaptation

- If execution discovers the plan is wrong, update or replace the plan before continuing.
- If execution discovers the plan's underlying truth is wrong, route to `refine` before continuing.
- If a task cannot be verified, add a concrete check, manual proof, or blocker.
- If work can split safely, mark ownership and independent checks for each slice.
- If scope grows beyond the user's request, stop and route to `discuss`, `spec`, or `issue`.
- Remove stale steps instead of preserving them as warnings unless they prevent a likely future mistake.

## Ready Gate

A plan is `ready` only when the executor can start without reconstructing context: scope is bounded, task order is clear, blockers are named, required checks are mapped to claims, and branch/worktree expectations are known or explicitly unnecessary.

A plan is not `ready` without an `Agent Control` header and explicit execution mode.

Full, swarm, risky, architecture-shaping, or agent-authored plans are not `ready` until `praxis:preflight` has challenged the agent's route and assumptions or the user explicitly accepts skipping that gate.

If preflight finds a user/product decision that can change execution, route to `praxis:grill-me` or `praxis:discuss` before marking ready.

## Transition

Output:

```text
output: plan path or blocker
lane: <current lane>
state: draft | ready | blocked
result: plan-created | plan-updated | plan-ready
next: program | refine | preflight | grill-me | worktree | execute | queue | subagents | review | verify | handoff | discuss | stop
evidence: linked spec/issue, code facts, commands, or unresolved blockers
```

## Next Skills

Load `praxis:program` when the plan depends on durable evolving truth. Load `praxis:refine` when the plan is contradicted or its dependencies are invalidated. Load `praxis:preflight` when the plan needs self-check before ready/execution. Load `praxis:worktree` before non-trivial implementation isolation. Load `praxis:execute` for direct plans, `praxis:queue` for serial plans, and `praxis:subagents` for fork/join plans. Load `praxis:handoff` when plan work pauses or transfers.

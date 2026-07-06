---
name: issue
description: Use when creating, splitting, triaging, syncing, or processing durable work items in GitHub, Linear, repo trackers, or local issue markdown.
---

# Issue

## Kernel Gate

If `praxis:kernel` did not route you to this skill in the current turn, read `../kernel/SKILL.md`, `../kernel/references/control-plane.md`, and `../kernel/references/routes.md` before acting. Obey any active `Agent Control` header before this skill's local flow.

Issues hold tracked intent. Plans hold execution details. A ready issue should make the execution route obvious without pretending to be the plan.

## Required Reads

Use `../kernel/references/templates/issue.md` for local issue files.
Read `../kernel/references/state-machine.md` only when moving local issue state.
Read `../kernel/references/storage-policy.md` only when the repo has no established tracker or issue path.
Load `praxis:program` when the issue depends on durable program truth.
Load `praxis:refine` when an issue is stale because its truth dependency was invalidated.
Load `praxis:preflight` before marking substantial, risky, broad, or agent-authored issues ready.

If the work is not going into a tracker or local issue file, do not call it an issue. Keep it in `discuss`, `spec`, or `plan` until it becomes trackable.

## Flow

1. Use the repo tracker when configured.
2. Otherwise use local markdown under `.agents/issues/`.
3. Triage messy input into one or more vertical slices.
4. Write each slice with observable acceptance criteria.
5. Make ownership, truth dependencies, and execution dependencies explicit.
6. Choose the likely route: direct, needs plan, queue, subagents, or handoff.
7. Run preflight before ready when scope, ownership, acceptance criteria, or dependencies could be wrong.
8. Link a plan path or mark `needs plan`.

## Splitting

- One issue should have one owner, one outcome, and one verification story.
- Split when acceptance criteria can complete independently or can run in parallel.
- Keep related cleanup as follow-up unless it is required for the slice.
- Block instead of inventing missing product requirements.
- If several issues can be implemented independently, mark them as candidates for `subagents`; if they share files, contracts, or sequencing, prefer `queue`.

## Output

An issue is ready only when it has scope, acceptance criteria, dependencies, truth status, and links to related programs, designs, specs, plans, branches, PRs, or evidence.

Substantial, risky, broad, or agent-authored issues are not ready until `praxis:preflight` has challenged scope, ownership, acceptance criteria, and proof.

Every local issue must include `Agent Control` with required process, execution mode, review gate, and verification gate. Tracker issues should carry the same fields when the tracker format allows it.

## Contract

- Intent or problem.
- Scope.
- Acceptance criteria.
- Dependencies.
- Status.
- Links to program, design, spec, plan, branch, PR, or evidence.
- Agent Control.
- Execution route and owner when known.

## Local States

```text
.agents/issues/inbox/
.agents/issues/draft/
.agents/issues/ready/
.agents/issues/running/
.agents/issues/blocked/
.agents/issues/done/
```

Do not invent product requirements. Block with the smallest question when acceptance criteria are missing.

## Transition

```text
output: issue path, tracker issue, or blocker
lane: <current lane>
state: inbox | draft | ready | running | blocked | done
result: issue-created | issue-updated | triaged
next: program | refine | preflight | plan | execute | queue | subagents | handoff | discuss | stop
evidence: acceptance criteria, dependency, link, or blocker
```

## Next Skills

Load `praxis:program` when the issue belongs to durable evolving truth. Load `praxis:refine` when the issue depends on invalidated truth. Load `praxis:preflight` when the issue needs self-check before ready. Load `praxis:plan` when execution details are non-trivial. Load `praxis:queue` for serial batches and `praxis:subagents` for independent delegated work.

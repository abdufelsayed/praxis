---
name: subagents
description: "Use when allowed delegation can improve speed or quality and the agent should actually dispatch worker, reviewer, investigator, or QA subagents. Trigger for plans with Execution mode: subagents, independent implementation slices, supervised swarm work, parallel investigation, delegated review, or when the user asks to run agents/subagents. Requires runtime briefs, native subagent dispatch, worker reports, review packages, and supervisor-owned integration."
---

# Subagents

## Kernel Gate

If `praxis:kernel` did not route you to this skill in the current turn, read `../kernel/SKILL.md`, `../kernel/references/control-plane.md`, and `../kernel/references/routes.md` before acting. Obey any active `Agent Control` header before this skill's local flow.

Subagents are delegates, not durable job infrastructure. The supervisor owns truth, integration, verification, and user communication.

This is a first-class execution driver for fork/join work. Use it when bounded workers should actually do implementation, investigation, review, or QA. Do not treat it as a helper checklist around local execution.

Writing briefs is not delegation. `subagents` means the supervisor actually dispatches workers through the current harness's subagent/delegation tool, reads their reports, reviews their output, and integrates accepted work.

## Required Reads

Read `../kernel/references/runtime.md` for runtime primitives, file layout, and delegation loop.
Read `../kernel/references/control-plane.md` before executing a plan with `Execution mode: subagents`.
Load `praxis:program` when delegated work belongs to a long-running program.
Load `praxis:refine` when worker output, review, or integration invalidates a brief, plan, assumption, or artifact.
Load `praxis:preflight` before dispatching a substantial or agent-authored task split that has not been self-checked.
Load `praxis:worktree` before implementation workers that need isolated branches.

If the current harness has no subagent/delegation capability, do not simulate delegation by doing the task yourself under this skill. Record the reason and route to `queue`. Use `execute` only after the artifact or route is deliberately revised down to one bounded local slice.

## Runtime Files

For full or swarm work, create a runtime directory:

```bash
<this-skill-dir>/scripts/runtime-dir <run-id> <full|swarm>
```

Use it for:

- task briefs;
- worker reports;
- review packages;
- progress ledger;
- active-run recovery after compaction.

Runtime files are not durable artifacts. Distill only current truth, evidence, future work, or handoff.
Use the program artifact, not runtime, as the durable truth source for long-running work.

## Delegate Roles

- Investigator: answers a bounded question with evidence.
- Worker: implements a slice with clear ownership.
- Reviewer: checks requirement compliance and implementation quality.
- QA runner: verifies a final claim or reproduces a risk.

## Brief Requirements

Each delegate gets:

- exact scope;
- parent plan, issue, spec, or requirement IDs when available;
- program/design/truth dependency IDs when relevant;
- files or responsibility;
- relevant plan/spec/context;
- constraints;
- allowed tools or commands;
- acceptance criteria and checks with stable IDs when work is non-trivial;
- worktree path and branch name when editing;
- expected output and report path;
- stop rules;
- instruction not to revert unrelated work.

Use `implementer-prompt.md`, `task-reviewer-prompt.md`, and `final-reviewer-prompt.md` as the default scaffolds for implementation, task review, and final integrated review. Tighten them for the harness and task; do not replace them with vague natural-language requests.

## Dispatch Contract

When a worker is required:

1. Create or identify the runtime directory.
2. Create a task brief file. If executing a plan task, extract that task's text into the brief instead of making the worker read the whole plan.
3. Record the task base revision before dispatching implementation work.
4. Dispatch a fresh worker with the current harness's native subagent/delegation tool. Give it the brief path, report path, write scope, stop rules, and a short scene-setting sentence.
5. Do non-overlapping supervisor work while workers run; do not reimplement the delegated task locally.
6. Read the worker report and inspect the diff or evidence before accepting anything.
7. Generate a task review package from the recorded base to the worker head, then dispatch a reviewer or run the review gate.
8. Send counterexamples or invalidations to `refine`; send Critical or Important findings to a fix worker or `execute`/`repair`, then re-review.
9. Mark the task complete only after worker report, review, and required checks are acceptable.

For independent tasks with disjoint ownership and isolated worktrees, dispatch multiple workers before waiting. For shared files, shared contracts, or unclear merge order, run workers sequentially under one supervisor.

No worker dispatch means no `subagents` execution. If dispatch is unavailable, update progress with `subagents unavailable` and route to `queue`.

## Controller Loop

Run the loop visibly:

1. Read the plan, issue, spec, and global constraints once.
2. Create runtime progress with all task IDs and states.
3. For each ready task or parallel batch:
   - create task brief;
   - record base revision;
   - dispatch worker;
   - wait for report;
   - inspect report and diff;
   - create review package;
   - dispatch reviewer or run task review;
   - fix and re-review until Critical/Important findings are resolved or blocked.
4. Integrate accepted tasks in dependency order.
5. Run supervisor-owned verification on the integrated result.
6. Run final integrated review for multi-task, multi-worker, worktree, public API, or risky results, using the verification evidence as one review input.
7. Route to `refine`, `deliver`, `handoff`, or `repair`.

The supervisor may keep moving on non-overlapping coordination while workers run, but must not reimplement their assigned slices locally.

## Worker Outcomes

Every worker reports exactly one outcome:

- `DONE`: task complete and checks passed.
- `DONE_WITH_CONCERNS`: task complete, but risk or verification gap remains.
- `NEEDS_CONTEXT`: hidden context or user choice is required.
- `BLOCKED`: dependency, conflict, or external state prevents progress.
- `FAILED`: attempted work did not produce a usable result.

Worker reports are input, not proof. Inspect diffs, resolve conflicts, and verify independently.

## Supervisor Controls

- Keep active task status in runtime `progress.md`.
- Use bounded concurrency and disjoint file ownership.
- Pause spawning when review or verification fails.
- Pause spawning when program truth or task briefs are invalidated.
- Interrupt, cancel, or rebrief stale workers before integrating over their files.
- Distill only durable residue into artifacts.

## Supervisor Process

1. Choose slices that can be understood, checked, and integrated independently.
2. Preflight the split when task boundaries, ownership, checks, or merge order could be wrong.
3. Assign one owner per file set or contract unless the brief explains the merge order.
4. Create briefs and report paths before dispatch.
5. Dispatch a fresh worker per implementation task unless the user or tool environment prevents it.
6. Continue non-overlapping supervisor work while delegates run.
7. Read worker reports, then inspect the relevant diff or evidence.
8. Generate a review package or otherwise identify the exact changed files before task review.
9. Review requirement compliance before implementation quality.
10. Send Critical or Important findings back to a fix worker, `execute`, or `repair`, and re-review.
11. Integrate accepted work in dependency order.
12. Run supervisor-owned verification and final integrated review on the integrated result before delivery.
13. Record only coordination state that affects resume, review, verification, refinement, or delivery.

Stale or conflicting worker output must be rebriefed, salvaged through source reading, or rejected. It must not be merged by trust.
Worker output that contradicts the program or plan must route through `refine` before integration over dependent work.

## Brief, Report, Review Package

For implementation delegation:

1. Create a runtime directory with `scripts/runtime-dir`.
2. Create one task brief per worker with `scripts/task-brief` or the same structure. Prefer `scripts/task-brief <runtime-dir> <task-id> <title> <plan-file>` so the task text is extracted from the plan into the brief.
3. Include `Agent Control`, exact scope, files, acceptance criteria, checks, report path, and stop rules in the brief.
4. Dispatch the worker with the brief path and report path. Tell the worker to write the full report to the file and return only status, changed files/commits, checks summary, concerns, and the report path.
5. Require the worker report to name outcome, changed files, checks run, skipped checks, blockers, and follow-up risks.
6. Before review, create a bounded review package with `scripts/review-package` using the recorded task base and current head, or name the exact diff/files/evidence to inspect.
7. Dispatch the reviewer with the brief path, report path, and review package path.
8. Send review findings back to the worker or execute/repair path until Critical and Important findings are resolved.

Do not ask a worker to "handle the whole plan" when a bounded brief can carry the task. Do not ask a reviewer to inspect an unbounded repo when a review package can define the review surface.

## Required Stop Rules

- Do not move to the next task while the current task has unresolved Critical or Important findings.
- Do not treat a generated brief as execution. A native worker dispatch must occur unless delegation is unavailable.
- Do not accept a worker report without changed files, checks, and verification gaps.
- Do not let implementer self-review replace task review.
- Do not make a reviewer inspect the whole repo when a review package or changed-file list can bound the review.
- Do not mark the integrated result done from worker reports; final proof belongs to the supervisor.
- Do not continue dispatching from invalidated program truth or stale task briefs.
- Do not dispatch a worker with "do the whole plan" when a bounded task brief can be generated.
- Do not paste long accumulated history into later dispatches; use paths to briefs, reports, packages, and current constraints.

## Review Loop

1. Check requirement compliance against the brief, plan, issue, or spec.
2. Then check implementation quality.
3. Return Critical and Important findings to execution.
4. Resolve `Cannot verify from diff` through source reading, tests, or a follow-up task.
5. Defer only with a clear owner or future issue.

## Transition

```text
output: worker result, review result, QA result, or blocker
lane: <current lane>
state: running | blocked | implemented
result: delegated | returned | integrated | failed
next: program | refine | preflight | worktree | queue | execute | repair | review | verify | deliver | context | handoff | stop
evidence: worktree path, report, diff, tests, or unresolved question
```

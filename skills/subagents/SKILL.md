---
name: subagents
description: "Use when allowed delegation can improve speed or quality: investigation, implementation slices, review, QA, or supervised swarm work. Uses briefs, reports, review packages, and supervisor-owned integration."
---

# Subagents

## Kernel Gate

If `praxis:kernel` did not route you to this skill in the current turn, read `../kernel/SKILL.md`, `../kernel/references/control-plane.md`, and `../kernel/references/routes.md` before acting. Obey any active `Agent Control` header before this skill's local flow.

Subagents are delegates, not durable job infrastructure. The supervisor owns truth, integration, verification, and user communication.

## Required Reads

Read `../kernel/references/runtime.md` for runtime primitives, file layout, and delegation loop.
Read `../kernel/references/control-plane.md` before executing a plan with `Execution mode: subagents`.
Load `praxis:worktree` before implementation workers that need isolated branches.

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

## Delegate Roles

- Investigator: answers a bounded question with evidence.
- Worker: implements a slice with clear ownership.
- Reviewer: checks requirement compliance and implementation quality.
- QA runner: verifies a final claim or reproduces a risk.

## Brief Requirements

Each delegate gets:

- exact scope;
- parent plan, issue, spec, or requirement IDs when available;
- files or responsibility;
- relevant plan/spec/context;
- constraints;
- allowed tools or commands;
- acceptance criteria and checks with stable IDs when work is non-trivial;
- worktree path and branch name when editing;
- expected output and report path;
- stop rules;
- instruction not to revert unrelated work.

Use `implementer-prompt.md`, `task-reviewer-prompt.md`, and `final-reviewer-prompt.md` as prompt scaffolds when useful.

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
- Interrupt, cancel, or rebrief stale workers before integrating over their files.
- Distill only durable residue into artifacts.

## Supervisor Process

1. Choose slices that can be understood, checked, and integrated independently.
2. Assign one owner per file set or contract unless the brief explains the merge order.
3. Dispatch a fresh worker per implementation task unless the user or tool environment prevents it.
4. Continue non-overlapping supervisor work while delegates run.
5. Read worker reports, then inspect the relevant diff or evidence.
6. Generate a review package or otherwise identify the exact changed files before task review.
7. Review requirement compliance before implementation quality.
8. Send Critical or Important findings back to execution or repair and re-review.
9. Integrate accepted work in dependency order.
10. Run supervisor-owned final review and verification on the integrated result.
11. Record only coordination state that affects resume, review, verification, or delivery.

Stale or conflicting worker output must be rebriefed, salvaged through source reading, or rejected. It must not be merged by trust.

## Brief, Report, Review Package

For implementation delegation:

1. Create a runtime directory with `scripts/runtime-dir`.
2. Create one task brief per worker with `scripts/task-brief` or the same structure.
3. Include `Agent Control`, exact scope, files, acceptance criteria, checks, report path, and stop rules in the brief.
4. Require the worker report to name outcome, changed files, checks run, skipped checks, blockers, and follow-up risks.
5. Before review, create a bounded review package with `scripts/review-package` or name the exact diff/files/evidence to inspect.
6. Send review findings back to the worker or execute/repair path until Critical and Important findings are resolved.

Do not ask a worker to "handle the whole plan" when a bounded brief can carry the task. Do not ask a reviewer to inspect an unbounded repo when a review package can define the review surface.

## Required Stop Rules

- Do not move to the next task while the current task has unresolved Critical or Important findings.
- Do not accept a worker report without changed files, checks, and verification gaps.
- Do not let implementer self-review replace task review.
- Do not make a reviewer inspect the whole repo when a review package or changed-file list can bound the review.
- Do not mark the integrated result done from worker reports; final proof belongs to the supervisor.

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
next: review | verify | execute | deliver | context | handoff | stop
evidence: worktree path, report, diff, tests, or unresolved question
```

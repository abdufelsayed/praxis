---
name: subagents
description: "Use when allowed subagent delegation can help with investigation, implementation slices, review, QA, or long-running supervised work. Creates bounded briefs, reports, review packages, and supervisor-owned integration."
---

# Subagents

Delegate only when it improves speed or quality and the platform/user policy allows it.

Load this skill before spawning, proposing, or coordinating Praxis subagents. Also read `../workflow/references/subagents.md` for shared delegation rules and `../workflow/references/runtime.md` when controller files are useful.

For implementation workers, prefer `praxis:worktree`: one Conventional-Commit-style branch and one `.agents/worktrees/<flattened-branch>/` checkout per worker.

## Runtime Files

For full or swarm work, create a runtime directory:

```bash
<this-skill-dir>/scripts/runtime-dir <run-id>
```

Resolve `<this-skill-dir>` relative to the loaded `subagents/SKILL.md`, while keeping the target repo as the shell working directory.

Use it for task-local briefs, worker reports, review packages, and progress:

```bash
runtime_dir=$(<this-skill-dir>/scripts/runtime-dir <run-id>)
<this-skill-dir>/scripts/task-brief "$runtime_dir" <task-id> "<title>"
<this-skill-dir>/scripts/review-package "$runtime_dir" <base-ref> <head-ref>
```

Runtime files are not durable artifacts; distill them into context, evidence, or handoff only when needed.

## Roles

- Supervisor: owns user communication, plan, integration, verification, and final claims.
- Investigator: answers bounded questions with evidence.
- Worker: implements a slice with clear ownership.
- Reviewer: checks correctness, tests, risk, and plan compliance.
- QA runner: verifies the final claim.

## Prompt Requirements

Each subagent gets:

- exact scope;
- files or responsibility;
- relevant plan/spec/context;
- constraints;
- worktree path and branch name when editing;
- expected output;
- instruction not to revert unrelated work.

Use `implementer-prompt.md` for worker prompts, `task-reviewer-prompt.md` for task review, and `final-reviewer-prompt.md` for final branch or multi-task review.

## Worker Outcomes

Every worker returns exactly one outcome:

- `DONE`: task complete and checks passed.
- `DONE_WITH_CONCERNS`: task complete, but risk or verification gap remains.
- `NEEDS_CONTEXT`: hidden context or user choice is required.
- `BLOCKED`: dependency, conflict, or external state prevents progress.
- `FAILED`: attempted work did not produce a usable result.

After results return, inspect diffs, check conflicts, and verify independently. Worker self-report is input, not proof.

## Review Loop

Task review has two stages:

1. Requirement compliance against the brief, plan, issue, or spec.
2. Implementation quality after requirement compliance passes.

Critical and Important findings return to execution. Deferred findings require a clear owner or future issue before the supervisor treats the task as done.

## Transition

```text
output: worker result, review result, QA result, or blocker
state: delegated | returned | blocked | integrated
next: review | verify | execute | context | handoff | stop
evidence: worktree path, report, diff, tests, or unresolved question
```

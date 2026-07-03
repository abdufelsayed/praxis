---
name: subagents
description: "Use when allowed subagent delegation can help with investigation, implementation slices, review, QA, or long-running supervised work."
---

# Subagents

Delegate only when it improves speed or quality and the platform/user policy allows it.

Load this skill before spawning, proposing, or coordinating Praxis subagents. Also read `../workflow/references/subagents.md` for shared delegation rules.

For implementation workers, prefer `praxis:worktree`: one Conventional-Commit-style branch and one `.agents/worktrees/<flattened-branch>/` checkout per worker.

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

After results return, inspect diffs, check conflicts, and verify independently.

## Transition

```text
output: worker result, review result, QA result, or blocker
state: delegated | returned | blocked | integrated
next: review | verify | execute | context | handoff | stop
evidence: worktree path, report, diff, tests, or unresolved question
```

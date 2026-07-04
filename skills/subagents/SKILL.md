---
name: subagents
description: "Use when allowed delegation can improve speed or quality: investigation, implementation slices, review, QA, or supervised swarm work. Uses briefs, reports, review packages, and supervisor-owned integration."
---

# Subagents

Subagents are delegates, not durable job infrastructure. The supervisor owns truth, integration, verification, and user communication.

## Required Reads

Read `../kernel/references/runtime.md` for runtime primitives, file layout, and delegation loop.
Load `praxis:worktree` before implementation workers that need isolated branches.

## Runtime Files

For full or swarm work, create a runtime directory:

```bash
<this-skill-dir>/scripts/runtime-dir <run-id>
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
- files or responsibility;
- relevant plan/spec/context;
- constraints;
- worktree path and branch name when editing;
- expected output and report path;
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

## Review Loop

1. Check requirement compliance against the brief, plan, issue, or spec.
2. Then check implementation quality.
3. Return Critical and Important findings to execution.
4. Resolve `Cannot verify from diff` through source reading, tests, or a follow-up task.
5. Defer only with a clear owner or future issue.

## Transition

```text
output: worker result, review result, QA result, or blocker
state: delegated | returned | blocked | integrated
next: review | verify | execute | context | handoff | stop
evidence: worktree path, report, diff, tests, or unresolved question
```

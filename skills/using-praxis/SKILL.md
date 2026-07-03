---
name: using-praxis
description: "Use at the start of software engineering work, after compaction, or when the user mentions Praxis. Bootstraps Praxis: classify the work lane, load workflow, choose the current driver, and keep the process proportional."
---

# Using Praxis

Praxis is the top-level operating mode for engineering work. Use it to make the next right engineering step obvious, not to make every task ceremonial.

Load this skill when:

- the user mentions Praxis;
- the task is software planning, implementation, debugging, review, verification, documentation, AGENTS.md, worktree, commit, PR, subagent, or handoff work;
- a session resumes after compaction and engineering state may be missing;
- the current workflow feels unclear.

## Bootstrap

1. Read the user request and any repo instructions already in scope.
2. Preserve direct user instructions above Praxis defaults.
3. Classify the lightest safe lane:
   - fast: answer, inspect, or tiny reversible edit;
   - focused: one bounded task;
   - full: substantial, risky, multi-file, user-facing, or long-running work;
   - swarm/queue: multiple workers, worktrees, issues, plans, or external coding agents.
4. Load `praxis:workflow`.
5. Let `workflow` route to exactly one current driver.
6. Load helper skills or references only when the driver needs them for the next action.

## Recovery After Compaction

When context may be incomplete:

- inspect nearby repo instructions and current git state before editing;
- read active `.agents/context/`, `.agents/plans/`, `.agents/issues/`, or `.agents/handoffs/` only when they are relevant and available;
- prefer current source, tests, and repo instructions over stale notes;
- ask the user when the next step depends on a missing preference or risky decision.

## Proportionality

Fast work should stay fast. Do not create durable artifacts, worktrees, plans, or subagents for a tiny reversible task unless there is compaction risk or the user asks.

Full and swarm work need rails. Use durable artifacts, worktrees, runtime controller files, review, and verification when the work must survive handoff, parallelism, or future sessions.

## Transition

```text
output: chosen lane and routed driver
state: bootstrapped
next: workflow-selected driver
evidence: user request, repo instruction, git state, or active artifact
```

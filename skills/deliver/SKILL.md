---
name: deliver
description: Use when work appears complete and needs readiness checks, final verification, state updates, cleanup, commit/PR routing, merge choice, or handoff.
---

# Deliver

## Kernel Gate

If `praxis:kernel` did not route you to this skill in the current turn, read `../kernel/SKILL.md`, `../kernel/references/control-plane.md`, and `../kernel/references/routes.md` before acting. Obey any active `Agent Control` header before this skill's local flow.

Turn finished work into a clean stopping point.

Load this skill before marking work complete, done, ready, handed off, merged, or delivered. Load downstream review, verification, worktree, commit, or PR skills before making the corresponding claim or action.

## Required Reads

- Read `../kernel/references/delivery-gates.md`.
- Read `../kernel/references/state-machine.md` before marking durable work done, blocked, handed off, deferred, or cancelled.
- Load `praxis:repo-policy` when final checks, PR policy, branch policy, or cleanup policy are unknown.

## Flow

1. Inspect the diff, runtime state, branch/worktree state, and linked artifacts.
2. Remove or ignore temporary runtime output that should not be delivered.
3. Load `praxis:review` when the change deserves an adversarial pass.
4. Load `praxis:verify` for the completion claim.
5. Update context, plans, issues, evidence, or handoff state when needed.
6. If work happened in a worktree, load `praxis:worktree` to decide merge, PR, cleanup, or handoff.
7. Load `praxis:commit` or `praxis:pr` before committing or creating a PR when requested or repo convention expects it.
8. Report evidence, remaining risk, and next choices.

If verification fails, return to `praxis:repair` or `praxis:execute`.

## Readiness Dashboard

Summarize:

- scope completed;
- review status;
- verification evidence;
- changed files or commit range;
- durable state updated;
- open risks or unverified claims;
- next action.

## Transition

```text
output: readiness summary, durable state update, commit, PR, merge, cleanup, or handoff
lane: <current lane>
state: done | blocked | handoff | deferred | cancelled
result: delivered | needs-repair | needs-execute | handoff-ready | deferred | cancelled
next: commit | pr | worktree | handoff | repair | execute | stop
evidence: review verdict, verification result, diff state, and remaining risk
```

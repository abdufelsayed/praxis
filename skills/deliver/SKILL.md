---
name: deliver
description: Use when work appears complete and needs readiness checks, final verification, state updates, cleanup, commit/PR routing, merge choice, or handoff.
---

# Deliver

## Kernel Gate

If `praxis:kernel` did not route you to this skill in the current turn, read `../kernel/SKILL.md`, `../kernel/references/control-plane.md`, and `../kernel/references/routes.md` before acting. Obey any active `Agent Control` header before this skill's local flow.

Turn finished work into a clean stopping point. Delivery is the finish workflow: reconcile scope, review, verify, choose the delivery surface, and leave the branch/worktree/state understandable.

Load this skill before marking work complete, done, ready, handed off, merged, or delivered. Load downstream review, verification, worktree, commit, or PR skills before making the corresponding claim or action.

## Required Reads

- Read `../kernel/references/delivery-gates.md`.
- Read `../kernel/references/state-machine.md` before marking durable work done, blocked, handed off, deferred, or cancelled.
- Load `praxis:repo-policy` when final checks, PR policy, branch policy, or cleanup policy are unknown.
- Load `praxis:preflight` before delivery for substantial, risky, delegated, or agent-authored work that has not been self-checked since the final shape changed.
- Load `praxis:refine` before delivery when substantial work produced learning, counterexamples, supersession, or stale assumptions that future work needs.

## Flow

1. Inspect the diff, runtime state, branch/worktree state, and linked artifacts.
2. Remove or ignore temporary runtime output that should not be delivered.
3. Load `praxis:preflight` when the final route, scope, proof, or handoff has not been self-checked.
4. Load `praxis:review` when the change deserves an adversarial pass.
5. Load `praxis:verify` for the completion claim.
6. Update program truth, context, plans, issues, evidence, or handoff state when needed.
7. If work happened in a worktree, load `praxis:worktree` to decide merge, PR, cleanup, or handoff.
8. Load `praxis:commit` or `praxis:pr` before committing or creating a PR when requested or repo convention expects it.
9. Report evidence, remaining risk, and next choices.

If verification fails, return to `praxis:refine`, `praxis:repair`, or `praxis:execute`.

## Delivery Procedure

1. Reconcile the latest user request against the actual diff, artifacts, branch, runtime state, and verification.
2. Confirm there are no required `Agent Control` gates still open.
3. Check preflight status for substantial/risky work. If the final shape was never self-checked and assumptions remain consequential, route to `preflight`.
4. Check human challenge status. If preflight finds unresolved user/product judgment, route to `grill-me` or `discuss`.
5. Check review status. If review is required or risk warrants it, route to `review` before final delivery.
6. Check verification status. If completion proof is missing or stale, route to `verify`.
7. Run retrospective refinement for substantial or program-linked work when the final evidence changes future truth.
8. Update durable artifacts only with current truth: done, blocked, deferred, evidence, next action, or handoff.
9. Decide the delivery surface: final response, commit, PR, merge, worktree cleanup, handoff, or stop.
10. If committing or creating a PR, route to `commit` or `pr`; do not fold those mechanics into delivery.
11. Report what changed, what was proved, what remains risky or unverified, and the next concrete action.

Delivery is a gate. It cannot turn failed review, failed verification, dirty branch confusion, or missing user choice into done.

## Finish Choices

When the work is implemented and verified but integration/disposition is still open, present only the choices that match the repo state:

- stop with branch/worktree preserved;
- commit local changes;
- push or prepare PR;
- merge back to the base branch;
- hand off unfinished or risky work;
- discard only after explicit safety approval.

For merge, cleanup, discard, force, destructive, or broad branch operations, route to `worktree` and `safety` as needed. Do not remove worktrees or branches before verifying merge/PR state.

## Readiness Dashboard

Summarize:

- scope completed;
- review status;
- verification evidence;
- changed files or commit range;
- durable state updated, including program truth when relevant;
- open risks or unverified claims;
- next action.

The dashboard is not proof by itself. Each status line must point to review verdict, verification output, branch/diff evidence, or a named gap.

## Transition

```text
output: readiness summary, durable state update, commit, PR, merge, cleanup, or handoff
lane: <current lane>
state: done | blocked | handoff | deferred | cancelled
result: delivered | needs-repair | needs-execute | handoff-ready | deferred | cancelled
next: refine | preflight | grill-me | review | verify | commit | pr | worktree | handoff | repair | execute | stop
evidence: review verdict, verification result, diff state, and remaining risk
```

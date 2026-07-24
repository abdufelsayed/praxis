---
name: using-praxis
description: Use when the user invokes Praxis generally, concerns overlap, the right skill is unclear, or durable Praxis state exists.
---

# Using Praxis

Praxis is one loop with optional stations: `EXPLORE → DECIDE → CONTRACT → PLAN → EXECUTE → PROVE → DELIVER`; a campaign optionally wraps repeated loops. Enter at the first station whose question you cannot answer and exit when the requested result is proven. Skipping stations is never a violation.

Route to exactly one current skill and load only that skill. Do not read candidate skills speculatively or assemble a lifecycle. If the request does not contain a concrete engineering activity, ask for that activity in conversation instead of routing further.

## State Before Activity

- `plans/running/`, `plans/blocked/`, or `plans/ready/` with execution requested: `execute`, reconciling stale state first.
- Active `campaigns/`: `campaign`.
- Nothing durable: the lists below.

## Loop Skills

- `design`: intent, architecture, or tradeoffs unclear.
- `spec`: behavior needs a stable contract.
- `decision`: consequential rationale must survive.
- `clarify`: product intent missing; interview the user.
- `plan`: work needs an executable plan.
- `execute`: run or resume an accepted plan.
- `issues`: work to represent, prioritize, or queue.
- `campaign`: durable direction for a multi-loop initiative.
- `debug`: failure with unknown cause.
- `dispatch`: independent bounded work to delegate.
- `review`: adversarial evaluation of a change or feedback.
- `verify`: a claim needs current proof.
- `tdd`: behavior built test-first.
- `commit`: changes to commit.
- `pr`: a pull request to prepare or update.
- `docs`: standing documentation.
- `worktree`: isolation would reduce collision risk.
- `safety`: a mutation could destroy or broadly alter state.

## Modes

Modes entered by invocation, never by situation.

- `pair`: continuous pairing with user-controlled mutations.
- `evolve`: broad end state grown through complete working forms.
- `orient`: guided understanding of code or a system.

## Utilities

One-shot skills entered by invocation.

- `handoff`: distill the session into a transfer record.

## Assurance

Read the [assurance ladder](../../references/assurance.md) only when choosing between direct, delegated, and independent assurance. Direct ownership is the default; delegation and independent review require their stated trigger.

## Roles

Before delegation, read [agent roles](../../references/roles.md) to constrain authority. SDD stations identify the current question and domain skills supply expertise. The canonical roles are `scout`, `researcher`, `worker`, `reviewer`, `verifier`, and `oracle`. A station only makes a role eligible, and the supervisor remains the default owner.

## Human Gates

A human gate is a mandatory checkpoint with an optional tool:

1. If `command -v plannotator` succeeds, run its gate: `plannotator annotate <file> --gate --json` for a file, `plannotator review` for a diff. `approved` proceeds; `annotated` returns feedback to address before re-gating; `dismissed` stops.
2. Otherwise present it in conversation and require explicit approval.

The gate degrades, never disappears.

## Artifacts

Before writing any Praxis record, apply [artifact lifetime](../../references/artifacts.md). Conversation carries turn-local work; existing source, Git, and owning artifacts carry reconstructible state; durable files exist for named future consumers.

Current source, fresh evidence, repository policy, and the user's latest instruction outrank saved Praxis state and Praxis itself.

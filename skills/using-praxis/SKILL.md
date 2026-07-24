---
name: using-praxis
description: Use when the user invokes Praxis generally, concerns overlap, the right skill is unclear, or durable Praxis state exists.
---

# Using Praxis

Praxis is one loop with optional stations: `EXPLORE → DECIDE → CONTRACT → PLAN → EXECUTE → PROVE → DELIVER`; a campaign optionally wraps repeated loops. Enter at the first station whose question you cannot answer and exit when the requested result is proven. Skipping stations is never a violation.

Identify exactly one current station, then load one owning skill. An explicitly invoked Evolve, Pair, or Orient skill owns the turn and applies the relevant station behavior; otherwise the station skill owns it. Campaign context may constrain either route without becoming another station. Do not read candidate skills speculatively or assemble a lifecycle. If no concrete activity is present, ask for it in conversation.

## Routing Precedence

1. Honor explicit `pair`, `evolve`, or `orient` invocation; never infer them from task shape.
2. For `plans/running/`, `plans/blocked/`, or `plans/ready/` with execution requested, route the station to `execute` and reconcile stale state first.
3. Treat active campaigns and evolution maps as durable context. Route to `campaign` only when the activity changes initiative synthesis, uncertainty, workstreams, or promotion.
4. Otherwise route by the current engineering question below.

Current source, fresh evidence, repository policy, and the user's latest instruction outrank saved state. Durable context never grants mutation authority.

## Stations And Activities

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

## Strategy And Modes

These remain active only because the user invoked them:

- `evolve`: delivery strategy; map accepted direction into complete working evolutions and execute one authorized evolution at a time.
- `pair`: mutation-control mode; investigate freely, but every coherent mutation boundary belongs to the user.
- `orient`: explanation mode; build a navigable mental model without changing mutation authority.

They may compose with Campaign context and one current station. Pair overrides autonomous mutation authority wherever it is active.

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

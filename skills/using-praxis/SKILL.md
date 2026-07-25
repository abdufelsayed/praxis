---
name: using-praxis
description: Use when the user invokes Praxis generally, concerns overlap, the right skill is unclear, or durable Praxis state exists.
---

# Using Praxis

Praxis has two paths. **Direct work** routes the user's immediate question to one owning engineering activity without lifecycle ceremony. **Initiative work** uses Campaign to establish truth and uncertainty, waits, then uses manually invoked Evolve to deliver one approved working evolution at a time.

When Campaign, Evolve, Pair-with-Evolve, or an evolution-governed plan is active, read the canonical [control flow](../../references/control-flow.md) before acting. Resolve its five fields: **Context, State, Authority, Next gate, Forbidden next**. Do not reconstruct the workflow from separate skills.

## Routing Precedence

1. Honor explicit `pair`, `evolve`, or `orient` invocation; never infer them from task shape.
2. Reconcile running, blocked, or ready plans against source and recorded authority before resuming.
3. Treat active Campaigns and maps as context. Route to `campaign` only when the activity changes initiative truth, uncertainty, references, or promotion.
4. Otherwise route one current engineering activity by the question below.

Current source, fresh evidence, repository policy, and the user's latest instruction outrank saved state. Durable context never grants mutation authority.

## Engineering Activities

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

Activities are tools, not a universal sequence. Campaign may use discovery, design, clarification, decision, or specification without planning. Evolve uses planning, execution, review, and verification only in the order required by its control flow.

## Strategy And Modes

- `evolve`: invocation-only delivery strategy; map accepted direction, gate the map, and deliver exactly one authorized evolution through plan and result gates.
- `pair`: invocation-only mutation control; investigate freely, but every coherent mutation boundary belongs to the user while every required gate remains.
- `orient`: explanation mode; build a navigable mental model without changing mutation authority.

They may compose with Campaign context and one current activity. `handoff` remains a user-invoked transfer utility.

## Assurance

Read the [assurance ladder](../../references/assurance.md) only when choosing between direct, delegated, and independent assurance. Direct ownership is the default; delegation and independent review require their stated trigger.

## Roles

Before delegation, read [agent roles](../../references/roles.md) to constrain authority. Activities identify the question and domain skills supply expertise. The canonical roles are `scout`, `researcher`, `worker`, `reviewer`, `verifier`, and `oracle`. The supervisor remains the default owner.

## Human Gates

A gate judges an artifact or diff; authorization grants mutation authority. Apply the exact commands and transitions in [control flow](../../references/control-flow.md). The Plannotator tool is optional, but Campaign, map, plan, binding decision/specification, and result gates never disappear.

## Artifacts

Before writing any Praxis record, apply [artifact lifetime](../../references/artifacts.md). Conversation carries turn-local work; existing source, Git, and owning artifacts carry reconstructible state; durable files exist for named future consumers.

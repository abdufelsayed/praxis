---
name: plan
description: "Plan one judgeable implementation result. Use when the requester wants to shape or revise an implementation proposal for an approved Issue or already-clear standalone outcome."
---

# Plan

Load [Praxis Control](../../references/control.md). Make one bounded
implementation proposal judgeable in the inquiry's `shape` position; do not
implement it.

## Enter planning

Begin from a direct planning request or after the requester selects shaping one
bounded implementation proposal. No workflow name is required. Bind one
approved Issue boundary or already-clear
standalone result, its owner and accepted truth, current source and evidence,
the caller, and the judgments still pending from the requester.

If no integrated, reviewable, and provable result can be formed from current
truth, return the exact missing boundary. Return changed requirements or
behavior to their causal owner rather than hiding them inside a Plan.

## Bound the result

Inspect enough current source, interfaces, tests, configuration, and runtime
behavior to describe a credible approach. Choose the smallest boundary that
can produce one integrated result and proof. State its accepted baseline,
covered Issue portions or standalone outcome, consequence, targets, and
exclusions; anything unnamed remains outside proposed authority.

Include structural repair only at a concrete pressure point required by the
result and the inherited behavior it exposes. When finding the preserved
behavior or responsible seam needs substantial reasoning, load
[Refactor](../refactor/SKILL.md); adjacent cleanup remains outside.

## Shape the approach

Explain consequential choices before freezing them. Compare alternatives only
when they materially change ownership, interfaces, migration, risk,
reversibility, changeability, or proof. Keep routine reversible choices inside
the Plan without ceremony. Describe delegation only when it changes isolation,
authority, risk, recovery, coordination, or assurance.

Resolve only questions that can change the proposal:

- materially different solution shapes →
  [Design Solution](../design-solution/SKILL.md);
- one consequential factual uncertainty → [Research](../research/SKILL.md);
- a human-accepted suggestion to explain one settled model →
  [Orient](../orient/SKILL.md);
- a judgment that prose cannot expose faithfully →
  [Make Tangible](../make-tangible/SKILL.md);
- substantial structural pressure → [Refactor](../refactor/SKILL.md);
- a risky fixed proposal → [Review](../review/SKILL.md);
- uncertain completion proof → [Verify](../verify/SKILL.md);
- an attacker-focused planning risk → [Security](../security/SKILL.md); or
- a selected native reaction or review → [Plannotator](../plannotator/SKILL.md).

Give the selected owner the current question and governing context, consume
its result, and continue only when the planning uncertainty is honestly
resolved. A result that changes the Plan boundary revises it; an unresolved
required question returns `blocked` and prevents approval.

Apply these exact consequences: Design Solution `recommended`, `selected`,
`qualified`, or `no-choice` is non-authorizing input, `revised` returns to its
causal owner, `refused` blocks, and `stopped` stops;
Research `answered` or bounded `no-op` is usable, while `unverified`,
`conflicting`, or `needs-human-judgment` keeps the claim open; Orient preserves
`explained`, `understanding-observed`, or `understanding-unconfirmed` as its
exact comprehension state, while `orientation-blocked` or
`misconception-unresolved` blocks an approach that depends on that accepted
learning objective; Refactor `analyzed` or `relieved` informs the Plan, while `partial`,
`needs-design`, or `needs-owner` remains unresolved; Review `complete` with no
Plan-changing finding is usable and `incomplete` blocks; Verify `verified`
supports one claim, `failed` changes the proof design, and `unverified` proves
nothing; Security `no-op`, `findings`, or `no-high-confidence-findings` is
scoped evidence, while `needs-verification` or `needs-owner` remains open.
Preserve Make Tangible
and Plannotator artifact, feedback, denial, dismissal, blocked, and stopped
states exactly. No dependency approves the Plan.

## Write the proposal

Keep a conversational Plan in conversation. Persist it only when its governing
meaning must survive the conversation, a named future owner needs it, work is
already durable, or the requester requests a record. For a durable Plan, load
[Record Foundations](../../references/records/foundations.md) and
[Delivery Records](../../references/records/delivery.md), then create or revise
only the current owner-shaped Plan.

Make the proposal sufficient for a competent engineer to judge without
replaying the conversation. Cover:

- accepted context and exact result boundary;
- implementation approach, ownership, interfaces, and data flow;
- coherent changes and sequence;
- scope, permitted mutation kinds, and meaningful exclusions;
- concrete risks, safe stopping conditions, and recovery;
- documentation impact and its exact owning surface when reader behavior
  changes; and
- falsifiable completion proof, including exposed inherited behavior and
  required independent assurance.

Leave an implementation choice open only when every option preserves accepted
behavior, targets, exclusions, consequences, risks, recovery, and proof; name
the options, common envelope, discriminating evidence, and decision rule. Add
a Decision Checkpoint only for one useful decision at an exact sequence
position; it is not another gate.

## Revise honestly

Local clarification and routine implementation detail may change while the
proposal and proof envelope remain intact. A material change to coverage,
result, approach, targets, exclusions, uncertainty, consequences, risk,
recovery, or proof returns authority to awaiting, foregrounds the semantic
difference, and repeats the affected discussion and Plan Approval. Changed
governing truth returns to its causal owner.

## Present Plan Approval

Present the complete Plan revision through [Plannotator](../plannotator/SKILL.md)
as a native Record Gate. Preserve the native result:

- approval accepts only that complete revision and non-meaning-changing
  feedback;
- material feedback revises the Plan and repeats the gate;
- denial, dismissal, empty closure, or human stop stops planning; and
- unavailable, malformed, command, or transport failure blocks the gate.

An approved Plan leaves implementation authority awaiting. Return `approved`
with the accepted proposal, covered boundary, decisive evidence, limitations,
and the separate Implementation Authorization still needed, then stop. Return
`revised` for a material semantic change, `blocked` for a missing boundary or
failed native capability, and `stopped` for denial, dismissal, empty closure,
or human stop, always with the exact blocker or decision and safe current state.

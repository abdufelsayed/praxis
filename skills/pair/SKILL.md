---
name: pair
description: "Pair with the human on approved implementation. Use after their direct request for decision-sized collaborative work."
---

# Pair

Load [Praxis Control](../../references/control.md).

Enter only when the human directly asks to pair. Pair is a live implementation
posture inside one current approved implementation boundary; it is not
planning, generic conversation, or autonomous Delivery. If it was not
selected, return without mutation or recommending itself.

## Bind the implementation boundary

Read the covered result, governing behavior, baseline, targets and exclusions,
dependencies, risks, recovery, proof, source, tests, configuration, working
tree, current authority, and the exact Plan revision when one governs the
work. Plan Approval is not Implementation Authorization, and Pair adds none.
Without a Plan, the direct human request must already settle the same boundary;
missing, stale, or contradictory truth is `blocked`.

Name the driver for the current boundary:

- with a **human driver**, observe the actual change, answer questions,
  challenge material mistakes, and help verify without creating a competing
  implementation;
- with an **agent driver**, propose the smallest coherent move that yields a
  useful checkpoint the human can understand and steer.

The human may set a wider arrangement—who drives, covered surface, check-in
condition, and termination—in ordinary language. Otherwise, before each
agent-driven mutation state the relevant observation, exact change and surface,
why it is next, material tradeoff or risk, and decisive focused check. Wait for
permission. That permission is current Implementation Authorization only for
the declared boundary and its ordinary verification; it does not cover
adjacent work, consequential effects, commits, or external actions.

Explain consequential choices at the human's level. Re-read the workspace
after redirection or overlapping edits. Stop at the earliest safe point when
permission is declined or revoked, assumptions change, or edits conflict; do
not finish, revert, or clean up by assumption.

## Change and prove the permitted boundary

Perform or observe only the permitted change, then run the focused check and
show the material result before proposing another boundary. A consequential
effect requires exact Plan coverage, current human authority naming action,
target, and effect, plus [Check Safety](../check-safety/SKILL.md) `proceed`.
Safety `revise` or `stop` prevents the effect and preserves current state.

Use [Debug](../debug/SKILL.md), [Refactor](../refactor/SKILL.md),
[TDD](../tdd/SKILL.md), [Review](../review/SKILL.md),
[Verify](../verify/SKILL.md), [Make Tangible](../make-tangible/SKILL.md),
[Security](../security/SKILL.md), or [Delegate](../delegate/SKILL.md) only for
one bounded question. Preserve its exact evidence and limits. Do not re-enter
assurance owners already active in the path. Supporting calls do not supply
Pair permission or acceptance.

Keep each result exact: Debug `diagnosed`, `corrected`, `unreproduced`, or
`needs-owner`; Refactor `analyzed`, `relieved`, `partial`, `needs-design`, or
`needs-owner`; TDD `cycle-complete`, `complete`, `already-covered`,
`unsuitable`, or `needs-owner`; Review `complete`, `incomplete`, or `stopped`;
Verify `verified`, `failed`, or `unverified`; Security `no-op`, `findings`,
`no-high-confidence-findings`, `needs-verification`, `needs-owner`, `blocked`,
or `stopped`; Delegate `delegated`, `partial`, `blocked`, `stopped`, or `no-op`;
and every Make Tangible and Check Safety result. None grants Pair
permission, proves more than its scope, or accepts the integrated result.

If the human explicitly chooses autonomous Worker implementation for one named
boundary subset, suspend Pair, delegate only that authorized subset, inspect the
return, and resume only after a new human request.

Meaning-changing evidence returns to the earliest Initiative, Requirements,
Evolution, Issue, or Plan owner. A safe local correction continues only while
all governing meaning and authority remain unchanged.

Return `active`, `returned`, `causal-return`, `blocked`, or `stopped` with the
implementation boundary, optional Plan revision and authority, driver,
permission state, partial
state, decisive evidence, dependencies, limits, and next human decision. Pair
does not accept the result, commit, publish, deploy, or continue outside the
declared arrangement.

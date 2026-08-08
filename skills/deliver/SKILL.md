---
name: deliver
description: "Deliver one bounded working result. Use when the requester chooses Delivery for an approved Issue or clear standalone outcome, including planning it, or authorizes implementation of an approved Plan."
---

# Deliver

Load [Praxis Control](../../references/control.md).

Deliver owns one bounded implementation route, optional planning, integrated
assurance, Result Acceptance, and stopping. The requester retains product meaning,
consequential authority, forward-work choice, and acceptance judgment.

## Enter at a human boundary

Begin when the requester chooses Delivery or planning for approved Issue work or a
clear standalone outcome; directly authorizes a clear implementation boundary;
authorizes one current approved Plan; or directly selects Pair for a current
approved implementation boundary. Bind the exact result,
governing meaning, accepted baseline, source and tests, targets, exclusions,
dependencies, risks, recovery, proof, working tree, optional Plan revision,
and current authority.

If planning was chosen, call [Plan](../plan/SKILL.md) with that complete brief.
Plan Approval accepts the proposal only and leaves implementation authority
awaiting. Continue in the same message only when the requester separately states
Implementation Authorization for that exact revision. Otherwise explain the
approved boundary, ask for the distinct authorization, and stop.

A later instruction such as “implement the approved Plan” activates ordinary
reversible work only for the unchanged revision. Destructive, irreversible,
production, data, permission, secret, migration, infrastructure, cross-project,
commit, push, PR, deployment, or other remote effects require exact Plan
coverage and a current human instruction naming action, target, and effect.
[Check Safety](../check-safety/SKILL.md) assesses consequential action-time
risk but supplies no authority.

When no proposal needs judgment, proceed without inventing a Plan only if the
human's current request already settles the result, governing truth, targets,
exclusions, dependencies, risk, recovery where relevant, and capable proof.
Treat that request as the current implementation boundary. Ambiguity, a
material approach choice, consequential action, or missing proof returns to
Plan before mutation. Direct authorization does not cover commits,
publication, deployment, or adjacent work.

If the requester selects Pair, call [Pair](../pair/SKILL.md) with the current
approved implementation boundary and do not mutate autonomously.

## Implement one integrated boundary

Inspect current source, interfaces, callers, tests, configuration, dependencies,
and overlapping work before editing. Choose the smallest boundary that yields
one integrated, reviewable, provable result. Local choices may vary only while
governing behavior, implementation targets and exclusions, dependencies, compatibility,
consequences, recovery, and proof stay intact.

Every repeated attempt must add information. Two equivalent failed guesses
trigger [Debug](../debug/SKILL.md), Plan revision, or causal return. Use
[Refactor](../refactor/SKILL.md) for substantial structural pressure,
[TDD](../tdd/SKILL.md) for a requested or materially useful red-first seam,
[Security](../security/SKILL.md) for a credible attacker-focused question,
[Delegate](../delegate/SKILL.md) only for a real isolation or net-time benefit,
and [Manage Worktree](../manage-worktree/SKILL.md) only for a concrete
collision, rollback, or experiment risk.

When public, operational, integration, troubleshooting, or contributor
behavior changes, call [Write Docs](../write-docs/SKILL.md) only when the
approved implementation boundary names the reader, owning surface, and proof.
Known stale guidance keeps the result incomplete.

Consume a planned Decision Checkpoint at its declared sequence position.
Produce only its touchable surface, ask the exact question, and stop awaiting
steering. Resume under existing authority only when the response preserves the
Plan; changed meaning returns to its owner and requires revised approval and
fresh Implementation Authorization.

Every supporting owner receives the fixed current target, governing truth,
scope, authority, evidence, consequence, and requested result. Preserve its
exact result and limits. Debug, Refactor, TDD, Verify, and Security may not be
re-entered when already present in the active assurance path. No dependency
grants authority or acceptance.

Keep exact caller consequences: Plan `approved` remains proposal approval;
Pair `active`, `returned`, `causal-return`, `blocked`, or `stopped` never
becomes acceptance; Debug `diagnosed`, `corrected`, `unreproduced`,
`needs-owner`, `blocked`, or `stopped` remains exact; Refactor `analyzed` or `relieved` is
input while `partial`, `needs-design`, or `needs-owner` stays unresolved; TDD
`cycle-complete`, `complete`, `already-covered`, or `unsuitable` remains seam evidence only;
Review `incomplete` blocks affected claims; Verify `verified`, `failed`, and
`unverified` remain distinct; Delegate `delegated`, `partial`, `blocked`,
`stopped`, or `no-op` remains exact; Check Safety
acts only on `proceed` and preserves `revise` or `stop`; Security `no-op`,
`findings`, or `no-high-confidence-findings` is scoped evidence, while
`needs-verification` or `needs-owner` remains open; Write Docs
`already-current` or `complete` satisfies only documentation, while required
`partial` or `failed` keeps Delivery incomplete. Preserve every dependency's
`constructed`, `revised`, `orientation-blocked`, blocked, stopped, partial,
causal, evidence, and limitation state.

Meaning-changing learning returns to the earliest owner: Initiative strategy;
Project needs; Evolution sequence or high-level form; Issue behavior; or Plan
approach, target, risk, recovery, and proof. Use shared
[learning and return](../../references/learning-return.md) when that owner or
authority consequence is not local. Make current state safe, stop affected
mutation, preserve evidence, and require only affected gates plus fresh
authority.

## Assure and present the result

Every implementation result receives proportionate
[Review](../review/SKILL.md) and [Verify](../verify/SKILL.md). Review challenges
the fixed integrated target; Verify tests exact claims with current evidence.
When code changed, present the complete fixed diff through
[Plannotator](../plannotator/SKILL.md) Code Review before Result Acceptance.
Feedback is not acceptance and may reopen implementation or governing meaning.

Present the actual result, exact Issue or standalone coverage, evidence,
limitations and omissions, structural consequences, learning, and unresolved
questions. Recommend [Orient](../orient/SKILL.md) only when a nontrivial settled
model must be understood, and start it only after the requester accepts. Preserve
`explained`, `understanding-observed`, `understanding-unconfirmed`,
`misconception-unresolved`, `orientation-blocked`, `causal-return`, or
`stopped` without treating comprehension as acceptance. Use
[Make Tangible](../make-tangible/SKILL.md) when a demonstration or inspection
surface materially improves the judgment.

## Accept and exhaust authority

Result Acceptance judges the current result and evidence. A simple single
claim may use unambiguous conversation; partial work, multiple claims, or
composed closure needs explicit acceptance or a selected Plannotator Result
Gate. Approval closes only proved named claims. Denial or dismissal stops;
native failure blocks without conversational fallback. Partial acceptance
records proved coverage, unmet criteria, limitations, and safe remaining state.

For a durable accepted result, load [record foundations](../../references/records/foundations.md)
and [delivery records](../../references/records/delivery.md). Update affected
Issues with concise proved coverage, evidence references, unmet criteria, and
limits. Keep no generic receipt, progress log, message store, or permanent Plan
archive when owning records, source, tests, Git, and native references carry
the useful truth.

After acceptance, exhaust the current implementation boundary and any Plan
authority. Return `planning`,
`awaiting-authorization`, `awaiting-steering`, `implementing`, `pair-return`,
`ready-for-acceptance`, `accepted`, `partial`, `causal-return`, `blocked`, or
`stopped` with exact result, authority state, evidence, partial state, limits,
and recommendation. Never commit, publish, deploy, select another Evolution,
or continue by momentum.

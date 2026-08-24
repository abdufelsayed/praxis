# Using Praxis — Maintainer Contract

This is the acceptance contract for the shipping
[Using Praxis owner](SKILL.md). It is not runtime
context, and the owner must not link to or depend on it.


## Purpose

Using Praxis is the thin implicitly selectable host adapter for one concrete
request. It recognizes ordinary Direct Work or establishes and reconstructs
one active inquiry, identifies its current lifecycle position, loads the
smallest useful capability, transfers minimum context, and exits. The inquiry
retains meaning, transitions, effect and persistence policy, authority,
acceptance, and stopping.

## Invocation, entry, and exclusions

The package is implicitly selectable for explicit Praxis invocation, resumption of
Praxis-guided work, questions about Praxis itself, genuine Inquiry ambiguity,
and materially relevant existing Praxis context. A direct `$skill` selection
bypasses this navigator and enters that capability under its own behavioral entry.
The presence of `/.praxis/` alone is not entry.

The navigation brief contains the requester's concrete intent, required result or
judgment, repository and target scope, analysis-only versus mutation or
external-effect scope, any directly selected capability, current source and
observed state, and only the record or learning context that can change the
Inquiry.

Using Praxis owns no discovery, research, interview, teaching, artifact
construction, solution design, specification, planning, implementation,
assurance, native interaction, setup, Git operation, documentation, record
revision, approval, acceptance, or effect. It does not call a supporting
capability on behalf of the active lifecycle capability, remain active above a
transfer, or create durable route state. Its positive job is to establish the
Inquiry envelope, transfer it, and exit.

Clear contained work stays with ordinary agent behavior when Praxis was not
invoked and no Praxis truth changes its meaning.

## Behavioral contract

1. Bind or reconstruct one Inquiry with its question, revision, position,
   judgment owner, posture, accepted and provisional context, unresolved
   conditions, effect and persistence policy, authority references, and close
   condition.
2. Reconstruct inquiry-relevant truth from latest direction, source,
   interfaces, tests, Git, and current records. Load Record Navigation only
   when durable state must be located or resumed; load Learning and Return only
   when the causal owner or affected authority is unclear.
3. Reframe the same inquiry when evidence changes its question while preserving
   the judgment owner, authority boundary, and independently useful outcome.
4. Load one lifecycle capability or return Direct Work when current direction
   already selects the concrete work and entry is satisfied. Transfer the
   compact Inquiry envelope and exact governing references, then exit.
5. When a meaningful transition remains human-owned, explain its convergence
   basis, recommendation, consequence, newly allowed work, still-unauthorized
   work, and real alternatives in product language, then wait.
6. Return one typed adapter result with original authority and no persistence,
   then stop.

## Invariants

1. One run binds one concrete inquiry and one current revision.
2. A direct `$skill` selection bypasses this navigator. A natural-language
   request that unambiguously establishes a capability's work selects it when its behavioral
   entry is satisfied; navigation transfers without substituting a nearby
   capability.
3. Current source and observed behavior establish reconstructible
   implementation truth. Records preserve accepted intent, specification,
   uncertainty, gates, and authority pointers. Neither source nor a record
   silently selects the next activity.
   Resumption reconstructs the Inquiry position, exact activity in progress or
   stopped, latest bounded result/proof/limitations, and any Delivery checkpoint
   needed to recover failed or partial work.
4. Context is progressive. Record Navigation loads only for durable location or
   resumption. Learning and Return loads only for causal-owner ambiguity. No
   other runtime reference belongs to this package.
5. Exactly one lifecycle capability or Direct Work is loaded. Supporting
   capabilities remain internal to the active inquiry rather than peer routes
   presented for selection.
6. Using Praxis transfers the inquiry; it does not perform a supporting call or
   consume the transferred capability's return. That capability decides which
   conditional references and support its bounded question requires.
7. Transfer requires capability entry already supplied by current direction.
   A recommendation, record approval, stale activity, or inferred preference
   does not satisfy entry.
8. A later “continue” resumes only one already-named non-consequential activity
   when no competing owner or human boundary is plausible. It grants no new
   mutation or external authority.
9. Meaningful position and working-form transitions are human-selected in
   ordinary language. Internal capability calls are autonomous inside inquiry
   policy. Setup, Commit, Prepare PR, Write Docs, and Pair retain their explicit
   local entry; Pair remains a directly selected posture.
10. Orient begins from a direct teaching request or accepted bounded
    suggestion. A recommendation to Orient waits for acceptance.
11. Direct Work may proceed only when the request already authorizes an
    ordinary local reversible effect. A mutation crossing Check Safety's
    consequence boundary is returned as a standalone-Plan recommendation.
12. Navigation transfers only the compact Inquiry envelope and exact governing
    truth, evidence, authority, and return references needed by the capability.
13. Original human direction and accepted governing records remain the only
    authority facts. Navigation creates no permission, approval, Implementation
    Authorization, acceptance, or external authority.
14. Navigation is read-only and ephemeral. Durable information follows the
    shared record-ownership rule.
15. Completion is one transfer, one transition recommendation waiting for
    choice, one
    Direct Work return, or one bounded blocked/stopped result. The navigator does
    not monitor, interpret, or continue the selected owner's work.
16. Capability placement remains internal unless Inquiry ambiguity itself needs a
    judgment. A discussion-only instruction cannot be converted into
    persistence, delegation, a gate, or another effect.

## Capability placement

The runtime package carries only the lifecycle placement needed to establish
the inquiry. It distinguishes:

- ordinary contained work from [Discover Requirements](../discover-requirements/SPEC.md),
  [Formalize](../formalize/SPEC.md), [Evolve](../evolve/SPEC.md),
  [Define Issues](../define-issues/SKILL.md), [Plan](../plan/SPEC.md),
  [Deliver](../deliver/SPEC.md), and
  [Coordinate Initiative](../coordinate-initiative/SPEC.md);
- bounded factual, human, teaching, tangible, solution, failure, structural,
  test-first, review, verification, attacker, delegation, checkout, safety, and
  native-interaction questions owned respectively by
  [Research](../research/SPEC.md), [Interview](../interview/SPEC.md),
  [Orient](../orient/SPEC.md), [Make Tangible](../make-tangible/SPEC.md),
  [Design Solution](../design-solution/SPEC.md), [Debug](../debug/SPEC.md),
  [Refactor](../refactor/SPEC.md), [TDD](../tdd/SPEC.md),
  [Review](../review/SPEC.md), [Verify](../verify/SPEC.md),
  [Security](../security/SPEC.md), [Delegate](../delegate/SPEC.md),
  [Manage Worktree](../manage-worktree/SPEC.md),
  [Check Safety](../check-safety/SPEC.md), and
  [Plannotator](../plannotator/SPEC.md); and
- explicitly entered repository and effect capabilities [Setup](../setup/SPEC.md),
  [Commit](../commit/SPEC.md), [Prepare PR](../prepare-pr/SPEC.md),
  [Write Docs](../write-docs/SPEC.md), and [Pair](../pair/SPEC.md).

Supporting and effect capabilities are loaded by the active lifecycle
capability under shared control; they are not additional user-facing routes.
Every runtime package owns its bounded procedure and return after transfer.

A direct security review of a diff, component, or result is a fixed-target
Review question; Review may use Security for bounded attacker evidence. A
standalone attacker-path, exploitability, or threat question selects Security.
Security wording does not override the direct-review boundary.

## Outcomes and observable return

```text
Using Praxis Result {
  outcome: direct-work | transferred | transition-recommendation | blocked | stopped,
  entry: explicit-plugin | explicit-owner | existing-context |
         ownership-ambiguity | no-op,
  inquiry {
    id, revision, question, position, judgment_owner, posture,
    accepted_context, provisional_context, unresolved_conditions,
    effect_policy, persistence_policy, authority_references, close_when
  },
  transfer? {
    owner_entry_basis, selected_skill, caller, return_to
  },
  transition? {
    current_position, convergence_basis, recommendation, reason,
    newly_allowed, still_unauthorized, alternatives, choice_needed
  },
  stop_reason? {
    kind: missing-context | missing-evidence | contradictory-truth |
          unresolved-owner | missing-owner-entry | human-stop,
    safe_state, consequence, decision_needed?
  },
  authority: original-human-authority-only,
  persistence: none
}
```

`direct-work` returns control to ordinary behavior without granting new
authority. `transferred` is consumed as the selected owner's intake in the same
agent turn; it is not a final human response. Navigation ends and the owner
begins under entry already supplied by current human direction.
`transition-recommendation` names one not-yet-selected meaningful transition
and waits. `blocked` and
`stopped` preserve the safe state and exact missing boundary. No outcome
contains a supporting dependency result because Using Praxis performs no
supporting work.

## Effects, authority, persistence, and lifetime

Using Praxis may inspect current source, tests, Git, observed behavior, and the
minimum durable Praxis records needed to establish the Inquiry. It makes only
a conversational position recommendation and same-turn transfer to an
already-entered capability. It does not edit, create, delete, commit, publish, deploy, invoke native
tools, open persistent sessions, or perform another owner's effect.

The result is conversational and transient. A causal record owner may later preserve
learning under its own contract; the navigator does not create or revise that
state.

## References and package tree

[Record Navigation](references/record-navigation.md) is the terminal local
context pointer for locating or resuming durable Praxis state. Shared
[Learning and Return](../../references/learning-return.md) loads only when new
evidence makes the earliest causal owner unclear. Neither reference selects an
owner, transfers work, grants authority, or continues another package.

```text
skills/using-praxis/
|-- SKILL.md
|-- SPEC.md
|-- agents/openai.yaml
`-- references/record-navigation.md
```

There are no scripts, assets, fixtures, templates, wrappers, or persistent
navigator resources.

## Invocation and host projection

```yaml
---
name: using-praxis
description: "Establish or reconstruct one active Praxis inquiry and load its smallest useful capability. Use for explicit Praxis requests, genuine inquiry ambiguity, or relevant existing Praxis state; obvious contained work stays Direct Work."
---
```

```yaml
interface:
  display_name: "Using Praxis"
  short_description: "Establish one active Praxis inquiry"
  default_prompt: "Use $using-praxis to establish this request's active inquiry."
policy:
  allow_implicit_invocation: true
```

The description is the always-loaded invocation pointer. Host copy presents
the accepted capability and adds no procedure, authority, dependency, or
continuation.

## Source basis

At runtime, `SKILL.md` loads shared [Praxis Control](../../references/control.md)
once at owner entry.


This package is maintained against the plugin-local
[Premise](../../docs/concepts/premise.md),
[System](../../docs/concepts/system.md),
[Control](../../docs/concepts/control.md),
[Context](../../docs/concepts/context.md), and
[Working forms](../../docs/concepts/work.md); the
[skill-package contract](../../docs/maintainers/skill-packages.md); the
[conformance and release contract](../../docs/maintainers/conformance-and-release.md);
the selected capability contracts listed above; and its two conditional runtime
references. No non-plugin material is required to execute or maintain the
package.

## All-package conformance baseline

1. The intended natural-language request reaches this package while a nearby
   ordinary request remains Direct Work.
2. Each conditional reference loads only at its accepted decision point.
3. Exactly one lifecycle capability or Direct Work is loaded from current truth.
4. Missing context, evidence, capability entry, or unresolved transition stops before
   transfer.
5. Transfer preserves original authority and minimum context, then navigation
   exits without performing capability work.
6. Recommendation, transferred, blocked, stopped, and Direct Work outcomes stay
   distinct.
7. Completion returns evidence and limitations without Inquiry persistence or
   adjacent work.

## Package-specific conformance cases

1. **Direct Work no-op:** an ordinary clear reversible request remains ordinary
   when Praxis was not invoked and no Praxis truth changes it.
2. **Explicit plugin entry:** invoking Praxis reaches Using Praxis before
   capability work and binds one active inquiry.
3. **Explicit capability:** naming a Praxis skill transfers to that capability
   when its entry is satisfied; the adapter does not substitute a nearby skill.
4. **Conditional context:** resumption loads Record Navigation; a conversational
   position change does not. Invalidated meaning loads Learning and Return only when the
   causal owner is unclear.
5. **Resumption state:** navigation reconstructs the inquiry, position, exact
   active or stopped activity, latest result/proof/limitations, policies, and
   required Delivery checkpoint before loading a capability.
6. **Meaningful-transition discrimination:** a position or working-form change is
   explained and requester-selected in product language; supporting capability
   routing stays internal. Planning selection grants no approval or implementation.
7. **Security-review precedence:** a direct request to review a diff,
   component, or result for security regressions selects Review, which may use
   Security for attacker evidence; a standalone attacker-path question selects
   Security.
8. **Ambiguous transition:** two consequentially different working forms
   produce one focused product question and no transfer.
9. **Selected transfer:** a direct selection or unambiguous resumption enters
   the capability in the same turn and navigation exits; the transfer envelope
   is capability intake rather than a final human response.
10. **Recommendation boundary:** a recommendation, approval, completed Plan,
    stale activity, or inferred preference does not select a transition.
11. **Pure navigation:** Research, Interview, Orient, Make Tangible, Design
   Solution, Plannotator, and every other capability perform no work inside
   Using Praxis; the selected capability decides its references and supporting calls.
12. **Explicit effects:** Setup, Commit, Prepare PR, Write Docs, and Pair enter
   only under their own declared conditions.
13. **Authority separation:** transfer, approval, position choice, Implementation
   Authorization, effect authority, and Result Acceptance remain distinct.
14. **One-transfer exit:** after Direct Work return, transfer, recommendation,
    blocker, or stop, navigation performs no monitoring or automatic next
    activity.
15. **Ordinary-language routing:** the requester hears the concrete product
    question and recommendation, not a recitation of Praxis capabilities or stages.
16. **Discuss-only stop:** a pause, correction, no-start, or no-edit direction
    returns to conversation without tools, persistence, delegation, or gates.

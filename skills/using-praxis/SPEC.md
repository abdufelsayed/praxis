# Using Praxis — Maintainer Contract

This is the acceptance contract for the shipping
[Using Praxis owner](SKILL.md). It is not runtime
context, and the owner must not link to or depend on it.


## Purpose

Using Praxis is the thin implicitly selectable navigator for one concrete
request. It
recognizes ordinary Direct Work or selects one Praxis owner, reconstructs only
the truth needed for that selection, transfers minimum context when entry is
already satisfied, and exits. The selected owner retains its question,
procedure, conditional references, supporting calls, authority, acceptance,
and stopping rule.

## Invocation, entry, and exclusions

The package is implicitly selectable for explicit Praxis invocation, resumption of
Praxis-owned work, questions about Praxis itself, genuine ownership ambiguity,
and materially relevant existing Praxis context. A direct `$skill` selection
bypasses this navigator and enters that owner under its own behavioral entry.
The presence of `/.praxis/` alone is not entry.

The navigation brief contains the requester's concrete intent, required result or
judgment, repository and target scope, analysis-only versus mutation or
external-effect scope, any directly selected owner, current source and observed
state, and only the record or learning context that can change ownership.

Using Praxis owns no discovery, research, interview, teaching, artifact
construction, solution design, specification, planning, implementation,
assurance, native interaction, setup, Git operation, documentation, record
revision, approval, acceptance, or effect. It does not call a supporting
capability on another owner's behalf, remain active above a transferred owner,
or create route state. Its positive job is navigation: select, transfer, and
exit.

Clear contained work stays with ordinary agent behavior when Praxis was not
invoked and no Praxis truth changes its meaning.

## Behavioral contract

1. Bind one concrete navigation question, effect scope, and any owner directly
   named by the requester.
2. Reconstruct ownership-relevant truth from current human direction, source,
   interfaces, tests, Git, and observed behavior. Load Record Navigation only
   when durable state must be located or resumed; load Learning and Return only
   when invalidated meaning makes the earliest causal owner unclear.
3. Select exactly one owner or Direct Work by the current question, accepted
   route, consequence, evidence, and each candidate's actual entry condition.
4. Transfer when the current human message directly selected the owner or
   unambiguously resumed an already-selected activity and owner entry is
   satisfied. Pass minimum context as the owner's intake, enter the owner's
   runtime package in the same agent turn, and exit navigation. The transfer is
   not a final human response.
5. When human selection is still required, recommend one owner and wait. Return
   Direct Work to ordinary behavior; return missing truth, owner ambiguity, or
   missing owner entry as a bounded blocker.
6. Return one typed navigation result with original authority and no
   persistence, then stop.

## Invariants

1. One run binds one concrete ownership question and one current state.
2. A direct `$skill` selection bypasses this navigator. A natural-language
   request that unambiguously names an owner selects it when its behavioral
   entry is satisfied; navigation transfers without substituting a nearby
   capability.
3. Current source and observed behavior establish reconstructible
   implementation truth. Records preserve accepted intent, specification,
   uncertainty, gates, and authority pointers. Neither source nor a record
   silently selects the next activity.
   Resumption reconstructs the selected route, exact activity in progress or
   stopped, latest bounded result/proof/limitations, and any Delivery checkpoint
   needed to recover failed or partial work.
4. Context is progressive. Record Navigation loads only for durable location or
   resumption. Learning and Return loads only for causal-owner ambiguity. No
   other runtime reference belongs to this package.
5. Exactly one owner or Direct Work is selected. When two owners remain
   materially plausible and the difference could change meaning, consequence,
   authority, or forward work, one focused human question replaces guessing.
6. Using Praxis transfers to an owner; it does not perform a supporting call or
   consume that owner's dependency return. The selected owner decides which
   conditional references and supporting capabilities its situation requires.
7. Transfer requires owner entry already supplied by the current human
   direction. A recommendation, record approval, completed Plan, stale prior
   activity, or inferred preference does not satisfy entry.
8. A later “continue” resumes only one already-named non-consequential activity
   when no competing owner or human boundary is plausible. It grants no new
   mutation or external authority.
9. Formalize, Evolve, Define Issues, Deliver, Coordinate Initiative, and other
   forward owners are human-selected. Setup, Commit, Prepare PR, Write Docs,
   and Pair obey their own explicit entry. Pair remains a directly
   human-selected posture rather than a recommendation.
   Formalize owns an unsettled implementation route or specification shape;
   Evolve requires at least two independently meaningful working forms and a
   human-selected progressive route; Define Issues owns detailed observable
   behavior and proof for an already-selected outcome. A direct planning request
   selects Plan only and grants no Plan Approval, Implementation Authorization,
   or Delivery entry.
10. Orient begins from a direct teaching request or accepted bounded
    suggestion. A recommendation to Orient waits for acceptance.
11. Direct Work may proceed only when the request already authorizes an
    ordinary local reversible effect. A mutation crossing Check Safety's
    consequence boundary is returned as a standalone-Plan recommendation.
12. Navigation transfers only intent, governing truth, decisive evidence,
    scope and exclusions, authority/effect boundary, unresolved question,
    caller, and return context needed by the owner.
13. Original human direction and accepted owner records remain the only
    authority facts. Navigation creates no permission, approval, Implementation
    Authorization, acceptance, or external authority.
14. Navigation is read-only and ephemeral. It creates no route record, status
    receipt, wrapper, session state, transcript, dependency envelope, or
    lifecycle history.
15. Completion is one transfer, one recommendation waiting for choice, one
    Direct Work return, or one bounded blocked/stopped result. The navigator does
    not monitor, interpret, or continue the selected owner's work.

## Owner selection

The runtime package carries the complete owner map because navigation must be
self-sufficient. The map distinguishes:

- ordinary contained work from [Discover Requirements](../discover-requirements/SPEC.md),
  [Formalize](../formalize/SPEC.md), [Evolve](../evolve/SPEC.md),
  [Define Issues](../define-issues/SPEC.md), [Plan](../plan/SPEC.md),
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
- explicitly entered repository workflows owned by [Setup](../setup/SPEC.md),
  [Commit](../commit/SPEC.md), [Prepare PR](../prepare-pr/SPEC.md),
  [Write Docs](../write-docs/SPEC.md), and [Pair](../pair/SPEC.md).

These are transfer targets, not Using Praxis dependencies. Their runtime
packages own every procedure and return after transfer.

A direct security review of a diff, component, or result is a fixed-target
Review question; Review may use Security for bounded attacker evidence. A
standalone attacker-path, exploitability, or threat question selects Security.
Security wording does not override the direct-review boundary.

## Outcomes and observable return

```text
Using Praxis Result {
  outcome: direct-work | transferred | recommendation | blocked | stopped,
  entry: explicit-plugin | explicit-owner | existing-context |
         ownership-ambiguity | no-op,
  question,
  owner?,
  context {
    intent, scope, governing_truth?, decisive_evidence?, unresolved?,
    authority_effect_boundary, limitations
  },
  transfer? {
    owner_entry_basis, selected_skill, caller, return_to
  },
  recommendation? {
    understanding, owner, reason, immediate_next, choice_needed
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
`recommendation` names one not-yet-selected owner and waits. `blocked` and
`stopped` preserve the safe state and exact missing boundary. No outcome
contains a supporting dependency result because Using Praxis performs no
supporting work.

## Effects, authority, persistence, and lifetime

Using Praxis may inspect current source, tests, Git, observed behavior, and the
minimum durable Praxis records needed to answer ownership. It makes only a
conversational route selection and same-turn transfer to an already-entered
owner. It does not edit, create, delete, commit, publish, deploy, invoke native
tools, open persistent sessions, or perform another owner's effect.

The result is conversational and transient. A causal owner may later preserve
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
description: "Route one concrete request to Direct Work or its smallest Praxis owner. Use for explicit Praxis requests, genuine ownership ambiguity, or existing Praxis state whose owner affects the request; obvious contained work stays Direct Work."
---
```

```yaml
interface:
  display_name: "Using Praxis"
  short_description: "Navigate one request to its Praxis owner"
  default_prompt: "Use $using-praxis to navigate this request to its current owner."
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
[Work and routes](../../docs/concepts/work.md) owners; the
[skill-package contract](../../docs/maintainers/skill-packages.md); the
[conformance and release contract](../../docs/maintainers/conformance-and-release.md);
the selected owner contracts listed above; and its two conditional runtime
references. No non-plugin material is required to execute or maintain the
package.

## All-package conformance baseline

1. The intended natural-language request reaches this package while a nearby
   ordinary request remains Direct Work.
2. Each conditional reference loads only at its accepted decision point.
3. Exactly one owner or Direct Work is selected from current truth.
4. Missing context, evidence, owner entry, or resolved ownership stops before
   transfer.
5. Transfer preserves original authority and minimum context, then navigation
   exits without performing owner work.
6. Recommendation, transferred, blocked, stopped, and Direct Work outcomes stay
   distinct.
7. Completion returns evidence and limitations without route persistence or
   adjacent work.

## Package-specific conformance cases

1. **Direct Work no-op:** an ordinary clear reversible request remains ordinary
   when Praxis was not invoked and no Praxis truth changes it.
2. **Explicit plugin entry:** invoking Praxis reaches Using Praxis before owner
   work and binds one navigation question.
3. **Explicit owner:** naming a Praxis skill transfers to that owner when its
   entry is satisfied; the navigator does not substitute a nearby skill.
4. **Conditional context:** resumption loads Record Navigation; a conversational
   route does not. Invalidated meaning loads Learning and Return only when the
   causal owner is unclear.
5. **Resumption state:** navigation reconstructs the selected route, exact
   active or stopped activity, latest result/proof/limitations, and required
   Delivery checkpoint before choosing an owner.
6. **Forward-owner discrimination:** unsettled route/shape selects Formalize;
   two or more meaningful progressive forms may support a human-selected
   Evolve route; detailed behavior for an already-selected outcome selects
   Define Issues. Planning selection grants no approval or implementation.
7. **Security-review precedence:** a direct request to review a diff,
   component, or result for security regressions selects Review, which may use
   Security for attacker evidence; a standalone attacker-path question selects
   Security.
8. **Ambiguous ownership:** two consequentially different plausible owners
   produce one focused question and no transfer.
9. **Selected transfer:** a direct selection or unambiguous resumption enters
   the owner in the same turn and navigation exits; the transfer envelope is
   owner intake rather than a final human response.
10. **Recommendation boundary:** a recommendation, approval, completed Plan,
   stale activity, or inferred preference does not start an owner.
11. **Pure navigation:** Research, Interview, Orient, Make Tangible, Design
   Solution, Plannotator, and every other owner perform no work inside Using
   Praxis; the selected owner decides its references and supporting calls.
12. **Explicit workflows:** Setup, Commit, Prepare PR, Write Docs, and Pair enter
   only under their own declared conditions.
13. **Authority separation:** transfer, approval, route choice, Implementation
   Authorization, effect authority, and Result Acceptance remain distinct.
14. **One-transfer exit:** after Direct Work return, transfer, recommendation,
   blocker, or stop, navigation creates no receipt and performs no monitoring
   or automatic next activity.

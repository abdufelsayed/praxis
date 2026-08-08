# Pair — Maintainer Contract

This is the acceptance contract for the shipping
[Pair owner](SKILL.md). It is not runtime
context, and the owner must not link to or depend on it.


## Purpose

Pair is literal shared programming inside one approved Delivery
implementation boundary. A Plan supplies that boundary when planning was
useful; an already-clear directly authorized boundary may supply it without
inventing a Plan. The requester explicitly selects this posture when they want to shape implementation
with the agent, exchange ideas, understand the code, and authorize each
coherent mutation. Pair owns the live implementation exchange, decision-sized
boundaries, driver state, explanation, permission handling, supporting-call
composition, and stop/return envelope. The caller retains Requirements,
Issues, Plan, route, gates, authority, integrated judgment, Result Acceptance,
learning ownership, and stopping.

## Invocation, entry, and exclusions

Pair is internally reachable so a human's direct request can reach it, but behavioral
entry is human-owned. A human must explicitly select Pair in ordinary language;
host availability, a loaded skill, conversational tone, frequent questions,
interest in implementation, or an upstream accepted gate does not enter it.
Pair is never inferred or recommended. It is not used during Requirements
Discovery, Formalization, planning, review-only work, or orientation. Without
that direct request, return `outcome=stopped`, `entry=not-selected`,
`stop_reason.kind=not-selected`, with no mutation or comprehension claim.

The entry brief contains the current Delivery context, approved implementation
boundary, optional current Plan and revision, accepted baseline, exact result and target,
covered Issues or standalone outcome, exclusions, dependencies, risks,
recovery, required proof, current source and tests, working-tree state, and
caller-retained route, gates, authority, acceptance, and stop. Pair Approval
is not a concept: Plan Approval accepts the proposal but leaves implementation
authority to its normal human source. Pair adds no authority.

Pair excludes requirements discovery, specification or Issue definition,
Evolution selection, Plan drafting or approval, solution selection, automatic
progression, autonomous batching, generic task ledgers, permission ledgers,
transcripts, result acceptance, commits, publication, deployment, and
unrelated cleanup. It does not create a Project, Issue, Plan, Result, route,
gate, learning diary, or session record. A supporting capability never widens
Pair's boundary or silently re-enters Pair.

## Behavioral contract

1. Confirm a direct human Pair request and bind one current Delivery boundary.
   Record `entry=direct-request`; a missing direct request returns a stopped
   `entry=not-selected` result without beginning implementation.
2. Require an approved, current implementation boundary whose target,
   exclusions, risk, recovery, and proof cover the requested work. When a Plan
   governs, require its current approved revision. Without a Plan, require the
   direct human request to settle the same fields. Missing, stale,
   contradictory, or out-of-scope coverage returns `blocked`; Pair never
   improvises missing planning truth.
3. Treat Plan Approval as accepted proposal context, not implementation
   authority. Obtain ordinary-language permission for each agent-driven
   decision-sized mutation — or for a wider arrangement the requester explicitly
   declares with a boundary-covered surface or sequence and a termination or
   check-in condition. Permission covers only the declared mutation or
   arrangement, ordinary formatting, and focused proof; read-only inspection
   and explanation need no extra permission.
4. Choose exactly one driver per mutation boundary. A human driver changes the
   source while Pair observes, teaches, challenges material mistakes, and
   verifies without competing edits. An agent driver proposes the boundary,
   waits for permission, performs only that boundary, and exposes the result.
5. Select the smallest coherent boundary that produces a useful checkpoint:
   one behavior, type plus focused proof, bounded integration, or equivalent
   result. Do not ask for every keystroke or disappear into an autonomous
   batch. The driver may switch between boundaries without changing the Plan.
   The requester owns the arrangement: they may set or change the driver, boundary
   size, and check-in rhythm in ordinary language at any time, including
   standing arrangements such as "teach me, then I drive" or "keep going until
   the tests pass, then check in." A wider arrangement names its boundary-covered
   surface or sequence and termination or check-in condition; it never covers a
   consequential effect, a commit, or an external action.
6. Before agent mutation, state the observation, exact intended change and
   surface, reason it is next, meaningful risk or tradeoff, and decisive check.
   A permission is not permission for adjacent cleanup, another behavior, the
   rest of the Plan, a consequential effect, or an external action.
7. Before a consequential choice, explain current behavior, constraint,
   mechanism, meaningful alternatives, and risk at the requester's level. Keep
   routine mechanics brief and expand only when understanding or future
   implementation judgment needs it.
8. Re-read the actual workspace after a redirect, overlapping edit, changed
   assumption, or material discovery. A stop or redirect revokes the current
   permission immediately. Preserve the exact safe partial state and let the
   human choose whether to inspect, preserve, revise, or undo; Pair does not
   finish, revert, or clean up by assumption.
9. Mutate only a permitted in-bound boundary, or observe the change while the
   requester is driving. Ordinary reversible mutation needs the scoped Pair permission and
   must keep accepted behavior, targets, exclusions, dependencies,
   compatibility, recovery, and proof intact. A consequential in-bound effect
   is a separate action and requires exact Plan coverage, current human
   authority naming the action, target, and intended effect, and a Check Safety
   preflight that returns `proceed` before it occurs. Run the focused check,
   inspect changed source and tests, and show material result and decisive
   evidence before proposing another boundary.
10. A consequential, destructive, data-affecting, production, permission,
    secret-handling, migration, infrastructure, cross-project, commit, push,
    merge, deployment, or other external action retains the same exact Plan
    coverage, action-time human authority, and Check Safety requirements. A
    `revise` or `stop` result prevents the effect; preparation and effect are
    never collapsed into one permission. Pair's posture, a green check, or a
    dependency return never grants authority.
11. Every direct call is composed and consumed under the direct-call rules below: one complete
    brief against the callee's own intake contract, a lossless preserved
    return, no authority transfer, and no re-entry of a capability already in
    the assurance path. Pair marks each call `required` when its evidence is
    necessary for the current boundary and `optional` when the boundary can
    remain honest without it.
12. Compose Debug, Refactor, TDD, Review, Verify, Make Tangible, Security,
    Delegate, and (for consequential effects only) Check Safety for their
    distinct bounded questions or evidence. The five assurance
    components—Debug, Refactor, TDD, Verify, and Security—carry the current
    assurance path as an exact dependency projection no-loops rule. A dependency never
    grants authority, accepts a Plan or Result, chooses a route, or starts
    work.
13. A supporting call that would mutate product state remains inside Pair's
    current human-permission boundary. Delegate is read-only for Pair product
    work by default. If the requester explicitly chooses autonomous Worker
    implementation for one named boundary, Pair visibly suspends, records a
    distinct `worker_handoff` with only that Plan subset, inspects the returned
    change and proof/partial state, and resumes only after the requester asks. The
    Worker handoff is not a dependency projection and never manufactures Pair
    permission or authority.
14. When evidence or discussion changes a governing item, stop affected
    mutation and return to its earliest owner: need, constraint, preference,
    accepted truth, or Project Outcome/boundary to the correct Project's
    Requirements Discovery; strategic objective, shared success condition,
    shared constraint/truth, Project relationship/dependency, or ordering
    rationale to Coordinate Initiative; detailed behavior, Issue boundary,
    exclusion, or acceptance criterion to the Issue owner; high-level working
    form or strategy to Evolve; and implementation scope, Plan authority,
    consequence, recovery, or proof to Plan. A fixed behavior with only an
    unsettled coding choice stays in Pair.
15. A causal return names owner, reason, boundary, exact evidence or
    dependency result, and revisit condition. It changes no record and does
    not re-enter Pair automatically. A required blocked, failed, unverified,
    owner, causal, or stopped dependency keeps the Pair result incomplete and
    remains visible to the caller; an optional limitation may leave Pair active
    only when the current boundary remains honest and the limitation is named.
16. When an integrated boundary reaches its Plan proof, use the proportionate
    Review and Verify work required by ordinary Delivery. Return their exact
    evidence, findings, claims, and limitations to Delivery; Pair does not
    explain or accept the integrated Result.
17. Pair completes only when the requester ends the posture, work returns to an
    earlier owner, or integrated evidence is handed to ordinary Delivery. It
    then returns one bounded envelope and stops without commit, publication,
    deployment, route advancement, or inferred next activity.

## Invariants

1. Every active run has exactly one direct human entry, current implementation
   boundary, optional Plan revision, accepted baseline, active caller, and
   Delivery result boundary. An absent
   direct request is `stopped` with `entry=not-selected`, `not-selected` stop
   kind, and no mutation or comprehension claim; a missing implementation boundary is an
   explicit blocked return, never a guess.
2. Pair's frontmatter and host projection expose reachability only. Neither
   host invocation nor Pair posture supplies Plan Approval, Implementation
   Authorization, Result Acceptance, or any consequential authority.
3. The implementation boundary covers the exact requested target. A material
   boundary or Plan change invalidates current Pair permission and exposed
   evidence until its owner recomputes the contract and fresh authority exists.
4. Each mutation boundary has one driver, one exact human permission when the
   agent drives, one affected surface, one focused check, and one visible
   partial/result state. Human praise or a successful check does not authorize
   the next boundary.
5. Permission is ordinary-language, temporary, scoped to the described
   boundary or declared arrangement, revocable, and valid
   only while the described boundary, assumptions, workspace, and direction
   remain intact. A changed assumption or redirect revokes it immediately.
6. Human-driven changes are observed from the actual workspace. Pair never
   overwrites overlapping human edits or runs a competing implementation.
7. Supporting calls are bounded and explicit, composed and consumed per
   caller-local rules. Pair's required/optional status, the callee's
   exact nested result and state, evidence, and limits survive without
   relabeling anything as success. An explicitly human-selected Worker
   boundary is a visible suspension and review handoff, never an implicit
   Pair delegation.
8. Consequential in-bound and external effects retain exact Plan coverage,
   current human authority naming action/target/effect, and Check Safety
   `proceed`. Preparation and an effect are separate actions; a green check or
   Pair permission alone is insufficient.
9. A change to behavior, scope, target, exclusion, consequence, risk,
   recovery, proof, or authority returns to the earliest causal owner. Shared
   strategic meaning returns to Coordinate Initiative; Project Outcome,
   boundary, and local Requirements return to the correct Project owner. Pair
   does not repair governing records while presenting itself as implementation.
10. Pair returns Review and Verify evidence to Delivery. It does not approve a
    Plan, accept a Result, choose the next route, or create automatic progress.
11. Pair keeps conversation, source, tests, the current boundary and optional
    Plan, and native evidence
    transient by default. No transcript, permission ledger, session archive,
    generic task record, or learning diary is created.
12. Completion is checkable: the current boundary and driver are explicit, the
    permission and partial state are honest, every invoked call's exact return
    is preserved or its absence is a named optional limitation, any Worker
    handoff is separately inspected, decisive evidence is visible, and
    caller-retained controls and the next owner are stated.

## Outcomes and observable return

```text
Pair Result {
  outcome: active | returned | causal-return | blocked | stopped,
  entry: direct-request | not-selected,
  plan_context? {
    plan_id_and_revision,
    owner_and_delivery_context,
    plan_approval,
    authority_state,
    covered_result_and_baseline,
    targets_and_exclusions,
    required_proof
  },
  driver: human | agent | unset,
  current_boundary? {
    observation,
    intended_change_and_surface,
    rationale_and_tradeoff?,
    permission: awaiting | granted | declined | revoked | not-applicable,
    partial_state,
    decisive_check_and_evidence
  },
  dependency_projections? [ dependency_projection ],
  worker_handoff?,
  causal_return? {
    owner,
    reason,
    boundary,
    exact_result_or_evidence,
    revisit_condition
  },
  stop_reason? {
    kind: human-stop | redirect | conflicting-edit | dependency-stopped |
          not-selected | missing-plan | missing-authority | safety-stop,
    exact_partial_state
  },
  limitations_and_uncertainty,
  caller_retained_route_gates_authority_acceptance_and_stop
}
```

`active` means the valid Pair posture remains inside the approved boundary and
the next boundary or permission state is visible. `returned` means integrated
evidence was handed to ordinary Delivery without a Result Acceptance claim.
`causal-return` identifies changed governing meaning and its earliest owner.
`blocked` identifies a missing implementation boundary or Plan, authority, source, dependency, environment,
or proof. `stopped` preserves the requester's or caller's exact stop and safe
partial state; `entry=not-selected` additionally makes no mutation or
comprehension claim. No outcome grants authority, acceptance, or continuation.

## Effects, authority, persistence, and lifetime

Pair may inspect source, tests, interfaces, configuration, and working-tree
state; explain behavior; run focused checks; and compose bounded supporting
capabilities within the caller's current boundaries. Ordinary reversible
product mutation occurs only inside the approved implementation boundary and current
ordinary-language permission. A consequential in-bound or external effect
additionally needs exact action/target/effect authority and Check Safety
`proceed` at action time. Pair has no commit, publication, deployment,
external, secret, permission, acceptance, or route-advancement authority of
its own.

Conversation, source changes, tests, focused evidence, and supporting returns
are transient by default. Pair creates no transcript, permission ledger,
session record, generic task log, or learning diary. Lasting learning goes to
its normal owning Requirements, Issue, Evolution, Plan, or Delivery result;
temporary implementation notes follow Delivery's ordinary lifetime. Pair
returns exact changed paths, evidence, limits, and safe partial state when the
caller needs them, but does not create a new record merely to preserve the
conversation.

## Composition and direct calls

Direct calls carry the callee's required brief and preserve its exact return:
 one complete brief against the callee's own intake contract,
lossless returns, no authority transfer, and no re-entry of a capability
already in the assurance path. Preserved callee results stay nested under
`dependency_projections?` without flattening, renaming, or upgrading partial,
blocked, or stopped states. This package's caller policies are:

```text
dependency_projection {
  dependency,
  requirement: required | optional,
  call_status: invoked | not-invoked,
  exact_request_brief,
  exact_dependency_outcome_or_return_kind,
  exact_dependency_result,
  exact_nested_state { partial_state?, blocked_state?, stop_reason? },
  projected_pair_outcome:
    active | returned | causal-return | blocked | stopped,
  evidence_and_limits,
  causal_owner?, reason?, boundary?, exact_causal_result?, revisit_condition?
}
```

When an assurance target is already present in `assurance_path`, record
`call_status=not-invoked`, `exact_dependency_outcome_or_return_kind=no-call`,
and `reason=assurance-path-already-visited` with the existing evidence and
path; never fabricate a callee result. A required missing return projects
`blocked`; an optional limitation may leave Pair `active` only when the current
boundary remains honest and the limitation is visible.

| Direct target | Caller policy |
| --- | --- |
| [Debug](../debug/SPEC.md) | Called when an unexpected behavior inside the current boundary needs a falsifiable cause. `corrected`, `diagnosed`, `unreproduced`, `needs-owner`, `blocked`, or `stopped` stays exact; Debug never receives Pair's mutation authority. |
| [Refactor](../refactor/SPEC.md) | Called when a named pressure point needs substantial seam, ownership, or preservation analysis. The exact structural result stands; any product change still requires the current Pair permission and, when consequential, the safety preflight. |
| [TDD](../tdd/SPEC.md) | Called when one accepted behavior needs an honest red/green proof seam. `cycle-complete`, `complete`, or `already-covered` is boundary evidence; `needs-owner`, `unsuitable`, `blocked`, or `stopped` stays exact and is never an acceptance. |
| [Review](../review/SPEC.md) | Called when a fixed integrated change needs adversarial judgment. Findings, coverage, and limits inform the boundary; findings are never approval. |
| [Verify](../verify/SPEC.md) | Called when one exact completion claim or disputed executable fact needs current evidence. `verified`, `failed`, or `unverified` is evidence with its limits; a failure does not imply a cause. |
| [Make Tangible](../make-tangible/SPEC.md) | Called when prose cannot support a bounded human reaction or teaching surface. The exact artifact, reaction, and fidelity state feeds the conversation; Pair keeps the judgment. |
| [Security](../security/SPEC.md) | Called when an attacker-focused question arises inside the fixed mutation boundary. Findings and coverage inform the boundary; Security never remediates. |
| [Delegate](../delegate/SPEC.md) | Read-only independent exploration, research, review, or verification with a concrete benefit over direct work. Delegate never receives Pair product-mutation authority; a human-selected Worker boundary uses the handoff below instead. |
| [Check Safety](../check-safety/SPEC.md) | Called only for a consequential action after exact Plan coverage and action-time human authority exist. Only `proceed` permits the effect; `revise` or `stop` prevents it. |

An explicitly human-selected autonomous Worker is a visible suspension, not a
dependency projection; Pair records only the named Plan subset, inspects the
returned change and proof or partial state, and resumes only after the requester
asks:

```text
worker_handoff {
  selected_by_human,
  suspended_pair_boundary,
  exact_plan_subset_and_permission,
  worker_request_and_limits,
  returned_change_and_proof_or_partial_state,
  inspected_by_pair,
  resume_only_after_human_request
}
```

No direct callee re-enters Pair, chooses Delivery route, revises governing
records, grants authority, approves a Plan, accepts a Result, or starts later
work. Pair does not call a missing target as a fallback; it returns the exact
assembly or evidence limitation.

## Runtime references and exact package tree

Pair keeps its live protocol inline: entry, Plan boundary, driver, permission,
effect, direct calls, causal-return, stop, and Delivery-return behavior. It
loads shared [Praxis Control](../../references/control.md) at entry and has no
local or other shared runtime references, scripts, assets, fixtures, templates,
wrappers, hooks, ledgers,
transcripts, or required integrations.

```text
skills/pair/
├── SKILL.md
├── SPEC.md
└── agents/
    └── openai.yaml
```

## Invocation and host projection

Pair is internally reachable solely so a direct human request can reach it. Its exact
frontmatter is:

```yaml
---
name: pair
description: "Pair with the requester on approved implementation. Use after their direct request for decision-sized collaborative work."
---
```

Its host projection is presentation and launch copy only:

```yaml
interface:
  display_name: "Pair"
  short_description: "Implement together in decision-sized turns"
  default_prompt: "Use $pair to implement this approved boundary with me in decision-sized turns."
policy:
  allow_implicit_invocation: false
```

Host loading does not satisfy direct human entry, Plan Approval, permission,
authority, safety, acceptance, or a continuation.

## Package-specific conformance cases

1. A direct “pair with me” request for an approved current implementation
   boundary enters Pair;
   a loaded skill, conversational tone, or accepted upstream gate alone does
   not.
2. No direct request returns `stopped` with `entry=not-selected` and no
   mutation or comprehension claim.
3. No approved current implementation boundary, stale Plan revision,
   contradictory coverage, or
   out-of-scope target returns `blocked` with the exact gap and planning owner.
4. Discussion, inspection, explanation, and evidence gathering proceed without
   mutation authority; Plan Approval alone does not permit implementation.
5. An agent-driven boundary states observation, exact surface, rationale,
   risk/tradeoff, and focused check, then waits for ordinary-language
   permission. Permission does not widen to nearby work.
6. A human-driven boundary observes the actual edit without competing changes;
   a driver switch affects only the next boundary.
7. Each permitted boundary returns visible changed/partial state and decisive
   evidence before another boundary is proposed; no autonomous batch or
   keystroke ceremony appears.
8. A redirect, conflicting edit, stop, or changed assumption revokes permission
   immediately and returns exact safe partial state without assumed cleanup.
9. A changed Project Outcome/boundary or local need returns to that Project's
   Requirements Discovery; a changed strategic objective, shared success
   condition/constraint/truth, Project relationship/dependency, or ordering
   rationale returns to Coordinate Initiative; detailed behavior, working form,
   Plan scope, proof, consequence, and authority return to their exact owners.
10. Debug, Refactor, TDD, Review, Verify, Make Tangible, Security, Delegate,
    and Check Safety are composed and consumed as an exact dependency projection
    reference — a complete brief against each callee's own intake contract, a
    lossless preserved return, no authority transfer, and no assurance-path
    re-entry — with required or optional status and the caller policies in
    the composition table. No callee grants authority, accepts a result, or
    re-enters Pair.
11. Read-only Delegate work is used only for a concrete benefit. Product
    mutation remains with Pair's human permission and current boundary;
    an explicitly selected Worker is a distinct visible `worker_handoff` with
    the exact Plan subset, returned change/proof or partial state, inspection,
    and human-requested resumption.
12. A consequential action requires exact Plan coverage, action-time human
    authority naming action/target/effect, and Check Safety `proceed`; Plan
    Approval, a green check, Pair posture, or a dependency return cannot
    substitute for those controls.
13. An integrated boundary returns proportionate Review/Verify evidence to
    ordinary Delivery; Pair does not own Result Acceptance or continuation.
14. Human stop, dependency stop, missing authority, and safety stop remain
    distinct from causal-return, blocked, and ordinary returned evidence.
15. Pair creates no transcript, permission ledger, session record, task log, or
    learning diary; lasting learning follows the normal causal owner.
16. Every result contains exact boundary and optional Plan/driver/permission state when
    available, every dependency projection or named optional limitation,
    separate Worker handoff when used, evidence and limits, caller-retained
    controls, and a stopping or causal owner; it performs no adjacent work.

## Source basis


This contract is maintained against the plugin-local [Premise](../../docs/concepts/premise.md),
[System](../../docs/concepts/system.md), [Control](../../docs/concepts/control.md),
[Context](../../docs/concepts/context.md), and [Work](../../docs/concepts/work.md)
owners; the [skill-package contract](../../docs/maintainers/skill-packages.md);
the [conformance and release contract](../../docs/maintainers/conformance-and-release.md);
[record foundations](../../references/records/foundations.md), and
[Delivery records](../../references/records/delivery.md); and the assembled
runtime contracts for Debug, Refactor, TDD, Review, Verify, Make Tangible,
Security, Delegate, and Check Safety. These plugin-local files are the complete
maintainer source basis. The declared Pair surface is the complete runtime;
no design-workspace or other non-plugin material is required to use, review,
validate, or maintain it.

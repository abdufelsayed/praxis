# Pair — Maintainer Contract

## Purpose

Pair is literal shared programming inside one approved Delivery Plan. The
human explicitly selects this posture when they want to shape implementation
with the agent, exchange ideas, understand the code, and authorize each
coherent mutation. Pair owns the live implementation exchange, decision-sized
boundaries, driver state, explanation, permission handling, supporting-call
composition, and stop/return envelope. The caller retains Requirements,
Issues, Plan, route, gates, authority, integrated judgment, Result Acceptance,
learning ownership, and stopping.

## Invocation, entry, and exclusions

Pair is model-invoked so a human's direct request can reach it, but behavioral
entry is human-owned. A human must explicitly select Pair in ordinary language;
host availability, a loaded skill, conversational tone, frequent questions,
interest in implementation, or an upstream accepted gate does not enter it.
Pair is never inferred or recommended. It is not used during Requirements
Discovery, Formalization, planning, review-only work, or orientation. Without
that direct request, return `outcome=stopped`, `entry=not-selected`,
`stop_reason.kind=not-selected`, with no mutation or comprehension claim.

The entry brief contains the current Delivery context, approved current Plan
and revision, Plan Approval, accepted baseline, exact result and target,
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
2. Require an approved, current Plan revision whose target and exclusions
   cover the requested work. Missing, stale, contradictory, or out-of-scope
   coverage returns `blocked` with the exact gap and the appropriate planning
   owner; Pair does not improvise a Plan.
3. Treat Plan Approval as accepted proposal context, not implementation
   authority. Obtain ordinary-language permission for each agent-driven
   decision-sized mutation. Permission covers only the described mutation,
   ordinary formatting, and focused proof; read-only inspection and explanation
   need no extra permission.
4. Choose exactly one driver per mutation boundary. A human driver changes the
   source while Pair observes, teaches, challenges material mistakes, and
   verifies without competing edits. An agent driver proposes the boundary,
   waits for permission, performs only that boundary, and exposes the result.
5. Select the smallest coherent boundary that produces a useful checkpoint:
   one behavior, type plus focused proof, bounded integration, or equivalent
   result. Do not ask for every keystroke or disappear into an autonomous
   batch. The driver may switch between boundaries without changing the Plan.
6. Before agent mutation, state the observation, exact intended change and
   surface, reason it is next, meaningful risk or tradeoff, and decisive check.
   A permission is not permission for adjacent cleanup, another behavior, the
   rest of the Plan, a consequential effect, or an external action.
7. Before a consequential choice, explain current behavior, constraint,
   mechanism, meaningful alternatives, and risk at the human's level. Keep
   routine mechanics brief and expand only when understanding or future
   implementation judgment needs it.
8. Re-read the actual workspace after a redirect, overlapping edit, changed
   assumption, or material discovery. A stop or redirect revokes the current
   permission immediately. Preserve the exact safe partial state and let the
   human choose whether to inspect, preserve, revise, or undo; Pair does not
   finish, revert, or clean up by assumption.
9. Mutate only a permitted in-bound boundary, or observe the human driver's
   change. Ordinary reversible mutation needs the scoped Pair permission and
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
11. Every direct call receives a complete `dependency_request` with
    `requirement=required|optional`, a stable boundary ID, bounded question
    and consequence, fixed Pair/Plan context, accepted behavior or governing
    truth, target/version, source and evidence pointers with limits,
    scope/exclusions, authority/effect/safety limits, `caller=pair`,
    `return_to=pair`, requested result shape, and caller-retained controls. A
    missing field is a blocked call with the exact gap; no callee guesses.
12. Compose Debug, Refactor, TDD, Review, Verify, Make Tangible, Security,
    Delegate, and (for consequential effects only) Check Safety for their
    distinct bounded questions or evidence. Preserve every exact dependency
    envelope, nested partial/blocked/stopped state, evidence, limitation,
    causal owner/reason/boundary/result/revisit, and projected Pair outcome in
    one typed `dependency_projection` per dependency attempt. For the five
    assurance components—Debug, Refactor, TDD, Verify, and Security—append the
    callee only when it is absent and actually invoked. If it is already in
    `assurance_path`, do not invoke or fabricate a callee outcome; record a
    Pair-owned no-call projection with
    `reason=assurance-path-already-visited` and the existing evidence/path,
    projecting `blocked` only when required evidence is missing or retaining
    an explicit optional limitation while Pair remains `active`. A dependency
    never grants authority, accepts a Plan or Result, chooses a route, or
    starts work.
13. A supporting call that would mutate product state remains inside Pair's
    current human-permission boundary. Delegate is read-only for Pair product
    work by default. If the human explicitly chooses autonomous Worker
    implementation for one named boundary, Pair visibly suspends, records a
    distinct `worker_handoff` with only that Plan subset, inspects the returned
    change and proof/partial state, and resumes only after the human asks. The
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
17. Pair completes only when the human ends the posture, work returns to an
    earlier owner, or integrated evidence is handed to ordinary Delivery. It
    then returns one bounded envelope and stops without commit, publication,
    deployment, route advancement, or inferred next activity.

## Complete dependency brief and projection

The shared request shape is part of Pair's contract:

```text
dependency_request {
  dependency,
  requirement: required | optional,
  boundary_id,
  bounded_question_and_consequence,
  fixed_pair_boundary_and_plan_context,
  accepted_behavior_or_governing_truth,
  target_and_version,
  source_or_evidence_pointers_and_limits,
  scope_and_exclusions,
  authority_effect_and_safety_limits,
  caller: pair,
  return_to: pair,
  requested_result_shape,
  caller_retained_route_gates_authority_acceptance_and_stop
}
```

Each invoked dependency, or intentionally skipped assurance-path dependency,
appears exactly once under this lossless shape:

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

`call_status=not-invoked` is a Pair-owned no-call projection, not a callee
outcome. An assurance-path skip records the existing evidence and path,
`reason=assurance-path-already-visited`, and
`exact_dependency_outcome_or_return_kind=no-call`.

`active` means a usable scoped return while Pair remains at its boundary;
`returned` means integrated Review/Verify evidence handed to Delivery;
`causal-return` means the dependency changed governing meaning;
`blocked` means a missing brief, required incomplete/unverified/failed/owner
return, or an optional gap that prevents the current boundary; and `stopped`
preserves a Pair or dependency stop with its typed stop reason and safe state.
An optional incomplete return may leave Pair `active` only when the boundary
remains honest and the limitation is explicit. No projection becomes
permission, proof, acceptance, or route authority.

An explicitly human-selected autonomous Worker is represented separately:

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

## Invariants

1. Every active run has exactly one direct human entry, current Plan revision,
   accepted baseline, active caller, and Delivery result boundary. An absent
   direct request is `stopped` with `entry=not-selected`, `not-selected` stop
   kind, and no mutation or comprehension claim; a missing Plan boundary is an
   explicit blocked return, never a guess.
2. Pair's frontmatter and host projection expose reachability only. Neither
   host invocation nor Pair posture supplies Plan Approval, Implementation
   Authorization, Result Acceptance, or any consequential authority.
3. Plan Approval is current and covers the exact requested target. A material
   Plan change invalidates current Pair permission and exposed evidence until
   the Plan owner recomputes the contract and fresh authority exists.
4. Each mutation boundary has one driver, one exact human permission when the
   agent drives, one affected surface, one focused check, and one visible
   partial/result state. Human praise or a successful check does not authorize
   the next boundary.
5. Permission is ordinary-language, temporary, scoped, revocable, and valid
   only while the described boundary, assumptions, workspace, and direction
   remain intact. A changed assumption or redirect revokes it immediately.
6. Human-driven changes are observed from the actual workspace. Pair never
   overwrites overlapping human edits or runs a competing implementation.
7. Supporting calls are bounded and explicit. Their complete briefs and one
   lossless typed projection preserve required/optional status, exact nested
   result/state, projected Pair outcome, evidence/limits, and causal
   owner/reason/boundary/result/revisit without relabeling anything as success.
   An explicitly human-selected Worker boundary is a visible suspension and
   review handoff, never an implicit Pair delegation.
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
11. Pair keeps conversation, source, tests, current Plan, and native evidence
    transient by default. No transcript, permission ledger, session archive,
    generic task record, or learning diary is created.
12. Completion is checkable: the current boundary and driver are explicit, the
    permission and partial state are honest, every invoked call has a complete
    projection or is a named optional limitation, any Worker handoff is
    separately inspected, decisive evidence is visible, and caller-retained
    controls and the next owner are stated.

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
`blocked` identifies missing Plan, authority, source, dependency, environment,
or proof. `stopped` preserves the human's or caller's exact stop and safe
partial state; `entry=not-selected` additionally makes no mutation or
comprehension claim. No outcome grants authority, acceptance, or continuation.

## Effects, authority, persistence, and lifetime

Pair may inspect source, tests, interfaces, configuration, and working-tree
state; explain behavior; run focused checks; and compose bounded supporting
capabilities within the caller's current boundaries. Ordinary reversible
product mutation occurs only inside the approved Plan and current
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

## Direct composition

Each row supplies the target-specific fields for the complete
`dependency_request`; the caller marks the call `required` when its evidence
is necessary for this boundary and `optional` when the boundary can remain
honest without it. Every return uses the centralized lossless projection above.

| Target | Trigger and bounded request | Consumed return | Ownership retained by Pair |
| --- | --- | --- | --- |
| [Debug](../debug/SPEC.md) | An unexpected behavior inside the current boundary needs a falsifiable cause. Pass the fixed symptom, accepted behavior, source/evidence, boundary, reproducibility conditions, `original_full_reproduction`, authority, requested proof, and the current `assurance_path` with `debug` appended when absent. If `debug` is already present, do not invoke it; record a Pair-owned no-call projection with `call_status=not-invoked`, `exact_dependency_outcome_or_return_kind=no-call`, existing evidence/path, and `reason=assurance-path-already-visited`; project `blocked` only when required evidence is missing, or retain an explicit optional limitation while Pair remains `active`. | Preserve `corrected`, `diagnosed`, `unreproduced`, `needs-owner`, `blocked`, or `stopped`, including cause, proof, limits, and partial state; a no-call is Pair-owned and not a Debug outcome. | Driver, mutation permission, integration, causal return, and stop. |
| [Refactor](../refactor/SPEC.md) | A named pressure point needs substantial seam, ownership, dependency, or preservation analysis. Pass the fixed target, pressure, accepted behavior, current Plan, exclusions, authority, preservation question, caller `completion_proof`, and the current `assurance_path` with `refactor` appended when absent. If `refactor` is already present, do not invoke it; record the same Pair-owned no-call projection with `reason=assurance-path-already-visited` and existing evidence/path, projecting `blocked` only for missing required evidence or retaining an explicit optional limitation while Pair remains `active`. | Preserve `analyzed`, `relieved`, `partial`, `needs-design`, `needs-owner`, `blocked`, or `stopped`; any product change remains subject to Pair permission, and a no-call is not a Refactor outcome. | Boundary choice, human permission, integration, and stopping. |
| [TDD](../tdd/SPEC.md) | One accepted behavior needs an honest red/green proof seam. Pass behavior, Plan boundary, `mechanism`, `stable_seam`, `independent_expectation`, `original_full_reproduction`, source, evaluator, authority, requested proof, and the current `assurance_path`; append `tdd` only when absent and actually invoking TDD. If `tdd` is already present, record the Pair-owned no-call projection under the centralized visited-path rule instead of calling or fabricating a TDD result. | Preserve `cycle-complete`, `complete`, `already-covered`, `needs-owner`, `unsuitable`, `blocked`, or `stopped`; a no-call is Pair-owned, and no result acceptance is inferred. | Driver, per-mutation permission, behavior meaning, and next boundary. |
| [Review](../review/SPEC.md) | A fixed integrated change needs adversarial Specification Fidelity and Engineering Integrity judgment. Pass target/version, governing truth, risks, exclusions, evidence, and review question. | Preserve `complete`, `incomplete`, or `stopped`, findings, coverage, dependency projections, and limits. | Integrated interpretation, correction discussion, route, and acceptance. |
| [Verify](../verify/SPEC.md) | One exact completion claim or disputed executable fact needs current evidence. Pass target, claim, conditions, environment, sensitivity, evidence, `contradictory_observation`, `supported_scope`, authority, proof bar, and the current `assurance_path`; append `verify` only when absent and actually invoking Verify. If `verify` is already present, record the Pair-owned no-call projection under the centralized visited-path rule instead of calling or fabricating a Verify result. | Preserve `verified`, `failed`, `unverified`, or `stopped` with exact evidence and limitations; a no-call is Pair-owned, and failure does not imply a cause. | Claim interpretation, boundary, driver, and stopping. |
| [Make Tangible](../make-tangible/SPEC.md) | Prose cannot support a bounded human reaction or teaching surface. Pass the question, `primary_judgment`, audience, evidence, medium, fidelity, authority, lifetime, and exact requested reaction. | Preserve `no-op`, `constructed`, `revised`, `blocked`, or `stopped`, exact artifact/version, reaction, fidelity, and retention limits. | Implementation conversation, permission, judgment, and route. |
| [Security](../security/SPEC.md) | An attacker-focused question arises inside the fixed mutation boundary. Pass target, expectation, assets, trust boundaries, attacker inputs, evidence, exclusions, safety, return shape, and the current `assurance_path` with `security` appended when absent. If `security` is already present, do not invoke it; record a Pair-owned no-call projection with `call_status=not-invoked`, `exact_dependency_outcome_or_return_kind=no-call`, existing evidence/path, and `reason=assurance-path-already-visited`; project `blocked` only when required evidence is missing, or retain an explicit optional limitation while Pair remains `active`. | Preserve `no-op`, `findings`, `no-high-confidence-findings`, `needs-verification`, `needs-owner`, `blocked`, or `stopped`, with coverage limits; a no-call is Pair-owned and not a Security outcome. | Accepted meaning, remediation boundary, permission, and stopping. |
| [Delegate](../delegate/SPEC.md) | Independent read-only exploration, research, review, or verification has a concrete benefit over direct work. Pass positive benefit, isolated role, fixed target/version and lens, governing truth, scope/exclusions, evidence bar, source pointers, tools/safety, return, and escalation conditions. A separately human-selected Worker boundary is suspended into the distinct handoff below, never folded into this call. | Preserve `delegated`, `no-op`, `partial`, `blocked`, or `stopped`, including exact evidence, limits, and partial state; no product-mutation authority is silently delegated by Pair. | Role selection, supervision, integration, human permission, visible suspension, and stop. |
| [Check Safety](../check-safety/SPEC.md) | A proposed action has a consequential effect after exact Plan coverage and current human authority exist. Pass action, target, intended effect, consequence, recovery, evidence, and authority question. | Preserve `proceed`, `revise`, or `stop`; Safety never executes or grants authority. | Exact action permission, effect boundary, interpretation, and stopping. |

No direct callee re-enters Pair, chooses Delivery route, revises governing
records, grants authority, approves a Plan, accepts a Result, or starts later
work. Pair does not call a missing target as a fallback; it returns the exact
assembly or evidence limitation.

## Runtime references and exact package tree

Pair keeps its complete live protocol inline. Every reachable branch needs
entry, Plan boundary, driver, permission, effect, direct-call, causal-return,
stop, and Delivery-return behavior, so no skill-local or shared reference is
loaded. There are no scripts, assets, fixtures, templates, wrappers, hooks,
ledgers, transcripts, or required integrations.

```text
skills/pair/
├── SKILL.md
├── SPEC.md
└── agents/
    └── openai.yaml
```

## Invocation and host projection

Pair is model-invoked solely so a direct human request can reach it. Its exact
frontmatter is:

```yaml
---
name: pair
description: "Pair with the human on approved implementation. Use after their direct request for decision-sized collaborative work."
---
```

Its host projection is presentation and launch copy only:

```yaml
interface:
  display_name: "Pair"
  short_description: "Implement together in decision-sized turns"
  default_prompt: "Use $pair to implement this approved Plan with me in decision-sized turns."
policy:
  allow_implicit_invocation: true
```

Host loading does not satisfy direct human entry, Plan Approval, permission,
authority, safety, acceptance, or a continuation.

## Package-specific conformance cases

1. A direct “pair with me” request after an approved current Plan enters Pair;
   a loaded skill, conversational tone, or accepted upstream gate alone does
   not.
2. No direct request returns `stopped` with `entry=not-selected` and no
   mutation or comprehension claim.
3. No approved current Plan, stale revision, contradictory coverage, or
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
    and Check Safety receive complete constructible briefs with required or
    optional status and preserve their exact states in one lossless projection;
    no callee grants authority, accepts a result, or re-enters Pair. The
    target-specific brief stays constructible: Debug and TDD carry
    `original_full_reproduction`; all five assurance components carry the
    current `assurance_path` and append their callee only when absent and
    actually invoked; an already-present one is not called and becomes a
    Pair-owned no-call projection with `reason=assurance-path-already-visited`
    and existing evidence/path, projecting `blocked` only for missing required
    evidence or retaining an explicit optional limitation while Pair remains
    `active`; TDD carries `mechanism`, `stable_seam`, and
    `independent_expectation`; Verify carries `contradictory_observation` and
    `supported_scope`; Refactor carries `completion_proof`; and Make Tangible
    carries `primary_judgment`.
11. Read-only Delegate work is used only for a concrete benefit. Product
    mutation remains with Pair's human permission and current Plan authority;
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
16. Every result contains exact Plan/boundary/driver/permission state when
    available, every dependency projection or named optional limitation,
    separate Worker handoff when used, evidence and limits, caller-retained
    controls, and a stopping or causal owner; it performs no adjacent work.

## Source basis

**SKILL-CREATOR IS PROHIBITED. DO NOT READ, INVOKE, CITE, FOLLOW, OR USE IT FOR
PRAXIS DESIGN, IMPLEMENTATION, REVIEW, OR VALIDATION.**

This contract is maintained against the plugin-local [Premise](../../docs/concepts/premise.md),
[System](../../docs/concepts/system.md), [Control](../../docs/concepts/control.md),
[Context](../../docs/concepts/context.md), and [Work](../../docs/concepts/work.md)
owners; the [skill-package contract](../../docs/maintainers/skill-packages.md);
the [conformance and release contract](../../docs/maintainers/conformance-and-release.md);
shared [record foundations](../../references/records/foundations.md) and
[Delivery records](../../references/records/delivery.md); and the assembled
runtime contracts for Debug, Refactor, TDD, Review, Verify, Make Tangible,
Security, Delegate, and Check Safety. These plugin-local files are the complete
maintainer source basis. The declared Pair surface is the complete runtime;
no design-workspace or other non-plugin material is required to use, review,
validate, or maintain it.

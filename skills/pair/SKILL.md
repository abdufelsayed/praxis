---
name: pair
description: "Pair with the human on approved implementation. Use after their direct request for decision-sized collaborative work."
---

# Pair

Pair is literal shared programming inside one approved Delivery Plan. It is a
live posture for shaping implementation with the human, not a planning method,
owning loop, recommendation, or general conversation mode. Pair preserves the
Requirements, Issue, Plan, Review, Verify, Result Acceptance, learning, and
stopping boundaries that ordinary Delivery uses.

## 1. Confirm the request and the Delivery boundary

Enter only when the human directly selects Pair in ordinary language (for
example, “pair with me”). A loaded skill, conversational tone, frequent
questions, or interest in implementation is not entry. Pair is never inferred
or recommended during Requirements Discovery, Formalization, planning,
review-only work, or orientation. If no direct request selected Pair, return
`outcome=stopped`, `entry=not-selected`, and
`stop_reason.kind=not-selected` with no mutation, comprehension, or Pair
recommendation.

Bind the current Delivery context before discussing a mutation:

- the approved current Plan ID, revision, owner, and `plan_approval` result;
- the exact result, covered Issues or standalone outcome, accepted baseline,
  targets, exclusions, dependencies, risks, recovery, and required proof;
- the Plan's current authority state and the human authority that remains with
  Delivery; and
- current source, tests, interfaces, configuration, working-tree state, and
  the caller's route, gates, acceptance, and stop.

Plan Approval accepts a proposal; it does not authorize implementation. Pair's
posture adds no authority. If there is no approved current Plan, or the Plan is
missing, stale, contradictory, or outside the requested work, return
`outcome=blocked` with the exact gap and recommend the appropriate planning
step. Do not improvise a Plan or mutate while that gap remains. This step is
complete when direct entry, one current Delivery boundary, accepted baseline,
and caller-retained controls are explicit, or the exact block/stop is returned.

## 2. Choose one driver and one decision-sized boundary

Name the driver for the current boundary: `human` or `agent`.

- With a human driver, watch the actual source change, answer questions,
  explain consequences, challenge material mistakes, and help verify. Do not
  create a competing implementation.
- With an agent driver, choose the smallest coherent coding move that is large
  enough to produce a useful checkpoint and small enough for the human to
  understand and steer. A boundary may add one type and focused tests, change
  one function's behavior, or wire one bounded integration.

The human owns the arrangement and may set or change it in ordinary language
at any time: who drives, how large a boundary is, and how often the agent
checks in. Standing arrangements are valid — "teach me, then I drive," "watch
me while I do this part," or "keep going until the tests pass, then check
in." A wider arrangement must still name the Plan-covered surface or sequence
and its termination or check-in condition; a vague "keep going" does not widen
the target or permit adjacent work. A declared arrangement scopes permission
to exactly what was declared and never covers a consequential effect, a commit,
or an external action. When the human declares nothing, the per-boundary rhythm
below applies.

Inspect read-only evidence far enough to name the next boundary. Before an
agent-driven mutation, state only:

1. the relevant observation;
2. the exact intended change and affected surface;
3. why it is the next move;
4. a meaningful tradeoff or risk, when one exists; and
5. the decisive focused check.

Wait for ordinary-language permission — for one boundary, or for a wider
arrangement the human has explicitly declared. Permission covers only the
declared scope: that exact mutation or arrangement, its ordinary formatting,
and its focused verification. It does not cover
the rest of the Plan, adjacent cleanup, another behavior, a consequential
effect, a commit, or an external action. Read-only inspection, explanation,
and already-bounded evidence gathering need no extra permission. If permission
has not been given, keep the workspace unchanged and return an active Pair
state with the proposed boundary and `permission=awaiting`.

That ordinary-language permission is the human's current implementation
authorization for this boundary; Pair itself never manufactures it.

Do not ask for every keystroke or disappear into a large autonomous batch. The
human can switch the driver conversationally between boundaries while the Plan
and Pair posture remain unchanged.

This step is complete when the driver, boundary, affected surface, permission
state, and expected evidence are explicit; a human-driven boundary is observed
without competing edits; or the exact blocked/stopped state is returned.

## 3. Explain the consequential choice before the change

For a consequential boundary, connect current behavior, the governing
constraint, the proposed mechanism, meaningful alternatives, and the risk of
error or delay at the human's level. Keep routine mechanics brief. Expand when
the human asks, when the choice changes future implementation, or when
misunderstanding would make the boundary unsafe.

Re-read the workspace when the human redirects, edits overlapping code, or
introduces a material discovery. A stop, redirect, conflicting edit, or
changed assumption revokes the current permission immediately. Stop at the
earliest safe point, report the exact partial state and evidence, and let the
human choose whether to inspect, preserve, revise, or undo it. Do not finish,
revert, or clean up by assumption.

This step is complete when the human understands the current choice and its
limits, or the exact partial state and return owner has been surfaced.

## 4. Mutate only the permitted boundary and prove the checkpoint

When the human has permitted the exact boundary, perform only that in-bound
mutation (or observe it when the human is driving). An ordinary reversible
mutation needs the scoped Pair permission and must keep the Plan's targets,
exclusions, dependencies, compatibility, recovery, and proof intact. A
consequential in-bound effect is a separate action: before it occurs, exact
Plan coverage, current human authority naming the action, target, and intended
effect, and the normal [Check Safety](../check-safety/SKILL.md) preflight must
all be present and Safety must return `proceed`. A `revise` or `stop` result
prevents the effect. Preparation and the consequential effect are never
collapsed into one permission.

Run the expected focused check, inspect the changed source and tests, and show
the material result and decisive evidence before proposing another boundary.
Pair never treats conversational closeness, Plan Approval, a green check, or a
supporting call as action-time authority.

If a permitted boundary changes accepted behavior, targets, exclusions,
consequences, risks, recovery, proof, or authority, stop before extending the
change. Recompute the affected Plan or causal record through its owner and
obtain fresh authority; a local implementation improvement may continue only
while those governing items remain unchanged.

This step is complete only when the named boundary is changed or observed,
its focused evidence is visible, temporary state is safe, and the next
boundary is explicit; otherwise return the exact partial, blocked, or stopped
state.

## 5. Compose bounded supporting capabilities

Use a supporting skill only for its distinct bounded question or evidence. Build
one complete brief before invocation:

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

A missing brief field blocks the call with its exact gap; the callee is never
asked to guess. The callee keeps its own procedure and effects; Pair retains
the live driver, permission, integration, and stopping boundary. A call never
silently widens Pair or re-enters it.

- [Debug](../debug/SKILL.md) receives the fixed symptom, accepted behavior,
  source/evidence boundary, reproducibility conditions, the
  `original_full_reproduction`, requested proof, and the current
  `assurance_path` with `debug` appended when `debug` is absent;
  consume its `corrected`, `diagnosed`, `unreproduced`, `needs-owner`,
  `blocked`, or `stopped` result without giving it mutation authority.
- [Refactor](../refactor/SKILL.md) receives the fixed target/version, pressure
  mechanism, preservation seam, scope/exclusions, read-only authority, and
  the caller's `completion_proof`, plus the current `assurance_path` with
  `refactor` appended when `refactor` is absent;
  consume its exact structural result. Any product change still requires the
  current Pair permission and, when consequential, the safety preflight.
- [TDD](../tdd/SKILL.md) receives one accepted behavior, Plan boundary,
  `mechanism`, `stable_seam`, `independent_expectation`, source/evaluator,
  `original_full_reproduction`, authority, proof bar, and the current
  `assurance_path`; append `tdd` only when it is absent and TDD is actually
  invoked. Consume its cycle/proof or `needs-owner`, `unsuitable`, `blocked`,
  or `stopped` state without acceptance.
- [Review](../review/SKILL.md) receives the fixed integrated target/version,
  governing truth, required lenses, exclusions, evidence boundary, and review
  question; consume findings, coverage, and limits, never approval.
- [Verify](../verify/SKILL.md) receives one exact claim, observable property,
  target conditions, environment, sensitivity, evidence, the
  `contradictory_observation`, `supported_scope`, and proof bar, plus the
  current `assurance_path`; append `verify` only when it is absent and Verify
  is actually invoked. Consume `verified`, `failed`, `unverified`, or `stopped`
  evidence without inventing a cause.
- [Make Tangible](../make-tangible/SKILL.md) receives the bounded question,
  `primary_judgment`, audience/starting point, accepted truth, medium/fidelity,
  requested reaction, artifact lifetime, and named consumer; consume exact
  artifact, reaction, fidelity, blocked, or stopped state.
- [Security](../security/SKILL.md) receives one attacker question, fixed
  target/version, governing expectation, assets/properties, actors/trust
  boundaries, attacker inputs, evidence/counterevidence, scope, environment,
  safety limits, and the current `assurance_path` with `security` appended
  when `security` is absent; consume findings and coverage, never remediation.
- [Delegate](../delegate/SKILL.md) receives the positive benefit, isolated
  role, fixed target/version, assigned lens, evidence bar, source pointers,
  tools/safety, return, and escalation conditions. It is read-only by default.
  If the human explicitly chooses autonomous Worker implementation for one
  named boundary, suspend Pair visibly and use the distinct `worker_handoff`
  shape below; Delegate never receives Pair product-mutation authority.
- [Check Safety](../check-safety/SKILL.md) receives only a consequential
  action after Plan coverage and action-time human authority exist, naming the
  exact action, target, intended effect, consequence, recovery, evidence, and
  authority question; consume only `proceed`, `revise`, or `stop`.

For the five assurance components—Debug, Refactor, TDD, Verify, and
Security—apply one visited-path rule. Append the callee only when it is absent
and actually invoked. If it is already present in the current
`assurance_path`, do not invoke it again or fabricate a callee outcome. Record
a Pair-owned no-call projection with `reason=assurance-path-already-visited`
and the existing evidence and path. Set `call_status=not-invoked` and
`exact_dependency_outcome_or_return_kind=no-call`; project `blocked` when the
required evidence is not already supplied, or record the explicit limitation
and keep Pair `active` when the dependency is optional and the boundary remains
honest.

Record one lossless projection for every invoked call, and one no-call
projection for an assurance-path skip or omitted optional call when its
evidence would have helped:

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
outcome. For an assurance-path skip it preserves the existing evidence and
path with `reason=assurance-path-already-visited` and
`exact_dependency_outcome_or_return_kind=no-call`.

`active` is a usable scoped return while Pair remains at its boundary;
`returned` is the integrated Review/Verify handoff to ordinary Delivery;
`causal-return` is any dependency-owned change to governing meaning;
`blocked` is a missing brief, required incomplete/unverified/failed/owner
return, or an optional gap that prevents the current boundary; and `stopped`
is a Pair or dependency stop preserved with its typed stop reason and safe
state. An optional incomplete return may leave Pair `active` only when the
current boundary remains honest and the exact limitation is visible. A
dependency projection never becomes permission, proof, acceptance, or a route.

An explicit Worker handoff is not a dependency projection:

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

Pair remains incomplete until required calls return or their exact absence is
an explicit no-call projection or named limitation, and no call transfers
authority or ownership.

This step is complete when every invoked call has returned or its exact absence
is an explicit limitation and no call has transferred authority or ownership.

## 6. Return changed meaning to its causal owner

When discussion, source, feedback, or evidence changes governing meaning,
return immediately with the exact owner instead of absorbing the change into
implementation:

- a changed strategic objective, shared success condition, shared constraint
  or accepted truth, Project relationship/dependency, or ordering rationale
  returns to Coordinate Initiative;
- a changed Project Outcome or Project boundary returns to that Project's
  Requirements Discovery;
- a changed Project-local need, constraint, preference, accepted truth, or
  problem understanding returns to that Project's Requirements Discovery;
- changed detailed behavior, Issue boundaries, exclusions, or acceptance
  criteria returns to the Issue owner;
- changed high-level working form or strategy returns to Evolve;
- changed implementation scope, Plan authority, consequence, recovery, or
  proof returns to Plan; and
- a fixed accepted behavior with only an unsettled coding choice remains in
  Pair.

Stop affected mutation, preserve the partial state, and return
`outcome=causal-return` with `owner`, `reason`, `boundary`, exact evidence or
dependency result, and `revisit_condition`. The caller resumes its own gate or
route; Pair does not revise records, select a solution, accept a result, or
advance Delivery.

This step is complete when every material discovery is either inside the
accepted implementation boundary or returned to its earliest causal owner.

## 7. Finish through ordinary Delivery

After an integrated boundary reaches its Plan proof, use the proportionate
[Review](../review/SKILL.md) and [Verify](../verify/SKILL.md) work required by
ordinary Delivery. Return their evidence, findings, claims, and limitations to
the Delivery owner. Pair does not replace Delivery's result explanation or
Result Acceptance; a per-boundary permission, successful check, human praise,
or Pair conversation never accepts the Plan result, Evolution, or Project.

When the human ends or suspends Pair, return `outcome=stopped` with the exact
stop reason and safe partial state. When the work returns to an earlier owner,
use the causal return above. When Delivery has the integrated proof needed for
its own judgment, return `outcome=returned` with the Review/Verify evidence and
recommend Delivery's ordinary result judgment. Do not commit, publish, deploy,
start another Plan, or infer the next activity.

Pair creates no transcript, permission ledger, session record, task log, or
learning diary. Source, tests, the current Plan, and native conversation carry
ordinary detail. Promote lasting learning only through its normal owning
record, and keep temporary implementation notes within Delivery's ordinary
lifetime rules.

## Result

Return one compact envelope and stop at the current boundary:

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
  dependency_projections?,
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
the next decision-sized boundary or permission state is visible. `returned`
means integrated evidence has been handed back to ordinary Delivery without a
Result Acceptance claim. `blocked` identifies missing Plan, authority, source,
dependency, environment, or proof. `causal-return` identifies changed meaning
and its earliest owner. `stopped` preserves the human's or caller's exact stop
and safe partial state; the `not-selected` branch additionally makes no
mutation or comprehension claim. Every outcome names evidence and
limitations, then stops without adjacent work.

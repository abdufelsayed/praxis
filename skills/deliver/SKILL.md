---
name: deliver
description: "Deliver one bounded working result. Use when the human chooses Delivery for an approved Issue or clear standalone outcome, including planning it, or authorizes implementation of an approved Plan."
---

# Deliver

Run one bounded implementation loop from an approved Issue or clear
standalone outcome to one honestly judged result. Deliver owns the current
Plan route, implementation interpretation, integrated assurance, Result
Acceptance, owner coverage, and stopping. The human retains product meaning,
forward-work choice, consequential authority, and acceptance judgment.

## 1. Enter one Delivery loop

Enter only at a human boundary:

- the human chooses Delivery or planning for approved Issue work or an
  already-clear standalone outcome;
- the human explicitly authorizes implementation of one current approved
  Plan; or
- the human directly says to Pair with them, after a current approved Plan.

A loaded skill, approved Requirement, Evolution, Issue Approval, or Plan
Approval does not start Delivery or implementation. Bind one caller, one
result boundary, the governing Requirements and selected Evolution when
present, approved Issues or the standalone truth, current source and tests,
the accepted baseline, Plan revision, targets, exclusions, dependencies,
risks, recovery, required proof, working-tree state, and the route, gates,
authority, acceptance, and stop retained by the caller.

If a human chose planning and no current approved Plan exists, invoke
[Plan](../plan/SKILL.md) immediately with the complete entry brief. If the
boundary, accepted truth, current Plan, or evidence basis is missing or
contradictory, return `blocked` with the exact gap and causal owner. If the
human selected Pair, pass the same bounded context to [Pair](../pair/SKILL.md)
and do not mutate. This step is complete when exactly one mode—planning,
autonomous implementation, or Pair—has an explicit boundary, or the typed
blocked/stopped return has been made.

## 2. Compose the Plan and stop at its authority boundary

The Plan is just in time and owns the implementation proposal. Its brief
states the approved Issue portions or standalone outcome; governing records
and accepted baseline; current source, interfaces, tests, configuration, and
evidence; result boundary, targets, exclusions, dependencies, risks,
recovery, consequences, assurance, documentation impact, and caller-retained
controls. It includes `caller=deliver`, `return_to=deliver`, one stable
`boundary_id`, and the requested Plan result shape.

Preserve Plan's complete return under one dependency projection:

- `approved` means the exact Plan revision passed its native Plan Approval;
  it leaves `authority.state=awaiting` and grants no mutation, commit,
  publication, deployment, or external authority;
- `revised` means material feedback or governing learning changed the Plan;
  foreground the semantic difference and repeat the affected Plan gate;
- `blocked` preserves the missing boundary, evidence, dependency, native
  capability, or authority and safe state; and
- `stopped` preserves the exact human/native stop, reference or
  `unavailable`, limits, and safe Plan state.

After an approved Plan, preserve the exact Plan Approval and inspect the same
human message for a separately stated Implementation Authorization for that
exact revision. The two judgments remain distinct: approval accepts the
proposal, while authorization activates the named implementation boundary. If
both are explicit in the same message, retain both and continue to Step 3; do
not infer authorization from approval or from a vague continuation. Otherwise,
explain the accepted boundary, recommend the separate authorization, and stop
with `authority.state=awaiting`. A later ordinary-language instruction such as
“implement the approved Plan” activates only ordinary, reversible in-bound
work. It never covers a changed Plan revision or an unmentioned effect. This
step is complete when the Plan projection preserves both judgments when
present, or Delivery is awaiting the named authority, exact revision, block,
or stop.

## 3. Require exact implementation authority

Before mutation, re-read the current Plan revision and verify that it still
covers the intended result, target, consequence, exclusions, dependencies,
risk, recovery, and proof. Plan Approval is proposal acceptance, not
implementation authority. Require a distinct human Implementation
Authorization for autonomous work; that authorization may be the separately
stated second act in the same message as Plan Approval or a later instruction.
Require a direct Pair selection for the Pair posture. A vague “continue,” stale
message, delegate brief, or nearby approval does not activate mutation.

Ordinary reversible edits, tests, and local inspection may proceed inside the
authorized Plan. Destructive, irreversible, data-affecting, production,
permission-changing, secret-handling, migration, infrastructure,
cross-project, commit, push, merge, pull-request, deployment, or other
remote effects require both exact Plan inclusion and a human instruction that
names the current action, target, and intended effect. Resolve current risk
with [Check Safety](../check-safety/SKILL.md) at action time; its `proceed`
return is evidence for the action, never authority. A new consequence or
stale Safety basis returns the action to `revise` or `stop` before the effect.

If the human says Pair, pass the complete approved Plan context to
[Pair](../pair/SKILL.md). Pair obtains permission for each decision-sized
mutation, returns its partial or integrated state, and never transfers
Delivery authority. This step is complete when the exact active authority,
effect boundary, safe state, and next mutation boundary are explicit, or
mutation is blocked/stopped without guessing.

## 4. Work one integrated boundary

Inspect current source, interfaces, tests, callers, dependencies,
configuration, working-tree changes, and relevant accepted evidence before
editing. Choose the smallest boundary that can produce one integrated,
reviewable, and provable result. Include a structural repair only at the
concrete pressure point required by the accepted result and the inherited
behavior it exposes; keep adjacent debt outside.

Local implementation choices may vary only while they preserve the governing
Requirements and Issue behavior (or standalone truth), Plan result and
exclusions, targets, dependencies, compatibility, consequences, recovery,
and proof. Every repeated attempt must add new information—a changed
hypothesis, a more discriminating probe, or a materially different
correction. Two variations of one failed guess trigger [Debug](../debug/SKILL.md),
a Plan revision, or a causal return; they do not justify equivalent retries.
Judge deviations cumulatively. A set of locally safe choices that changes
meaning, ownership, scope, risk, exclusion, consequence, authority, or proof
returns to Plan or the earlier governing owner before further mutation.

Invoke [Refactor](../refactor/SKILL.md) for substantial pressure-point,
preservation, seam, or ownership reasoning; trivial structural edits stay
local. Invoke [TDD](../tdd/SKILL.md) for a requested or materially useful
red–green–refactor proving seam. Invoke [Delegate](../delegate/SKILL.md) only
when isolated context, net cost, or elapsed-time benefit survives briefing,
integration, and assurance; a delegate never receives more authority than the
Plan subset explicitly described. Invoke [Manage Worktree](../manage-worktree/SKILL.md)
only when the named Plan work has collision, rollback, or experiment-isolation
risk. This step is complete when the current mutation boundary, accepted
meaning, decisive check, and any required supporting return are explicit.

When the accepted result changes public, operational, integration,
troubleshooting, or contributor behavior, call [Write Docs](../write-docs/SKILL.md)
only when the Plan names the exact owning surface, reader, and documentation
proof and current Implementation Authorization covers that edit. Otherwise
return the docs-impact gap for Plan revision; never present a result with
known stale guidance. During substantial or uncertainty-heavy work, temporary
notes may capture material deviations, decisions, evidence, and learning.
Before a context reset or handoff, create a compact recovery checkpoint only
when the approved Plan, current source/tests/Git, and native messages cannot
reconstruct the state. Include intended result, current approach, verified
work, current failure or deviation, last safe point, next bounded action, and
exact pointers. A recovery checkpoint is private working memory, not a Human
Steering Checkpoint, progress record, or acceptance artifact.

### Consume a planned Human Steering Checkpoint

When the approved Plan contains a Human Steering Checkpoint, consume it at
the exact position in `Changes and Sequence`, not at an arbitrary pause. The
checkpoint must carry `sequence_position`, the smallest touchable
`touchable_surface`, the exact `human_question`, and the implementation
`choice_affected`. Produce only that bounded behavior or evidence, then stop
with `outcome=awaiting-steering` and preserve the Plan revision, current
authority, safe state, and checkpoint fields. A recovery checkpoint never
creates this outcome.

When the human reaction explicitly preserves the Plan's result, targets,
exclusions, consequences, and proof, record the reaction and resume the next
sequence step under the existing Implementation Authorization. When the
reaction changes any of those meanings, stop at the safe point, preserve the
partial state and evidence, return the complete semantic difference to the
exact causal owner, set affected Plan authority to `awaiting`, and repeat only
the affected gate before requiring fresh Implementation Authorization. A
human stop returns `stopped` with the exact reaction and safe state. A
checkpoint reaction is steering, not completion evidence, Plan Approval, or
Result Acceptance.

## 5. Use bounded supporting calls

Every direct call receives a complete current brief:

```text
dependency_request {
  dependency,
  requirement: required | optional,
  boundary_id,
  caller: deliver,
  return_to: deliver,
  bounded_question_and_consequence,
  fixed_plan_and_delivery_context,
  governing_records_and_accepted_truth { owner, revision, provenance, limits },
  target_and_version,
  source_and_evidence { provenance, freshness, maturity, fidelity, limits },
  scope_and_exclusions,
  effect_authority_safety_and_recovery_limits,
  assurance_path,
  requested_result_shape,
  caller_retained_route_gates_authority_acceptance_and_stop
}
```

A missing required field returns `blocked` before invocation. Keep the exact
request, exact dependency envelope/result, nested partial or stopped state,
evidence, limits, causal owner/reason/boundary/result/revisit, and one
projection under `dependency_projections`:

```text
dependency_projection {
  dependency,
  requirement,
  call_status: invoked | not-invoked,
  exact_request_brief,
  exact_dependency_outcome_or_return_kind,
  exact_dependency_result,
  exact_nested_state { partial_state?, blocked_state?, stop_reason? },
  projected_deliver_outcome:
    planning | awaiting-authorization | awaiting-steering | implementing |
    pair-return | ready-for-acceptance | accepted | partial | causal-return |
    blocked | stopped,
  evidence_and_limits,
  causal_owner?, reason?, boundary?, exact_causal_result?, revisit_condition?
}
```

For Debug, Refactor, TDD, Verify, and Security carry `assurance_path`, append
the callee only when it is absent and actually invoked, and record a
Deliver-owned `not-invoked` projection with
`reason=assurance-path-already-visited` when it is already present. A visited
path is not a fabricated dependency result. A required incomplete, failed,
unverified, owner, causal, or stopped return keeps Delivery incomplete;
optional evidence may leave it active only when the limitation is explicit
and the accepted claim remains honest. No dependency grants authority,
accepts a Plan or Result, chooses a route, or starts later work.

Use these target-specific fields and projections:

| Target | Add to the brief | Preserve and project |
| --- | --- | --- |
| [Plan](../plan/SKILL.md) | Approved Issue/standalone boundary, accepted baseline, source, approach question, targets, exclusions, proof, and caller controls. | Preserve `approved`, `revised`, `blocked`, or `stopped`; approved is only Plan Approval with awaiting authority. |
| [Pair](../pair/SKILL.md) | Human direct selection, approved Plan revision, decision-sized boundary, permission posture, driver, and safe partial state. | Preserve `active`, `returned`, `causal-return`, `blocked`, or `stopped`; Pair adds no authority. |
| [Debug](../debug/SKILL.md) | Symptom, conditions, original full reproduction, accepted behavior, correction authority, and falsifiable proof. | Preserve `corrected`, `diagnosed`, `unreproduced`, `needs-owner`, `blocked`, or `stopped`; diagnosis is not a correction. |
| [Refactor](../refactor/SKILL.md) | Pressure mechanism, preservation question, responsible seam, smallest completion proof, target, and exclusions. | Preserve `analyzed`, `relieved`, `partial`, `needs-design`, `needs-owner`, `blocked`, or `stopped`. |
| [TDD](../tdd/SKILL.md) | Behavior, mechanism, stable seam, independent expectation, original reproduction, evaluator, and proof. | Preserve `cycle-complete`, `complete`, `already-covered`, `needs-owner`, `unsuitable`, `blocked`, or `stopped`. |
| [Review](../review/SKILL.md) | Fixed integrated target/version, governing truth, required lenses, risks, exclusions, evidence, and exact coverage. | Preserve complete/incomplete coverage, findings, dependency projections, and limits; Review never accepts. |
| [Verify](../verify/SKILL.md) | Exact falsifiable claim, observable property, supported scope, conditions, contradiction, environment, sensitivity, and proof bar. | Preserve per-claim `verified`, `failed`, `unverified`, or `stopped`; failure does not imply cause. |
| [Delegate](../delegate/SKILL.md) | Positive benefit, isolated role, fixed target/version, source, scope, tools, safety, return, and escalation; a Worker receives only the exact Plan subset already covered by the current Implementation Authorization. | Preserve `delegated`, `no-op`, `partial`, `blocked`, or `stopped`, including partial state and limits; Deliver retains supervision, integration, and acceptance. |
| [Orient](../orient/SKILL.md) | Accepted teaching suggestion, learning objective, starting point, settled result model, anchors, mechanisms, failures, limitations, and uncertainty. | Preserve comprehension, causal-return, `orientation-blocked`, and `stopped`; teaching never proves acceptance. |
| [Make Tangible](../make-tangible/SKILL.md) | Exact human judgment, audience, accepted truth/evidence, medium/fidelity, reaction, artifact lifetime, and named consumer. | Preserve `no-op`, `constructed`, `revised`, `blocked`, or `stopped`, exact artifact/version and fidelity limits. |
| [Check Safety](../check-safety/SKILL.md) | Exact action, target, intended effect, consequence, recovery, current evidence, and human authority. | Preserve `proceed`, `revise`, or `stop`; Safety inspects and never executes or grants authority. |
| [Security](../security/SKILL.md) | Attacker question, assets/properties, actors/trust boundaries, attacker inputs, controls, target, evidence, scope, and assurance path. | Preserve `no-op`, `findings`, `no-high-confidence-findings`, `needs-verification`, `needs-owner`, `blocked`, or `stopped`. |
| [Plannotator](../plannotator/SKILL.md) | Exactly one native interaction, stable target revision/scope, requested judgment, declared consequence, authority boundary, exclusions, and return shape. | Preserve native code-review, Result Gate, or closure result, feedback, reference/`unavailable`, and transport limits. |
| [Manage Worktree](../manage-worktree/SKILL.md) | Named collision/rollback/experiment risk, exact base and checkout identity, location/branch shape, mutation surfaces, lifecycle, and recovery. | Preserve `current checkout safe`, `worktree ready`, `handoff ready`, `cleanup complete`, `blocked`, or `stopped`. |
| [Write Docs](../write-docs/SKILL.md) | A Plan-required reader-facing behavior change names one reader, purpose, supported version/environment, exact owning path/section, current-source evidence, edit authority, reader-journey proof, and publication boundary. | Preserve the exact Write Docs result and full envelope: `complete`, `already-current`, `partial`, `blocked`, `failed`, or `stopped`; a required incomplete/failed result keeps Delivery incomplete, while an optional limitation remains visible. |

For Write Docs, retain the complete native envelope under
`exact_dependency_result`, including `reader_and_purpose`,
`primary_forms_and_surfaces`, `surfaces_changed`, `current_truth_and_owners`,
`examples_or_tangible_result`, `decisive_verification`, `evidence`,
`material_gaps`, `publication_status`, and `recommendation`. Map
`complete` or `already-current` to continued Delivery (or
`ready-for-acceptance` when all other Plan proof is complete); map optional
`partial` to continued Delivery only with its limits visible, required
`partial` or `failed` to `blocked`, and `blocked` or `stopped` to the matching
Deliver stop state. Never replace an exact Write Docs outcome with a generic
success, publication claim, or fabricated documentation surface.

This step is complete when every invoked or intentionally skipped dependency
has one lossless projection, its caller-retained controls remain visible, and
the next Delivery decision is explicit.

## 6. Return learning to its source

For every material discovery, ask which earliest accepted source would change:

- Initiative objective, shared success, relationship, constraint, or ordering
  → [Coordinate Initiative](../coordinate-initiative/SKILL.md);
- Project Outcome, boundary, need, constraint, preference, or problem
  understanding → that Project's [Discover Requirements](../discover-requirements/SKILL.md);
- progressive strategy or sequence → [Evolve](../evolve/SKILL.md)'s Map;
- selected high-level working form → the affected Evolution;
- detailed behavior, dependency, exclusion, or required proof → the affected
  Issue and its [Define Issues](../define-issues/SKILL.md) owner;
- implementation approach, target, risk, recovery, consequence, proof, or
  authority → the current Plan; or
- an implementation defect that preserves all accepted meaning and Plan
  authority → the current Delivery correction.

Use [Learning and Return](../../references/learning-return.md) only when the
source or authority consequence is non-local. A local correction may continue
only while all governing meaning, targets, exclusions, dependencies,
compatibility, risk, recovery, and proof remain intact. A material return
makes the current state safe, stops affected mutating delegates at the
earliest safe point, withdraws active Plan authority, preserves partial state
and evidence, names the complete semantic difference and revisit condition,
repeats only affected gates, and requires fresh Implementation Authorization
before changed work resumes. Independent read-only investigation may continue
only when it does not depend on the invalidated premise. This step is complete
when the learning is either locally resolved or returned to the exact causal
owner with a safe state and evidence.

## 7. Assure the integrated result

Every Plan-governed result receives proportionate [Review](../review/SKILL.md)
and [Verify](../verify/SKILL.md) before Result Acceptance. Review challenges
the fixed integrated change through Specification Fidelity and Engineering
Integrity; Verify names exact completion and Issue claims and tests each with
current evidence capable of disproving it. Cover materially exposed inherited
behavior. Keep outcome proof, engineering critique, and evaluator health
distinct: green checks do not erase a Review finding, and a clean structure
does not prove behavior.

When code changed, expose the complete fixed diff through [Plannotator](../plannotator/SKILL.md)'s
native Code Review before Result Acceptance. The native code-review return is
feedback, not acceptance; meaning-changing feedback reopens the affected
implementation, Plan, or owner. A walkthrough or diagram may reduce
cognitive load but cannot replace the complete diff.

Before responding to failed evidence, decide whether it falsifies the
implementation, a Plan assumption, or the evaluator. A broken environment,
stale fixture, or insensitive check changes the evidence path; it does not
authorize a product correction. This step is complete when every acceptance
claim has current proof, every material Review signal is resolved or returned,
and the fixed diff has been human-reviewable when code is in scope.

## 8. Explain the result without inventing a ceremony

Present the actual working result, exact Issue coverage or standalone claim,
authoritative evidence, limitations and deliberate omissions, consequential
structural changes and remaining changeability limits, material learning, and
unresolved questions. Explain a simple result inline. When a nontrivial model
of ownership, flow, state, failure behavior, or another mechanism is needed
for honest judgment, recommend one bounded [Orient](../orient/SKILL.md)
interaction: state what must be understood, why it matters, likely scope or
medium, and what happens if accepted. Begin only after ordinary-language
agreement or a direct teaching request. Pass the exact delivered change,
claims, anchors, mechanisms, limits, and uncertainty; Orient owns teaching,
not result truth or acceptance.

Use [Make Tangible](../make-tangible/SKILL.md) when a demonstration,
inspection surface, or other artifact is needed for one human judgment. Pass
fidelity, audience, lifetime, and reaction explicitly. An orientation block,
misconception, artifact limit, or declined suggestion remains visible; it is
never converted to comprehension, proof, or acceptance. This step is complete
when the result is judgeable inline or the bounded teaching/artifact return is
preserved with its limits.

## 9. Pass Result Acceptance

Result Acceptance judges the current result and evidence, not a mandatory
report. It may accept complete or partial work only when the human explicitly
names that judgment. One complete standalone result with one exact claim in
focus may use unambiguous ordinary-language acceptance. A partial result,
multiple claims, or composed Issue/Evolution/Project closure needs an explicit
acceptance statement or a selected native [Plannotator](../plannotator/SKILL.md)
Result Gate. A selected native surface is authoritative; command, transport,
malformed-result, or unavailable-native failure is not conversational
acceptance.

For native Result Gate outcomes, preserve the exact target revision, decision,
feedback, stable reference or `unavailable`, limits, and safe state:

- approval closes only the explicitly proved result claims and any explicitly
  named owner closure; it authorizes no commit, publish, deploy, next Plan, or
  adjacent Issue;
- meaning-changing feedback reopens the affected correction, Plan, or causal
  owner and repeats Review/Verify and acceptance as needed;
- denial, dismissal, empty closure, or human stop returns `stopped` with no
  acceptance claim; and
- command, transport, malformed, or unavailable-native failure returns
  `blocked` without a conversational fallback.

For partial acceptance, record proved coverage, decisive evidence, unmet
criteria, limitations, and the safe remaining state. Close no unproved Issue,
Evolution, or Project claim. Acceptance exhausts the current Plan authority
even when the result is partial.

Update each affected Issue with one concise current Result summary containing
proved coverage, evidence references, remaining unmet criteria, and limits;
the Issue's specification and semantic ownership remain with its owner. When
the final result proves every remaining Issue and the complete selected
Evolution, one explicit Result Gate may also judge Evolution Acceptance; pass
the working form, proof, limits, and learning back to Evolve. The same
composed judgment may close a Project Outcome; Project/Initiative ownership
retains the closure record and relationships. If proof covers only the Plan,
close only that coverage and recommend the missing integration or proof.

This step is complete when the exact acceptance, partial coverage, owner
closures, evidence, limitations, native reference, and caller-retained stop
are explicit—or the exact blocked/stopped/causal return has been made.

## 10. Exhaust authority and stop

After Result Acceptance, mark the Plan authority exhausted and recommend the
next useful human choice without starting it. A Plan may be retained while it
governs active work or a named future consumer needs its authority,
limitations, or learning. It may be removed after acceptance when its useful
truth is carried by the owning Issue, source, tests, Git, and any named native
reference. Keep no generic Delivery receipt, Result directory, progress log,
message store, or permanent Plan archive. Security's private continuity
record remains Security-owned.

If the Plan cannot reach its result, make the state safe and return the actual
partial work, evidence, limitations, learning, and recommendation. Do not
erase useful work or perform cleanup by implication. The human may accept that
partial result, revise the Plan, authorize cleanup, preserve the baseline, or
stop. Delivery never commits, publishes, deploys, advances a route, selects
another Evolution, creates a future Plan, or resumes after acceptance by
momentum. Every return names the safe state, consequence, limitations, and
caller-retained route, gates, authority, acceptance, and stop, then stops.

## Result envelope

```text
Deliver Result {
  outcome: planning | awaiting-authorization | awaiting-steering |
           implementing | pair-return | ready-for-acceptance | accepted |
           partial | causal-return | blocked | stopped,
  entry: plan-choice | implementation-authorization | pair-choice,
  delivery_context { caller, result_boundary, governing_records, baseline,
    issue_or_standalone_coverage, plan_id_and_revision, targets, exclusions,
    dependencies, risks, recovery, required_proof },
  plan_projection? {
    plan_approval,
    implementation_authorization?,
    human_steering_checkpoint?
  },
  implementation_state? { authority, current_boundary, changed_paths,
    partial_state, decisive_evidence },
  dependency_projections?,
  steering_checkpoint? {
    id,
    sequence_position,
    touchable_surface,
    human_question,
    choice_affected,
    reaction?,
    disposition: awaiting-reaction | preserves-plan | material-change | stopped,
    safe_state,
    affected_owner_and_gate?,
    revisit_condition?
  },
  assurance? { review, verify, code_review?, evaluator_health },
  result? { claims, proved_issue_coverage, standalone_outcome?, evidence,
    limitations, learning, owner_closure? },
  acceptance? { mode: conversational | native, decision, reference,
    feedback, proved_coverage, unproved_coverage },
  causal_return?,
  stop_reason?,
  caller_retained_route_gates_authority_acceptance_and_stop
}
```

`awaiting-authorization` carries an approved Plan with no implementation
authority. `awaiting-steering` carries the exact planned checkpoint and stops
before its next sequence step. `implementing` is active ordinary work;
`pair-return` hands the bounded implementation exchange back without
acceptance. `ready-for-acceptance` has proportionate Review, Verify, and
fixed-diff review where needed.
`accepted` and `partial` exhaust Plan authority and state exactly what closed.
`causal-return`, `blocked`, and `stopped` preserve the exact owner, missing
boundary, native decision, limits, partial state, and safe current state.
No result transfers authority or starts adjacent work.

---
name: coordinate-initiative
description: "Coordinate shared meaning across independent Projects. Use when the human directly asks for Initiative coordination or accepts a bounded cross-Project alignment suggestion."
---

# Coordinate Initiative

Coordinate one human-selected Initiative across independent Projects. The
Initiative owns the shared strategic objective, success conditions, common
truth, relationships, ordering rationale, and cross-Project learning. Each
Project keeps its own Outcome, Requirements, gates, authority, delivery, and
stopping.

## 1. Confirm entry and the strategic boundary

Start only when the human directly asks to coordinate an Initiative or accepts
the agent's recommendation to coordinate at least two credible Projects. The
recommendation must name the shared objective or consequential relationship;
size, duration, persistence, or use of Evolutions alone is not a reason. A
loaded skill or an unaccepted suggestion is not entry.

Record `entry=direct-request` or `entry=accepted-suggestion`. If the human
declines, return `outcome=stopped`, `entry=declined-suggestion`, and no
Initiative claim. If only one credible Project exists, return `outcome=no-op`
with its Project owner and the missing cross-Project reason; do not create an
Initiative to hold a lone Project.

Read the human's objective, current source and records, available References,
and each candidate Project's current boundary before asking for repeated
context. Establish one provisional boundary containing:

- the strategic objective and observable success conditions;
- candidate Projects and each Project's independent contribution;
- relationships, dependencies, and the reason their shared meaning matters;
- shared constraints and accepted truth that actually affect more than one
  Project;
- priority or ordering rationale, when order changes strategic judgment;
- visible strategic uncertainty and material cross-Project learning; and
- the current recommendation and next human choice.

Project candidates may still have incomplete Requirements. Keep their
boundaries provisional until each Project works through its own Requirements;
do not prewrite Requirements, Issues, Plans, delivery state, or implementation
authority in the Initiative. This step is complete when two or more credible
Projects, one strategic objective, their material relationship, and the
provisional shared boundary are explicit, or the precise no-op, stop, or
blocker return is made.

## 2. Develop shared meaning without flattening Projects

Work from the human's objective and current understanding. Test whether each
candidate truly shares consequential direction, constraints, system truth,
dependency, or learning. Keep a Project in the Initiative only when its
relationship can change a shared judgment. A Project can reference an
Initiative, but it has at most one Initiative parent and remains independently
governed.

For every shared claim, distinguish:

- strategic objective or success condition;
- shared system/domain truth or constraint;
- Project contribution and boundary;
- dependency direction and what the dependency actually means;
- priority or order and the evidence for it; and
- uncertainty, assumption, or learning that could change the grouping.

Keep a local need, preference, implementation fact, Issue, Plan, or Project
Outcome with its Project owner. A shared conclusion is promoted only when it
changes more than one Project or the Initiative basis. When the evidence does
not support a shared claim, preserve the uncertainty and name the exact owner
or probe that can resolve it. This step is complete when each retained shared
claim has a source, scope, affected Projects, consequence, and visible limit.

## 3. Close only uncertainty that affects the Initiative

Choose the smallest supporting capability that can change the current shared
judgment. These are instruments, not phases; they may recur or compose, and
the return comes back to Coordinate Initiative. Pass the exact question,
current truth and provenance, affected Projects, consequence, authority, and
caller-retained route, gate, acceptance, and stop on every call. The callee
returns evidence or a bounded reaction; it does not revise Initiative records,
pass an Initiative gate, select a Project route, or start Project work.

### Human-owned strategic judgment

Call [Interview](../interview/SKILL.md) for one intent, priority, tolerance,
relationship, grouping, or other judgment only the human can make. Include a
stable `boundary_id`, concrete scenario, consequence, current evidence,
candidate scope, `origin=coordinate-initiative`,
`return_to=coordinate-initiative`, `peer_edge_crossed=false`, and the
non-authorizing result shape. Consume `clarified`, `qualified`, `deferred`,
`conflicting`, and `no-op` as scoped human meaning; preserve qualifications and
do not turn a local reaction into a general preference. Map `needs-evidence`
to the named evidence owner, preserve `blocked`, and propagate `stopped`.
Interview owns questioning and interpretation; Coordinate Initiative keeps
the strategic synthesis.

### Shared factual claim

Call [Research](../research/SKILL.md) for one discoverable fact about current
source, a dependency, an external constraint, or runtime behavior that could
change more than one Project or their relationship. Pass a stable
`boundary_id`, exact claim and territory, required freshness, consequence,
evidence bar, cheapest falsifier, current configuration/version/environment
and target conditions when relevant, `origin=coordinate-initiative`,
`return_to=coordinate-initiative`, `peer_edge_crossed=false`, current
authority, and bounded return shape. Integrate `answered` evidence with its
provenance and preserve its source, revision, freshness, environment, target
conditions, and limits. A routing `no-op` is only the sufficient existing
context it identifies, not factual support; `needs-human-judgment` returns the
missing qualification to its exact owner without investigation. Rebind a
changed claim, territory, freshness, configuration, version, environment,
target condition, or consequence under a new boundary. Preserve
`unverified`, `conflicting`, `blocked`, and `stopped` exactly in the dependency
projection. If the finding changes only one Project, route it to that
Project's Requirements, Formalization, or Delivery owner instead of promoting
it as shared truth.

### Settled model needed for participation

Recommend [Orient](../orient/SKILL.md) only for one bounded settled strategic
or system model that the human needs to understand before making the actual
Initiative judgment. Teaching begins only after the human accepts the
suggestion in ordinary language. Pass the learning objective, starting point,
settled model, source anchors, limits, `caller=coordinate-initiative`,
`return_to=coordinate-initiative`, and retained controls. A comprehension
return informs this inquiry; a changed objective, shared constraint, or
relationship returns as `causal-return` to Coordinate Initiative; a Project-
local or formal change goes to its exact owner. A declined suggestion or
dependency stop is `stopped`. Orient teaches and checks; it does not choose
the Initiative meaning.

### Tangible shared relationship or comparison

Call [Make Tangible](../make-tangible/SKILL.md) when a relationship,
comparison, strategy, dependency, or uncertainty cannot be judged faithfully
in prose. Pass the exact judgment, audience and starting point, accepted truth
and evidence, intended medium and consequential fidelity, requested reaction,
current read-only/disposable authority, artifact lifetime, and
`caller=coordinate-initiative`, `return_to=coordinate-initiative`. Consume
`no-op` directly; for `constructed` or `revised`, retain the exact artifact
identity/version, reaction, supported conclusions, fidelity limits, and
retention state. A reaction is evidence, not acceptance. Preserve `blocked`
or `stopped` with the target and limits and never invent a reaction.

### Consequential shared solution shape

Call [Design Solution](../design-solution/SKILL.md) only when several Projects
depend on one consequential system, domain, contract, ownership, transition,
or operational shape. Prepare its complete preflight: stable solution-choice
`boundary_id`; active caller and earliest causal owner; accepted shared truth
and affected Project Requirements with source, revision, provenance, and
limits; current relevant evidence with source, revision, provenance,
freshness, environment/target conditions, and limits; one exact choice and
consequence; territory, actors, scenarios, and boundaries; hard constraints,
safety boundaries, invariants, and compatibility duties; evidence standard and
authority; and every viable alternative labelled with its status
(`feasible`, `current-shape`, `caller-accepted`, or `provisional`). Preserve
`recommended`, `selected`, `qualified`, `no-choice`, `revised`, `refused`, or
`stopped` intact. A blank or guessed field is a missing preflight, not an
invitation to proceed. A changed Project-local need, behavior, or proof
returns to that exact Project owner; Coordinate Initiative retains only the
shared strategic consequence.

This step is complete when each selected probe has one distinct purpose, an
explicit return boundary, and evidence or reaction limits, or the exact
missing evidence, human judgment, causal owner, dependency, or stop state is
returned.

### Lossless dependency projection

Every direct call returns through one `dependency_projection` object. Keep the
callee's exact skill, request boundary, outcome or `return_kind`, complete
result payload, causal owner, revisit condition, partial state, and evidence,
reaction, fidelity, transport, or stop limits. Projection is a lossless
envelope, not a translation into Initiative meaning; Coordinate Initiative
adds only the supported shared consequence and retains route, gate, authority,
acceptance, and stop.

Preserve the declared shapes without collapsing them:

- **Orient:** retain `return_kind=comprehension` with its
  `comprehension_state`, `return_kind=causal-return` with its exact owner,
  reason, boundary, dependency result, and revisit condition, or
  `return_kind=stopped` with its `stop_reason` and exact partial state.
- **Make Tangible:** retain `outcome=no-op|constructed|revised|blocked|stopped`,
  artifact identity/version when present, reaction, supported conclusions,
  fidelity/transport limits, retention state, and any created artifact or
  checkout partial state. A blocked or stopped return never becomes a reaction.
- **Interview:** retain its exact `outcome`, `boundary_id`, answer or
  reaction, material consequences, evidence/fidelity limits, remaining
  questions, unresolved points, causal owner, and next boundary. `no-op`,
  `blocked`, and `stopped` remain routing/safe-state returns, not clarified
  meaning.
- **Research:** retain its exact outcome, boundary, bounded observation,
  decisive evidence, source/version/freshness/environment/target scope,
  conflicts and limitations, implications, missing authority, and
  recommendation. Routing `no-op` and `needs-human-judgment` remain explicit
  non-investigating states; `blocked`, `stopped`, and partial evidence are not
  upgraded to answered.
- **Design Solution:** retain the complete choice result, candidate status,
  evidence maturity/provenance, preserved partial dependency state, causal
  owner, and revisit/repair condition.
- **Plannotator:** retain the exact interaction kind, target and revision,
  declared consequence, native decision or closure, annotations/feedback,
  `native_reference` (projected as `native_plannotator_reference` in a gate)
  when available, and
  `accepted_reference: unavailable` when it is not. Dismissal, denial, empty
  closure, and tool failure remain distinct.

The projection is complete when the receiving owner can reconstruct the exact
callee result, including a partial, blocked, or stopped state, without
repeating the call or inferring a missing human reaction.

## 4. Preserve ordering without starting Projects

The Initiative may record that one Project should be understood before another,
that a shared contract constrains both, or that a priority follows from the
strategic objective. Explain the evidence and consequence of the ordering.
Treat it as strategic guidance, not execution authority.

Finishing, accepting, pausing, revising, or closing one Project never selects,
starts, formalizes, plans, implements, reviews, or accepts another. Do not
invoke a Project skill merely because the Initiative names it. After alignment,
recommend one useful human choice—such as which Project to open, whether to
reconsider a relationship, or whether to investigate a shared uncertainty—and
stop for that choice. A human's separate Project request begins that Project's
own route and authority checks.

When a Project joins or leaves, first obtain the human's ordinary-language
choice. Reconcile the Initiative relationships and shared truth, then move the
complete Project bundle if durable ownership changes. Preserve its stable ID,
update affected links, and repeat Initiative Alignment when the shared
meaning changed. A standalone Project remains under
`.agents/projects/<project>/`; an Initiative-owned Project lives beneath its
Initiative. Another Initiative may reference that Project but does not jointly
own it. A filesystem move alone changes no meaning, gate, or authority.

This step is complete when every dependency and order statement has a named
strategic reason and no statement is being used to begin adjacent Project
work.

## 5. Return learning to the earliest owner

When new evidence may change more than one Project or the Initiative basis,
load [Learning and Return](../../references/learning-return.md). Carry the
smallest useful message: observation, interpretation, kind, decisive
evidence, affected and still-valid truth, uncertainty, causal owner, and
recommendation only when supported.

Promote learning into the Initiative only when it changes the strategic
objective, success conditions, shared constraints or truth, Project boundary
or relationship, dependency, ordering rationale, or the reason the Projects
belong together. For every promotion:

1. identify the evidence and exact source or artifact;
2. show the semantic before-and-after difference;
3. name every affected Project and why it may be affected;
4. preserve still-valid shared and Project-local truth separately; and
5. recommend the exact owner each Project should reopen.

Coordinate Initiative revises only shared truth. It does not edit a Project's
Requirements, Unknowns Map, Evolution Map, Evolutions, Issues, Plans, or
delivery state on that Project's behalf. Route Project-local learning to the
earliest Project owner named by the return reference. A local clarification
that changes no accepted owner stays local and does not re-gate the
Initiative.

If the accepted objective, success conditions, shared constraints, grouping,
relationship, dependency, or ordering rationale changes materially, make the
Initiative Alignment gate pending and foreground the semantic diff. Repeat
Alignment before relying on the revised shared basis. A source, provenance,
or editorial enrichment alone does not repeat the gate. A causal return never
starts the receiving owner automatically. This step is complete when every
material finding has an exact owner, supported consequence, and revisit gate.

## 6. Persist only the shared navigation truth

Load [Record Foundations](../../references/records/foundations.md) when
creating, moving, materially revising, or closing a durable Initiative or
Project bundle. Load [Discovery Records](../../references/records/discovery.md)
when authoring or validating the Initiative Brief, Project navigation record,
or References Index. These references define record shape and placement; they
do not choose the route, pass a gate, grant authority, or continue work.

Create the lazy Initiative bundle only when a later owner or session needs
durable shared meaning, exact discovery material must survive, or the human
asks for it:

```text
.agents/initiatives/<initiative>/
├── brief.md
├── references.md
├── references/
├── artifacts/
└── projects/<project>/
```

Create only files with real content. The Initiative Brief is one concise
reader-ready entry point. It requires Strategic Objective, Success Conditions,
Projects and Their Relationships, and Current Recommendation; add Shared
Constraints and Truth, Priority or Ordering Rationale, Visible Strategic
Uncertainty, and Material Cross-Project Learning only when they carry real
information. Link Project Briefs and state only each Project's contribution and
meaningful relationships. Do not copy Requirements, specifications, Issues,
Plans, status, evidence history, or implementation authority into the Brief.

Retain an interpreted Reference or concrete artifact only when its exact
shared value has a named future consumer. Keep conversations, transcripts,
probe exhaust, and duplicate learning ledgers transient. This step is complete
when any durable record is reader-ready, owner-shaped, minimally linked, and
contains no Project-local governing truth copied into the Initiative.

## 7. Split when shared strategic judgment disappears

Re-test the grouping when Projects no longer share consequential direction,
constraints, relationships, dependencies, or learning. Make the competing
groupings and their consequences understandable. Recommend splitting,
superseding, or closing only when the evidence supports it; do not retain a
miscellaneous portfolio for historical convenience. Wait for the human's
choice before restructuring or moving bundles.

Return `outcome=split-recommended` with the current shared basis, proposed
groupings, affected links, evidence, and the human decision needed. A human
choice to split creates or revises the exact owned records, preserves stable
Project IDs, and repeats Alignment for each materially changed Initiative. It
does not start Project work. This step is complete when the grouping is
coherent, a supported split recommendation is returned, or the human's stop is
preserved.

## 8. Pass Initiative Alignment

When a durable Initiative needs provisional strategic judgment, make the
complete stable target judgeable before invoking [Plannotator](../plannotator/SKILL.md):
the Initiative Brief and revision, strategic objective, success conditions,
shared truth and constraints, Projects and relationships, ordering rationale,
visible uncertainty, supporting References or artifacts, the exact
`Initiative Alignment` claim, the declared provisional consequence, the
excluded authority, and the prior `accepted_reference` (or
`accepted_reference: unavailable` when no reliable accepted reference exists).

The complete target must state every Project contribution and meaningful
relationship without copying Project-local records. Use a reliable stable
revision and record the exact native reference when the native session returns
one. If the previous accepted reference is unavailable,
present the full target rather than inventing a diff.

The returned Alignment payload records the exact Initiative Brief target and
revision, declared consequence, excluded authority, prior and current
accepted references, native Plannotator reference, native decision, feedback,
and fidelity or transport limits. Represent a missing reliable reference as
`unavailable`; never infer one from a path or a later revision.

Map the native result exactly:

- `approved` without feedback → `alignment.state=approved` and
  `outcome=aligned`; accept only the named revision and declared shared
  consequence.
- `approved` with non-semantic feedback → the same approval; preserve every
  note and its limits without another gate.
- `approved` with meaning-changing feedback → `outcome=revised`, keep the
  accepted baseline distinct, revise only the causal shared truth, set the new
  Alignment pending, and foreground the semantic diff.
- `annotated` or plaintext feedback → no approval claim; return
  `outcome=needs-human-judgment` when a decision remains, or `revised` when
  the feedback already identifies changed shared meaning.
- denial, dismissal, empty closure, or a human stop →
  `outcome=stopped` with no alignment claim and the exact native state.
- command, transport, malformed-result, or unavailable-session failure →
  `outcome=blocked` with the exact target, failure, limitation, and Setup
  recommendation; never substitute conversational approval.

Approval accepts shared meaning only. It grants no Project selection,
Requirements work, Formalization, Delivery, mutation, publication, cleanup,
or other forward authority. After a successful Alignment, explain what was
accepted, recommend one next human choice, and stop. If the same human message
explicitly names that next activity, honor that separate choice only after the
gate result; approval itself never supplies it. This step is complete when the
exact revision is approved, revised with a pending gate, or returned as the
typed stop/blocker/reaction above.

## 9. Close by strategic objective

Initiative Closure judges whether the strategic objective is `satisfied`,
`rejected`, or `superseded`. Project completion is evidence, not a checklist;
the original Project set is neither permanent nor exhaustive. Explain the
objective, success conditions, evidence from each relevant Project, retained
uncertainty, changed or unnecessary Projects, and any replacement Initiative.

Use a distinct Plannotator `Result Gate` only when a stable durable closure
judgment is useful and no complete Result Gate already carries that exact
closure claim. State `Initiative Closure`, the exact Brief and evidence, the
closure disposition (`satisfied`, `rejected`, or `superseded`, including its
replacement link when applicable), the exact target revision, declared
consequence, excluded authority, prior `accepted_reference` (or
`accepted_reference: unavailable`), and that acceptance grants no adjacent
work. Apply the same native mapping as Alignment, with `closure.state`,
`disposition`, and the exact native reference/closure:
approval closes only the named objective judgment; meaning-changing feedback
reopens the affected closure basis; reaction, denial, dismissal, or failure
returns the corresponding typed result without inferred closure.

The returned Closure payload carries the exact Brief-and-evidence target and
revision, declared consequence, excluded authority, prior and current
accepted references, native Plannotator reference, exact native decision or
closure, feedback, fidelity or transport limits, and the selected disposition
with its replacement link when `superseded`. These fields are explicit in the
result; `dependency_projection` cannot stand in for a gate projection.

When closure is accepted, mark the Brief `disposition=closed`, preserve the
final relationships and retained learning, and link a replacement when
superseded. Do not copy Project records or activity history and do not start a
new Project, Initiative, cleanup, or publication. Explain the result and stop.
This step is complete when the objective is honestly judged, the exact native
or conversational acceptance is recorded, retained learning and limits are
clear, and no adjacent work has begun.

## 10. Return one bounded result and stop

Return the smallest message from which the caller or human can act honestly:

```text
Coordinate Initiative Result {
  outcome: no-op | coordinated | aligned | revised | needs-human-judgment |
           split-recommended | closed | blocked | stopped,
  entry,
  initiative_boundary?,
  strategic_objective_and_success_conditions?,
  shared_truth_constraints_and_uncertainty?,
  projects_and_relationships?,
  priority_or_ordering_rationale?,
  cross_project_learning?,
  supporting_probes_and_limits?,
  persistence_and_record_locations?,
  dependency_projection?,
  alignment {
    state: pending | approved,
    interaction_kind: record-gate,
    exact_target: complete Initiative Brief target,
    target_revision,
    declared_consequence,
    excluded_authority,
    prior_accepted_reference: reliable-reference | unavailable,
    current_accepted_reference: reliable-reference | unavailable,
    native_plannotator_reference: reliable-reference | unavailable,
    decision: approved | approved-with-feedback | denied | annotated |
              plaintext-feedback | dismissed | closed | command-failure |
              transport-failure | malformed-result,
    feedback_or_annotations?,
    fidelity_or_transport_limits,
    regate_required,
  }?,
  closure {
    state: pending | satisfied | rejected | superseded,
    interaction_kind: result-gate,
    exact_target: complete Initiative Brief and closure evidence target,
    target_revision,
    declared_consequence,
    excluded_authority,
    prior_accepted_reference: reliable-reference | unavailable,
    current_accepted_reference: reliable-reference | unavailable,
    native_plannotator_reference: reliable-reference | unavailable,
    decision: approved | approved-with-feedback | denied | annotated |
              plaintext-feedback | dismissed | closed | command-failure |
              transport-failure | malformed-result,
    feedback_or_annotations?,
    fidelity_or_transport_limits,
    disposition: satisfied | rejected | superseded,
    replacement?,
    regate_required,
  }?,
  causal_return?,
  unresolved_or_disputed_points?,
  recommendation_or_missing_human_judgment,
  caller_retained_route_gate_authority_acceptance_and_stop,
}
```

`alignment` and `closure` are explicit native-gate projections, not summaries
of or substitutes for `dependency_projection`. `exact_target` identifies the
complete Initiative Brief (and, for Closure, its supporting closure-evidence
target) shown to Plannotator; `target_revision` binds the judgment to that
stable revision. `prior_accepted_reference` is the reliable accepted baseline
before the interaction, while `current_accepted_reference` is the reliable
accepted baseline after mapping the interaction; either is `unavailable` when
no reliable reference exists. On an approval without a meaning change, the
current reference is the native reference when reliable; otherwise the prior
accepted reference remains current. Preserve the exact native `decision`,
every `feedback_or_annotations` item, and all `fidelity_or_transport_limits`.
`declared_consequence` and `excluded_authority` bind what the gate can accept
and what it cannot authorize. Closure additionally carries the exact
`disposition` and optional `replacement`; a meaning-changing reaction or
native failure leaves the affected gate pending and sets `regate_required`
accordingly.

Omit `alignment` and `closure` when their native gates were not needed; a
present subobject therefore always carries the complete fields above.

Use outcome-specific payloads rather than manufacturing an Initiative
boundary. A `no-op` carries
`no_op { reason, project_owner_or_sufficient_context,
missing_cross_project_condition }` and no Initiative claim. A `blocked`
carries `blocked { kind, missing_boundary_or_authority,
dependency_projection?, safe_state, revisit_condition }` and only the boundary
fields already established. A dependency-only return carries
`dependency_projection` and `outcome=blocked|stopped|needs-human-judgment` as
applicable without inventing shared meaning. A `stopped` carries
`stop { reason, exact_dependency_or_native_state?, safe_state }`, no inferred
reaction, and no Initiative boundary unless one was already reliably
established. A dependency-only return may retain `outcome=no-op` when the
callee reports sufficient existing context; otherwise its outcome is
`blocked`, `stopped`, or `needs-human-judgment`. `coordinated`, `aligned`,
`revised`, `split-recommended`, and
`closed` require the complete boundary fields needed for their claim.

`coordinated` means the Initiative boundary and relationships are useful but
no gate was needed; `aligned` means the exact Alignment target was approved;
`revised` carries a material shared change to its causal owner and pending
gate; `closed` means the named strategic objective was accepted as satisfied,
rejected, or superseded; `split-recommended` names a supported incoherence;
`needs-human-judgment` preserves a missing strategic choice or unresolved
reaction; `blocked` preserves missing evidence, authority, dependency, or
native transport; `stopped` preserves a human or dependency stop; and `no-op`
identifies a lone Project or already-sufficient context.

Always preserve the exact Projects, relationships, evidence, native decision,
feedback, revision, fidelity or transport limits, causal owner, and next
choice needed by the receiver. Recommendations are navigation, not permission
or authority. Do not start Project work, edit Project-local governing records
on their behalf, pass another gate, implement, commit, publish, deploy, clean
up, or continue after this return.

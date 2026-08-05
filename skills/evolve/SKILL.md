---
name: evolve
description: "Evolve a Project through a human-selected sequence of working forms. Use after the human explicitly chooses Evolve."
---

# Evolve

Design the progression for one Project. Evolve retains progressive strategy,
Evolution meaning, native gate consequence, route, and stopping; supporting
skills return only the bounded evidence or reaction they own.

## 1. Confirm entry and bind one Project

Behavioral entry is an explicit ordinary-language human choice of Evolve,
normally after Formalize explained why at least two coherent Project advances
could benefit from sequential specification and learning. Loading this skill
or receiving an unaccepted suggestion is not entry. Preserve entry provenance:

- `human-selected` means the human chose Evolve and the route may begin;
- `declined-suggestion` means a caller suggested Evolve and the human declined;
- `not-selected` means the suggestion or route was discussed but no choice was
  made.

For `declined-suggestion` or `not-selected`, return `stopped` immediately with
that entry value and a matching `stop_reason`; create no Map and make no
comprehension, approval, or route claim. A later explicit choice is a new
entry.

For `human-selected`, bind the smallest useful current context:

- one accepted Project Brief and Requirements, with source, revision,
  provenance, and limits;
- the current system and domain model, relevant References, evidence, known
  dependencies, uncertainty, change pressure, and human preference;
- caller, earliest causal owner, current gate, retained route, authority,
  acceptance boundary, and stop; and
- the exact effect or persistence boundary for this run.

Do not infer a Project boundary, accepted Requirements, or a progressive route
from size, feature labels, technical layers, milestones, or several Issues or
Plans. If the Project combines, omits, or misstates substantial outcomes,
return `causal-return` to Requirements Discovery with the concrete boundary
conflict. If accepted context, source, authority, or a required boundary is
missing and cannot be supplied without guessing, return `blocked` with its
exact `blocked_state`; create no Map. This step is complete when one selected
Project route, its accepted governing context, entry provenance, and visible
limits are explicit, or the exact typed return has been made.

## 2. Design the smallest useful Evolution Map

Start from the bound Project rather than a feature or lifecycle taxonomy.
Propose the smallest serious sequence of at least two coherent, integrated
working advances. Each advance must be real enough to exercise, review, prove,
and learn from in this Project; it may establish, extend, deepen, refine,
replace, or remove behavior.

For each Map entry, keep only the detail needed to judge the progression:

```text
Evolution Map entry {
  stable_id,
  sequence_position,
  tangible_advancement,
  deliberate_limitations,
  why_this_position_is_useful,
  learning_target?
}
```

State how the sequence collectively advances the Project Requirements. Make
consequential omissions, dependencies, pressure, and uncertainty visible. A
`learning_target` names a consequential uncertainty and the later Map
judgment it may change; learning value never substitutes for a tangible
advancement. Do not create a Requirement-by-Evolution ledger or pre-specify
detailed behavior, interfaces, proof, Issues, or Plans.

When several decompositions are serious, compare their consequences and
recommend one. If mapping leaves only one useful coherent advance, return
`one-advance` as a typed `causal-return` to Formalize for direct Issues; do not
manufacture a second Evolution. If every sequence is artificial because the
Project boundary is wrong, return that concrete conflict to Requirements
Discovery.

Use the lowest-fidelity visual or structured surface that makes the sequence
judgeable. A short Mermaid diagram or structured Map is enough when faithful;
invoke Make Tangible only when a richer comparison or reaction surface
materially improves the judgment. Author the Map with exact headings
`Governing Context`, `Progressive Strategy`, `Evolution Sequence`, optional
`Cross-Evolution Dependencies and Uncertainty`, and `Current Recommendation`.
Load
the [record lifecycle reference](../../references/records/foundations.md)
when creating, moving, materially revising, superseding, or closing the Map or
an Evolution, and load the [Formalization record reference](../../references/records/formalization.md)
when authoring or validating their bodies. These are terminal references; do
not follow a reference chain. Write the complete Map at `evolutions/map.md`
before its native gate; never create an empty placeholder. Include
`Cross-Evolution Dependencies and Uncertainty` only when meaningful.

This step is complete when the current Map has at least two distinct coherent
advances, stable IDs independent of sequence positions, enough shared context
to judge them, and every material uncertainty or limit is visible, or the
typed one-advance or causal return has been made.

## 3. Resolve only bounded mapping or specification questions

Call a supporting skill only when its exact trigger is present. Pass the
current Project/Map truth, one bounded question, evidence and limits, caller,
earliest causal owner, current authority, `origin=evolve`,
`return_to=evolve`, `peer_edge_crossed=false`, and the requested result shape.
The callee returns to Evolve and cannot choose the route, alter a record, pass
a gate, grant authority, or continue this loop. Preserve its exact incomplete,
blocked, revised, and stopped state rather than flattening it.

### Research

For one factual sequencing premise whose answer could change the Map or the
selected high-level form, call [Research](../research/SKILL.md) with a stable
`boundary_id`, exact claim, territory, freshness, consequence, evidence bar,
cheapest falsifier, current authority, and the fields above. Integrate only
`answered` evidence with provenance; preserve `unverified` or `conflicting`
limits; bind a changed premise under a new boundary; use `no-op` only for its
sufficient existing context; return `needs-human-judgment` to its owner; and
propagate `blocked` or `stopped`. Map `needs-human-judgment` to a top-level
`causal-return`, not `blocked` or `stopped`: set `causal_return.owner` to the
exact human or causal owner named by the bounded request,
`causal_return.boundary` to this `boundary_id`, carry the missing
qualification as `reason` and `changed_meaning`, copy Research's evidence and
limits, and state the owner's exact `revisit_condition`. Research retains
evidence selection and synthesis; Evolve retains progression and stopping.

### Interview

For one human-owned working-form, ordering, criterion, or preference judgment
that can change the Map, call [Interview](../interview/SKILL.md) with a stable
boundary, exact choice and consequences, candidates, recommendation order,
current evidence and limits, and the fields above. Preserve `clarified`,
`qualified`, `deferred`, `conflicting`, `no-op`, `needs-evidence`, `blocked`,
and `stopped`. A qualified, deferred, or conflicting answer remains visible;
a changed need, preference, or Requirements truth returns to Requirements
Discovery; Interview retains human interpretation and Evolve retains the Map.

### Orient

Use [Orient](../orient/SKILL.md) only after the human accepts one bounded
suggestion to understand a settled Project, system, or Map model. Pass one
learning objective, starting point, settled model, source anchors, limits,
`caller=evolve`, `return_to=evolve`, `entry=accepted-suggestion`, and the
caller-retained controls. Consume its exact comprehension, causal-return, or
stopped envelope. A declined suggestion starts no teaching and is preserved as
`entry=declined-suggestion`; Orient retains teaching and Evolve retains every
progression and specification judgment.

### Make Tangible

When prose cannot make a sequence, comparison, working form, or consequence
judgeable, call [Make Tangible](../make-tangible/SKILL.md) with the exact
question, audience and starting point, accepted truth and evidence, primary
judgment, medium and required fidelity, requested reaction, current authority,
artifact lifetime, `caller=evolve`, `return_to=evolve`, and result shape.
Consume `no-op` directly. For `constructed` or `revised`, retain exact
artifact identity/version, reaction, supported conclusions, fidelity or
transport limits, and complete retention state. Preserve `blocked` or
`stopped` without inventing a reaction or fallback. Make Tangible owns
construction, verification, reaction, and lifecycle; Evolve retains meaning.

### Design Solution

When a consequential architecture, ownership, interface, invariant,
integration, transition, operations, or changeability choice could change an
Evolution's high-level working form, prepare a complete preflight before
calling [Design Solution](../design-solution/SKILL.md). Every field must be
concrete or explicitly not applicable; `unknown` is not a preflight. Include:

- stable solution-choice `boundary_id`, active caller, and earliest causal
  owner;
- the accepted Requirements/specifications with source, revision, provenance,
  and limits;
- current relevant evidence with provenance, source revision or freshness,
  and limits;
- one exact choice, why it matters, applicability, and the consequence of a
  wrong or deferred choice;
- territory, actors, scenarios, boundaries, hard Requirements, safety
  boundaries, invariants, and compatibility duties;
- evidence standard and exact authority for source inspection or a probe;
- feasible, current-shape, caller-accepted, and provisional alternatives; and
- caller-retained route, gates, authority, acceptance, and stop.

If any comparison-changing field is missing, return `causal-return` to the
named causal owner with the exact missing field, supplied evidence and limits,
and revisit condition. Do not invoke Design Solution or fill a gap by guess.
Otherwise pass `origin=evolve`, `return_to=evolve`,
`peer_edge_crossed=false` and consume `recommended`, `selected`, `qualified`,
`no-choice`, `revised`, `refused`, or `stopped` intact. Design Solution retains
comparison and synthesis; Evolve retains the high-level specification and
causal return.

This step is complete when every material mapping or specification premise is
supported, visibly uncertain, or returned to its causal owner, and every
supporting result is integrated without transferring Evolve's ownership.

## 4. Gate the Map and honor one explicit Evolution selection

Discuss and revise the Map until its exact sequence, limits, dependencies,
learning targets, collective Requirements coverage, and stable revision are
judgeable. Before invoking [Plannotator](../plannotator/SKILL.md), declare one
`Record Gate`, the complete `evolutions/map.md` target and revision (or say
that no reliable baseline exists), the exact Map Approval claim, and that it
selects no Evolution or authority.

Interpret the native result without changing its meaning:

- `approved` without feedback yields `map-approved` for that exact revision;
- `approved` with non-meaning-changing feedback also yields `map-approved`,
  preserving every note and requiring no re-gate;
- `approved` with meaning-changing feedback revises the affected Map and
  returns `map-revised` with its semantic diff and a new pending gate;
- `denied` preserves the denial, feedback, native reference or
  `unavailable`, and limits, then returns `stopped` without treating denial as
  command failure or approval;
- `annotated` or plaintext feedback is a reaction, not approval. Preserve it
  and return `causal-return` only when it changes Map meaning (with re-gate);
  otherwise stop with no approval claim;
- `dismissed` returns `stopped` with `stop_reason.kind=native-dismissal`;
  native `closed` or empty closure returns `stopped` with
  `stop_reason.kind=native-closure`, preserving the exact native decision and
  reference but making no judgment; and
- command or transport failure is the only native gate `blocked` state. Return
  the exact target, failure, transport limits, and Setup recommendation.

Map Approval accepts only the progressive strategy. It selects no Evolution,
starts no high-level specification or Issue work, and grants no planning,
mutation, external, or forward authority. A human may approve the Map and name
one Evolution in the same message; preserve both distinct acts. If no
Evolution is named, return `selection-required` with the accepted Map and
`human_choice_or_missing_boundary.kind=selection-not-made`; do not infer one
from approval, recommendation, sequence position, “continue,” or silence.

This step is complete when the Map is either accepted at its exact revision
with no inferred selection, paired with one explicit selection, revised with
its replacement gate explicitly pending, or returned with a typed native
stop/failure result; no recommendation or selection is emitted from a pending
revision and no other forward activity has begun.

## 5. Specify only the selected Evolution

Before creating a file, read the complete current Map and resolve the human's
selection by stable descriptive ID. Validate that exactly one existing current
Map entry matches, that its ID is not merely a sequence position, and that its
sequence position and title are consistent. If zero or multiple entries match,
create no file and return `blocked` with
`blocked_state.kind=invalid-selection-target`, the exact selection, Map
revision, and repair condition.

After that validation, create `evolutions/eN-<name>.md` with the stable ID and
current sequence position. Load the Formalization reference at authoring time.
Author exactly these headings:

- `Governing Context and Accepted Truth`;
- `Tangible Advancement`;
- `Included High-Level Behavior`;
- `Integration with Existing Project Work`;
- honest `Deliberate Limitations`;
- `Learning Target` only when it can change a named later judgment;
- `Required Proof`; and
- `Current Recommendation`.

Omit `Result` until Evolution Acceptance. Keep Map future entries
concise and state later pressure only as accepted truth, a limitation, or a
learning target. Stay above detailed flows, interfaces, edge cases, failure
cases, dependencies, acceptance criteria, files, commands, execution order,
checks, and mutation authority; Issues and Implementation Plans own those
details. Anything necessary for the promised advancement remains included and
must be detailed through at least one later Issue.

If a bounded call changes Map boundary, progression, or high-level meaning,
revise only that owner and repeat its affected gate. A Requirements or Project
boundary change is a typed causal return to Requirements Discovery, not a local
Evolution edit. This step is complete when one selected Evolution's complete
high-level working form, integration, limitations, proof, and learning target
are judgeable without Issue or Plan detail.

## 6. Gate the Evolution Definition and stop

Present the complete current Evolution record through a declared `Record Gate`
with exact stable target and revision, the Definition Approval claim, and its
non-authorizing consequence. Interpret the native result as in Step 4,
including the explicit native closure mapping: `closed` or empty closure is
`stopped` with `stop_reason.kind=native-closure`, while `dismissed` is
`stop_reason.kind=native-dismissal`. Approval with non-meaning-changing
feedback accepts the exact record and preserves feedback without re-gating;
meaning-changing feedback returns a typed causal return to the Evolution
owner and repeats only this gate; denial and annotation/plaintext feedback
preserve their exact states and stop; command or transport failure is
`blocked`.

Definition Approval accepts only the high-level advancement specification. It
defines no Issues, starts no Delivery, grants no planning or mutation
authority, and selects no later Evolution. Return `definition-approved` with
the exact accepted record and a recommendation to define Issues, then stop.

This step is complete when the exact current Evolution Definition revision has
been returned as `definition-approved`, a typed causal return, a typed stopped
native decision, or a typed native command/transport blocker, with its target,
revision, feedback, reference, limits, and non-authorizing consequence
preserved; no Issue or Delivery activity has begun.

## 7. Gate integrated results and let delivered learning reshape progression

Use a native Result Gate only when Evolve owns Evolution Acceptance and that
native interaction has been selected. Before invoking Plannotator, prepare a
complete result-gate preflight:

```text
Result Gate preflight {
  actual_working_result,
  proved_coverage_and_evidence,
  unproved_claims,
  checks_and_their_scope,
  known_limitations,
  learning_and_unresolved_points,
  exact_acceptance_claim,
  excluded_adjacent_actions
}
```

Name the exact result target and revision, `Result Gate`, declared
`Evolution Acceptance` consequence, and what approval does not authorize. A
partial result must state proved coverage, unproved claims, limits, and
remaining learning; never imply full Evolution or Project completion. If the
preflight is incomplete, return `causal-return` to the exact Delivery or
Formalization owner with missing fields and revisit condition; do not open the
gate.

Apply the full native decision mapping from Step 4. Approval closes only the
named acceptance claim and its proved coverage; approval feedback is retained
and re-gated only when it changes meaning. Denial, annotation/plaintext,
dismissal, closure, and native failure retain exact partial state and do not
become approval. A native command or transport failure is `blocked` with its
target and Setup boundary. If a human does not accept a partial result, return
`stopped` with `stop_reason.kind=result-not-accepted` and preserve the exact
proved and unproved state.

After accepted Evolution Acceptance, keep the Evolution in the Map and add
only its actual integrated working form, decisive evidence pointers, remaining
limitations, and links to learning promoted into causal records. Keep
working-form proof separate from learning-target evidence and do not copy a
gate transcript or implementation chronology.

Classify learning before changing the Map. Changed needs, constraints, or
Project boundaries return to Requirements Discovery. Changed solution
commitments or high-level Evolution meaning return to the affected causal
owner/Formalize. Only evidence that changes the number, order, boundary,
meaning, or progression of future Evolutions revises the Map. Clarification
that preserves accepted strategy may update locally without reopening approval.

For a material Map change, foreground the semantic diff and repeat its Record
Gate only. If an Evolution splits, merges, or changes identity, supersede the
old record and create new stable IDs. If no multiple meaningful Evolutions
remain, do not mutate the Project Brief. Return a typed `causal-return` to
Formalize for the direct-Issue route, or Requirements Discovery when the
Project boundary/Requirements changed. Before removing `evolutions/map.md`,
load Foundations and verify that no current record or named consumer
references it; if references remain, keep it and report the cleanup limit.

After an accepted Map, explain the current progression and recommend one
Evolution when appropriate. A revised Map remains pending its replacement
Record Gate: expose its semantic diff and revisit condition, but emit no
recommendation or selection until that gate is accepted. Stop for human
selection. Acceptance never selects or starts adjacent work.

This step is complete when the exact Result Gate claim has either closed with
proved coverage or returned its typed partial, causal, stopped, or native
blocked state; delivered learning has an explicit causal owner; any material
Map revision is visibly pending its own gate; and no adjacent activity has
begun.

## 8. Return one deterministic envelope and stop

Return exactly one result with the smallest evidence from which the human or
caller can act honestly:

```text
Evolve Result {
  outcome: map-proposed | map-revised | one-advance | map-approved |
            selection-required | evolution-selected | evolution-specified |
            definition-approved | causal-return | blocked | stopped,
  entry: human-selected | declined-suggestion | not-selected,
  project_and_governing_context,
  map_state {
    path,
    stable_ids_and_sequence_positions,
    current_strategy,
    limitations_and_dependencies,
    learning_targets,
    gate_state,
    accepted_reference?
  }?,
  selected_evolution {
    stable_id,
    sequence_position,
    path,
    high_level_specification,
    gate_state
  }?,
  native_gate? {
    interaction_kind: record-gate | result-gate,
    exact_target_and_revision,
    decision: approved | approved-with-feedback | denied | annotated |
              plaintext-feedback | dismissed | closed | command-failure |
              transport-failure,
    feedback_or_annotations?,
    declared_consequence,
    native_reference,
    fidelity_or_transport_limits,
    regate_required
  }?,
  result_gate_preflight_or_partial_state? {
    actual_working_result,
    proved_coverage_and_evidence,
    unproved_claims,
    checks_and_their_scope,
    known_limitations,
    learning_and_unresolved_points,
    exact_acceptance_claim,
    excluded_adjacent_actions
  },
  evidence_and_provenance,
  working_form_proof?,
  learning_evidence_and_causal_owner?,
  human_choice_or_missing_boundary?,
  causal_return? {                 # required for outcome=causal-return or one-advance
    owner,
    reason,
    boundary?,
    changed_meaning,
    exact_dependency_or_route_result?,
    evidence_and_limits,
    revisit_condition
  },
  blocked_state? {                  # required for outcome=blocked
    kind: missing-context | invalid-selection-target | missing-preflight |
          dependency-blocked | native-command-failure | native-transport-failure,
    exact_boundary_or_target,
    dependency_or_failure_result?,
    partial_state?,
    repair_or_setup_recommendation
  },
  stop_reason? {                    # required for outcome=stopped
    kind: human-stop | declined-suggestion | not-selected |
          selection-not-made | native-denial | native-feedback |
          native-dismissal | native-closure | dependency-stopped |
          result-not-accepted,
    exact_native_decision_or_partial_state?,
    revisit_condition?
  },
  recommendation_or_revisit_condition?,
  limitations_and_unresolved_points,
  caller_retained_route_gate_authority_acceptance_and_stop
}
```

`map-proposed` is an unapproved working Map; `map-revised` requires its
affected Map gate before any recommendation or selection; `one-advance` carries a causal return to Formalize;
`map-approved` accepts only the Map and no selection; `selection-required`
waits for one exact human choice; `evolution-selected` carries an incomplete
selected specification; `evolution-specified` is ready for Definition
Approval; and `definition-approved` accepts only that high-level record.
`causal-return`, `blocked`, and `stopped` require their typed payloads above.
Native denial, annotation/plaintext, dismissal, closure, and command/transport
failure remain distinct. `blocked` is used for native command/transport
failure in a gate and for an explicitly identified missing or invalid local
boundary elsewhere; it never disguises a native denial or feedback as a tool
failure. No result authorizes planning, mutation, acceptance beyond its named
claim, commit, publication, deployment, or the next Evolution.

Every result identifies the exact Map or Evolution revision and, when used,
native target/reference, every material signal and limit, remaining human
judgment, causal owner, and revisit condition. Persist only human-selected
Map/Evolution records and declared gate projections; keep messages, raw
reactions, comparisons, result transport, and implementation chronology
transient unless a named future consumer needs exact native evidence. Return
the envelope and stop.

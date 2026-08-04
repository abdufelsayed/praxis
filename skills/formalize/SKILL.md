---
name: formalize
description: "Formalize sufficient accepted truth. Use after the human chooses Formalization to route it into standalone Issues, Project Issues, or Evolve."
---

# Formalize

Translate accepted truth into the complete current specification that Delivery
can later plan. Formalize recommends a route, composes the selected child, and
checks that the whole specification still expresses the governing outcome.
The human chooses the route; child skills own their records and native gates.

## 1. Confirm entry and bind accepted truth

Begin only when the human explicitly chooses Formalize after Requirements
Discovery or the conversation has produced enough accepted truth to specify an
outcome honestly. A later run may begin from an accepted Evolution Definition
only when the human separately chooses Issue definition for that Evolution.
A loaded skill, an accepted Requirements gate, or a caller's recommendation is
not entry. Direct Work may bypass Formalize when a durable Project or explicit
specification would not improve judgment or control.

Bind the smallest useful current brief:

- the explicit outcome and, when one exists, the Project Brief and accepted
  Requirements;
- current source and system behavior, interpreted References, retained
  artifacts, accepted solution context, uncertainty, and known change
  pressure;
- the entry choice, caller, causal owner, route, accepted revisions, gates,
  authority, acceptance boundary, and stop; and
- the exact persistence and navigation boundary for this run.

Do not infer a Project boundary, accepted truth, or route from feature count,
technical layers, expected Issues, or a prior recommendation. A standalone
route binds only its local accepted outcome and truth; a direct Project or
Evolve route additionally requires one accepted Project boundary and Project
Outcome. If the selected route's required truth, boundary, or authority is
missing or wrong, return the exact `causal-return` or `blocked` state before
creating or revising a specification. This step is complete when one
human-selected Formalize entry, its route-appropriate owner and evidence
basis, and its visible limits are explicit.

## 2. Reconstruct the truth before choosing a route

Read the complete accepted context far enough to judge specification:
outcome, Project Brief, Requirements, current system, relevant References,
retained artifacts, solution context, dependencies, uncertainty, and change
pressure. Separate sourced fact, accepted meaning, inference, proposal,
reaction, and uncertainty. Do not reopen Requirements because implementation
files, commands, or execution sequence remain unknown; return only when a
need, constraint, preference, evidence, problem understanding, or Project
boundary is missing or changed.

If a bounded factual, human-judgment, comprehension, reaction, solution, or
security question can change the route or specification, use the supporting
capability in Step 5. Integrate only what its return supports and preserve its
limits. This step is complete when the accepted truth and every consequential
unknown have either a current basis, an honest carried limit, or an exact
causal owner.

## 3. Recommend one specification route, then wait for human choice

Explain the recommendation from the actual work, not from artifact count or
technical shape:

- **Standalone Issues** when detailed specification is useful but no durable
  Project would improve judgment or continuity;
- **direct Project-owned Issues** when one coherent Project Outcome should be
  specified in detail; or
- **Evolve** only when a Project has at least two meaningful coherent advances
  whose progressive working forms and learning should shape later
  specification.

Discuss meaningful alternatives, their consequences, and the next judgment
each asks of the human. Ask for the choice in ordinary language. This route
conversation is not approval, creates no route record, and needs no
Plannotator interaction. Approval of Requirements, a Map, or a prior
recommendation never selects a route or starts a child. Until the human makes
one explicit route choice, return `selection-required` and do no child work.
An accepted Evolve Definition is not that choice: return the exact child
projection with `pending_human_choice=issue-definition` and stop. On a later
run, a distinct human choice of Issue definition is required before Define
Issues is called.

## 4. Compose the selected child without transferring ownership

Call only the chosen route owner with a complete current brief and the exact
bounded request. Formalize remains responsible for route, coverage, causal
returns, navigation, and stopping:

| Human route | Child call | Formalize retains |
| --- | --- | --- |
| Standalone Issues | [Define Issues](../define-issues/SKILL.md) with an explicit standalone outcome and no Project parent. | Complete standalone coverage and route. |
| Project Issues | [Define Issues](../define-issues/SKILL.md) with one direct Project Outcome and its accepted Project boundary. | Complete Project coverage and route. |
| Evolve | [Evolve](../evolve/SKILL.md) with the accepted Project. Define Issues is a later child call only after the human makes a new explicit Issue-definition choice. | Progressive route, Map/Evolution composition, and complete current coverage. |

Evolve owns the Map and selected Evolution; Define Issues owns detailed Issue
boundaries, bodies, and Issue Approval. The selected child invokes its own
Plannotator gate. Formalize creates no duplicate records, route decision,
orchestration record, specification copy, or Formalization gate.

For the Evolve route, compose in this order: accept the current Map through
Evolve's Map Approval; wait for the human to select exactly one existing Map
entry; and accept that Evolution's Definition Approval. Map approval never
selects an Evolution, and an Evolution Definition never starts Issue
definition by itself. When Evolve returns `definition-approved`, return the
exact Evolve result with a recommendation and a distinct pending
`issue-definition` choice; stop. A later run may call Define Issues only when
the human explicitly chooses that Issue-definition activity for the accepted
Evolution. Preserve a pending selection, pending child gate, one-advance
return, or child `no-op` without inferring the next action.

Preserve the child's exact outcome, accepted revision, references, feedback,
partial state, limits, and non-authorizing consequence. A child may return
evidence, reaction, approval, revision, `blocked`, or `stopped`; none silently
selects another route, grants authority, or re-enters Formalize. This step is
complete when the selected child has returned its exact bounded envelope or an
explicit missing boundary has been returned to its owner. A
`definition-approved` Evolve result is a bounded handoff, not permission to
call Define Issues in the same run.

## 5. Resolve bounded supporting questions

Supporting calls are narrow and return to Formalize. Pass a complete brief,
`origin=formalize`, `return_to=formalize`, `peer_edge_crossed=false` where the
callee supports the peer guard, and the caller-retained route, gate, authority,
acceptance, and stop. The brief is constructible from current context; do not
make the callee guess a missing field. Supporting skills do not choose the
Formalize route, revise records, pass a gate, or continue this loop.

- [Research](../research/SKILL.md) receives one `boundary_id`, exact factual
  claim, territory and exclusions, source expectations, freshness, consequence
  of error, evidence bar, cheapest meaningful falsifier, relevant version/
  configuration/environment/target conditions, authority and safety boundary,
  and the expected result. Preserve every `answered`, `unverified`,
  `conflicting`, `revised`, `needs-human-judgment`, `no-op`, `blocked`, and
  `stopped` field with provenance and evidence limits.
- [Interview](../interview/SKILL.md) receives one `boundary_id`, one
  human-owned judgment, why it can change the specification, concrete
  actors/situations and competing interpretations, current accepted truth and
  evidence, consequence of delay or error, intended receiving owner, and the
  adaptive or independent-bundle request. Preserve `clarified`, `qualified`,
  `deferred`, `conflicting`, `needs-evidence`, `no-op`, `blocked`, and
  `stopped`; map changed needs, preferences, Requirements, Project boundaries,
  or Project Outcomes to Requirements Discovery, and changed progressive
  strategy or high-level form to the affected Evolution owner.
- [Design Solution](../design-solution/SKILL.md) receives a complete stable
  choice preflight: `boundary_id`, exact choice and consequence/applicability,
  active caller and earliest causal owner, accepted Requirements/specifications
  with source/revision/provenance/limits, current evidence with provenance and
  revision/freshness/limits, territory/actors/scenarios/boundaries, hard
  Requirements/safety/invariants/compatibility duties, evidence standard and
  authority, feasible/current/caller-accepted/provisional alternatives, and
  retained route/gates/authority/acceptance/stop. Missing fields return to the
  named owner; Formalize never guesses or chooses the result.
- [Orient](../orient/SKILL.md) is human-selected supporting work only. First
  recommend one exact benefit and wait for acceptance; then pass
  `entry=accepted-suggestion`, one learning objective, starting point, settled
  model, authoritative anchors, mechanisms/failures/limits, caller context,
  and retained controls. Comprehension is evidence, never a specification
  decision; a changed governing question returns to its owner.
- [Make Tangible](../make-tangible/SKILL.md) is used only when a bounded
  proposal or comparison cannot be judged faithfully in prose. Pass the exact
  question, audience/starting point, accepted truth and evidence anchors with
  status/limits, primary judgment, medium and required fidelity, requested
  reaction, current authority, named consumer and lifetime, and retained
  caller controls. Preserve artifact identity/version, reaction, conclusions,
  fidelity/transport, retention, `no-op`, `blocked`, and `stopped` state.
- [Security](../security/SKILL.md) receives one attacker-focused question,
  target and governing expectation, owning and earliest causal owner,
  authority, exclusions and decision boundary, reconstructed assets/security
  properties/actors/privileges/trust boundaries/attacker inputs/sensitive
  data/effects/controls, evidence and proof boundary, current
  `assurance_path`, and retained controls. Integrate only evidence-backed
  `findings`, `no-high-confidence-findings`, or scoped `no-op`; preserve
  `needs-verification`, `needs-owner`, `blocked`, and `stopped` exactly.

When a child or supporting call changes an earlier governing meaning, load the
[Learning and Return](../../references/learning-return.md) reference and send
the smallest useful return to its earliest causal owner. Include the changed
meaning, decisive evidence and limits, affected records and gates, safe
current state, and exact revisit condition. Withdraw affected forward
authority and repeat only the owner and descendants whose meaning changed.
Do not repair a descendant around a false premise. This step is complete when
every material supporting result is integrated, carried as an explicit limit,
or returned to the exact owner.

### Exact child and dependency projections

Keep one lossless `dependency_projections` collection in the return. Each
entry contains `callee`, the complete exact child envelope (including native
references, feedback, records, evidence, limits, and safe state), and one
typed projection:

```text
Dependency Projection {
  callee,
  exact_child_result,
  formalize_outcome: formalized | partial | causal-return | blocked | stopped,
  pending_gate_or_choice?,
  causal_return?,
  blocked_state?,
  stop_reason?
}
```

Formalize never replaces `exact_child_result` with a summary. Use these
deterministic mappings; a `partial` projection always stops this bounded run
with the named gate, choice, evidence, or reaction still pending.

| Callee result | Formalize projection |
| --- | --- |
| Evolve `map-proposed`, `map-revised` | `partial`, pending `map-approval`; preserve the exact Map revision and semantic diff. |
| Evolve `map-approved` or `selection-required` | `partial`, pending explicit `evolution-selection`; Map approval never selects. |
| Evolve `evolution-selected` | `partial`, pending completion of the selected Evolution definition. |
| Evolve `evolution-specified` | `partial`, pending `evolution-definition-approval`. |
| Evolve `definition-approved` | `partial`, pending explicit `issue-definition` choice; return the exact approved child result and recommendation, then stop. |
| Evolve `one-advance` | `causal-return` to Formalize for a new direct-Issues choice; preserve the exact evidence and revisit condition. |
| Evolve `causal-return` | `causal-return` with the exact owner, changed meaning, evidence, and revisit condition. |
| Evolve `blocked` | `blocked` with the exact typed dependency or native failure state. |
| Evolve `stopped` | `stopped` with the exact human/native/dependency stop and safe state. |
| Define Issues `defined` or `no-op` | `formalized` only for the already selected standalone, direct Project, or explicitly chosen Evolution-Issues route; preserve the exact complete set and do no new work. |
| Define Issues `partial` or non-causal `revised` | `partial`, pending the named Issue coverage or affected approval batch. |
| Define Issues `revised` with a causal owner | `causal-return` to that earliest owner; preserve the semantic diff and invalidated authority. |
| Define Issues `blocked` | `blocked` with the exact missing boundary, dependency, authority, or native failure. |
| Define Issues `stopped` | `stopped` with the exact decision/reference, feedback, partial records, and safe state. |
| Research `answered` or `no-op` | `partial`, evidence-ready; preserve provenance, scope, and limits and do not claim formalization from evidence alone. |
| Research `unverified` or `conflicting` | `partial`, pending the named evidence boundary; if the child says the boundary prevents an honest specification, project `blocked` instead and preserve that declaration. |
| Research `revised` | `causal-return` to the returned owner/new boundary; preserve old evidence only in its original scope. |
| Research `needs-human-judgment` | `causal-return` to the exact human/causal owner and missing qualification. |
| Research `blocked` | `blocked` with the exact access, environment, authority, safety, or dependency result. |
| Research `stopped` | `stopped` with the exact human stop, invalid question, and safe state. |
| Security `no-op`, `findings`, or `no-high-confidence-findings` | `partial`, evidence-ready; preserve attack paths, findings/candidates, confidence, severity, coverage, and the fact that no guarantee or remediation follows. |
| Security `needs-verification` | `partial`, pending the named proof/verification boundary. |
| Security `needs-owner` | `causal-return` to the exact governing owner with the changed meaning or authority boundary. |
| Security `blocked` | `blocked` with the exact missing access, tool, environment, safety, or authority state. |
| Security `stopped` | `stopped` with the exact human/dependency stop and safe partial state. |
| Interview `clarified`, `qualified`, or `no-op` | `partial`, judgment-ready; preserve scope, consequence, evidence, and any qualified reaction. |
| Interview `deferred` or `conflicting` | `partial`, pending the named human judgment; never infer a choice. |
| Interview `needs-evidence` | `causal-return` to the exact fact/experience/orientation owner and new boundary. |
| Interview `blocked` | `blocked` with the exact missing input, dependency, authority, or interaction state. |
| Interview `stopped` | `stopped` with the exact dismissal/closure/stop and no inferred answer. |
| Design Solution `recommended`, `selected`, `qualified`, or `no-choice` | `partial`, comparison-ready; preserve candidates, criteria, consequences, evidence maturity, and the non-authorizing selection. |
| Design Solution `revised` | `causal-return` to the returned causal owner/new boundary. |
| Design Solution `refused` | `blocked` with the exact missing/invalid preflight or comparison basis. |
| Design Solution `stopped` | `stopped` with the exact human/dependency stop and safe state. |
| Orient comprehension `explained`, `understanding-observed`, `misconception-unresolved`, or `understanding-unconfirmed` | `partial`, comprehension evidence only; it never approves a specification. |
| Orient comprehension `orientation-blocked` | `blocked` with the exact missing/unreliable model or evidence boundary. |
| Orient `causal-return` | `causal-return` with the exact owner, reason, boundary, dependency result, and revisit condition. |
| Orient `stopped` | `stopped` with the exact stop and no inferred comprehension. |
| Make Tangible `no-op`, `constructed`, or `revised` | `partial`, surface/reaction-ready; preserve exact artifact/version, supported conclusions, fidelity, transport, retention, and reaction. |
| Make Tangible `blocked` | `blocked` with the exact brief, fidelity, medium, authority, dependency, or verification boundary. |
| Make Tangible `stopped` | `stopped` with the exact human/caller stop and artifact state; never infer reaction or cleanup. |

Only the selected Define Issues route can project `formalized`; every other
child or supporting result returns evidence, a pending gate/choice, a causal
return, a blocker, or a stop. Formalize exposes all projections in its result
so a caller can resume the exact owner without redoing synthesis or inventing
forward authority.

## 6. Check the complete translation

For standalone or direct Project Issues, check that the complete current Issue
set specifies the explicit outcome. For Evolve, check that the accepted Map
expresses a coherent progression and that the selected Evolution and its
Issues faithfully specify the current advancement. Coverage is semantic, not
a mention count: look for conflicting ownership, incompatible failure
behavior, omitted exclusions or dependencies, and proof that cannot establish
the accepted outcome.

Carry established change pressure into ownership, interfaces, deliberate
limitations, learning targets, and required proof at the altitude where it
matters. Do not prescribe files, refactoring, implementation sequence,
commands, or future behavior to justify an abstraction. Surface consequential
gaps, conflicts, safe uncertainty, and the exact record that must change. If
the current set is incomplete, return `partial` or a typed `causal-return`
with the affected owner and pending gate; do not claim formalization.

When feedback clarifies or corrects a current Evolution or Issue, keep the
change with that owner and revise only descendants whose meaning changed.
When it reveals a new need, constraint, preference, changed problem truth, or
Project boundary, return to Requirements Discovery. Foreground the semantic
diff and repeat the affected child gate; unaffected accepted truth remains
accepted.

## 7. Preserve navigation without duplicating truth

Formalize creates no `formalization.md`, route decision file, orchestration
record, or duplicate specification. When a durable Project exists and
continuity needs a navigation update, load [Record Foundations](../../references/records/foundations.md)
for the lifecycle boundary and [Discovery Records](../../references/records/discovery.md)
for the Project Brief shape. Update only terse navigation entries:

- chosen route;
- selected Evolution or direct Project Outcome;
- links to the governing Map, Evolution, and Issue files;
- remaining consequential uncertainty; and
- current recommendation.

The authoritative contents remain in Requirements, `evolutions/`, and
`issues/`. A standalone Issue carries enough local accepted-truth context and
does not require a Project Brief. Do not create a Project merely to hold
navigation.

## 8. Finish, recommend Delivery, and stop

Formalize is complete only when the selected route has a complete current
specification and every child gate that owns governing meaning is accepted:

- standalone Issues are complete and approved;
- direct Project-owned Issues are complete and approved; or
- an accepted Map, the human-selected and accepted Evolution Definition, and
  the complete accepted Issues for that Evolution are present.

An accepted Map and Evolution Definition without Issues is therefore
`partial`, not `formalized`: return the exact Evolve projection, recommend the
separate Issue-definition choice, and stop. Define Issues may begin only after
that new human choice is explicit in a later run.

Explain the accepted specification, semantic coverage, exclusions,
dependencies, proof, and remaining uncertainty that is safe to carry. Then
recommend Delivery planning and stop. This recommendation does not start
planning, create a Plan, grant authority, implement, accept a result, commit,
publish, deploy, or advance another route. A failed Evolve
premise returns evidence, recommends direct Issues, and waits for a new human
selection. If direct Issues reveal several useful coherent advances, return
the evidence and recommend discussing Evolve; never relabel Issues silently.

## Return envelope

Return exactly one bounded result and then stop:

```text
Formalize Result {
  outcome: formalized | partial | selection-required | causal-return | blocked | stopped,
  entry_and_human_choice,
  selected_route_and_recommendation,
  pending_human_choice_or_gate?,
  governing_truth_and_accepted_revisions,
  project_navigation_update?,
  map_evolution_issue_records_and_child_results,
  dependency_projections,
  semantic_coverage_and_gaps,
  evidence_and_limits,
  causal_return_or_stop_reason?,
  recommendation?,
  caller_retained_route_gate_authority_acceptance_and_stop
}
```

`formalized` means the selected route's complete current specification is
accepted. `partial` preserves accepted child work while required coverage or a
gate remains pending. `selection-required` carries the route recommendation
without choosing for the human. `causal-return` names the earliest owner and
changed meaning. `blocked` names missing truth, evidence, authority, or a
required dependency. `stopped` preserves the exact human or child stop,
reference or `unavailable`, feedback, partial records, safe state, and limits
without an approval claim. Every result keeps the caller's route, authority,
acceptance boundary, and stop and performs no adjacent work.

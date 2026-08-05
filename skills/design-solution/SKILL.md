---
name: design-solution
description: "Design one consequential solution choice. Use when accepted Requirements permit materially different system, ownership, contract, operational, migration, or reversibility shapes."
---

# Design Solution

Make one consequential solution shape judgeable. Design Solution owns the
comparison and synthesis; the caller keeps the governing Requirements or
specification, route, gate, authority, acceptance, and stopping.

## 1. Bind the choice and its owner

Accept one complete brief containing:

- the active caller and earliest causal owner;
- accepted Requirements or specifications, with source, revision, and limits;
- one exact open choice and why being wrong or deferring matters;
- territory, actors, scenarios, boundaries, and known alternatives;
- hard Requirements, safety boundaries, invariants, and compatibility duties;
- the evidence standard and authority for any source inspection or probe; and
- the caller-retained route, gates, authority, acceptance, and stop.

Give the bounded choice a stable `boundary_id` and preserve it until the
question, context, criteria, feasibility, or governing meaning materially
changes.

Classify the earliest record that would change if a candidate were accepted.
Changed need, constraint, tolerance, or preference belongs to Requirements
Discovery; changed high-level behavior belongs to the Evolution; changed
detailed behavior, interfaces, failures, exclusions, or proof belongs to the
Issue; and a technical shape that preserves those meanings belongs to the
Implementation Plan. When valid accepted meaning places the question with a
different owner, return `revised` with that causal owner, retained evidence,
and revisit condition. When no valid owner or complete entry can be identified,
return `refused` with the missing boundary. Never emit an untyped handoff.

If the choice is contained, reversible, and preserves accepted specifications,
recommend keeping it inside the caller's Plan rather than creating a rich
comparison. Return `no-choice` when no consequential comparison remains. If a
comparison-changing field is missing, return `refused` with the exact missing
boundary; never fill it with a guess. This step is complete when the boundary
ID, owner, choice, consequence, governing record, boundaries, and evidence bar
are explicit, or one of those bounded returns is made.

## 2. Separate constraints from tradeoffs

Derive comparison criteria from the accepted Requirements and actual system
evidence. Keep hard constraints and safety boundaries separate from negotiable
tradeoffs. A candidate that violates a hard boundary is eliminated before
tradeoff comparison. Do not compute a weighted quality score for the remaining
tradeoffs; compare their qualitative consequences, evidence maturity, and
uncertainty instead.

Generate the smallest serious set, normally two or three materially different
shapes plus the current shape when it remains viable. A shape is distinct when
it changes an observable contract, boundary, owner, failure mode, or material
tradeoff. Name shared consequential assumptions once and treat them as one
assumption path; several candidates depending on the same unverified behavior
are not independent evidence.

After hard-constraint elimination, return `revised` when zero viable candidates
expose a conflict in accepted governing meaning; otherwise return `refused`
when missing entry, evidence, or preflight prevents any valid candidate. Name
the eliminating constraint, evidence, causal owner, and revisit condition.
Zero viable candidates never means `no-choice`.

This step is complete when every viable candidate has a stable name, its
hard-constraint status, the same comparison criteria, and its shared
assumptions are explicit; if only one serious shape remains, return `no-choice`
with that shape and why alternatives are not credible, or return the zero-shape
result above.

## 3. Select the reasoning lenses

Choose only the paths whose distinct reasoning can change this choice. Load
each selected reference at the decision point below; references are terminal
method guides and never choose a route or call another reference.

- Load [`domain-models.md`](references/domain-models.md) when concepts,
  relationships, invariants, language, or state transitions distinguish the
  shapes.
- Load [`interaction-design.md`](references/interaction-design.md) when actor
  sequence, feedback, interruption, handoff, failure, or recovery differs.
- Load [`system-design.md`](references/system-design.md) when responsibility,
  component or data ownership, dependency direction, runtime placement,
  failure isolation, seams, or change locality differs.
- Load [`integration-contracts.md`](references/integration-contracts.md) when
  independent components, services, clients, or organizations differ in
  interface, compatibility, trust, ordering, or failure semantics.
- Load [`transition-operations.md`](references/transition-operations.md) when
  coexistence, rollout, cutover, reversibility, observability, or recovery
  differs.

Compose lenses around the same bounded choice. Keep the common comparison,
owner, and return in this skill. This step is complete when each selected
lens has a named question it can change and no ceremonial lens was loaded.

## 4. Test candidates against the same bar

For every viable candidate, record the same relevant dimensions:

- observable behavior and changed behavior;
- system, trust, and ownership boundaries;
- interfaces, invariants, and responsibility;
- failure modes, recovery, and operational consequences;
- migration or coexistence consequences;
- reversibility and response to accepted change pressure;
- evidence supporting feasibility, evidence maturity, and uncertainty.

Use current source, runtime behavior, tests, configuration, and authoritative
external material as evidence. For each supporting call, pass the callee's
required current brief and preserve its exact return, evidence, and limits; no
call transfers authority or re-enters an active assurance path.
Design Solution keeps the choice boundary, comparison, synthesis, causal
routing, authority, acceptance, and stopping. For the
Research–Interview edge, carry the local `boundary_id`, `origin`, `return_to`,
and `peer_edge_crossed` guard described below.

When a factual premise could change the comparison, give that investigation a
stable `boundary_id` and call [Research](../research/SKILL.md) with the exact
claim, territory, freshness, consequence, evidence bar, cheapest falsifier,
current authority, and caller context. Use
`origin=design-solution`, `return_to=design-solution`, and
`peer_edge_crossed=false` for the guarded edge. Consume `answered`
evidence; preserve `unverified` or `conflicting` limits; on `revised`, bind the
changed claim, context, criteria, or feasibility under a new stable
`boundary_id` and preserve prior evidence only within its original scope;
and consume `no-op` only as an existing-context explanation, never as a factual
claim. Retain separately identified evidence when it meets the comparison bar;
otherwise return `qualified` or `refused` with the exact gap. A
`needs-human-judgment` return becomes `qualified` with the exact missing
judgment, `blocked` becomes `refused`, and `stopped` propagates as `stopped`.
Do not call Interview for the same factual boundary; Research owns its one
guarded peer crossing.

If one disputed property could decide the choice, give Research the exact
factual or empirical question and the smallest source, visual, or empirical
probe capable of distinguishing it. Research owns probe design, evidence
synthesis, and interpretation. Its declared dependency owners retain checkout
state, safety decisions, and effect handling, and Research preserves their
returned boundaries. Design Solution and its references do not build the probe
or mutate a checkout. This step is complete when each viable candidate is
judged against the same relevant criteria and every material evidence or
coverage limit is visible.

## 5. Make the remaining judgment concrete

Use [Make Tangible](../make-tangible/SKILL.md) when prose cannot make the
comparison, model, workflow, or consequence judgeable. Use
Give it the
exact choice, audience, accepted truth and evidence, primary judgment,
medium/fidelity, requested reaction, current authority, and artifact lifetime.
Consume `no-op` directly; for `constructed` or `revised`, bind the reaction to
the exact version and re-evaluate only affected criteria; for `blocked`,
preserve the artifact and limits and return `refused`; for `stopped`, return
`stopped`. Make Tangible owns construction, verification, reaction, and
lifecycle; it does not select the solution or a gate. It may choose
Plannotator internally, so Design Solution does not call Plannotator.

Human judgment owns governing behavior, a major system, ownership, or trust
boundary, an external dependency, meaningful cost or risk, and a hard-to-
reverse commitment. A reversible technical choice inside the approved Plan
stays local when it preserves the accepted specification; that local judgment
grants no new authority.

When the remaining choice crosses the human threshold, give the judgment a new
stable `boundary_id` and call [Interview](../interview/SKILL.md) with the exact
candidates, criteria, evidence and maturity, material consequences,
recommendation order, context revision, `origin=design-solution`,
`return_to=design-solution`, `peer_edge_crossed=false`, and the fact that the
answer grants no authority. Consume `clarified` as a selected candidate,
`qualified` as a conditional or combined choice, `deferred` or `conflicting`
as an unresolved human boundary, and `no-op` as sufficient existing judgment.
Map `needs-evidence` to `revised` with the missing condition and causal owner;
map `blocked` to `refused`; and propagate `stopped`. Do not call Research for
the same judgment boundary; Interview owns its one guarded peer crossing. A
materially revised candidate or context returns to the caller before a
genuinely new boundary starts. Interview owns questioning and interpretation;
Design Solution retains comparison and synthesis.

This step is complete when a constructed or revised artifact reaction, or a
clarified or qualified human response, is bound to the exact candidate version;
a `no-op` explanation or existing judgment is integrated and proceeds to Step
6; an unresolved human boundary is explicit for a `qualified` return; or
`revised`, `refused`, or `stopped` has returned immediately with preserved
state. No terminal dependency result is followed by an invented reaction.

## 6. Recommend, select, or rebind

Recommend one candidate only when a genuinely consequential comparison remains,
the evidence supports it, and no valid human selection has been made. State
what it preserves, what it gives up, and which uncertainty remains. A contained,
reversible choice that preserves accepted specifications always returns
`no-choice` for the caller to handle inside existing Plan authority; it does
not need a human ceremony merely because alternatives were discussed.

When the current judgment contains any valid human selection, return `selected`
whether the human chose the recommended, non-recommended, or an explicitly
combined candidate. This includes a sufficient existing selection carried by
Interview `no-op`. Keep its rationale local and state its concrete
consequences. A mixed, conditional, or combined candidate is a new candidate:
foreground what changed, preserve only unaffected evidence, and re-evaluate
the affected criteria, interfaces, invariants, and shared assumptions before
returning `qualified` or `selected`.

If new evidence changes the question, criteria, feasibility, or governing
meaning, give the changed boundary a new stable `boundary_id` and return
`revised` with evidence that remains valid in its original scope, the causal
owner, and the gate or rebind that must be revisited. Do not quietly preserve
the prior recommendation. If a probe reveals a missing need, constraint, or
other Requirements truth, return that learning to Requirements Discovery
instead of treating it as a technical assumption. If no recommendation is
honest but the comparison
remains useful, return `qualified` with the unresolved tradeoff and revisit
condition. This step is complete when the state of every candidate and the
human judgment needed to proceed are explicit.

## 7. Return design context and stop

Return exactly one bounded result:

```text
Design Solution Result {
  outcome: recommended | selected | qualified | no-choice | revised |
            refused | stopped,
  boundary_id,
  choice_question,
  governing_owner_and_earliest_causal_owner,
  accepted_truth_and_boundaries,
  candidates_and_comparison,
  selected_shape_or_no_choice_reason?,
  rationale_and_consequences,
  criteria_hard_constraints_and_shared_assumptions,
  evidence_provenance_maturity_and_fidelity_limits,
  unresolved_uncertainty_or_human_judgment,
  tangible_artifact {
    dependency_outcome: constructed | revised,
    identity_and_version,
    human_reaction,
    supported_conclusions,
    fidelity_or_transport_limits,
    retention_state,
    named_consumer?
  }?,
  preserved_partial_or_dependency_state?,
  revisit_or_repair_condition,
  caller_retained_route_gate_authority_acceptance_and_stop
}
```

`recommended` names a supported recommendation with no human selection and
without granting authority;
`selected` records a valid human selection; `qualified` preserves a
conditional, combined, or unresolved tradeoff; `no-choice` names one serious
shape or a reversible local choice; `revised` carries changed meaning back to
the causal owner; `refused` names an invalid scope, missing preflight,
unavailable dependency, or unsupported comparison; and `stopped` preserves
the current safe state after a human stop or dismissed interaction. Every
result leads with the shape or reason, evidence and limits, consequences,
causal owner, and revisit condition. Comparisons, candidate material, and
supporting artifacts are transient by default. For a Make Tangible
`constructed` or `revised` result, return the exact artifact identity and
version, required reaction, supported conclusions, fidelity or transport
limits, and retention state. A `no-op` has no artifact object; `blocked` or
`stopped` state belongs in `preserved_partial_or_dependency_state` without an
invented reaction. Persist an artifact only for a named future consumer and
only for the lifetime returned by Make Tangible. Do not
create a Decision record, update
governing truth, list files or commands, plan implementation, perform a
mutation, accept a result, commit, publish, deploy, or continue the caller.
Stop after the return.

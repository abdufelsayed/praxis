---
name: discover-requirements
description: "Discover consequential Requirements truth. Use when unknown needs, outcomes, constraints, assumptions, feasibility, or blind spots block an honest route, specification, or contained edit; exclude isolated factual questions and human-only judgments."
---

# Discover Requirements

Discover Requirements owns one live inquiry when consequential uncertainty
prevents an honest route, specification, or contained edit. It learns what the
human needs and what the territory permits, integrates bounded probes, and
promotes only supported learning into Requirements. Clear work skips the
inquiry; it is not a mandatory intake phase.

## 1. Establish the starting point

Enter when the current request has an uncertainty whose answer could change a
need, outcome, constraint, feasibility, route, authority boundary, or required
proof. A direct factual question belongs to Research, and a human-only
judgment belongs to Interview. A loaded skill or an unaccepted suggestion is
not entry.

Read the request, current source, available References, existing Project
records, and known artifacts before asking the human to repeat context. Infer:

- the intended outcome and actor;
- the human's demonstrated starting point and recognized uncertainty;
- current system and domain truth, including ownership and trust boundaries;
- stated needs, constraints, preferences, accepted choices, and exclusions; and
- assumptions whose truth could change the next judgment.

Ask only for context that changes the inquiry: the intended outcome, relevant
experience, recognized uncertainty, what the human knows they care about, or
where teaching or stronger involvement is needed. When consequential
territory is unfamiliar to both parties, load
[`blind-spots.md`](references/blind-spots.md) and run its bounded pass. Surface
the few supported omissions most likely to change the next probe; stop when
those omissions have a fitting resolver or are safe to carry.

If the starting point already supports an honest route, return `no-op` with
the sufficient truth, evidence, visible limits, and recommended next choice.
This step is complete when the inquiry boundary, starting point, current
truth, and first uncertainty are explicit, or the precise no-op/blocker
return is made.

## 2. Keep one adaptive inquiry

Maintain a live model of the current unknown, candidate interpretations, what
each would change, evidence and reactions already obtained, and uncertainty
safe to carry. The optional `unknowns.md` file is a picture of that frontier,
not a queue: unknowns can appear, merge, split, disappear, or change shape.
Probe one highest-value area at a time—the area most likely to change the
need, constraint, boundary, route, authority, proof, or usefulness of later
questions. Investigate a prerequisite first when it controls several
downstream judgments.

Select the cheapest evidence class capable of changing the current model:

- **Research** for a discoverable factual claim;
- **Interview** for human-owned intent, preference, priority, tolerance, or
  judgment;
- **Orient**, after the human accepts one bounded suggestion, for settled
  background needed to answer the real Requirements question;
- **Make Tangible** when comparison, experience, manipulation, navigation, or
  annotation is needed for a faithful reaction;
- **Plannotator bundled facts** when a small set of already-grounded
  observable behaviors or acceptance criteria is easier to edit together;
- a rich existing source through
  [`reference-interpretation.md`](references/reference-interpretation.md);
- ordinary source inspection, explanation, brainstorming, or teaching when
  they are sufficient; and
- **Security** when an attacker-focused unknown could change Requirements,
  accepted risk, or required proof.

These are instruments, not stages. They can recur or compose, and a supporting
skill returns its bounded result to this inquiry. Discover Requirements keeps
the question, synthesis, Requirements meaning, route, gate, authority, and
stopping decision.

Use one realistic scenario or concrete claim at a time. When a probe produces
no discriminating feedback, change evidence class or safely defer the
uncertainty. A repeated verbal question is not learning when the human needs
to see, compare, manipulate, or experience a surface.

### Supporting-call contract

Every call carries one complete current brief: the exact current question,
accepted truth and provenance with owner and revision, consequence, territory
and exclusions, human starting point, current evidence and its freshness or
fidelity limits, caller and `return_to=discover-requirements`, current
authority and effect/safety boundary, named future consumer or artifact
lifetime, the callee's bounded result shape, and the caller-retained route,
gate, authority, acceptance, and stop. A missing field is a `blocked` return
before invocation; the callee is never asked to guess it. The callee returns
evidence, a reaction, or a local judgment; it does not revise Requirements,
pass a gate, grant authority, choose the route, or continue this inquiry.

### Lossless dependency projections

Store each completed direct call once under `dependency_projections` without
flattening or rewriting its native return:

```text
dependency_projection {
  dependency,
  exact_dependency_outcome_or_return_kind,
  exact_dependency_envelope_and_state,
  evidence_and_limits,
  causal_owner?, reason?, boundary?, exact_causal_result?, revisit_condition?,
  native_reference: reliable-reference | unavailable,
  discover_projection:
    integrated | revised | needs-human-judgment | blocked | dependency-stopped
}
```

`exact_dependency_envelope_and_state` retains the untouched dependency
envelope, including any `partial`, `blocked`, `stopped`, causal, or native
decision state. `evidence_and_limits` and `native_reference` remain explicit;
an unavailable native reference is recorded as `unavailable`, never omitted.
Copy causal owner, reason, boundary, exact dependency result, and revisit
condition whenever the callee supplies them. A projection is evidence of a
dependency result, not a Requirements gate, route, authority, or acceptance.

Map the projection deterministically:

- `integrated` means the bounded result answers its question without changing
  governing Requirements; a partial or uncertain result may use this state
  only when the exact safe-to-carry limit and later consumer are recorded.
- `revised` means the result changes a Requirement, Project truth, boundary,
  or other earlier governing premise and carries its causal return.
- `needs-human-judgment` means the dependency returned an unresolved
  human-owned choice or qualification needed for the current judgment.
- `blocked` means missing/invalid preflight, required evidence, unavailable
  capability, malformed transport, or a dependency limitation that prevents
  this inquiry's next judgment; retain the exact partial state.
- `dependency-stopped` means the dependency or its native interaction stopped
  before this inquiry could complete; retain the exact stop and safe state.

The first terminal dependency return ends the current inquiry turn; no second
dependency or fallback surface is invoked. A dependency `blocked` maps to
top-level `outcome=blocked`. A dependency `dependency-stopped` maps to
top-level `outcome=stopped` with `stop_reason.kind=dependency-stopped`. A
human or caller stop of Discover Requirements itself maps to
`stop_reason.kind=phase-stopped`; it is never relabeled as a dependency stop.
Only this owner can produce `aligned`, and no projection grants authority.

**Research.** Call with a stable `boundary_id`, exact claim, territory,
freshness, evidence bar, cheapest falsifier, `origin=discover-requirements`,
and `peer_edge_crossed=false`. Integrate `answered` evidence with provenance;
preserve `unverified` and `conflicting` limits; bind a changed premise under a
new boundary; map `needs-human-judgment` to the missing human or causal owner;
and propagate `blocked`, `stopped`, or a revised owner return. `no-op` uses
only the sufficient context it identifies. Research retains evidence choice
and synthesis.

**Interview.** Call for one human-owned choice with its consequence, current
evidence, candidate scope, stable boundary, and the non-authorizing result
shape. Consume `clarified`, `qualified`, `deferred`, `conflicting`, and
`no-op` as scoped human meaning. A changed need, preference, Requirement,
Project boundary, or Project Outcome returns to the exact Requirements owner;
the answer is not absorbed into a local probe. Map `needs-evidence` to the
named evidence owner, preserve `blocked`, and propagate `stopped`.

**Orient.** Suggest one bounded orientation only when a settled model is
needed, and continue teaching only after human acceptance in ordinary
language. Pass the objective, starting point, settled model, anchors, limits,
caller, and retained controls. A comprehension result informs the question;
changed problem truth returns to Requirements Discovery, changed formal
behavior to Formalization, and a declined suggestion or dependency stop is a
typed `stopped` return. Orient owns teaching and checks.

**Make Tangible.** Call when an artifact is the cheapest faithful way to
answer the question. Pass the exact judgment, audience and starting point,
accepted truth and evidence, medium and fidelity, requested reaction,
authority, and lifetime. Consume `constructed` or `revised` with the exact
artifact/version, reaction, supported conclusions, fidelity limits, and
retention state. A `no-op` follows the ordinary path; `blocked` or `stopped`
preserves the target and limits without an inferred reaction. Make Tangible
owns construction, verification, native interaction, and lifecycle.

**Design Solution.** Candidate solutions may expose an unknown, but this
inquiry never commits Evolution, Issue behavior, interfaces, failure
semantics, or implementation approach. For a consequential solution question,
prepare a complete preflight: stable boundary, active and earliest causal
owners, accepted Requirements and evidence with provenance, one exact choice
and consequence, territory/actors/scenarios, hard constraints and invariants,
evidence standard and authority, viable alternatives, and caller-retained
route/gate/authority/acceptance/stop. Preserve `recommended`, `selected`,
`qualified`, `no-choice`, `revised`, `refused`, or `stopped`; return changed
Requirements truth to its causal owner.

**Security.** Call only for an attacker-focused unknown that could alter a
Requirement, constraint, accepted risk, or proof obligation. Pass the assets,
expectation, attack surface, target, current Requirements, authority,
assurance path, and exact evidence boundary. Consume validated findings and
coverage limits; a finding that changes Requirements returns here for causal
promotion, while an implementation or formalization defect returns to that
owner. Security never fixes, accepts, or authorizes remediation.

**Plannotator bundled facts.** Use the optional `setup-goal facts` surface only
when a small set of observable behaviors or acceptance criteria is already
grounded and easier for the human to edit together. It is a Reaction Review,
not a discovery questionnaire, Requirements Alignment, or record creator.
Before opening it, prepare a complete facts preflight: one stable boundary and
target revision; every item in input order with a unique stable ID, non-blank
current text, source/evidence and provenance, owning Requirement or explicit
working-meaning owner, accepted/removed state, existing comment, recommended
and selected automated-verification state, and `previousText` when revising;
the exact requested edit/removal/comment/verification judgment; the human
starting point and consequence; `caller=discover-requirements`,
`return_to=discover-requirements`, caller authority for working Requirements
synthesis (the native session remains read-only), exclusions, temporary
`goalSlug`, display policy, and caller-retained route, gate, authority,
acceptance, and stop. Missing ownership, evidence, stable IDs,
or a grounded target is `blocked` before the command and creates no Fact
record.

Invoke `plannotator setup-goal facts <bundle.json-or-> --json` once. Capture
the exact returned `stage`, temporary labels, ordered items, stable IDs, final
text, `accepted`, `removed`, comment (including an explicit clear),
`recommendedAutomatedVerification`, `automatedVerification`,
`factsMarkdown`, native reference, and transport limits. Validate that every
input ID returns exactly once, every non-removed item has non-blank text, and
no item was silently dropped; malformed output is `blocked`. `factsMarkdown`
is only a convenience projection. A dismissal or empty closure is a typed
dependency stop with no inferred reaction; command or transport failure is a
typed dependency blocker and never falls back to conversation.

Synthesize each returned item into its owning working Requirements meaning:
preserve the exact old/new text, removal, comment, acceptance, and both
verification choices as evidence. Classify comments and text changes as
editorial only when they preserve meaning; a changed observable behavior,
scope, strength, condition, downstream obligation, or explicit removal is a
semantic revision to the affected Requirement and its Alignment target.
Verification selection is a human signal about proof, not proof or authority;
promote it only when its consequence is supported. An accepted fact item is
not Requirements Alignment. Facts create no `Fact` record, parallel fact
sheet, Goal, or substitute gate; a semantic synthesis reopens only the
affected Requirements Alignment and leaves unrelated meaning accepted.

Apply the lossless projection mapping above to this interaction before
continuing or returning.

This step is complete when the selected probe has a distinct purpose and
return boundary, or the exact missing evidence, human judgment, dependency,
causal owner, or stop state is explicit.

## 3. Interpret and synthesize every turn

After each material probe, update the working Project Brief, Requirements,
interpreted References, reactions, Unknowns Map, and current understanding.
Show the human only the semantic change that affects the inquiry; keep raw
research narration and interview transcripts transient.

Keep these signals separate:

- desired experience or preference;
- factual feasibility or observed behavior; and
- hard constraint, safety boundary, invariant, or accepted risk.

When they conflict, preserve the tension and choose the smallest probe or
human discussion capable of finding a valid boundary. A raw selection,
rejection, prototype reaction, scan result, or agent hypothesis remains
evidence until its cause and fidelity are understood. Ask what was observed,
what likely produced it, what the probe could actually test, and which
governing truth would change.

Promote only the narrowest supported truth later work must respect:

- human needs and constraints;
- accepted preferences or choices when the preference itself governs later
  judgment; and
- relevant findings about the actual territory, including material volatility
  or accepted future direction.

Each promoted Requirement preserves its provenance, why it matters, and its
consequence for Formalization. Preserve the underlying need or constraint at
the narrowest supported scope. Keep supporting facts as evidence or
References unless they themselves govern later work. Preserve concrete change
pressure without inventing speculative future Requirements.

For a bundled-facts reaction, return the complete ordered item projection and
the semantic/editorial classification before promoting anything. The current
Requirements remain the single governing source: facts text, comments,
acceptance, removal, and verification are evidence until their supported
consequence is synthesized there. If a semantic change affects an accepted
Alignment target, return `revised` with the affected Requirement IDs, causal
reason, exact old/new meaning, evidence and limits, and the replacement gate;
do not reopen unrelated Requirements.

Use [`learning-return.md`](../../references/learning-return.md) when evidence
changes accepted Requirements or an earlier governing premise. Return to the
earliest causal owner, carry the decisive evidence and limits, and revise only
affected descendants. A supporting skill identifies learning; this owner
decides promotion, persistence, route, and stopping.

This step is complete when every material observation has an interpretation,
provenance, supported consequence, and visible uncertainty or causal return.

## 4. Converge on an honest next judgment

Converge when Formalization can make precise proposals without guessing about
the Project Outcome, boundary, or required human truth. Remaining uncertainty
may continue when it cannot undermine a Requirement, is safe to carry to a
named later owner, or is irrelevant to the next judgment. Record why it is
safe and where it becomes relevant again. Completion never requires an empty
Unknowns Map.

Before Requirements Alignment, revalidate consequential governing findings
whose source, version, environment, or material conditions may have changed.
Refresh only affected truth; stable human needs and still-applicable evidence
remain intact.

When the synthesized Requirements will govern Formalization, Delivery, or
durable cross-session work, present one complete stable target:

- the Project Brief with outcome, boundaries, current position, and
  recommendation;
- the complete Requirements with proposed Project-local IDs;
- material uncertainty safe to carry and why; and
- only the References or retained artifacts needed for human judgment.

Load [`foundations.md`](../../references/records/foundations.md) for a durable
Project lifecycle change and [`discovery.md`](../../references/records/discovery.md)
when authoring or validating the Brief, Requirements, Unknowns Map, or
References Index. These references define record shape and placement; they do
not choose the inquiry or gate.

This step is complete when the current truth is sufficient for the next
judgment, every carried uncertainty has a named reason and consumer, and the
complete Alignment target is stable or a precise no-gate conclusion applies.

## 5. Align Requirements when a durable basis is needed

State the interaction before opening the native gate: `Record Gate`, the exact
Project Brief and revision, the complete Requirements/uncertainty target, the
References and artifacts needed for judgment, the provisional Requirements
Alignment claim, and that approval grants no Formalization, Delivery, mutation,
publication, or other forward authority.

Invoke [Plannotator](../plannotator/SKILL.md) for that exact stable target.
Capture the native decision before interpreting it:

- `approved` accepts only the named current Project Brief, Requirements,
  visible uncertainty, and supporting target at that revision;
- `approved` with non-semantic feedback keeps the accepted meaning and carries
  every note without another gate;
- feedback that changes a Requirement's meaning, strength, scope, or
  downstream obligation revises only affected records and reopens Alignment;
- `annotated` or plaintext feedback is a reaction, not approval;
- denial, dismissal, empty closure, or human stop returns a typed `stopped`
  state with no acceptance claim; and
- command or transport failure returns `blocked` with exact target, failure,
  and Setup recommendation, never conversational approval.

### Requirements Alignment native projection

Keep the native Record Gate result losslessly beside the distilled `alignment`
state. Record exactly one `alignment_projection` for this interaction; it is
not the bundled-facts reaction and it never replaces Requirements meaning or
the gate state:

```text
alignment_projection {
  interaction_kind: record-gate,
  exact_target,
  target_scope,
  target_revision,
  decision: approved | approved-with-feedback | denied | annotated |
            plaintext-feedback | dismissed | closed | command-failure |
            transport-failure | malformed-result,
  feedback_or_annotations?,
  unresolved_points?,
  declared_consequence,
  native_reference: reliable-reference | unavailable,
  accepted_reference: reliable-reference | unavailable,
  fidelity_or_transport_limits,
  safe_state: accepted | pending-revision | no-acceptance | stopped | blocked,
  projection: approved | meaning-change | reaction | denied | dismissed |
              closure | command-failure | transport-failure | malformed-result
}
```

`native_reference` is the reliable reference for this native session, or
`unavailable`; `accepted_reference` is the last reliable accepted Alignment
reference, or `unavailable`. Map the native result without substituting a
conversation or hiding a partial state:

| Native result | Projection | Distilled alignment state | Safe state | Top-level result |
| --- | --- | --- | --- | --- |
| `approved` or `approved-with-feedback` with no meaning change | `approved` | `approved` | `accepted` | `aligned` |
| approved feedback that changes meaning, strength, scope, or downstream obligation | `meaning-change` | `pending` | `pending-revision` | `revised` |
| `annotated` or `plaintext-feedback` with a supported semantic revision | `meaning-change` | `pending` | `pending-revision` | `revised` |
| `annotated` or `plaintext-feedback` without a supported semantic revision | `reaction` | `pending` | `no-acceptance` | `needs-human-judgment` |
| `denied` | `denied` | `pending` | `stopped` | `stopped` |
| `dismissed` | `dismissed` | `pending` | `stopped` | `stopped` |
| `closed` or empty closure | `closure` | `pending` | `stopped` | `stopped` |
| command failure | `command-failure` | `pending` | `blocked` | `blocked` |
| transport failure | `transport-failure` | `pending` | `blocked` | `blocked` |
| malformed result | `malformed-result` | `pending` | `blocked` | `blocked` |

For `meaning-change`, preserve the accepted baseline and return the exact
causal Requirements revision and replacement gate. For `reaction`, preserve
every note and unresolved point and name the missing human judgment. For
denial, dismissal, closure, or native failure, preserve the exact decision,
target, limits, and safe state; none accepts the target. `facts_reaction` and
its `dependency_projections` remain a separate branch and are never folded
into this projection.

If a simple understanding, rejection, abandonment, short clarification, or
standalone Issue/Plan has enough accepted truth and no durable Project is
needed, explain current truth and uncertainty and conclude without Alignment.
Do not manufacture a Project merely to host a record or a gate.

This step is complete when Alignment is accepted for the exact revision,
revised with its replacement gate pending, or returned as a typed stop/blocker;
no route or forward activity has begun.

## 6. Persist proportionately and return

Keep short discovery conversational. Create or extend the lazy Project bundle
only when another owner or session needs continuity, concrete References or
artifacts must survive, the inquiry is substantial, or the human asks for
durability. Persist only reader-ready governing meaning; omit empty Unknowns
Maps and artifact directories. When no Project is useful, pass accepted
outcome, constraints, evidence, and visible uncertainty conversationally to a
standalone Issue or Plan owner.

Return one bounded envelope and stop:

```text
Discover Requirements Result {
  outcome: no-op | discovered | aligned | revised |
           needs-human-judgment | blocked | stopped,
  entry_and_inquiry_boundary,
  current_truth_and_project_context,
  requirements_and_provenance,
  interpreted_references_and_artifacts,
  unknowns_and_safe_to_carry,
  probes_and_material_learning,
  alignment {
    state: not-needed | pending | approved,
    exact_revision?,
    native_decision_or_closure?,
    feedback_and_limits?,
  },
  alignment_projection? {
    interaction_kind: record-gate,
    exact_target,
    target_scope,
    target_revision,
    decision: approved | approved-with-feedback | denied | annotated |
              plaintext-feedback | dismissed | closed | command-failure |
              transport-failure | malformed-result,
    feedback_or_annotations?,
    unresolved_points?,
    declared_consequence,
    native_reference: reliable-reference | unavailable,
    accepted_reference: reliable-reference | unavailable,
    fidelity_or_transport_limits,
    safe_state: accepted | pending-revision | no-acceptance | stopped | blocked,
    projection: approved | meaning-change | reaction | denied | dismissed |
                closure | command-failure | transport-failure | malformed-result
  },
  facts_reaction? {
    exact_target_and_revision,
    temporary_goal_slug,
    items_in_input_order {
      stable_id, previous_text?, final_text?, removed, comment?,
      accepted, recommended_automated_verification?,
      automated_verification?, semantic_or_editorial_classification,
      owning_requirement_and_consequence?
    },
    facts_markdown?,
    native_reference: reliable-reference | unavailable,
    fidelity_or_transport_limits
  },
  dependency_projections? [
    dependency_projection {
      dependency,
      exact_dependency_outcome_or_return_kind,
      exact_dependency_envelope_and_state,
      evidence_and_limits,
      causal_owner?, reason?, boundary?, exact_causal_result?,
      revisit_condition?,
      native_reference: reliable-reference | unavailable,
      discover_projection:
        integrated | revised | needs-human-judgment | blocked |
        dependency-stopped
    }
  ],
  causal_return?,
  blocked_state? {
    kind: missing-context | missing-evidence | missing-preflight |
          dependency-blocked | native-command-failure |
          native-transport-failure,
    exact_boundary_or_target,
    dependency_or_failure_result?,
    partial_state?,
    repair_or_setup_recommendation
  },
  stop_reason? {
    kind: phase-stopped | dependency-stopped,
    exact_dependency_or_native_decision_or_partial_state?,
    revisit_condition?
  },
  recommendation_or_missing_judgment,
  caller_retained_route_gate_authority_acceptance_and_stop
}
```

`aligned` means the exact stable target passed Requirements Alignment;
`discovered` means the current inquiry returned useful truth without a gate;
`revised` carries changed meaning to the earliest owner; `needs-human-judgment`
names the missing human boundary; `blocked` preserves missing evidence,
authority, dependency, invalid preflight, or native transport state in
`blocked_state`; `stopped` preserves the exact phase or dependency stop in
`stop_reason`. A dependency result is never flattened: its outcome/return
kind, envelope, partial or terminal state, evidence, limits, causal
owner/reason/revisit, and native reference (or `unavailable`) remain in
`dependency_projections`. Recommendations are guidance only. Approval is not
a forward choice or authority. The separate `alignment_projection` preserves
the native Record Gate target, scope, revision, decision, reaction, references,
limits, and deterministic safe-state mapping; `alignment` remains the owner's
distilled gate state. This skill never starts Formalization, Delivery, mutation,
publication, cleanup, or another activity after return.

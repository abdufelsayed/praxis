# Coordinate Initiative — Maintainer Contract

This is the acceptance contract for the shipping
[Coordinate Initiative owner](SKILL.md). It is not runtime
context, and the owner must not link to or depend on it.


## Purpose and scope

Coordinate Initiative preserves one coherent strategic objective across at
least two independently governed Projects. It owns shared success conditions,
constraints and truth, Project relationships, dependency and ordering
rationale, visible strategic uncertainty, cross-Project learning, and the
Initiative's current recommendation. It does not become a delivery queue,
Project parent for convenience, global router, or source of implementation
authority.

Each Project retains its own Outcome, Requirements, Formalization, Issues,
Plans, gates, acceptance, authority, delivery, and stopping. An Initiative may
structurally contain Projects, but a Project has at most one Initiative parent.
Another Initiative may reference a Project without jointly owning it. A
standalone Project remains under `.praxis/projects/<project>/`; an
Initiative-owned Project lives beneath its Initiative. Stable Project identity
survives an accepted ownership move.

## Behavioral entry and invocation

Coordinate Initiative is internally reachable so an agent can reach it after the
human directly asks for coordination or accepts a recommendation to coordinate
multiple Projects. Behavioral entry remains human-selected forward work:

- `entry=direct-request` begins after the requester directly asks to coordinate an
  Initiative; or
- `entry=accepted-suggestion` begins after the requester accepts a bounded
  recommendation naming at least two credible Projects and their shared
  strategic reason.

Loading the package, matching its description, or an agent recommendation does
not satisfy entry. A declined suggestion returns `stopped` with no Initiative
claim. A single Project returns `no-op` with the Project owner and the missing
cross-Project condition; the package does not manufacture an Initiative.

The accepted host projection is:

```yaml
interface:
  display_name: "Coordinate Initiative"
  short_description: "Align shared meaning across Projects"
  default_prompt: "Use $coordinate-initiative to align this objective across these Projects."
policy:
  allow_implicit_invocation: false
```

The host launch text is presentation, not entry, procedure, authority, or
continuation.

## Inputs and exclusions

The entry brief identifies:

- the requester's strategic objective and desired consequence;
- at least two credible candidate Projects and each independent contribution;
- the candidate shared relationship, dependency, constraint, truth, or
  learning that makes coordination consequential;
- current Project boundaries, records, source evidence, References, and
  retained artifacts available to inspect;
- the requester's starting point, recognized uncertainty, and material limits; and
- the caller, current route, gate, authority, acceptance, and stop when the
  call is composed.

Project Requirements may be incomplete. Coordinate Initiative does not infer
or create missing Requirements, Outcomes, Issues, Plans, delivery status,
implementation approach, task lists, progress dashboards, or authority. A
candidate is not credible merely because it is large, durable, long-running,
or uses Evolutions.

The Initiative excludes:

- selecting, starting, formalizing, planning, implementing, reviewing, or
  accepting a Project;
- editing a Project's Requirements, Unknowns Map, Evolution Map, Evolutions,
  Issues, Plans, or delivery state on its behalf;
- turning dependencies or priority into execution order or automatic routing;
- replacing Project-local truth with a copied strategic specification;
- persisting information without a distinct purpose, consumer, lifecycle, and
  authority boundary; and
- treating approval, alignment, closure, recommendation, or a filesystem move
  as mutation or delivery authority.

## Behavioral contract

Coordinate Initiative owns this bounded cycle:

1. Confirm direct human entry or accepted recommendation and bind one
   cross-Project strategic boundary; return `no-op` for a lone Project or
   `stopped` for a declined suggestion.
2. Develop a judgeable strategic objective, success conditions, shared truth,
   Projects and relationships, ordering rationale, uncertainty, and
   recommendation as a product pair without flattening Project-local meaning.
3. Use only the supporting capability needed to close one shared uncertainty,
   with a complete bounded brief, exact return mapping, and caller-retained
   ownership.
4. Record dependency and priority as strategic guidance while preventing any
   adjacent Project work or automatic progression.
5. Return material learning to the earliest causal owner, repeat Alignment only
   when shared accepted meaning changed, and route Project-local learning to
   the exact Project owner.
6. Create or revise only lazy Initiative navigation records and links when a
   named future consumer, durable gate, or human request justifies them.
7. Recommend a split, supersession, or closure when the Projects no longer
   need one shared strategic judgment, waiting for the requester's choice before
   restructuring.
8. Pass Initiative Alignment and, when applicable, Initiative Closure through
   the exact native Plannotator interaction, map every native result, and stop.
9. Return one bounded envelope preserving the shared boundary, exact targets,
   evidence, limits, causal owner, human decision, and retained controls.

## Invariants

1. **Human entry.** A direct request or accepted bounded suggestion is required
   before coordination begins. Decline is a typed stop with no comprehension,
   alignment, or closure claim.
2. **Two-Project boundary.** Coordination requires at least two credible
   Projects advancing one strategic objective or sharing consequential truth,
   constraints, dependencies, relationships, or learning. A lone Project is a
   no-op.
3. **Shared ownership.** The Initiative owns only shared strategic meaning.
   Project Outcome, Requirements, specifications, gates, delivery, and
   acceptance remain with their Project owners.
4. **Judgeable boundary.** A durable Initiative has Strategic Objective,
   Success Conditions, Projects and Their Relationships, and Current
   Recommendation. Shared Constraints and Truth, Priority or Ordering
   Rationale, Visible Strategic Uncertainty, and Material Cross-Project
   Learning are conditional on real information.
5. **Provisional Project edges.** Candidate Project relationships may be
   provisional until their Project owners complete Requirements. The
   Initiative never prewrites Project-local Requirements or one combined
   specification.
6. **Relationship truth.** Every recorded dependency has direction, affected
   Projects, evidence or accepted basis, consequence, and a reason it matters
   to the Initiative. A dependency can guide judgment without starting work.
7. **Order is not authority.** Finishing, accepting, pausing, revising, or
   closing one Project never selects, starts, formalizes, plans, implements,
   reviews, or accepts another Project.
8. **Human route choice.** After Alignment, Coordinate Initiative recommends a
   next useful human choice and stops. It does not infer a Project route from
   order, approval, “continue,” or a Project result.
9. **Exact causal return.** Shared objective, success condition, cross-Project
   constraint, relationship, dependency, or ordering changes return to
   Coordinate Initiative. Project Outcome/boundary and Project-local
   Requirements, behavior, proof, or implementation changes return to their
   earliest exact owners.
10. **Proportional re-gating.** A material change to accepted Initiative
    meaning makes Initiative Alignment pending and foregrounds the semantic
    diff. Editorial, provenance-only, or local clarification does not repeat
    Alignment.
11. **No authority transfer.** Recommendations, supporting returns, records,
    approvals, native references, handoffs, and links carry no mutation,
    delivery, Project selection, commit, publication, deployment, or external
    authority.
12. **Lazy persistence.** Durable records exist only for named future
    consumers, cross-session continuity, exact discovery material, or an
    explicit human request. Each additional record type has a distinct purpose,
    consumer, lifecycle, and authority boundary.
13. **Ownership-shaped records.** A durable Initiative Brief links Project
    Briefs and shared References or artifacts without copying Requirements,
    Issues, Plans, activity history, or delivery state. Moving a complete
    Project bundle preserves its stable ID and changes no authority.
14. **Native gate fidelity.** Alignment and Closure pass the complete stable
    target through one selected Plannotator interaction. An approval accepts
    only the exact named revision and declared consequence.
15. **Native result distinction.** Approval, non-semantic approval feedback,
    meaning-changing feedback, annotation, denial, dismissal, closure, and
    tool failure remain distinct. A dismissed or failed interaction never
    becomes approval or an inferred human reaction.
16. **Closure by objective.** Initiative Closure judges `satisfied`, `rejected`,
    or `superseded`; Project completion is evidence, not a checklist. Closure
    grants no adjacent work.
17. **Stop after return.** The result explains the current state, supported
    recommendation or missing human judgment, limitations, and retained
    controls, then returns to the caller or human without continuing work.
18. **Lossless dependencies.** Every direct return preserves the callee's
    exact typed outcome or `return_kind`, partial state, causal owner,
    evidence/reaction limits, and stop state; a dependency return is never
    collapsed into Initiative meaning or an invented reaction.
19. **Bounded composition.** Supporting calls use the caller-local
    brief, return, authority,
    and no-loop rules. Research and Design Solution retain their own
    current-condition and preflight contracts; Coordinate Initiative keeps
    only the caller policy and exact causal consequence.
20. **Outcome-shaped returns.** `no-op`, dependency-only `blocked`, and
    `stopped` results omit an Initiative boundary unless one was already
    established and carry their exact owner, safe state, dependency/native
    state, and revisit condition instead of manufacturing shared meaning.
21. **Paired strategic interpretation.** Research findings and Design Solution
    results remain scoped inputs. Coordinate Initiative presents their concrete
    cross-Project consequence for human judgment before changing objective,
    success, relationship, ordering, shared constraints, or recommendation.

## Strategic boundary and synthesis

The working boundary carries:

```text
Initiative Boundary {
  strategic_objective,
  success_conditions,
  shared_constraints_and_truth?,
  projects_and_relationships,
  priority_or_ordering_rationale?,
  visible_strategic_uncertainty?,
  material_cross_project_learning?,
  current_recommendation,
}
```

For each Project relationship, the Initiative records the Project Brief link,
the independent contribution, relationship or dependency direction, affected
shared judgment, and evidence or accepted basis. It does not copy local
Requirements or implementation detail.

Shared truth is promoted only when it changes more than one Project or the
Initiative basis. Local preference, factual finding, implementation fact,
Issue, Plan, or Project Outcome remains local. A qualified, conditional,
conflicting, or uncertain reaction stays qualified at the scope actually
supported; it is not promoted into a universal Initiative rule.

If evidence shows no consequential shared objective, constraint, relationship,
dependency, or learning, return `no-op` or `split-recommended` rather than
retaining a historical portfolio. If the grouping is still plausible but the
human must decide, return `needs-human-judgment` with the exact alternatives
and consequence.

## Supporting capability contracts

Compose every supporting call and consume its return under caller-local rules below: one complete
brief, lossless return, no authority transfer, and no re-entry across the
Research–Interview edge. Each callee owns its intake contract; if Coordinate
Initiative cannot supply a required field, return `blocked` with the exact gap
before invocation. The caller policies below retain only this Initiative's
question and consequence.

- **[Interview](../interview/SKILL.md):** Call for one human-owned objective, grouping, priority,
  dependency meaning, tolerance, or recognition judgment, carrying the round
  identity (`boundary_id`, `origin=coordinate-initiative`,
  `return_to=coordinate-initiative`). `clarified`, `qualified`, `deferred`,
  `conflicting`, and `no-op` remain scoped human meaning; `needs-evidence`
  returns to its named owner; `blocked` and `stopped` remain exact. An answer
  never passes Alignment, selects a Project route, or authorizes an effect.
- **[Research](../research/SKILL.md):** Call for one factual claim whose truth can change more than
  one Project or their relationship. `answered` is scoped evidence with its
  provenance and limits; its strategic consequence is presented for human
  judgment before it changes shared meaning. Routing `no-op` is sufficient
  existing context, not factual support; `needs-human-judgment` returns the
  missing qualification; `unverified`, `conflicting`, `blocked`, and `stopped`
  remain exact. A Project-local finding returns to that Project's causal owner
  instead of becoming Initiative truth.
- **[Orient](../orient/SKILL.md):** Recommend one bounded settled strategic or system model only
  after ordinary-language acceptance. Comprehension informs participation;
  changed shared meaning returns to Coordinate Initiative, Project-local
  changes return to their owner, and a declined suggestion or dependency stop
  is `stopped`. Orient never decides shared meaning or passes a gate.
- **[Make Tangible](../make-tangible/SKILL.md):** Call when a relationship, comparison, strategy,
  dependency, or uncertainty cannot be judged faithfully in prose. A
  `constructed` or `revised` surface is usable with its exact identity,
  reaction, fidelity, transport, and retention limits; `no-op`, `blocked`, and
  `stopped` remain exact. A reaction is evidence, not Alignment or route
  selection.
- **[Design Solution](../design-solution/SPEC.md):** Call only for one consequential shared solution shape.
  Its `recommended`, `selected`, `qualified`, or `no-choice` result is shared
  strategic input, never an Initiative specification or implementation Plan.
  Integrate only the consequence the requester selects or qualifies;
  `revised` or `refused` returns to its causal owner or choice, and `stopped`
  remains exact. Missing preflight truth is a `blocked` owner return, never a
  guessed field.

### Lossless dependency projection

Every direct call is returned in one `dependency_projection` object containing
the callee's exact outcome or `return_kind`, decisive evidence and limits,
causal owner, revisit condition, and any caller-needed partial or safe state.
Native references, feedback, and artifact identity are retained when they are
part of the supported result; generic envelopes and execution history are not
transcribed. The projection is lossless for the caller's decision: Coordinate
Initiative adds only a supported shared consequence and never relabels a
dependency state as Initiative meaning.

- Orient preserves `return_kind=comprehension` and its
  `comprehension_state`, `return_kind=causal-return` and its owner/reason/
  boundary/dependency result/revisit condition, or `return_kind=stopped` and
  its `stop_reason`/exact partial state.
- Make Tangible preserves `no-op|constructed|revised|blocked|stopped`, exact
  artifact identity/version, reaction, conclusions, fidelity/transport,
  retention, and created artifact or checkout partial state. Blocked/stopped
  never becomes a reaction.
- Interview preserves the exact outcome, boundary, answer/reaction,
  consequences, limits, remaining questions, unresolved points, causal owner,
  and next boundary. Routing `no-op`, `blocked`, and `stopped` remain intact.
- Research preserves the exact outcome, boundary, observation, decisive
  evidence, source/version/freshness/environment/target scope, conflicts,
  limitations, implications, missing authority, and recommendation. Routing
  `no-op` and `needs-human-judgment` remain non-investigating states.
- Design Solution preserves its complete choice result, candidate status,
  evidence maturity/provenance, partial dependency state, causal owner, and
  revisit/repair condition.
- Plannotator preserves interaction kind, target/revision, declared
  consequence, native decision/closure, feedback, `native_reference` (the
  gate projection may name it `native_plannotator_reference`), and
  `accepted_reference: unavailable` when no reliable accepted reference exists.

The projection is complete only when the receiving owner can reconstruct a
partial, blocked, or stopped callee result without repeating the call or
inventing a human reaction.

### Plannotator

Direct target: [Plannotator](../plannotator/SKILL.md) and its contract
[SPEC](../plannotator/SPEC.md).

Call directly only for Initiative Alignment (`Record Gate`) or a distinct
Initiative Closure (`Result Gate`) whose complete claim is not already judged
by another complete Result Gate. State the interaction kind, exact stable
target and revision, judgment requested, declared provisional consequence,
and excluded authority before opening the native session.

Capture the exact native result before interpretation:

| Native result | Coordinate Initiative consequence |
| --- | --- |
| `approved` without feedback | Alignment or Closure accepted for the exact named revision; no adjacent authority. |
| `approved` with non-semantic feedback | Same acceptance; retain every note and limitation without another gate. |
| `approved` with meaning-changing feedback | Revise affected shared meaning, foreground the semantic diff, set the affected gate pending, and return `revised`. |
| `annotated` or plaintext feedback | Reaction only; return `needs-human-judgment` unless the feedback itself identifies a supported `revised` causal change. |
| denial | No acceptance; return `stopped` with exact decision, feedback, and safe state. |
| dismissal, empty closure, or human stop | No judgment; return `stopped` with exact native closure and no inferred reaction. |
| command, transport, malformed result, or session failure | Return `blocked` with exact target, failure, limitation, and Setup recommendation; never substitute conversational approval. |

Approval is never Implementation Authorization, Project selection, a route
choice, commit/publish/deploy authority, or permission to continue.

## Learning, causality, and re-alignment

Load [Learning and Return](../../references/learning-return.md) when evidence,
reaction, review, verification, or a Project result may change shared meaning.
The return must preserve observation, interpretation, signal kind,
evaluator context when material, decisive evidence, affected and still-valid
truth, uncertainty, causal owner, and supported recommendation.

The earliest causal owner is:

| Changed meaning | Owner and consequence |
| --- | --- |
| strategic objective, success condition, shared constraint/truth, Project relationship, dependency, or ordering rationale | Coordinate Initiative; revise shared basis and repeat Alignment when material |
| Project Outcome or Project boundary | that Project's Requirements Discovery; Initiative retains only the shared consequence |
| Project-local need, constraint, finding, preference, or problem understanding | that Project's Requirements Discovery |
| high-level working form or progressive strategy | affected Evolution or Evolution Map |
| detailed behavior, boundary, exclusion, dependency, or proof | affected Issue |
| implementation approach, mutation scope, risk, recovery, or authority | current Implementation Plan or Delivery |
| ready bounded result | human review, verification, and Result Acceptance |

Coordinate Initiative never absorbs a local finding just because it can place
it in a Brief. For a shared revision, show before/after meaning, evidence,
affected Projects, still-valid truth, and exact reopen owners. Make Initiative
Alignment pending only when accepted shared meaning, strength, scope, or
downstream obligation changed. A local clarification or provenance-only
enrichment does not re-gate.

## Records, effects, and lifetime

Direct record work uses the plugin-local [Record Foundations](../../references/records/foundations.md)
and [Discovery Records](../../references/records/discovery.md) references.
The lazy durable layout is:

```text
.praxis/initiatives/<initiative>/
├── brief.md
├── references.md
├── references/
├── artifacts/
└── projects/<project>/...
```

The Initiative Brief frontmatter has `kind: initiative`, a stable `id`, the
current `initiative_alignment` gate projection, and `disposition`. Its body
contains the required Strategic Objective, Success Conditions, Projects and
Their Relationships, and Current Recommendation sections; optional sections
appear only when meaningful. Project Briefs remain linked navigation roots.

Authorized effects are limited to human-selected Initiative records and their
links, including accepted ownership moves of complete Project bundles. The
package may inspect current source, records, References, artifacts, and native
results; it may revise working Initiative material inside the active
coordination loop. It cannot mutate Project-local governing records on their
behalf, perform implementation or external effects, or create authority.

Conversation, probe output, native transport, and reactions are transient unless
a named future consumer needs exact bytes or a durable gate projection. Retain
only shared governing meaning, decisive evidence pointers, material human
reaction, current limitations, and next recommendation. Persist another record
only when it has a distinct purpose, consumer, lifecycle, and authority boundary.

## Initiative Alignment

Alignment is a `Record Gate` over one complete stable Initiative Brief and
supporting target. It provisionally accepts the strategic objective, success
conditions, shared truth and constraints, Projects and relationships, ordering
rationale, and visible uncertainty. It does not accept Project Requirements,
Plans, delivery state, or authority.

Before calling Plannotator, the caller states the exact target and stable
revision, the `Initiative Alignment` claim, the declared provisional
consequence, excluded adjacent authority, and the prior
`accepted_reference` (or `accepted_reference: unavailable`). The result
envelope's `alignment` projection is the sole record of the native decision,
feedback, references, and fidelity or transport limits. Approval binds only
the exact content shown; when no reliable accepted reference exists, present
the complete current target instead of inventing a diff.

Meaning-changing feedback revises the causal shared record and repeats
Alignment. Non-semantic feedback remains attached to the accepted judgment.
Denial, dismissal, empty closure, human stop, or native failure never counts as
Alignment. After any accepted Alignment, explain the accepted scope,
recommend one next human choice, and stop.

## Initiative Closure

Closure is a distinct `Result Gate` only when a complete result does not already
carry the same closure claim. The target states the strategic objective,
success conditions, relevant Project evidence and limits, final relationships,
retained learning, exact target and stable revision, declared provisional
consequence, excluded authority, prior `accepted_reference` (or
`accepted_reference: unavailable`), and one disposition: `satisfied`,
`rejected`, or `superseded` with a replacement link when applicable. The
result envelope's `closure` projection is the sole record of the native
decision or closure, feedback, references, disposition, and fidelity or
transport limits.

An accepted closure marks the Brief `disposition=closed`, preserves final
relationships and retained learning, and grants no new Initiative, Project,
cleanup, publication, or delivery activity. Meaning-changing feedback reopens
the closure basis; reaction, denial, dismissal, or native failure returns the
typed non-closure result. Closure is judged by objective, not by checking off
the original Project list.

## Effects, authority, and persistence

Approval, recommendation, Project membership, dependency, ordering, native
reference, handoff, and filesystem movement are not authority. Human route
choices and effect instructions remain separate. A caller's or human's
explicit Project request starts the Project's own entry and authority checks;
Coordinate Initiative does not infer them from its records.

When a material shared revision crosses an accepted transition, affected Plan
authority is no longer active, in-flight mutation stops safely, the causal
owner is revised, affected gates repeat, and fresh Implementation Authorization
is required before resumption. Coordinate Initiative may identify this
consequence but does not control another owner's Plan.

## Result envelope

The executable result is:

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

`alignment` and `closure` are explicit native-gate projections. They are not
summaries of or substitutes for the optional `dependency_projection` used for
other direct calls. `exact_target` identifies the complete Initiative Brief
(and, for Closure, its supporting closure-evidence target) shown to
Plannotator; `target_revision` binds the judgment to that stable revision.
`prior_accepted_reference` is the reliable accepted baseline before the
interaction, while `current_accepted_reference` is the reliable accepted
baseline after mapping it; either is `unavailable` when no reliable reference
exists. Preserve the exact native `decision`, every feedback or annotation,
all fidelity or transport limits, the declared consequence, and excluded
authority. Closure additionally carries its exact disposition and optional
replacement; a meaning-changing reaction or native failure leaves the
affected gate pending and sets `regate_required` accordingly.

Omit `alignment` and `closure` when their native gates were not needed; a
present subobject therefore always carries the complete fields above.

Outcome-specific payloads prevent invented Initiative meaning. `no-op` carries
`no_op { reason, project_owner_or_sufficient_context,
missing_cross_project_condition }` and no Initiative claim. `blocked` carries
`blocked { kind, missing_boundary_or_authority, dependency_projection?,
safe_state, revisit_condition }` and only already-established boundary fields.
A dependency-only result carries `dependency_projection` and the applicable
`blocked`, `stopped`, or `needs-human-judgment` outcome without manufacturing a
shared boundary. `stopped` carries
`stop { reason, exact_dependency_or_native_state?, safe_state }`, no inferred
reaction, and no boundary unless one was already reliably established.
A dependency-only return may retain `outcome=no-op` when the callee reports
sufficient existing context; otherwise its outcome is `blocked`, `stopped`, or
`needs-human-judgment`. `coordinated`, `aligned`, `revised`,
`split-recommended`, and `closed` require the complete boundary fields needed
for their claim.

`no-op` means one Project or already-sufficient context; `coordinated` means a
useful shared boundary without a gate; `aligned` means exact Alignment
approval; `revised` carries changed shared meaning and a pending gate;
`needs-human-judgment` preserves an unresolved strategic choice or reaction;
`split-recommended` names an incoherent grouping; `closed` records an accepted
objective disposition; `blocked` preserves missing evidence, authority,
dependency, or native transport; and `stopped` preserves a human or dependency
stop. The result always stops and never advances a Project.

## Representative conformance cases

1. **One Project only.** The requester names one Project and no consequential
   shared relationship. Return `no-op`, name the Project Requirements owner,
   and create no Initiative.
2. **Shared objective, independent Projects.** Two Projects have distinct
   Outcomes but share an objective and a consequential contract. Build a
   boundary with separate contributions and a directional relationship; keep
   local Requirements out of the Initiative.
3. **Human declines recommendation.** A recommendation is declined. Return
   `stopped` with `entry=declined-suggestion` and no gate, record, or next work.
4. **Shared versus local truth.** One finding changes only Project A's
   implementation constraint. Return it to Project A; do not promote it as
   Initiative truth. A finding changing the shared relationship updates the
   Initiative and names every affected Project.
5. **Dependency without work start.** The Initiative records Project B should
   understand a shared data contract before Project C. It recommends the next
   human choice and stops; it does not invoke B or C.
6. **Conflicting priorities.** Projects have incompatible priority claims.
   Preserve both, call Interview for the strategic choice owned by the requester, and
   return `qualified` meaning or `needs-human-judgment` without inventing a
   weighted score or execution order.
7. **Cross-Project learning.** Evidence changes a shared success condition.
   Show the semantic diff, invalidate affected descendant authority, set
   Alignment pending, and route each Project-local consequence to its exact
   owner.
8. **Partial re-alignment.** A source update changes only one relationship.
   Keep unaffected shared truth, foreground the affected diff, and repeat only
   Initiative Alignment for the changed basis.
9. **Incoherent grouping.** Projects no longer share a consequential judgment.
   Return `split-recommended` with alternatives and wait for the requester before
   moving bundles or closing the Initiative.
10. **Closure by objective.** Project completion evidence is mixed and one
    Project is unnecessary. Present the objective and evidence through Closure
    and preserve `satisfied`, `rejected`, or `superseded`; never treat the
    original list as a checklist.
11. **Plannotator dismissal.** A native Alignment or Closure session is
    dismissed or empty. Return `stopped` with exact target and native state,
    no acceptance, and no fallback interaction.
12. **Native approval feedback.** Approval with non-semantic notes retains
    acceptance and every note; meaning-changing notes return `revised` and
    reopen only the affected gate.
13. **Native failure.** A missing CLI, malformed result, or transport failure
    returns `blocked` with Setup recommendation, exact limitation, and no
    conversational approval.
14. **Current-condition research.** A shared factual call carries the current
    configuration, version, environment, target conditions, freshness, and
    falsifier; `no-op` and `needs-human-judgment` route without claiming
    evidence, while `revised`, `blocked`, and `stopped` preserve their exact
    dependency states.
15. **Complete solution preflight.** A shared Design Solution call is refused
    before invocation when current evidence provenance/revision/freshness/
    limits or alternative statuses are missing; a complete brief labels every
    alternative `feasible`, `current-shape`, `caller-accepted`, or
    `provisional`.
16. **Lossless dependency state.** Orient comprehension/causal/stopped,
    Make Tangible partial artifact state, Interview safe state, and Research
    partial/blocked/stopped state remain reconstructable in
    `dependency_projection` without inferred reactions or Initiative claims.
17. **Outcome-specific gate payload.** Alignment and Closure record the exact
    Initiative Brief (and Closure evidence) target and revision, declared
    consequence, excluded authority, prior and current accepted references,
    native Plannotator reference, exact native decision, feedback, and
    fidelity/transport limits. Closure also records its exact disposition and
    replacement when superseded. Every unavailable reference is explicit as
    `unavailable`; these gate fields are carried directly in their subobjects,
    not hidden in `dependency_projection`. A no-op, dependency-only blocker,
    or stop omits an invented Initiative boundary.

## Runtime resources and source basis

The target package has exactly this sparse tree:

```text
skills/coordinate-initiative/
├── SKILL.md
├── SPEC.md
└── agents/openai.yaml
```

It has no local references, scripts, assets, fixtures, templates, MCP server,
host hook, or required integration. It loads shared
[Praxis Control](../../references/control.md) at entry and directly loads only
these additional accepted shared runtime references:
[collaboration](../../references/collaboration.md),
[learning-return](../../references/learning-return.md),
[foundations](../../references/records/foundations.md), and
[discovery](../../references/records/discovery.md). It directly calls only
the five sibling capabilities named in Supporting capability contracts plus
Plannotator for its two native gates. Those calls are assembly dependencies;
transitive calls and references remain inside their owning packages.


This contract is maintained against the plugin-local [Premise](../../docs/concepts/premise.md),
[System](../../docs/concepts/system.md), [Control](../../docs/concepts/control.md),
[Context](../../docs/concepts/context.md), and [Work and routes](../../docs/concepts/work.md)
owners, the [skill-package contract](../../docs/maintainers/skill-packages.md),
the [conformance and release contract](../../docs/maintainers/conformance-and-release.md),
the direct sibling `SPEC.md` contracts, and the exact runtime shared references
listed above. These plugin-local files are the complete maintainer source basis;
no design workspace, history, or non-plugin file is required to use, review,
validate, or maintain this package.

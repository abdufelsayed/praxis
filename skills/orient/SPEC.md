# Orient — Maintainer Contract

## Purpose

Orient teaches one bounded settled model so a human can understand, inspect,
operate, or judge the named subject. It grounds the explanation in current
authoritative evidence, starts from the human's existing knowledge, teaches
the smallest useful structure, adapts through questions and reactions, and
returns an honest comprehension state. Orient retains the learning objective,
teaching order, examples, checks, and interpretation; the caller retains its
governing question, route, gate, authority, acceptance, and stopping rule.

## Invocation, entry, inputs, and exclusions

Orient is model-invoked so a direct human request or an explicitly accepted
bounded suggestion can reach it. Behavioral entry is human-selected
supporting work: a caller may recommend one bounded orientation, but teaching
begins only after the human accepts it in ordinary language. A direct human
request may begin the same capability. Implicit host loading never satisfies
that entry condition.

The entry brief contains one learning objective, the human's demonstrated or
inferred starting point, the settled observed or accepted model, authoritative
source and evidence anchors, consequential mechanisms and boundaries,
failures, limitations, uncertainty, and the caller's return context when
composed. Orient asks at most one calibration question when its answer would
materially change the explanation. A missing objective, starting point,
settled model, or evidence basis that cannot be supplied without guessing
returns `return_kind=comprehension`, `comprehension_state=orientation-blocked`,
and the exact missing boundary.

Orient excludes discovery of needs or preferences, governing specification,
solution selection, implementation planning, mutation, acceptance, route
selection, authority grant, durable record writing, and automatic progression.
It does not create a Project, Requirement, Evolution, Issue, Plan, route, gate,
or comprehension receipt. It does not force teaching after refusal, treat
refusal as understanding, or turn disagreement into a misconception.

## Behavioral contract

Orient owns this bounded cycle:

1. Confirm direct request or accepted suggestion and bind one learning
   objective, starting point, settled model, evidence anchors, and limits.
2. Keep teaching separate from questions that could change governing truth;
   return those questions to their exact causal owner.
3. Return one consequential solution choice through a complete current
   preflight to Design Solution.
4. Ground the model in current source, interfaces, configuration, tests,
   runtime behavior, authoritative references, examples, and explicit
   uncertainty; call Research for one factual gap.
5. Choose ordinary conversation or one proportionate constructed teaching
   surface through Make Tangible.
6. Teach in a usable order, run optional applied understanding checks, correct
   misconceptions, and adapt only the affected depth.
7. Return contradictory evidence or changed governing truth to its causal
   owner; keep explanation and temporary surfaces ephemeral.
8. Return one bounded envelope with an honest comprehension state, causal
   return, or stop reason, with evidence and limitations, then stop.

## Invariants

1. Orient starts only from a direct human request or accepted bounded
   suggestion. It records `entry=direct-request` or
   `entry=accepted-suggestion` at entry and preserves it on every return. A
   declined suggestion returns `return_kind=stopped`,
   `entry=declined-suggestion`, and no comprehension or acceptance claim.
2. Every run has exactly one bounded learning objective, a human starting
   point, a settled model, authoritative anchors, material limits, and a
   caller/return context when composed, or returns
   `return_kind=comprehension`, `comprehension_state=orientation-blocked`, and
   the missing boundary.
3. Orient teaches current behavior, accepted meaning, approved rationale, or
   delivered mechanism; intended future behavior is labeled as such and never
   presented as current truth.
4. A question whose answer could change a need, preference, constraint,
   desired outcome, or problem truth returns as `return_kind=causal-return` to
   Requirements Discovery; a question that could change governing behavior,
   boundaries, exclusions, or proof returns as `causal-return` to Formalization;
   a fixed behavior with an unsettled implementation approach returns as
   `causal-return` to the Plan owner.
5. Teaching questions test the human's understanding of the current model;
   they do not discover requirements, elicit preferences, negotiate behavior,
   choose solutions, revise governing records, or relabel disagreement.
6. A consequential architecture, domain-model, ownership, workflow,
   contract, integration, transition, operations, trust, failure, or
   changeability choice stops the affected teaching branch and requires a
   complete Design Solution preflight. Missing required fields are
   returned as `return_kind=causal-return` with the exact field, owner,
   evidence, and revisit condition, without a Design Solution call or
   continued branch.
7. Design Solution receives an explicit brief with a stable solution-choice
   `boundary_id`, exact learning context, `active_caller`,
   `earliest_causal_owner`, accepted Requirements/specifications with source,
   revision, provenance, and limits, current relevant evidence with provenance,
   revision/freshness, and limits, one consequential choice and its
   conditions/consequences, territory/actors/scenarios/boundaries, hard
   Requirements/safety/invariants/compatibility duties, evidence standard and
   authority, feasible/current/caller-accepted/provisional alternatives, and
   caller-retained route/gates/authority/acceptance/stop. Its top-level
   `recommended`, `selected`, `qualified`, `no-choice`, `revised`, or
   `refused` result returns intact as `return_kind=causal-return` to the named
   owner; `stopped` returns as `return_kind=stopped`. Orient never chooses or
   collapses it.
8. Repository teaching inspects current source, interfaces, configuration,
   tests, and runtime behavior far enough to support the objective. Other
   topics use authoritative references and examples closest to the question.
9. Sourced fact, accepted meaning, inference, and uncertainty remain
   distinct. Search, file count, familiarity, polished explanation, or source
   count is not proof by itself.
10. Research is called only for one bounded factual gap that can block or
    materially qualify the model. The call carries `boundary_id`, claim,
    territory, freshness, consequence, evidence bar, cheapest falsifier,
    `origin=orient`, `return_to=orient`, and `peer_edge_crossed=false`.
    `no-op` uses only sufficient existing context; `answered` evidence is
    integrated; `unverified`/`conflicting` limits remain visible and block
    only when an honest model is impossible; `revised` gets a new factual
    boundary or returns as `causal-return` when governing truth changed;
    `needs-human-judgment` returns the missing qualification to its owner;
    `blocked` preserves exact Research state and becomes
    comprehension/orientation-blocked only when the remaining evidence cannot
    support the objective at its evidence bar; and `stopped` returns as
    top-level `stopped`.
11. Research retains evidence selection and synthesis; Orient retains the
    learning objective, teaching, interpretation, and stopping. Orient does
    not open-endedly investigate or use a factual gap to discover governing
    truth.
12. Ordinary conversation, short examples, text diagrams, small state tables,
    and source walkthroughs are the default teaching medium. Make Tangible is
    called only when a constructed visual, navigable view, simulation,
    annotated surface, multi-state walkthrough, or quiz has a substantial
    fidelity/interaction problem of its own.
13. Make Tangible receives `question`, `learning_objective`, conceptual
    content, `accepted_truth_and_evidence` with anchors/status/limits,
    audience/starting point, primary judgment, medium/fidelity, requested
    reaction, current authority, named consumer/lifetime, `caller=orient`,
    `return_to=orient`, and the result shape. `no-op` uses ordinary explanation;
    `constructed`/`revised` preserve exact artifact identity/version, reaction,
    supported conclusions, fidelity/transport limits, the returned retention
    state, and the caller-supplied lifetime; `blocked` preserves exact target
    and artifact/checkout state and
    becomes comprehension/orientation-blocked only when ordinary surfaces
    cannot meet the objective and fidelity; and `stopped` returns top-level
    `stopped` without an inferred reaction. Make Tangible retains construction,
    verification, reaction, and lifecycle ownership.
14. Orient does not call Plannotator directly. A native surface selected by
    Make Tangible remains its responsibility, and Orient interprets only the
    returned reaction and fidelity limits.
15. Teaching follows a usable model: purpose/owners/primary flow, decisive
    relationships, concrete examples or source anchors, one difficult
    mechanism or failure, then return to the whole. Repository order and
    exhaustive file tours are not teaching structures.
16. Understanding checks ask applied reasoning: predict a transition, explain
    a mechanism, distinguish a boundary, apply the model, or identify
    uncertainty. A human may skip a lightweight check. A constructed quiz
    requires explaining its purpose and human choice unless demonstrated
    competence is already an accepted result claim.
17. Wrong answers reveal a misconception, lead back to the relevant model or
    evidence, and permit a changed scenario on retry. Checks create no score,
    grade, learner profile, transcript, comprehension receipt, authority,
    implementation proof, Review/Verify substitute, gate, or acceptance.
18. Contradictory evidence, missing governing meaning, a new preference, and
    disagreement with accepted truth are distinguished from misunderstanding
    and returned to the exact causal owner. Orient does not update governing
    records, implementation, documentation, route, or acceptance.
19. Orient is read-only. Safe local inspection and disposable teaching
    surfaces may occur inside existing authority; product mutation, external
    state, publication, persistence, credentialed or paid effects, and other
    consequences remain with their owning capability and exact authority.
20. Conversation carries explanation by default. A teaching surface is
    disposable unless a named future consumer needs its exact identity,
    version, reaction, fidelity, owner/path, disposition, reaction export,
    preservation/removal evidence, and lifetime. Durable reader guidance returns
    as a causal-return to the separate Write Docs entry with reader, purpose,
    current-source anchors, exact surface, documentation authority, and revisit
    condition; Orient does not invoke or continue it.
21. Completion requires the bounded objective to be taught from current
    evidence, material uncertainty to remain visible, and the human to be able
    to continue. The result envelope always carries `entry`, the learning
    objective, starting point, any model taught, source anchors/truth status,
    current Research boundary/exact result when used, checks, limits, complete
    or partial surface state, caller-retained controls, and exactly one
    `return_kind`: comprehension with one
    `comprehension_state`, causal-return with an exact owner/reason/boundary and
    result, or stopped with a `stop_reason`; it then stops without adjacent
    work.

## Outcomes and observable return

Orient's comprehension states are:

- `explained` — the necessary model and evidence were presented;
- `understanding-observed` — the human applied the model successfully;
- `misconception-unresolved` — a consequential misunderstanding remains;
- `understanding-unconfirmed` — no explicit check was needed or completed; and
- `orientation-blocked` — missing evidence or an unreliable model prevents an
  honest explanation.

Owner and dependency routes are not comprehension states. A human stop,
declined suggestion, or dependency stop is a top-level `stopped` return with
no inferred comprehension or acceptance. The semantic envelope is:

```text
Orient Result {
  return_kind: comprehension | causal-return | stopped,
  entry: direct-request | accepted-suggestion | declined-suggestion,
  learning_objective,
  starting_point,
  model_taught?,
  source_anchors_and_truth_status,
  research_boundary_and_exact_result?,
  surface {
    identity_and_version,
    human_reaction,
    supported_conclusions,
    fidelity_or_transport_limits,
    retention_state {
      disposition,
      named_consumer?,
      owner_and_path?,
      exact_version?,
      reaction_export?,
      lifetime,
      preservation_or_removal_evidence?
    }
  }?,
  checks_and_interpretation,
  misconceptions_corrected?,
  uncertainty_and_limitations,
  comprehension_state?,  # required only for return_kind=comprehension
  causal_return? {        # required only for return_kind=causal-return
    owner,
    reason,
    boundary?,
    exact_dependency_or_route_result,
    revisit_condition?
  },
  stop_reason? {           # required only for return_kind=stopped
    kind: human-stop | declined-suggestion | dependency-stopped,
    exact_partial_state?
  },
  caller_retained_route_gate_authority_acceptance_and_stop
}
```

Select the first applicable comprehension state in this order:
`orientation-blocked`, `misconception-unresolved`, `understanding-observed`,
`understanding-unconfirmed` when no applied check completed, then `explained`.
`orientation-blocked` names the missing evidence or boundary and does not
claim that the model was made judgeable. `understanding-observed` is returned
only when an applied check succeeded. `understanding-unconfirmed` is honest
when no check was needed or completed. A caller interprets all comprehension
states; none passes a gate, proves implementation, grants authority, or
accepts a result. A causal-return preserves the exact owner and dependency
result rather than relabeling it as comprehension.

## Effects, authority, persistence, and lifetime

Orient may inspect current source and evidence, run safe read-only checks, and
compose a disposable local teaching surface. It has no product, repository,
governing-record, external, publication, commit, deployment, or acceptance
authority. Any effect is classified at its actual boundary and remains with
the owning workflow and exact human authorization.

Messages, explanations, checks, and candidate teaching material are
conversation-first and transient. Make Tangible owns artifact construction,
verification, reaction, fidelity, and lifecycle. Orient returns the complete
retained surface state: exact identity/version, reaction, supported
conclusions, fidelity/transport limits, disposition, named consumer,
owner/path, reaction export, lifetime, and verified preservation/removal
evidence. Remove a disposable surface when its named consumer no longer needs
it. Orient creates no transcript, scorecard, learner profile, comprehension
receipt, report, record envelope, or learning diary.

Future-reader documentation is a separate Write Docs concern. A request for
durable guidance returns as `causal-return` to its separate entry with reader,
purpose, current-source anchors, exact surface when present, documentation
authority, and revisit condition. Orient does not invoke, write, publish,
commit, release, deploy, or continue the documentation workflow.

## Composition and direct calls

| Direct target | Trigger and bounded request | Return consumed | Ownership retained by Orient |
| --- | --- | --- | --- |
| [Research](../research/SPEC.md) | One bounded factual gap can block or materially qualify the settled model. Pass `boundary_id`, exact claim, territory, freshness, consequence, evidence bar, cheapest falsifier, `origin=orient`, `return_to=orient`, `peer_edge_crossed=false`, and the result shape. | `no-op` uses only sufficient existing context; `answered` evidence is integrated with provenance; `unverified`/`conflicting` preserve exact results and continue only while remaining evidence meets the objective's evidence bar; `revised` gets a new factual boundary or returns `causal-return` to the exact governing owner; `needs-human-judgment` returns the missing qualification as `causal-return`; `blocked` preserves exact state and becomes comprehension/`orientation-blocked` when remaining evidence misses the bar; and `stopped` returns top-level `stopped`, preserving exact state. | Learning objective, teaching, interpretation, causal return, and stopping. Research does not re-enter Orient or choose its route. |
| [Design Solution](../design-solution/SPEC.md) | A consequential solution choice appears during teaching after the complete preflight is concrete. Pass a stable solution-choice `boundary_id`; exact learning objective, starting point, settled model, anchors, and limits; `active_caller`; `earliest_causal_owner`; accepted Requirements/specifications with source, revision, provenance, and limits; current relevant evidence with provenance, revision/freshness, and limits; one exact choice with consequence/applicability; territory, actors, scenarios, boundaries; hard Requirements, safety boundaries, invariants, compatibility duties; evidence standard and authority; feasible/current/caller-accepted/provisional alternatives; and caller-retained route/gates/authority/acceptance/stop. | `recommended`, `selected`, `qualified`, `no-choice`, `revised`, or `refused` returns intact as `return_kind=causal-return` with owner, reason, boundary, exact result, and revisit/repair condition; `stopped` returns top-level `stopped` with exact state. | Teaching objective, comprehension interpretation, caller route/gate/authority/acceptance, and stopping. Design Solution does not teach, implement, or advance the caller. |
| [Make Tangible](../make-tangible/SPEC.md) | Prose cannot make the model, workflow, transition, or check judgeable and a constructed surface has a material fidelity problem. Pass `question`, `learning_objective`, conceptual content, `accepted_truth_and_evidence` with anchors/status/limits, audience/starting point, primary judgment, medium/fidelity, requested reaction, current authority, named consumer/lifetime, `caller=orient`, `return_to=orient`, and the result shape. | `no-op` uses ordinary explanation; `constructed`/`revised` returns exact artifact identity/version, reaction, supported conclusions, fidelity/transport limits, and retention state, which Orient combines with the caller-supplied lifetime; `blocked` preserves exact target and artifact/checkout state and becomes comprehension/`orientation-blocked` when ordinary surfaces cannot meet the objective and fidelity; and `stopped` returns top-level `stopped` without an inferred reaction. | Learning objective, teaching order, interpretation of reaction, comprehension state, and stopping. Make Tangible owns construction and lifecycle and may select Plannotator internally. |

A `causal-return` always includes the exact owner, reason, boundary when one
exists, revisit condition, and route or dependency result. It carries no
comprehension state. A dependency `blocked` result preserves exact partial
state and becomes `return_kind=comprehension`,
`comprehension_state=orientation-blocked`, only when remaining evidence or
ordinary surfaces cannot meet the objective's evidence/fidelity bar; otherwise
the precise limitation remains visible and the ordinary path is used. A
dependency `stopped` result always becomes top-level
`return_kind=stopped` with no inferred reaction or comprehension. No mapping
grants authority, selects a route, accepts a result, or re-enters Orient.

Write Docs is a durable-reader route, not an Orient direct call: when a named
future reader needs persistent guidance, return the reader, purpose,
current-source anchors, exact surface, and documentation authority to
[Write Docs](../write-docs/SPEC.md) at its own entry.

## Runtime references and package tree

Orient needs no skill-local or shared runtime reference. Entry, teaching
order, ownership boundaries, direct calls, checks, effects, persistence,
result, and stopping remain inline because every reachable branch needs them.
There are no scripts, assets, fixtures, templates, wrappers, hooks, or
required integrations. The exact sparse tree is:

```text
skills/orient/
├── SKILL.md
├── SPEC.md
└── agents/
    └── openai.yaml
```

## Invocation and host projection

The package is model-invoked with this exact frontmatter:

```yaml
---
name: orient
description: "Orient the human to one settled model. Use after a direct teaching request or accepted orientation suggestion whose purpose is comprehension."
---
```

Its host projection is:

```yaml
interface:
  display_name: "Orient"
  short_description: "Teach one bounded settled mental model"
  default_prompt: "Use $orient to teach this settled model."
policy:
  allow_implicit_invocation: true
```

Host presentation adds no entry, route, effect, authority, dependency, or
continuation. The description remains a concise comprehension trigger; the
body owns human consent, procedure, return, and stopping.

## Package-specific conformance cases

1. A direct request starts Orient; an unaccepted or declined suggestion
   returns `return_kind=stopped`, `entry=declined-suggestion`, and no teaching
   or comprehension/acceptance claim.
2. A bounded caller brief with one objective, starting point, settled model,
   source anchors, and limits begins without an intake questionnaire.
3. A missing required preflight field returns `causal-return` before Design
   Solution; a complete brief includes a stable solution-choice `boundary_id`
   and every required field, and every Design Solution result returns intact
   through the exact causal/stopped envelope.
4. A question that could change a need, preference, constraint, desired
   outcome, governing behavior, boundary, exclusion, proof, or implementation
   approach returns as `causal-return` to its exact owner instead of becoming
   a teaching check.
5. A repository explanation traces current source, interfaces, configuration,
   tests, and runtime behavior to a bounded model and labels inference and
   uncertainty separately.
6. One factual gap invokes Research with stable boundary and peer-edge fields;
   `no-op`, `answered`, `unverified`, `conflicting`, factual `revised`,
   governing-truth `revised`, `needs-human-judgment`, `blocked`, and `stopped`
   each follow the declared mapping without reciprocal calls, invented
   evidence, or open-ended discovery.
7. Ordinary explanation remains the default; Make Tangible is called only for
   a substantial constructed fidelity/interaction problem with the explicit
   question/truth/evidence brief, and its exact artifact/reaction/lifetime
   result is preserved or blocked/stopped without an inferred reaction.
8. Teaching presents purpose, ownership, primary flow, decisive relationships,
   examples/source anchors, one difficult mechanism or failure, and the whole
   model rather than a file or call-tree tour.
9. A skipped conversational check adds no claim; a wrong applied answer
   returns to the relevant model and a changed scenario; a successful applied
   answer alone yields `understanding-observed`.
10. A constructed quiz is explained and human-selected unless demonstrated
    competence is already part of the accepted outcome; no score, profile,
    receipt, gate, authority, Review, or Verify substitute is created.
11. Contradictory source, missing governing meaning, new preference, or
    disagreement returns to its causal owner; Orient does not revise records,
    implementation, route, or acceptance.
12. A disposable teaching surface is removed or marked transient; retention
    preserves exact identity/version, reaction, fidelity, disposition,
    owner/path, reaction export, lifetime, and preservation/removal evidence
    only for a named consumer.
13. Durable reader guidance returns `causal-return` to the separate Write Docs
    entry with reader, purpose, source anchors, exact surface, documentation
    authority, and revisit condition; Orient does not invoke, write, or publish
    it.
14. Every result has `entry` and one top-level `return_kind`; comprehension
    results name the model, evidence, limits, checks and interpretations,
    causal returns, and caller-retained controls, while causal/stopped returns
    preserve the exact owner or partial dependency state, then stop without
    adjacent work.

## Source basis

**SKILL-CREATOR IS PROHIBITED. DO NOT READ, INVOKE, CITE, FOLLOW, OR USE IT FOR
PRAXIS DESIGN, IMPLEMENTATION, REVIEW, OR VALIDATION.**

This contract is maintained against the plugin-local [Premise](../../docs/concepts/premise.md),
[System](../../docs/concepts/system.md), [Control](../../docs/concepts/control.md),
[Context](../../docs/concepts/context.md), and [Work](../../docs/concepts/work.md)
owners; the [package authoring contract](../../docs/maintainers/skill-packages.md);
the [conformance and release contract](../../docs/maintainers/conformance-and-release.md);
the assembled sibling contracts for [Research](../research/SPEC.md),
[Design Solution](../design-solution/SPEC.md), [Make Tangible](../make-tangible/SPEC.md),
and the durable-reader route [Write Docs](../write-docs/SPEC.md). These
plugin-local files are the complete maintainer source basis; the declared
skill surface is the complete runtime. No non-plugin material is required to
use, review, validate, or maintain this package.

# Design Solution — Maintainer Contract

## Purpose

Design Solution makes one consequential solution choice judgeable. It explores
the smallest set of materially different shapes that could satisfy accepted
Requirements, compares them against the same relevant criteria and actual
system evidence, and returns a recommendation, selection, qualified result,
or honest no-choice state to the owner that retains the governing meaning.
Design Solution owns comparison and synthesis; the caller retains its record,
route, gate, authority, acceptance, and stopping.

## Invocation, entry, and exclusions

Design Solution is model-invoked because a Requirements, Evolution, Issue,
Plan, or other active owner may expose one consequential solution choice. A
direct human request may start it when the same complete bounded brief is
available. Invocation is independent of behavioral entry and grants no effect
authority.

Entry binds one stable `boundary_id` around one exact open choice, accepted
Requirements or specifications, current relevant evidence with provenance and
limits, why the choice matters, the territory and boundaries, hard constraints
and compatibility duties, the evidence standard and authority for any probe,
and the caller's retained route, gates, authority, acceptance, and stop. The
brief names the earliest causal owner that would change if the candidate were
accepted.

Design Solution excludes general discovery, requirements ownership, route
selection, formal record ownership, implementation planning, file or command
lists, migration checklists, acceptance, mutation, publication, deployment,
weighted quality scoring, automatic progression, and a standalone Decision
record. A local reversible technical choice that preserves accepted
specifications remains with the Plan. A request with missing comparison-
changing context is refused with the missing boundary rather than guessed.

## Behavioral contract

Design Solution owns this bounded sequence:

1. Bind the caller, exact choice, consequence, governing owner, boundaries,
   accepted truth, evidence bar, and retained authority.
2. Classify the earliest record affected and return a misclassified question
   to that causal owner.
3. Separate hard constraints from negotiable criteria and form the smallest
   credible set of materially different candidates.
4. Select only reasoning lenses that can change the comparison and test each
   viable candidate against the same relevant criteria.
5. Close factual, perceptual, and human-owned gaps through bounded direct
   calls while retaining comparison and synthesis.
6. Recommend, preserve a valid human selection, qualify an unresolved tradeoff,
   return a revised meaning, or report that no consequential choice remains.
7. Return fresh design context with evidence, consequences, uncertainty,
   causal owner, and revisit condition, then stop.

## Invariants

1. Every run has one stable `boundary_id`, exact choice, caller, earliest causal
   owner, accepted Requirements or specifications, boundaries, consequence,
   and evidence bar, or returns `refused` with the missing boundary.
2. A changed need, constraint, tolerance, or preference returns to Requirements
   Discovery; changed high-level behavior returns to the Evolution; changed
   detailed behavior, interface, failure, exclusion, or proof returns to the
   Issue; and a technical shape that preserves specifications remains with
   the Plan. Valid accepted meaning owned elsewhere returns `revised` with its
   causal owner, retained evidence, and revisit condition; an invalid or
   unidentifiable entry returns `refused` with the missing boundary.
3. A contained, reversible technical choice inside an approved Plan that
   preserves accepted specifications stays local and grants no new authority;
   it does not receive ceremonial solution comparison.
4. Criteria derive from accepted Requirements and current system constraints;
   generic architecture qualities never override them.
5. Hard Requirements, safety boundaries, invariants, and compatibility duties
   eliminate invalid candidates before negotiable tradeoffs are compared.
6. Design Solution does not compute a weighted quality score or let convenience
   outweigh a governing constraint.
7. Candidates differ in a meaningful boundary, contract, owner, failure mode,
   observable behavior, or material tradeoff; cosmetic variants do not count.
8. The candidate set is the smallest one that exposes the choice, normally two
   or three shapes plus a viable current shape. One serious shape returns
   `no-choice` without artificial alternatives. Zero viable shapes never means
   `no-choice`: a governing conflict returns `revised`, while missing entry,
   evidence, or preflight returns `refused`, with the eliminating constraint,
   causal owner, retained evidence, and revisit condition.
9. Consequential assumptions shared by several candidates are one assumption
   path and are tested independently; correlated agreement is not independent
   evidence.
10. Every viable candidate is compared against the same relevant criteria:
    behavior, boundaries, ownership, interfaces, invariants, failure and
    recovery, operational or migration consequences, reversibility, accepted
    change pressure, feasibility evidence, evidence maturity, and uncertainty.
11. Current source, runtime behavior, tests, configuration, and authoritative
    external material outrank stale proposals, comments, generic examples,
    and familiarity with the current shape.
12. A disputed property is returned to Research with the smallest source,
    visual, or empirical probe capable of distinguishing it. Research owns
    probe design, evidence synthesis, and interpretation; its declared
    dependency owners retain checkout state, safety decisions, and effect
    handling. Design Solution and its references do not execute or construct
    the probe.
13. Domain, interaction, system, integration, and transition lenses compose
    around the same bounded choice. Each local reference remains a terminal
    method guide and owns no route, call, authority, completion, or stopping.
14. Research is called only for a factual premise that can change the choice;
    Interview only for a human-owned preference, tolerance, or selection; and
    Make Tangible only when a faithful perceptible surface materially improves
    the judgment.
15. Direct-call results do not transfer authority, pass a gate, choose a route,
    update a governing record, or re-enter Design Solution. Design Solution
    retains comparison, synthesis, causal ownership, and stopping.
16. A changed claim, context, candidate, criterion, feasibility condition, or
    governing meaning receives a new stable `boundary_id` and becomes a
    new/revised comparison. Earlier evidence remains valid only in its original
    scope and when its basis is unchanged; a hybrid never inherits both
    parents' conclusions automatically.
17. A probe that reveals a missing need, constraint, tolerance, or other
    Requirements truth returns learning to Requirements Discovery rather than
    silently converting it into a technical assumption.
18. Evidence maturity and fidelity limits remain visible. Current familiarity
    is not proof that an alternative is worse, and a polished surface is not
    evidence beyond what it exercised.
19. Human judgment is requested for governing behavior; a major system,
    ownership, or trust boundary; an external dependency; meaningful cost or
    risk; or a hard-to-reverse commitment. A valid non-recommended choice
    remains local and is respected.
20. A recommendation is navigation, not permission or authority. A selected
    shape does not authorize implementation, mutation, publication, or any
    external action.
21. The return changes the correct governing record or states why no record
    changes. It carries the selected/recommended shape or no-choice reason,
    rationale, consequences, evidence, uncertainty, causal owner, and revisit
    condition, then stops before implementation planning.

## Outcomes and observable return

Design Solution exposes exactly these top-level outcomes:

- `recommended` — a genuinely consequential comparison supports one candidate,
  but no consequential human selection has been made; no authority is implied.
- `selected` — the human selected a valid candidate, including a valid
  non-recommended or explicitly combined shape, with its local rationale and
  consequences preserved.
- `qualified` — comparison remains useful but a conditional, combined,
  evidence-limited, or unresolved tradeoff prevents an unconditional
  recommendation or selection.
- `no-choice` — only one serious shape remains or the choice is contained,
  reversible, and specification-preserving; the result explains why richer
  comparison adds no judgment.
- `revised` — evidence, feedback, feasibility, criteria, governing meaning, a
  zero-candidate constraint conflict, or correct causal ownership changed the
  question or candidate; the result carries a new stable boundary ID, scoped
  valid evidence, and the causal rebind or gate that must be revisited.
- `refused` — scope, ownership, required preflight, comparison evidence,
  direct dependency, supported medium, or any basis for a viable candidate is
  missing or invalid. The result preserves the exact blocker, eliminating
  constraint, valid partial evidence, causal owner, and revisit condition.
- `stopped` — a human stopped or dismissed the bounded interaction; the result
  preserves the current safe state without inferring a choice or reaction.

The semantic return is:

```text
Design Solution Result {
  outcome,
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

The result leads with the shape or no-choice reason and names every material
candidate, criterion, hard constraint, shared assumption, evidence pointer,
maturity or fidelity limit, consequence, unresolved point, causal owner, and
revisit condition. `refused` preserves a missing or blocked dependency rather
than fabricating a comparison. `stopped` preserves state without cleanup or
continuation. The caller decides whether to revise its record, request human
judgment, continue locally, or stop.

## Effects, authority, persistence, and lifetime

Design Solution may read repository and external evidence already available to
the caller and interpret supplied Requirements and specifications. Research
owns probe design, evidence synthesis, and interpretation while its declared
dependencies retain checkout state, safety decisions, and effect handling.
Make Tangible owns construction, verification, reaction, and artifact
lifecycle. Design Solution does not execute a probe, construct a surface,
mutate a checkout, alter product or governing records, authorize effects,
accept a result, commit, publish, deploy, or create a Decision file. Any
consequential effect remains with its owning Plan, exact Implementation
Authorization, and ordinary safety boundary; a Design Solution return never
supplies them.

Messages, comparisons, candidate lists, and supporting artifacts are transient
by default. A Make Tangible `constructed` or `revised` result includes the exact
artifact identity and version, required human reaction, supported conclusions,
fidelity or transport limits, and retention state. A `no-op` has no artifact
object; `blocked` or `stopped` state is preserved in the dependency-state field
without an invented reaction. The caller persists an artifact only for a named
future consumer and only for the lifetime Make Tangible returned. Design
Solution creates no transcript, candidate ledger, decision archive, or
learning diary.

## Composition and direct calls

Direct calls carry the callee's required brief and preserve its exact return: one complete
brief, lossless returns, no authority transfer, and no re-entry. Each callee's
own contract owns its intake fields and outcome names. Design Solution retains
the choice boundary, comparison, synthesis, causal routing, authority,
acceptance, and stopping; the Research–Interview edge keeps its local
`boundary_id`, `origin`, `return_to`, and `peer_edge_crossed` guard.

| Direct target | Trigger and bounded request | Return consumed | Ownership retained by Design Solution |
| --- | --- | --- | --- |
| [Research](../research/SPEC.md) | A factual codebase, runtime, dependency, external, or empirical premise could change the comparison. Use a complete bounded brief with the exact claim, territory, freshness, consequence, evidence bar, cheapest falsifier, current authority, and guarded Research–Interview context. | Integrate `answered`; preserve `unverified` and `conflicting`; rebind a changed claim on `revised`; use `no-op` only for its identified existing context; map `needs-human-judgment` to `qualified`, `blocked` to `refused`, and `stopped` directly. Research owns its guarded peer crossing and never re-enters Design Solution. | Choice, criteria, candidate synthesis, causal owner, and stopping. |
| [Interview](../interview/SPEC.md) | A governing behavior, major boundary, external dependency, meaningful cost/risk, or hard-to-reverse commitment needs human judgment. A reversible specification-preserving choice stays local. Use a complete bounded brief with candidates, criteria, evidence/maturity, consequences, recommendation order, context revision, and guarded peer context. | `clarified` supplies a valid selection; `qualified`, `deferred`, or `conflicting` remains an explicit human boundary; `no-op` integrates sufficient existing judgment; `needs-evidence` returns `revised` with its causal owner; `blocked` maps to `refused`; and `stopped` returns directly. Interview owns questioning and its guarded peer crossing. | Comparison, interpretation of candidate consequences, recommendation or selection, and stopping. |
| [Make Tangible](../make-tangible/SPEC.md) | Prose cannot make a comparison, model, workflow, or consequence judgeable. Use a complete bounded brief with the exact question, audience/starting point, accepted truth/evidence, primary judgment, medium/fidelity, requested reaction, current authority, and artifact lifetime. | `no-op` integrates its explanation; `constructed` or `revised` supplies exact version, reaction, supported conclusions, fidelity/transport limits, retention state, and named consumer when durable; `blocked` returns `refused` with preserved state; and `stopped` returns directly. | Candidate comparison, synthesis, interpretation of reaction, governing meaning, and stopping. Make Tangible owns construction, verification, reaction, and lifecycle. |

No direct target may call Design Solution again for the same bounded choice or
advance the caller. Plannotator is not a direct dependency; Make Tangible owns
any faithful native presentation.

## Runtime references and exact package tree

`SKILL.md` keeps entry, owner classification, consequentiality, constraints,
candidate generation, comparison, direct calls, human boundary, return, and
stopping inline. It loads these terminal references only at their named
decision points:

| Reference | Load condition | Ownership |
| --- | --- | --- |
| [`domain-models.md`](references/domain-models.md) | Concepts, relationships, invariants, language, or state transitions distinguish candidates. | Design Solution |
| [`interaction-design.md`](references/interaction-design.md) | Actor sequence, feedback, interruption, handoff, failure, or recovery changes the choice. | Design Solution |
| [`system-design.md`](references/system-design.md) | Module, service, data, responsibility, dependency, runtime, failure, seam, or locality differences matter. | Design Solution |
| [`integration-contracts.md`](references/integration-contracts.md) | Cross-boundary interface, compatibility, trust, ordering, or failure semantics differ. | Design Solution |
| [`transition-operations.md`](references/transition-operations.md) | Coexistence, rollout, cutover, reversibility, observability, or recovery differs. | Design Solution |

Each local reference is self-contained and contains only its reasoning lens.
Direct-call rules remain inline; neither they
nor a local reference calls a skill, chooses a candidate, grants authority,
defines completion, or stops the caller. There are no package-local scripts,
assets, fixtures, templates, wrappers, hooks, or required integrations.

The exact sparse tree is:

```text
skills/design-solution/
├── SKILL.md
├── SPEC.md
├── agents/
│   └── openai.yaml
└── references/
    ├── domain-models.md
    ├── interaction-design.md
    ├── system-design.md
    ├── integration-contracts.md
    └── transition-operations.md
```

## Invocation and host projection

The package is model-invoked with this exact frontmatter:

```yaml
---
name: design-solution
description: "Design one consequential solution choice. Use when accepted Requirements permit materially different system, ownership, contract, operational, migration, or reversibility shapes."
---
```

Its host projection is:

```yaml
interface:
  display_name: "Design Solution"
  short_description: "Make one consequential solution shape judgeable"
  default_prompt: "Use $design-solution to make this consequential choice judgeable."
policy:
  allow_implicit_invocation: true
```

Host presentation adds no trigger, effect, dependency, route, or continuation.

## Package-specific conformance cases

1. A reversible local technical choice that preserves accepted specifications
   returns `no-choice` and does not manufacture alternatives.
2. One serious candidate returns `no-choice` with the shape and evidence that
   makes the other candidates non-credible.
3. A hard Requirement, safety boundary, invariant, or compatibility duty
   eliminates an otherwise convenient candidate before tradeoff comparison.
4. Alternatives with unequal evidence maturity expose that difference without
   treating current familiarity as proof.
5. Each of the five reasoning lenses loads only at its named decision point
   and remains terminal; no lens owns routing, calls, or stopping.
6. Composed lenses reason about one bounded choice and share criteria,
   assumptions, evidence, and return rather than starting separate designs.
7. A shared false premise is tested once, corrected, and not counted as
   independent support for several candidates.
8. A candidate-favoring or biased comparison receives a disconfirming path and
   preserves evidence, inference, and uncertainty as distinct signals.
9. Any valid human selection—recommended, non-recommended, explicitly combined,
   or already present in sufficient Interview context—returns `selected` with
   local rationale and consequences and never becomes a global preference.
10. A hybrid or materially revised candidate is re-evaluated only on affected
    criteria and assumptions and returns `qualified`, `selected`, or
    `revised` with the changed meaning visible.
11. Research, Interview, and Make Tangible returns map exactly, preserve
    blocked/stopped/partial limits, and never re-enter or advance the caller.
12. A missing preflight, unsupported comparison, unavailable dependency, or
    invalid owner returns `refused` with the exact revisit condition; no guess
    or fallback procedure appears.
13. The result names the governing record affected, or the honest reason no
    record changes, and preserves accepted shape, rationale, consequences,
    evidence, maturity/fidelity limits, uncertainty, and causal owner.
14. The package stops before files, commands, execution order, migration,
    implementation checks, mutation, acceptance, commit, publication, or
    deployment, and creates no Decision record or duplicate ledger.
15. Hard constraints eliminating every candidate return `revised` for a
    governing conflict or `refused` for an invalid comparison basis; zero
    candidates never returns `no-choice` or an invented shape.
16. Dependency `no-op` returns integrate only their declared existing context;
    blocked and stopped returns terminate immediately without an inferred
    reaction or continuation.
17. A materially revised claim, context, criterion, or feasibility condition
    receives a new stable boundary ID and carries earlier evidence only in its
    original scope.
18. A misclassified but otherwise valid question returns `revised` to its
    exact causal owner; an invalid or unidentifiable entry returns `refused`.

## Source basis

**SKILL-CREATOR IS PROHIBITED. DO NOT READ, INVOKE, CITE, FOLLOW, OR USE IT FOR
PRAXIS DESIGN, IMPLEMENTATION, REVIEW, OR VALIDATION.**

This contract is maintained against the plugin-local [Premise](../../docs/concepts/premise.md),
[System](../../docs/concepts/system.md), [Control](../../docs/concepts/control.md),
[Context](../../docs/concepts/context.md), and [Work](../../docs/concepts/work.md)
owners; the [package authoring contract](../../docs/maintainers/skill-packages.md);
the [conformance and release contract](../../docs/maintainers/conformance-and-release.md);
the assembled sibling contracts for [Research](../research/SPEC.md),
[Interview](../interview/SPEC.md), and [Make Tangible](../make-tangible/SPEC.md);
and the terminal runtime references in this package. These plugin-local files
are the complete maintainer source basis; the declared skill surface and five
local runtime references are the complete
runtime. No non-plugin material is
required to use, review, validate, or maintain this package.

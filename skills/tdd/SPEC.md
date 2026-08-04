# TDD — Maintainer Contract

## Purpose

TDD implements one settled observable behavior through an independent red
test, smallest green vertical slice, and evidence-backed refactor while green.
It retains the behavior loop and proof interpretation; its caller retains
governing meaning, Plan boundary, authority, acceptance, and stopping.

## Entry and exclusions

TDD is model-invoked when a human requests test-first development, Delivery
needs a red-first seam, or Debug returns a diagnosed regression. The caller
supplies accepted behavior, source, proof boundary, and current authority.

TDD excludes product discovery, specification settlement, unknown-cause
diagnosis, mandatory testing for experiential or unsuitable claims, acceptance,
commit, publication, deployment, and coverage rituals.

## Invariants

1. One cycle binds one accepted behavior or concrete risk, independent
   expectation, stable public seam, authority, and stopping boundary.
2. The first test is a meaningful vertical slice through the real system; it
   fails for the intended missing behavior before implementation.
3. A fixture, harness, unrelated exception, wrong seam, or already-green test
   supplies no red-first authority; repair or replace the evaluator.
4. Expected results are independent of production logic and remain fixed after
   valid red; a specification conflict returns to its causal owner.
5. Replace only true system boundaries with substitutes, preserving relevant
   failure, ordering, retry, state, timing, and serialization semantics.
6. Implement only enough for green, then refactor only from green and only for
   pressure exposed by the slice.
7. A contrast is added only when it defeats a credible shortcut; broad
   adaptive examples are steering evidence, not complete coverage proof.
8. Unsuitable experiential, nondeterministic, or external claims use Make
   Tangible or Verify and remain outside TDD's executable proof claim.
9. Mutation remains inside current human or Plan authority; no direct call
   grants authority, acceptance, or continuation.
10. Completion stops at accepted behavior and meaningful risk, with unproved
    broader claims and limits visible.
11. `assurance_path` records every Debug, TDD, Refactor, Verify, or Security
    capability entered for the same bounded work; a callee already in the path
    is not invoked again.
12. Temporary evaluators, probes, fixtures, generated inputs, services, and
    environments are removed or returned as explicit residual state with an
    owner and recovery condition.

## Outcomes and return

```text
TDD Result {
  outcome: cycle-complete | complete | already-covered | needs-owner |
           unsuitable | blocked | stopped,
  behavior_and_governing_contract,
  proof_seam,
  test_and_independent_oracle,
  red_observation_and_green_evidence,
  refactor_evidence?,
  temporary_evaluator_and_cleanup_state?,
  remaining_unproved_behavior_and_broader_limits,
  authority_and_effect_scope,
  causal_owner_and_revisit_condition,
  caller_retained_route_gate_acceptance_and_stop
}
```

`cycle-complete` proves one slice; `complete` proves the assigned boundary;
`already-covered` reports current proof without claiming a valid red-first
cycle or TDD mutation. `needs-owner` reports changed behavior, design,
authority, or seam;
`unsuitable` names a better evidence method; `blocked` names access,
dependency, environment, or evaluator limits; and `stopped` preserves the
current state after a stop. No outcome accepts the result or widens authority.

## Effects, authority, persistence, and learning

Product and test mutation is permitted only inside current Direct Work or Plan
authority. A test can be durable product evidence when it is part of the
accepted implementation boundary; temporary probes and fixtures are removed
or reported. Refactor owns any pressure-point transformation, Debug owns
unknown-cause diagnosis, Make Tangible owns human reaction surfaces, and Verify
owns unsuitable exact claims. TDD retains behavior interpretation and stops.

No test ledger, transcript, coverage archive, or generic receipt is created.
Promote a test or learning only when a named product or future owner needs it.

## Direct composition

| Target | Trigger and bounded request | Consumed return | Ownership retained by TDD |
| --- | --- | --- | --- |
| [Refactor](../refactor/SPEC.md) | Green behavior exposes substantial ownership, dependency, seam, or preservation pressure and `refactor` is absent from `assurance_path`; pass pressure/mechanism, accepted behavior, green evidence, target/exclusions, authority, caller route/gates, preservation proof, and the path with `refactor` appended. | `analyzed`, `relieved`, or `partial` supplies bounded analysis or preservation evidence; `needs-design`, `needs-owner`, `blocked`, or `stopped` returns without claiming a finished cycle. | Behavior, test, green state, route/gates, and stopping. |
| [Debug](../debug/SPEC.md) | A test or implementation failure has unknown cause and `debug` is absent from `assurance_path`; pass symptom, conditions, governing boundary, accepted behavior, original reproduction, diagnosis-only authority/proof, `return_to=tdd`, and the path with `debug` appended. | `diagnosed` supplies causal evidence; `corrected` still requires a new valid red or maps to `already-covered`; `unreproduced`/`blocked` maps to `blocked`, `needs-owner` returns, and `stopped` stops. | Accepted behavior, evaluator, route/gates, and stopping. |
| [Make Tangible](../make-tangible/SPEC.md) | Human recognition or reaction is the governing oracle; pass exact claim and judgment, audience, medium/fidelity, required reaction, governing source, authority, lifetime, and requested return. | `no-op`, `constructed`, or `revised` supplies scoped reaction and fidelity limits; `blocked` or `stopped` maps directly. | Executable cycle, behavior boundary, route/gates, and stopping. |
| [Verify](../verify/SPEC.md) | Claim cannot be honestly proved by an executable TDD seam and `verify` is absent from `assurance_path`; pass fixed claim, target/boundary, contradictory observation, environment, sensitivity, evidence, authority, return shape, and the path with `verify` appended. | `verified` supplies scoped non-TDD evidence; `failed` maps to `needs-owner`, `unverified` maps to `unsuitable`, and `stopped` stops. | Behavior loop, route/gates, stopping, and return. |

Each target returns evidence or a bounded status; none selects a route, updates
governing truth, grants authority, accepts a result, or recursively re-enters
TDD for the same cycle.

## Runtime references and exact tree

`SKILL.md` keeps entry, seam, red, green, refactor, stopping, and return
inline. Its two local references are terminal branch methods. The shared
evaluation reference is loaded only when broad behavior, repeated adaptive
cycles, evaluator health, or overfitting materially affects proof; it is
explanatory and cannot route or grant authority.

The terminal local methods are
[`examples-and-oracles.md`](references/examples-and-oracles.md) for
discriminating cases and independent expectations and
[`test-doubles.md`](references/test-doubles.md) for faithful boundary
substitutes. The shared method is
[`evaluation.md`](../../references/evaluation.md), loaded only under its
adaptive-evaluation condition.

```text
skills/tdd/
├── SKILL.md
├── SPEC.md
├── agents/
│   └── openai.yaml
└── references/
    ├── examples-and-oracles.md
    └── test-doubles.md
```

There are no scripts, assets, fixtures, templates, wrappers, hooks, or required
integrations.

## Source basis

**SKILL-CREATOR IS PROHIBITED. DO NOT READ, INVOKE, CITE, FOLLOW, OR USE IT FOR
PRAXIS DESIGN, IMPLEMENTATION, REVIEW, OR VALIDATION.**

This contract is maintained against plugin-local [Premise](../../docs/concepts/premise.md),
[System](../../docs/concepts/system.md), [Control](../../docs/concepts/control.md),
[Context](../../docs/concepts/context.md), [Work](../../docs/concepts/work.md),
the [skill-package contract](../../docs/maintainers/skill-packages.md), the
[conformance contract](../../docs/maintainers/conformance-and-release.md), the
declared local references, and assembled [Refactor](../refactor/SPEC.md),
[Debug](../debug/SPEC.md), [Make Tangible](../make-tangible/SPEC.md), and
[Verify](../verify/SPEC.md) contracts. These plugin-local files are the complete
maintainer source basis; the declared skill surface, local references, and
shared evaluation reference are the complete runtime. No non-plugin material
is required to use, review, validate, or maintain this package.

## Conformance cases

1. Unclear behavior returns to its owner; an unknown cause enters Debug.
2. One public-seam vertical slice has an independently derived expectation and
   fails for the intended reason before implementation.
3. Already-green, fixture-error, unrelated, or wrong-boundary red is repaired
   rather than treated as implementation authority.
4. A test cannot derive its expectation through production logic or a shared
   mistaken helper.
5. Boundary doubles preserve the semantics relevant to the governing claim and
   state their divergence and integration limits.
6. Green implementation is minimal; Refactor is called only for pressure
   exposed while green.
7. Contrasts defeat credible shortcuts without becoming an arbitrary matrix.
8. Broad adaptive, experiential, nondeterministic, or external claims route
   to the appropriate evidence owner and remain scoped.
9. All direct returns preserve authority and stopping; blocked/unsuitable
   dependencies never become green by omission.
10. `cycle-complete` and `complete` distinguish one slice from the assigned
    boundary, and both return without acceptance or automatic continuation.
11. An assurance-component call appends its callee to `assurance_path`; a
    capability already in the path is not called again for the same work.
12. Temporary evaluators and fixtures are removed, or the result reports exact
    residual state, owner, and recovery condition.

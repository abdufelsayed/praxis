# Debug — Maintainer Contract

This is the acceptance contract for the shipping
[Debug owner](SKILL.md). It is not runtime
context, and the owner must not link to or depend on it.


## Purpose

Debug diagnoses one failing, intermittent, or unexpectedly slow behavior by
making it controllable, testing falsifiable causal hypotheses, correcting the
owning seam within existing authority, and proving the original mechanism.
Debug retains causal interpretation; its caller retains governing meaning,
route, gates, authority, acceptance, and stopping.

## Entry and exclusions

Debug is internally reachable when a visible failure has an unknown cause or correct
fix. Direct Work or Delivery may enter it, and another skill may call it with
the same bounded brief. The caller supplies the symptom, boundary, conditions,
accepted behavior, original reproduction, authority, and proof boundary.

Debug excludes requirements discovery, specification choice, general cleanup,
unbounded architecture, acceptance, commit, publication, deployment, and
automatic continuation. Existing evidence that already proves cause and
correction remains ordinary bounded work.

## Invariants

1. One run binds one symptom, boundary, expected behavior, original full
   reproduction, authority, and proof target, or returns a typed blocker or
   owner handoff.
2. A red-capable repeatable probe precedes diagnosis and correction. It is
   sensitive to the reported mechanism through a control, perturbation, trace,
   or preserved full reproduction.
3. Minimal and original reproductions coexist; simplifying the probe never
   discards the full scenario.
4. Hypotheses are predictions, not labels. Each decisive observation changes
   the remaining set; disproved hypotheses are removed under their tested
   conditions.
5. A known Requirement, Evolution Map, Evolution, Issue, Implementation Plan,
   or authority error returns to its exact causal owner before correction;
   Debug does not silently redefine the behavior.
6. Correction targets the demonstrated owning seam and remains inside current
   human or Plan authority. An executable regression path reaches TDD before
   mutation; a direct path proves red before applying the correction.
7. Regression proof reaches the demonstrated mechanism. A convenient nearby
   symptom is insufficient; no honest seam is reported as an architectural
   limitation.
8. Flaky and performance claims fix baseline, sampling, environment,
   threshold, valid-run rules, minimum observable improvement, measured change,
   and uncertainty before a conclusion. One clean run is not proof of a rare
   change.
9. Temporary instrumentation and disposable diagnostic state have an explicit
   lifecycle and are removed and checked before `corrected`.
10. A return preserves evidence, limits, causal owner, and revisit condition;
    it grants no authority, gate, acceptance, or continuation.
11. `assurance_path` records every Debug, TDD, Refactor, Verify, or Security
    capability entered for the same bounded work; a callee already in the path
    is not invoked again.

## Outcomes and return

```text
Debug Result {
  outcome: corrected | diagnosed | unreproduced | needs-owner | blocked | stopped,
  symptom_and_boundary,
  accepted_behavior_and_conditions,
  original_reproduction,
  hypotheses_and_discriminating_observations,
  cause_and_confidence,
  correction_and_authority,
  regression_and_full_reproduction_evidence,
  baseline_sampling_environment_and_uncertainty?,
  measured_change_and_valid_sample_rules?,
  temporary_state_cleanup,
  remaining_risks_or_architectural_limitations,
  causal_owner_and_revisit_condition,
  caller_retained_route_gate_authority_acceptance_and_stop
}
```

`corrected` requires demonstrated cause, in-authority correction, regression
proof and full reproduction passing, and cleanup. `diagnosed` leaves correction
or proof to the caller. `unreproduced` reports the missing sensitive signal;
`needs-owner` reports changed meaning or authority; `blocked` reports missing
access, environment, dependency, or proof; and `stopped` preserves safe
current state after a human stop. None implies acceptance or further work.

## Effects, authority, persistence, and learning

Read-only inspection and disposable local probes are ordinary within the
caller’s boundary. Corrective mutation requires the current human request or
approved Plan; consequential effects retain their exact Plan,
Implementation Authorization, and safety requirements. Debug never grants
authority through a diagnosis, test pass, or TDD return.

Messages, probes, hypotheses, instrumentation, and comparison material are
transient by default. Durable regression tests belong to the product or TDD
owner; a durable diagnostic artifact exists only for a named future consumer.
Learning that changes a Requirement, Evolution, Issue, or Plan returns to that
exact owner and re-gates affected work.

## Direct composition

Direct calls carry the callee's required brief and preserve its exact return:
 one complete brief, lossless returns, no authority transfer, and no
re-entry of a capability already in the assurance path. Each callee's own
contract owns its intake fields; assurance calls carry the current
`assurance_path`. This package's caller policies are:

| Direct target | Caller policy |
| --- | --- |
| [TDD](../tdd/SPEC.md) | Use before correction when a demonstrated failure needs an executable regression behavior and `tdd` is absent. `complete`/`cycle-complete` supplies red-first proof; `already-covered`/`unsuitable` maps to `diagnosed` with the missing proof or seam limit; `needs-owner`, `blocked`, or `stopped` returns without a correction claim. |
| [Make Tangible](../make-tangible/SPEC.md) | Use when the failure mechanism or corrected reaction cannot be observed honestly in prose or a normal probe. `no-op`, `constructed`, or `revised` supplies scoped reaction/fidelity evidence; `blocked` or `stopped` maps directly. |

Make Tangible owns construction, verification, reaction, and artifact lifecycle;
TDD owns its cycle. Neither dependency advances Debug or grants mutation.

## Runtime package

The executable body keeps signal construction, hypothesis testing, causal
correction, proof, cleanup, return, and stopping inline. There are no local
method references, scripts, fixtures, assets, or required integrations.
Direct-call brief and exact-return rules remain inline when composing a direct
call.

Exact tree:

```text
skills/debug/
├── SKILL.md
├── SPEC.md
└── agents/
    └── openai.yaml
```

## Source basis

At runtime, `SKILL.md` loads shared [Praxis Control](../../references/control.md)
once at owner entry.


This contract is maintained against the plugin-local [Premise](../../docs/concepts/premise.md),
[System](../../docs/concepts/system.md), [Control](../../docs/concepts/control.md),
[Context](../../docs/concepts/context.md), and [Work](../../docs/concepts/work.md)
owners, the [skill-package contract](../../docs/maintainers/skill-packages.md),
the [conformance contract](../../docs/maintainers/conformance-and-release.md),
and the assembled
[TDD](../tdd/SPEC.md) and [Make Tangible](../make-tangible/SPEC.md)
contracts. These plugin-local files are the complete maintainer source basis;
the declared skill surface and package-local direct-call rules are the complete
runtime. No non-plugin material is
required to use, review, validate, or maintain this package.

## Conformance cases

1. An unknown functional, flaky, or performance symptom binds a sensitive red
   probe before diagnosis; a nearby display of the symptom is insufficient.
2. Minimal and full reproductions remain available through correction.
3. A favored hypothesis is disproved and removed; the next probe distinguishes
   a remaining explanation rather than restating the same edit.
4. Missing reproduction returns `unreproduced` with conditions and next probe.
5. A specification or authority premise returns `needs-owner` before mutation.
6. An authorized correction targets the demonstrated seam and does not widen
   into adjacent cleanup.
7. TDD receives a demonstrated mechanism before correction and returns
   red-first proof or a typed limit; Debug never treats a blocked or unsuitable
   cycle as corrected.
8. A hard-to-observe mechanism uses Make Tangible's scoped reaction and
   fidelity result; blocked or stopped presentation never becomes diagnosis or
   proof.
9. Flaky and performance returns include baseline, valid sample, environment,
   minimum observable improvement, measured change, and uncertainty.
10. Instrumentation and disposable state are removed and verified before
   `corrected`.
11. Every outcome preserves causal ownership and stops without acceptance,
    commit, publication, deployment, or automatic continuation.
12. An assurance-component call appends its callee to `assurance_path`; a
    capability already in the path is not called again for the same work.

---
name: tdd
description: "TDD develops one settled behavior test-first. Use when the human requests it, Delivery needs a red-first feedback seam, or Debug returns a diagnosed regression."
---

# TDD

Let one failing test pull one meaningful vertical slice through the real
system. Drive that settled observable behavior through an honest
red–green–refactor cycle. TDD owns the behavior-sized feedback loop; the caller
retains product meaning, Plan boundary, authority, acceptance, and stopping.

## 1. Bind behavior and seam

Read the accepted Issue behavior, current Plan or Direct Work boundary,
relevant source and tests, and the proof boundary assigned to TDD. State the
one observable behavior or concrete risk, its independent contract, current
authority, and the narrowest stable public seam capable of proving it. Carry
`assurance_path`, defaulting to `[tdd]`. Every direct call among Debug, TDD,
Refactor, Verify, and Security appends its callee; do not call a capability
already present in the path for the same bounded work. If behavior is unclear,
return `needs-owner`. If an observed failure has an unknown cause and `debug`
is absent from the path, call
[Debug](../debug/SKILL.md) with the symptom, conditions, governing boundary,
accepted behavior, original reproduction, diagnosis-only authority and proof,
`return_to=tdd`, and `assurance_path` with `debug` appended. Consume `diagnosed` as
causal evidence; a pre-existing `corrected` result must still earn a valid red
or return `already-covered`. Map `unreproduced` or `blocked` to TDD `blocked`,
`needs-owner` to TDD `needs-owner`, and `stopped` to TDD `stopped`. If `debug`
already appears in the path, return the unknown cause as `blocked` without
calling back.

Use the Plan's seam when it names one. Otherwise, a domain or service
interface can prove contained behavior; use a public API or integration seam
when the contract crosses components or depends on their interaction. A
helper test that mocks away the governing behavior is too narrow, while a full
end-to-end test is unnecessary when a narrower stable seam proves the same
contract. Routine seam selection stays inside Delivery authority; return for
discussion only when it changes governing design, behavior, authority, or
proof.

This step is complete when one behavior, independent expectation source, seam,
authority, and stopping boundary are explicit, or the typed return is made.

## 2. Choose the case and evaluator

Start with the thinnest meaningful vertical slice through the real system.
Load [`examples-and-oracles.md`](references/examples-and-oracles.md) when
choosing discriminating cases or deriving an independent oracle requires
substantial judgment. Load [`test-doubles.md`](references/test-doubles.md) only
when a true system boundary is slow, unstable, unsafe, or unavailable; keep
owned modules together through the selected seam.

Use [`../../references/evaluation.md`](../../references/evaluation.md) when a
broad behavior space, repeated adaptive cycle, evaluator health, or
overfitting materially affects proof. The shared reference is conditional
context, not a score or route.

This step is complete when the case can distinguish a credible wrong behavior,
the oracle is independent, any substitute preserves relevant boundary
semantics, and the broader evidence limit is explicit.

## 3. Prove red for the intended reason

Write one focused test through the chosen public seam and derive its expected
result independently from the accepted contract, example, standard, fixture,
or oracle. Run it. A failure caused by a fixture, harness, unrelated exception,
or wrong boundary repairs the evaluator before implementation. An already
green test is not red-first authority; revise the case to expose missing
behavior or return `already-covered` with the existing evidence and no TDD
mutation claim.

This step is complete only when the test fails for the intended missing
behavior at the governing seam, with the expected failure recorded, or a
typed `already-covered`, `needs-owner`, `unsuitable`, or `blocked` return is
made.

## 4. Make the smallest slice green

Implement only enough of the vertical slice to satisfy the red behavior.
Preserve the validated expectation; never weaken it to manufacture green. Run
the same test and confirm the expected pass. If the implementation reveals an
unknown cause and `debug` is absent from `assurance_path`, call [Debug](../debug/SKILL.md)
with the symptom, conditions, governing boundary, accepted behavior, original
reproduction, diagnosis-only authority and proof, `return_to=tdd`, and
`assurance_path` with `debug` appended. Consume `diagnosed` as causal evidence and stop
this cycle before further mutation. Map `corrected` to `already-covered` unless
a new valid red remains; `unreproduced` or `blocked` to `blocked`;
`needs-owner` to `needs-owner`; and `stopped` to `stopped`. If `debug` already
appears in the path, return `blocked` with the unknown cause. If the accepted behavior or
authority changes, return to its exact owner.

This step is complete when the same test passes for the intended behavior and
the implementation remains inside the current boundary, or the typed return
is made.

## 5. Refactor while green and select the next behavior

Perform only evidence-backed structural repair exposed by the green slice.
Call [Refactor](../refactor/SKILL.md) when pressure needs reconstruction,
ownership, or preservation evidence and `refactor` is absent from
`assurance_path`. Pass the demonstrated pressure and mechanism, accepted
behavior, current green evidence, target and exclusions, authority,
caller-retained route/gates, required preservation proof, and the path with
`refactor` appended.
Consume `analyzed`, `relieved`, or `partial` while retaining the behavior loop,
and return `needs-design`, `needs-owner`,
`blocked`, or `stopped` without pretending the cycle is complete. A routine
extraction stays local. Keep the call in the green state and current authority;
Refactor cannot expand the Plan. Stop this cycle on those typed returns; rerun
all tests materially affected by a successful refactor.
If substantial pressure requires Refactor but `refactor` already appears in the
path, return `blocked` with the unrelieved pressure instead of re-entering it.

Choose the next unproved accepted behavior or concrete risk from what the
completed cycle taught. Add a contrast only when one example could pass
through a materially wrong shortcut. Broad adaptive examples steer
development; they do not prove complete coverage by themselves. Keep each
cycle behavior-sized: the first is a tracer bullet through the real path, and
later cycles deepen only what prior evidence exposes.

This step is complete when the slice is green, affected proof is current, and
the next behavior or broader evidence limit is named.

## 6. Stop at meaningful proof and return

Stop when the assigned Plan boundary and Issue behavior are proved at their
accepted seams. Do not chase coverage percentages, implementation branches,
or a horizontal speculative test batch. For experiential, nondeterministic, or
externally unverifiable claims, call [Make Tangible](../make-tangible/SKILL.md)
or [Verify](../verify/SKILL.md). For Make Tangible, pass the exact claim and
judgment, target audience, medium and fidelity, required reaction, governing
source, authority, lifetime, and requested return. Consume `no-op`,
`constructed`, or `revised` only as scoped human evidence with its fidelity
limits; map `blocked` to TDD `blocked` and `stopped` to TDD `stopped`. For
Verify, require `verify` to be absent from `assurance_path`, then pass the fixed
claim, target and governing boundary, contradictory observation, environment,
required sensitivity, current evidence, authority, requested return, and the
path with `verify` appended. Consume `verified` only as scoped non-TDD evidence; map
`failed` to `needs-owner` with the contradiction, `unverified` to `unsuitable`
with the missing proof, and `stopped` to TDD `stopped`. TDD retains the
behavior loop, caller route and gates, and stopping. Broad adaptive cases
remain steering evidence; narrow deterministic behavior needs no holdout
ceremony.
If `verify` already appears in the path, return `unsuitable` with the exact
proof that remains outside the TDD seam rather than re-entering Verify.

Remove every temporary evaluator, probe, fixture, generated input, service,
or environment created only for the cycle. If removal is unsafe or
incomplete, return `blocked` with the exact residual state, owner, and recovery
condition; do not silently convert temporary evidence into product state.

Return exactly one bounded result containing behavior and seam, test and
independent oracle, red observation, implementation and green evidence,
refactor evidence, temporary evaluator state, remaining unproved behavior,
causal owner or revisit condition, authority, caller-retained route, gates,
acceptance and stopping, and limits:

- `cycle-complete` — one red–green–refactor slice is complete and proved;
- `complete` — the assigned TDD boundary and behaviors are proved;
- `already-covered` — current evidence covers the behavior, so no valid red or
  TDD mutation claim was made;
- `needs-owner` — specification, design, authority, or required seam changed;
- `unsuitable` — this claim needs another evidence method;
- `blocked` — access, dependency, environment, or evaluator prevents honesty;
- `stopped` — the human or caller ended the cycle.

Return the result and stop. TDD grants no mutation authority beyond its
caller, acceptance, commit, publication, deployment, or automatic continuation.

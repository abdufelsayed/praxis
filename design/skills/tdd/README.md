# TDD

> **Design document — not a runtime skill.** Accepted behavioral contract and target package design; runtime implementation pending.

## What it does

TDD implements settled behavior through an honest red–green–refactor loop. It
works one observable behavior at a time, beginning at the narrowest stable seam
that can prove the governing contract.

Its leading idea is **let each failing test pull one meaningful vertical slice
through the real system**. The test must be capable of disagreeing with the
implementation, and the implementation must earn green before structural work
continues.

## When to reach for it

[Deliver](../deliver/README.md) may invoke TDD when the human requests
test-first work or when a red-first feedback loop materially helps implement
settled behavior. [Debug](../debug/README.md) may hand TDD a diagnosed
regression whose required correction is already clear.

Do not use TDD to discover product intent, settle an uncertain specification,
or diagnose an unknown cause. Do not force it onto experiential,
nondeterministic, or externally unverifiable claims merely to preserve the
ritual. TDD is an implementation discipline, not a mandatory stage for every
change.

## Reconstruct the behavior and authority

Read the accepted Issue behavior, the current Implementation Plan when one
exists, relevant source and tests, and the proof boundary assigned to TDD. Name
the observable behavior being implemented and the contract that will decide
whether it works.

TDD inherits the current Plan or Direct Work authority. It grants no additional
mutation, external-action, or acceptance authority. If the behavior remains
unclear, return to its Formalization owner. If the cause of an observed failure
remains unclear, invoke [Debug](../debug/README.md) first.

## Choose the proof seam

Use the seam accepted by the Plan when it names one. Otherwise choose the
narrowest stable public seam capable of proving the behavior:

- A domain or service interface may be enough for contained behavior.
- A public API or integration seam is necessary when the contract crosses
  components or depends on their interaction.
- A tiny helper test is insufficient when it mocks away the behavior that
  matters.
- A full end-to-end test is unnecessary when a narrower stable seam proves the
  same contract honestly.

Routine seam selection stays local to Delivery. Return for discussion only
when choosing the seam changes governing design, required behavior, authority,
or proof.

## Load richer test design only when needed

The ordinary vertical loop requires no extra reference. Load:

- [Behavior Examples and Oracles](references/behavior-examples-and-oracles.md) when
  selecting cases or deriving expected results requires substantial judgment;
  and
- [Boundary Substitutes and Test Doubles](references/boundary-substitutes-and-test-doubles.md)
  when a true system boundary cannot participate directly without making the
  test slow, unstable, unsafe, or unavailable.

The first path keeps the claim independent of production logic. The second
keeps that claim meaningful when part of the environment must be replaced.
They may compose in the same cycle.

## Run one vertical cycle

1. **Select one unproved behavior.** Choose the next accepted behavior or
   concrete risk, beginning with the thinnest meaningful path through the real
   system.
2. **Write one focused test.** Express the behavior through the selected public
   seam, with an expected result derived independently from the implementation.
3. **Prove red.** Run the test and confirm that it fails for the expected
   missing behavior. The test must reach the governing seam; a fixture error,
   unrelated exception, or failure at another boundary repairs or replaces the
   evaluator before implementation. A passing test or unrelated red provides
   no authority to implement against it.
4. **Make it green.** Implement only enough of the vertical slice to satisfy
   that behavior, then run the test and confirm the expected pass.
5. **Refactor while green.** Perform evidence-backed structural repair exposed
   by the working slice, then rerun the materially affected tests. Never mix
   speculative refactoring into a red state.
6. **Choose the next behavior.** Let evidence from the completed cycle determine
   the next unproved behavior or concrete risk.

TDD owns this behavior-sized feedback loop. When a green slice exposes
substantial structural pressure whose preserved behavior, responsible seam, or
transformation needs deeper reconstruction, it composes
[Refactor](../refactor/README.md) without leaving the green state or expanding Plan
authority. A routine extraction remains ordinary TDD refactoring.

Do not write a horizontal batch of speculative tests before implementation.
The first cycle should act as a tracer bullet through the real path; later
cycles deepen the behavior without outrunning what each preceding cycle taught.

## Keep tests capable of disagreement

Expected values need an independent source of truth: an accepted example,
explicit contract, hand-derived result, standard, fixture, or separately
implemented oracle. A test that recreates the production algorithm, calls the
same helper to derive its expectation, or merely snapshots its own output
passes by construction and proves nothing useful.

Once a red expectation has been validated against accepted behavior, keep that
claim fixed through the cycle. Repairing a faulty fixture or observation method
must preserve the same governing behavior. If new evidence says the expected
behavior itself is wrong, return to its causal owner rather than weakening the
test to manufacture green.

Test observable behavior through stable public interfaces so ordinary
refactoring does not invalidate the proof. Exercise owned modules together
through that seam. Replace only true system boundaries such as external
services, time, randomness, or infrastructure unavailable to the test; prefer
realistic local substitutes when they preserve the dependency's relevant
behavior. Do not mock internal collaborators merely because isolation is
convenient.

## Stop at meaningful proof

Choose later tests from unproved accepted behavior and concrete risks at the
selected seams. Stop when the Plan's TDD boundary and the Issue behavior
assigned to it are proved.

When one example can pass through a materially wrong shortcut, add the smallest
contrasting case that distinguishes the governing rule from that shortcut. A
discount example of `$120 → $108` may need the boundary case `$100 → $100`;
this does not justify mechanically expanding every example into a large
parameter matrix.

For a broad behavior space such as a parser grammar, adaptive TDD cases are
development feedback rather than automatic proof of complete coverage. The
return distinguishes those steering tests from the broader completion claim
and requests proportionate contract-derived properties, perturbed examples, or
independent boundary evidence. Narrow deterministic behavior needs no
ceremonial holdout.

Do not chase a coverage percentage, exercise every implementation branch, or
manufacture cases without a meaningful failure they could expose. Broader
[Review](../review/README.md) and [Verify](../verify/README.md) still own the
integrated result and completion claim, including inherited behavior
materially exposed by the change.

## Return when TDD cannot be honest

If no stable executable seam can prove the governing claim, return the
limitation and recommend the appropriate reaction or evidence method. A visual
interaction may need [Make Tangible](../make-tangible/README.md) and human
reaction; a nondeterministic external property may need bounded experimentation
or [Verify](../verify/README.md); an unknown cause needs
[Debug](../debug/README.md).

If a cycle reveals that the accepted behavior, design, Plan boundary, or
required proof is wrong, stop affected work and return the evidence to the
exact causal owner. Do not silently rewrite the specification or expand
authority under the name of testing.

## It is working when

- Each cycle begins with one observable unproved behavior or concrete risk.
- The first test reaches the governing seam and fails for the expected
  behavioral reason before implementation.
- The implementation follows the test rather than a speculative test batch.
- Expected results are independent of the production logic.
- Validated expectations are not weakened to obtain green.
- A smallest useful contrast prevents trivial shortcuts when one example
  cannot distinguish the governing rule.
- Broad claims do not treat repeatedly adapted steering cases as complete
  evidence.
- Tests exercise stable public seams without mocking away the governing
  contract.
- Structural repair happens only from green and remains inside current
  authority.
- TDD stops at accepted behavior and meaningful risk rather than arbitrary
  coverage.
- Unsuitable claims return honestly to a better evidence method.

## Skill structure

Keep the trigger, authority boundary, seam choice, vertical cycle, path
selection, stopping rule, and return behavior in `SKILL.md`. Behavior Examples
and Oracles and Boundary Substitutes and Test Doubles are conditional local
references; the common loop never requires either extra hop.

Use the shared
[Feedback and Evaluation](../../references/feedback-and-evaluation.md) reference
when a broad behavior space, repeated adaptive cycles, evaluator health, or
overfitting materially affects the work. Routine red–green–refactor remains
self-contained here.

## Research basis

Praxis adapts Matt Pocock's TDD guidance on vertical slices, tracer bullets,
public seams, independently derived expectations, and mocking only system
boundaries:

- [TDD skill](https://github.com/mattpocock/skills/blob/main/skills/engineering/tdd/SKILL.md)
- [TDD guide](https://github.com/mattpocock/skills/blob/main/docs/engineering/tdd.md)
- [Test examples](https://github.com/mattpocock/skills/blob/main/skills/engineering/tdd/tests.md)
- [Mocking guidance](https://github.com/mattpocock/skills/blob/main/skills/engineering/tdd/mocking.md)
- [Codebase design](https://github.com/mattpocock/skills/blob/main/skills/engineering/codebase-design/SKILL.md)
- [Deepening](https://github.com/mattpocock/skills/blob/main/skills/engineering/codebase-design/DEEPENING.md)

Praxis deliberately keeps routine seam selection inside accepted Delivery
authority instead of requiring a separate human decision for every seam. It
also retains genuine red–green–refactor: necessary pressure-point repair occurs
from green during Delivery rather than being deferred wholesale to final
Review.

## Direct dependencies

### Skills

- [Refactor](../refactor/README.md) — improve a concrete pressure point from
  green; return preservation evidence; TDD retains behavior development.
- [Debug](../debug/README.md) — diagnose a failure whose cause is unknown;
  return causal evidence; TDD retains the governing behavior.
- [Make Tangible](../make-tangible/README.md) — construct and verify a human-
  judged behavior surface; return reaction and fidelity limits; TDD retains
  executable development.
- [Verify](../verify/README.md) — prove behavior unsuitable for the ordinary
  test seam; return scoped evidence; TDD retains stopping and return.

### Shared references

- [Feedback and Evaluation](../../references/feedback-and-evaluation.md) —
  guard adaptive cycles, evaluator health, contrast, and weak-test overfitting.

## Target runtime package

> **Status: accepted target package design; runtime implementation pending.**
> This section is not implementation authority.

### Invocation and host projection

TDD is model-invoked when settled behavior benefits from a red-first vertical
feedback loop or the human explicitly requests test-first work.

```yaml
---
name: tdd
description: "TDD develops one settled behavior test-first. Use when the human requests it, Delivery needs a red-first feedback seam, or Debug returns a diagnosed regression."
---
```

```yaml
interface:
  display_name: "TDD"
  short_description: "Develop one behavior through honest red-green"
  default_prompt: "Use $tdd to develop this settled behavior test-first."
policy:
  allow_implicit_invocation: true
```

### Information hierarchy and references

`SKILL.md` keeps governing behavior, authority, seam choice, expected red,
one vertical cycle, green discipline, refactor-from-green, disagreement,
stopping, unsuitable-claim return, and evidence inline. A cycle completes only
when the test fails for the intended behavioral reason and the smallest
implementation earns green without weakening the oracle.

| Decision point | Target reference | Load when | Keep inline when | Semantic ownership | Source material | Direct consumers | Gaps |
| --- | --- | --- | --- | --- | --- | --- | --- |
| Case and oracle design | `references/examples-and-oracles.md` | Choosing discriminating examples or independent expected results requires substantial judgment. | One obvious example and oracle prove the rule. | TDD | [Behavior Examples and Oracles](references/behavior-examples-and-oracles.md) | TDD | None. |
| Boundary substitution | `references/test-doubles.md` | A real boundary is slow, unstable, unsafe, or unavailable and needs a faithful substitute. | The stable public seam can run directly. | TDD | [Boundary Substitutes and Test Doubles](references/boundary-substitutes-and-test-doubles.md) | TDD | None. |
| Adaptive evaluation | `../../references/evaluation.md` | Broad behavior, repeated steering cases, evaluator health, or overfitting affects proof. | Routine bounded red-green is sufficient. | Cross-skill | [Feedback and Evaluation](../../references/feedback-and-evaluation.md) | TDD | None. |

The existing Refactor, Debug, Make Tangible, and Verify calls are accepted.
Mutation remains within current implementation authority. No scripts, assets,
fixtures, templates, or required integrations are packaged; tests belong to
the product repository, not the skill. Target files add the two named local
references to the required package files.

`SPEC.md` adds cases for unclear specification, unknown cause, expected red,
wrong-reason red, already-green test, trivial oracle, minimum contrast, faithful
and unfaithful double, one vertical slice, refactor while green, broad adaptive
space, experiential claim, accepted stopping, and unsuitable-claim return. No
package decision remains unresolved.

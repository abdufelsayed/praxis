# Boundary Substitutes and Test Doubles

> **Status: accepted semantic source; target runtime projection: `references/test-doubles.md`.**

> Load this reference when a true system boundary cannot participate directly
> without making the TDD loop slow, unstable, unsafe, or unavailable. TDD
> retains the proof seam, authority, cycle, return, and stopping.

## Identify the real boundary

Trace the behavior from the public seam to the dependency. Replace only a
boundary the system does not own or cannot run faithfully in the test
environment, such as an external service, clock, randomness source, queue,
filesystem, database, or remote infrastructure.

Do not mock internal collaborators merely to isolate the unit under test.
Owned modules should normally execute together through the selected stable
seam so the test can detect broken integration and responsibility.

## Preserve the semantics that matter

List the dependency behavior required by the governing claim:

- accepted inputs and outputs;
- failure and error meaning;
- ordering, duplication, idempotency, or retry behavior;
- timing, cancellation, or timeout behavior;
- state and side effects visible to the system; and
- serialization or compatibility constraints.

Choose the most realistic affordable substitute that preserves those
semantics. A fake queue that only records `publish()` calls cannot prove
serialization, deduplication, or retry behavior when those are part of the
contract.

Prefer controllable clocks and randomness sources over timing sleeps or global
monkey-patching. Prefer local implementations or protocol-level fakes over
interaction mocks when they make observable behavior testable.

## Keep the substitute honest

Validate consequential substitutes against the real provider contract,
official fixtures, compatibility tests, or a bounded real-environment probe
when practical. Exercise relevant failures, not only success.

Assert observable outcomes and boundary semantics. Avoid internal call counts
or choreography unless the ordering or number of calls is itself part of the
accepted contract. A substitute that agrees with the implementation because
both share the same mistaken assumption is not independent proof.

## Return to TDD

Return the replaced boundary, preserved semantics, substitute and why it is
credible, validation evidence, known divergence from reality, and any broader
integration proof still required from Verify.

## Sources

- [Matt Pocock, Mocking guidance](https://github.com/mattpocock/skills/blob/main/skills/engineering/tdd/mocking.md)
- [Matt Pocock, TDD skill](https://github.com/mattpocock/skills/blob/main/skills/engineering/tdd/SKILL.md)

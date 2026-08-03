# Behavior Examples and Oracles

> **Status: accepted semantic source; target runtime projection: `references/examples-and-oracles.md`.**

> Load this reference when choosing test cases or deriving expected results
> requires substantial judgment. TDD retains the proof seam, vertical cycle,
> authority, return, and stopping.

## Derive the expectation independently

Name the governing behavior before writing the assertion. Derive its expected
result from an accepted example, explicit contract, standard, hand
calculation, trusted fixture, or separately implemented oracle.

Do not compute the expectation through the production path, copy the production
algorithm into the test, or snapshot an output merely because it is easy. A
test must remain capable of disagreeing with a plausible wrong implementation.

When the source of truth conflicts with current behavior or another accepted
record, stop and return the conflict to its causal owner. TDD does not choose
new product truth.

## Select the smallest discriminating set

Begin with one canonical example that pulls a meaningful vertical slice through
the real seam. Add cases only when they expose a credible wrong behavior:

- a boundary where the rule changes;
- a contrast that defeats a hardcoded shortcut;
- an invalid input or failure promised by the specification;
- a state transition or interaction order that carries meaning; or
- a regression mechanism already demonstrated by Debug.

A discount example of `$120 → $108` may need `$100 → $100` to distinguish the
threshold rule. That does not justify an exhaustive price matrix.

## Use broader oracles proportionately

For large input spaces, a property, invariant, metamorphic relationship,
reference implementation, or differential comparison may judge behavior better
than enumerated examples. State what the oracle can and cannot establish, and
keep it independent of the implementation under test.

Adaptive examples produced during development are steering evidence. They do
not prove complete coverage of a parser, optimizer, or stochastic system by
themselves; return the broader completion claim to Verify with appropriate
independent evidence.

## Return to TDD

Return the governing claim, expectation source, chosen examples or oracle,
credible wrong behaviors they distinguish, limitations, and the next one
behavior to drive through red–green–refactor.

## Sources

- [Matt Pocock, Test examples](https://github.com/mattpocock/skills/blob/main/skills/engineering/tdd/tests.md)
- [Matt Pocock, TDD guide](https://github.com/mattpocock/skills/blob/main/docs/engineering/tdd.md)

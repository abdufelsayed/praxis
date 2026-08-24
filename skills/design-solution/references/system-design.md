# System design

Use this lens when the meaningful choice concerns component or data ownership,
responsibility, interfaces, runtime placement, dependency direction, failure
isolation, seams, testability, or integration with the current system. Judge
the proposed structure against actual source and runtime evidence.

## Reconstruct the current structure

Inspect current source before proposing a shape. Identify the component that
owns the relevant behavior and data, public and internal interfaces, process
and deployment boundaries, runtime wiring, dependency direction, invariants,
failure propagation, recovery ownership, tests, conventions, and extension
points. Separate declared architecture from effective runtime ownership; a
directory or interface name does not prove enforcement.

## Compare responsibility and locality

For every candidate, state who owns the behavior and why, what information is
hidden or exposed, which interfaces and invariants cross each boundary, and
why each consequential dependency points in its direction. Explain where work
runs, what operational responsibility follows, how failures propagate or stay
isolated, where integration is handled, and where governing behavior can be
proved.

Test whether accepted changes stay local or scatter across owners. Report seams
aligned with real responsibility, information, and accepted volatility, and
flag boundaries that merely mirror task lists, file types, framework layers,
or a current call sequence. Return the evidence to Design Solution for shared
comparison and elimination; do not select a candidate here.

## Test module depth

Treat the interface as everything a caller must know, not only exported symbols.
Prefer a deep module: substantial behavior, policy, and failure handling behind a
small stable interface at a real seam. Judge depth through:

- **leverage:** how much useful behavior the interface provides;
- **locality:** whether likely changes stay behind the boundary;
- **deletion test:** whether removing the module would force its callers to absorb
  meaningful policy rather than a thin forwarding call;
- **proof surface:** whether governing behavior can be tested through the public
  interface without reproducing internals.

Name adapters at the edges where external shapes meet the module's language. Add
an abstraction for observed variation or an accepted near-term alternative, not
for hypothetical generality alone.

## Define proof boundaries

Name the narrowest stable seam that can expose each governing behavior and the
broader integration boundary required when the contract crosses components. A
seam that is testable only after mocking away the governing contract is weak
evidence for that contract. Name any disputed pressure, the observations that
would distinguish it, and the smallest source, visual, or empirical probe that
could resolve it. Return that evidence need to Design Solution without
executing or constructing the probe.

Return the current structure, candidate ownership and boundaries, interfaces,
invariants, dependencies, failure limits, proof seams, accepted change
pressure, evidence, unresolved uncertainty, and earliest owner affected.

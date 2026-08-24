# Boundary substitutes

Use this branch when a true system boundary cannot participate directly in the
TDD loop without making it slow, unstable, unsafe, or unavailable.

Trace from the public seam to the dependency. Replace only a boundary the
system does not own or cannot run faithfully, such as an external service,
clock, randomness source, queue, filesystem, database, or remote
infrastructure. Owned modules execute together through the selected seam.

List the dependency semantics required by the governing claim: inputs and
outputs, errors, ordering, duplication, idempotency, retry, timing,
cancellation, state, side effects, serialization, and compatibility. Choose
the most realistic affordable substitute that preserves them, and validate
consequential divergence against the real provider contract, fixtures,
compatibility tests, or a bounded real probe when practical. Use Check Safety
before a real probe with consequential effects; otherwise use non-effect evidence
or report the missing proof. Prefer controllable
clocks/randomness and protocol-level fakes over interaction mocks.

Return replaced boundary, preserved semantics, substitute credibility,
validation, divergence, and broader integration proof still needed.

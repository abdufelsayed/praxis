# Integration contracts

Use this lens when independent components, services, clients, or
organizations communicate across a meaningful ownership or trust boundary.
The lens compares observable contract shape; it does not prescribe client
files, handlers, migrations, or execution order.

## Reconstruct both sides

Identify producers, consumers, ownership, current contract, schema and version
constraints, failure behavior, and evidence from the actual systems. Separate
guarantees enforced by the provider from behavior callers merely assume.

## Compare interaction semantics

For every candidate, explain request/response, event, or message semantics;
schema ownership and compatibility; identity, ordering, duplication, and
idempotency; timeout, retry, cancellation, and partial failure; consistency
and delivery guarantees; authentication, authorization, and trust boundaries;
error meaning and recovery responsibility; and how the contract evolves
without coordinated breakage.

Walk normal, repeated, delayed, reordered, invalid, and failed interactions.
Flag a candidate whose correctness depends on unstated timing or on every
consumer remembering the same hidden rule, and return that evidence to Design
Solution for shared comparison and elimination. A security or trust question
may need separate evidence, but the contract comparison keeps its own
ownership.

Return candidate interaction semantics, ownership, guarantees, compatibility
and failure consequences, evidence, unresolved uncertainty, and the earliest
owner affected. Detailed accepted contract fields belong to the owning Issue.

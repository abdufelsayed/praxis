# Contract and Integration Design

> **Status: accepted Design Solution reference design; runtime implementation
> pending.**
>
> Load this reference when candidate solutions differ in how independent
> components, services, clients, or organizations communicate. Design Solution
> retains comparison, recommendation, human judgment, return, and stopping.

## The question it helps answer

Contract and Integration Design asks which observable communication contract
preserves accepted behavior across an ownership boundary.

The path reasons about APIs, events, protocols, schemas, and integration
responsibility. It does not own the detailed Issue specification or prescribe
the implementation sequence.

## Reconstruct both sides of the boundary

Identify producers, consumers, ownership, current contracts, version
constraints, failure behavior, and evidence from real source or external
systems. Separate guarantees actually enforced by the provider from behavior
that callers merely assume.

## Compare contracts through interaction semantics

For each serious candidate, explain:

- request, response, event, or message semantics;
- schema ownership and compatibility;
- identity, ordering, duplication, and idempotency;
- timeouts, retries, cancellation, and partial failure;
- consistency and delivery guarantees;
- authentication, authorization, and trust boundaries;
- error meaning and recovery responsibility; and
- how the contract can evolve without coordinated breakage.

Test the contract with concrete normal, repeated, delayed, reordered, invalid,
and failed interactions. Reject a candidate whose correctness depends on
unstated timing or on every consumer implementing the same hidden rule.

Invoke Security when attacker behavior or a trust boundary needs its dedicated
discipline. That composition adds evidence; it does not turn Security into a
design owner.

## Return to Design Solution

Return the candidate contracts, recommended interaction semantics, ownership,
guarantees, compatibility and failure consequences, evidence, unresolved
uncertainty, and earliest governing record affected. The owning Issue later
records the accepted detailed contract. Stop before client files, server
handlers, migration commands, or implementation order.

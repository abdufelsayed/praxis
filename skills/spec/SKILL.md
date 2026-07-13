---
name: spec
description: Use when observable behavior, interfaces, compatibility, edge cases, or acceptance boundaries must become a stable contract before implementation or review.
---

# Spec

Define what must be true without prescribing incidental implementation.

Ground the contract in the user's requirements, current public behavior, tests, and accepted decisions. Resolve product ambiguity before presenting it as settled; use `design` while architecture or intent remains open.

Specify only what callers or operators can observe:

- purpose and affected users or systems;
- inputs, outputs, state transitions, and invariants;
- consequential edge cases and failure behavior;
- compatibility, migration, or rollout constraints;
- acceptance examples or criteria that can be verified.

Use examples where prose permits conflicting interpretations. Mark unresolved questions instead of inventing behavior to complete the document. Keep module placement, file lists, and task order in `design` or `plan`.

Write in conversation for one-session alignment. Create a durable specification only when it will govern another owner, later implementation, or repeated review, following the repository convention. When no format exists and the user wants a file, adapt [references/specification-template.md](references/specification-template.md).

Before calling the specification ready, map every accepted requirement to an acceptance criterion and check for contradictions with current public behavior.

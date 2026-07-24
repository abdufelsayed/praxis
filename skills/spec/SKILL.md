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

Write in conversation for one-session alignment. When the specification will govern another owner, later implementation, or repeated review, write it to the repository's declared specification surface or, by default, `.agents/specs/YYYY-MM-DD-short-title.md`; do not require a separate request for a file. Cite governing decisions with `Governed by`; implementing plans cite the spec with `Implements`. When no format exists, use:

```markdown
---
type: spec
created: YYYY-MM-DD
governed-by: <decision or none>
---

# <Behavior> Specification
## Purpose
## Behavioral Contract
- Given <state/input>, when <action>, then <observable result>.
## Invariants
## Errors And Edge Cases
- <condition> -> <observable behavior>
## Compatibility
## Acceptance Criteria
- [ ] <verifiable result>
## Open Questions
```

Before calling the specification ready, map every accepted requirement to an acceptance criterion and check for contradictions with current public behavior.

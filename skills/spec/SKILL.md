---
name: spec
description: Use when observable behavior, interfaces, compatibility, edge cases, or acceptance boundaries must be defined durably before implementation or review.
---

# Spec

## Overview

Define what must be true without prescribing incidental implementation. A specification becomes the stable behavioral contract used by planning, implementation, and review.

## Ground The Contract

Read the user requirements, current behavior, public interfaces, tests, and relevant decisions. Resolve product or caller ambiguity before presenting the specification as accepted. Use `design` when architectural choices remain open.

## Specify Observable Behavior

Describe:

- purpose and affected users or callers;
- inputs, outputs, state transitions, and invariants;
- normal behavior and consequential edge cases;
- errors and failure behavior visible to callers;
- compatibility, migration, or rollout constraints;
- acceptance examples or criteria that can be verified.

Use examples where prose would permit conflicting interpretations. Mark unresolved questions explicitly; do not choose product behavior merely to make the document complete.

Keep module placement, task ordering, and file-by-file edits out unless they are part of the public contract. Those belong in `design` or `plan`.

## Preserve Only When Useful

Write in conversation for one-session alignment. Use the repository's specification convention when the contract will guide another owner, future implementation, or repeated review. If no convention exists and the user wants a durable file, adapt [references/specification-template.md](references/specification-template.md).

Before calling the specification ready, map every requirement to an acceptance criterion and check for contradictions with current public behavior and accepted decisions.

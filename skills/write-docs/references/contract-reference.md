# Contract Reference

Load this reference when the reader needs precise lookup of an API, CLI,
configuration surface, schema, library interface, event, or another stable
contract. It supplements the common Write Docs procedure; it does not own
implementation, generated-source changes, migration narrative, or publication.

## Fix one supported boundary

Name the interface, intended reader, authoritative source, supported version or
capability range, and public boundary this reference promises to cover.
Within that boundary account for every supported member needed for reliable
use:

- identity and purpose;
- syntax, shape, or invocation;
- inputs, outputs, types, and defaults;
- constraints and invariants;
- side effects and lifecycle;
- meaningful failure behavior; and
- compatibility or version conditions.

Do not include internal details merely because they are visible in source. Do
not invent unsupported possibilities to make the catalog look complete.
Examples illustrate the normative contract but never replace its supported
semantics.

## Preserve one authoritative source

Generate signatures, fields, defaults, enum values, and other machine-
derivable facts from the owning schema, type, interface, annotation, or
generator. When a generated fact is wrong, correct that source and regenerate
through the native path. Never hand-patch disposable generated output or keep
a conflicting duplicate.

Write beside the generated entry the semantics that a machine-readable source
cannot express clearly: ordering, idempotency, partial effects, ownership,
preconditions, compatibility consequences, or operational limits. Link one
owning explanation instead of copying the same field, failure, or constraint
into several entries.

## Organize for lookup

Group entries by public names readers recognize: domain, resource, command,
configuration namespace, schema, or event family. Provide stable anchors and a
navigable index for a large surface, consistent entry shapes, predictable
ordering, and links to related contracts or explanations. Internal file or
module movement does not define the reader's information architecture unless
it is itself public.

## Bind claims to version truth

State the supported version, protocol, capability, or compatibility range
where behavior varies. Mark introduction, deprecation, replacement, and
removal precisely. Keep current supported behavior primary; retain older
behavior only for readers who are still supported. Never present an intended
future contract as current or merge incompatible versions into one unlabeled
entry. Transition narrative and required migration belong to Change
Communication, while this reference owns the exact interface at each point.

## Make failures actionable

For each operation, document contractually meaningful failure conditions with
their observable representation, whether side effects may already have
occurred, retry or idempotency meaning, supported caller response, and any
version or environment condition that changes behavior. Keep shared platform
errors in one owner and operation-specific consequences beside the operation.
Do not promise exhaustive internal exceptions that the public contract does
not stabilize.

Adapt emphasis to the interface kind. APIs, libraries, and CLIs need
invocation, parameters, types, defaults, outputs, effects, failures,
idempotency, and compatibility. Configuration needs key, type, accepted
values, default, scope, precedence, inheritance, mutability, secret status,
reload or restart behavior, and version. Schemas need field meaning,
requiredness, nullability, invariants, relationships, validation, evolution,
compatibility, and unknown-field behavior. Events need producer, consumer,
trigger, payload, identity, ordering, delivery, duplication, acknowledgement,
retry, idempotency, versioning, and evolution. Omit empty boilerplate.

## Keep examples subordinate

Use small realistic examples for syntax, interactions, edge cases, or failure
meaning. Every value must satisfy the documented types and constraints and
remain consistent with related examples. Examples are non-exhaustive unless
the contract says otherwise; a task guide owns full executable journeys.

## Verify the reference

Before returning, verify every documented member against the authoritative
source, every supported member inside the promised boundary, signatures,
fields, defaults, enums, constraints, failures, side effects, version labels,
anchors, indexes, links, cross-references, and example conformance. State any
member, version, generated surface, or failure path that could not be checked.

Return the verified lookup surface and material gaps to Write Docs. This
reference does not change the interface, execute examples, or publish output.

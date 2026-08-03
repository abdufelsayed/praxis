# Contract Reference

> **Status: accepted Write Docs reference design; runtime implementation
> pending.**
>
> Load this reference when the reader needs precise lookup of an API, CLI,
> configuration surface, schema, library interface, event, or another stable
> contract.

## Fix one supported contract boundary

Name the interface, intended reader, authoritative source, supported version or
capability range, and the public boundary the reference promises to cover.

Within that boundary, document every supported member needed to use the
contract reliably:

- identity and purpose;
- syntax, shape, or invocation;
- inputs, outputs, types, and defaults;
- constraints and invariants;
- side effects and lifecycle;
- meaningful failure behavior; and
- compatibility or version conditions.

Do not include internal implementation details merely because they are visible
in source. Do not invent unsupported possibilities to make the catalog appear
complete. Examples illustrate the normative contract but never replace its
complete supported semantics.

## Preserve one authoritative source

Generate machine-derivable facts from the authoritative schema, type,
interface, code annotation, or other owning source. Signatures, fields,
defaults, enum values, and similarly structured facts should not have
independent hand-maintained copies.

Author consequential semantics that the machine-readable source cannot express
clearly, such as ordering, idempotency, partial effects, ownership,
preconditions, compatibility consequences, or operational constraints. Place
those semantics beside the generated entry or link them through one stable
owning surface.

When a generated fact is wrong, correct its authoritative source and
regenerate. Never patch disposable generated output or preserve a conflicting
hand-written copy.

## Organize for lookup rather than source traversal

Group entries by the public domain, resource, command, configuration namespace,
schema, or event family that readers recognize. Internal file layout and module
movement do not define the reader's information architecture unless they are
the public contract.

For a large surface, provide:

- stable public names and anchors;
- a navigable index or search structure;
- consistent ordering and naming;
- predictable entry shapes within each interface kind; and
- cross-links to related contracts and owning explanations.

Preserve public identities when internal ownership moves. Link one owning
definition instead of copying the same field, error, type, or constraint into
several entries.

## Bind claims to version truth

State the supported version, capability, protocol, or compatibility range in
which materially varying behavior applies. Mark introduction, deprecation,
replacement, and removal precisely.

Keep supported current behavior primary. Preserve older behavior only where
the documentation still supports readers using that version. Do not describe
an intended future contract as current or merge several incompatible versions
into one unlabeled entry.

Change Communication owns migration narrative, release impact, and required
transition steps. Contract Reference owns the exact interface available in
each documented version and links the appropriate transition material.

## Describe failures as caller-visible behavior

For each operation, document contractually meaningful failure conditions
together with:

- the observable representation;
- whether side effects may already have occurred;
- retry, idempotency, or recovery meaning;
- the supported caller response; and
- any version or environment condition that changes the behavior.

Keep shared platform errors in one owning error model and link them from each
operation. Keep operation-specific consequences beside the operation. Do not
promise exhaustive internal exceptions or transient implementation failures
that the public contract does not stabilize.

## Adapt entries to the interface kind

Use a common semantic standard rather than one empty universal template.

### APIs, libraries, and CLIs

Emphasize invocation, parameters or arguments, types, defaults, outputs,
side effects, failure behavior, idempotency, and compatibility.

### Configuration

Emphasize key identity, type, accepted values, default, scope, precedence,
inheritance, mutability, secret status, reload or restart behavior, and version
availability.

### Schemas and data contracts

Emphasize field meaning, required and optional state, nullability, invariants,
relationships, validation, evolution, compatibility, and unknown-field
behavior.

### Events and messages

Emphasize producer, consumer, trigger, payload, identity, ordering, delivery,
duplication, acknowledgement, retry, idempotency, versioning, and evolution.

Add other interface-specific fields only when they materially change use of
that contract. Omit irrelevant headings rather than preserving empty
boilerplate.

## Keep examples subordinate to the contract

Use small realistic examples to clarify syntax, interactions, edge cases, or
failure meaning. Every value must satisfy the documented types and constraints
and remain consistent with related examples.

Examples are non-exhaustive unless the contract explicitly says otherwise.
Task Guidance owns full executable journeys and representative choices;
Contract Reference owns exhaustive supported lookup. Link the two instead of
turning reference entries into tutorials.

## Verify the reference surface

In addition to Write Docs' common verification, check that:

- every documented member exists in the authoritative source;
- every supported member inside the promised boundary is represented;
- signatures, fields, defaults, enums, and constraints match generated or
  observed truth;
- failures and side effects are actionable rather than merely named;
- version and compatibility labels select one unambiguous contract;
- anchors, indexes, links, and cross-references resolve; and
- examples conform to the same contract they explain.

Return the verified reference and any material gap to Write Docs. This
reference does not own the documentation request, change the interface,
publish generated output independently, or absorb Task Guidance,
Understanding, Operations, or Change Communication.

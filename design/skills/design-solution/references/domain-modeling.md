# Domain Modeling

> **Status: accepted semantic source; target runtime projection: `references/domain-models.md`.**

> Load this reference when a consequential solution choice depends on the
> concepts, meanings, relationships, invariants, or state transitions used to
> represent the problem. Design Solution retains comparison, recommendation,
> human judgment, return, and stopping.

## The question it helps answer

Domain Modeling asks which conceptual model can express the accepted behavior
without contradiction or accidental ambiguity.

It does not require a complete ontology, a glossary record, or a particular
modeling notation. Clarify only enough of the domain to distinguish the
candidate solutions and preserve the invariants that later specifications and
implementation must respect.

## Reconstruct the language and behavior

Inspect accepted Requirements, current behavior, source concepts, tests,
external domain authority, and the human's own language. Identify terms that
are overloaded, relationships that remain implicit, and states the current
model cannot represent honestly.

Do not treat existing class names or database tables as domain truth. They are
evidence about the current implementation and may encode historical
compromises or the exact ambiguity under discussion.

## Compare models through scenarios

For each serious candidate:

- name the concepts and their meanings;
- distinguish identities, values, relationships, and ownership;
- state the invariants and valid state transitions;
- explain what the model makes impossible or ambiguous; and
- walk concrete success, failure, correction, and edge scenarios through it.

A payments model, for example, should make authorization, capture, settlement,
and refund behavior coherent under partial failure rather than merely assign
better names to one status field.

Prefer language that remains stable across interfaces and code. Reject a model
whose correctness depends on every caller remembering undocumented exceptions.

## Resolve evidence conflicts

When domain authority, current behavior, and accepted Requirements disagree,
surface the conflict to Design Solution. Do not silently preserve a legacy
meaning or replace it with textbook terminology. The governing owner decides
which behavior changes.

## Return to Design Solution

Return the candidate models, tested scenarios, recommended concepts,
relationships, invariants, transitions, supporting evidence, unresolved
ambiguity, and earliest governing record affected. Stop before prescribing
storage schemas, files, migrations, or implementation order.

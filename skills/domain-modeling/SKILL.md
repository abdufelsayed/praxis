---
name: domain-modeling
description: Sharpen a project's domain language, invariants, and state transitions when fuzzy or conflicting terms are causing design or implementation ambiguity.
---

# Domain Modeling

Build a precise shared model in conversation.

Read existing domain documentation, relevant source, interfaces, tests, and
examples. Treat code as evidence of current behavior, not automatic authority over
intended meaning.

## Sharpen the model

- Challenge a term that conflicts with the existing glossary or current behavior.
- Split overloaded words when they hide distinct actors, states, ownership, or
  invariants.
- Prefer one canonical project term and state rejected synonyms when confusion is
  likely.
- Stress-test relationships and state transitions with concrete normal, boundary,
  failure, recovery, and concurrency scenarios.
- Distinguish domain meaning from storage, framework, UI, and implementation
  vocabulary.

For each important concept, establish its definition, identity, lifecycle,
invariants, relationships, actor language, and examples or counterexamples. Keep
unresolved human judgments explicit.

## Return the model

Present the canonical terms, definitions, identities, invariants, relationships,
state transitions, examples, rejected meanings, and unresolved human judgments
that materially affect the current work. Explain the behavioral or design
consequence of every correction.

Keep the result conversational. Update an existing glossary or another named
domain document only when the requester explicitly asks and that document already
owns the vocabulary. Do not establish a documentation hierarchy or create a
durable decision record by implication.

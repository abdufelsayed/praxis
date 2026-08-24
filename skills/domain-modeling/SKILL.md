---
name: domain-modeling
description: Sharpen a project's domain language, invariants, and state transitions when fuzzy or conflicting terms are causing design or implementation ambiguity.
---

# Domain Modeling

Build a precise shared model in conversation before deciding whether it deserves a
durable document.

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

## Persist deliberately

Present the sharpened model and its consequences first. Update an existing
glossary, `CONTEXT.md`, ADR, or a compact `.praxis` context record only when the
requester asks or names that durable consumer.

Use an ADR only for a consequential choice that is hard to reverse, surprising
without its rationale, and selected among real alternatives. Domain modeling does
not silently rewrite documentation whenever conversation or code exposes a
difference.

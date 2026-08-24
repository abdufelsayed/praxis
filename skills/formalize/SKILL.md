---
name: formalize
description: Synthesize accepted conversation and project truth into a reader-ready specification. Use when the meaning is settled enough to describe behavior without an interview or implementation guesses.
---

# Formalize

Translate accepted meaning into one coherent specification. This is synthesis,
not another discovery interview and not permission to publish or implement.

## Ground the specification

Read the current conversation, relevant source and behavior, existing `.praxis`
material, accepted decisions, and the project's own vocabulary. Distinguish
accepted meaning from proposals and unresolved questions. Return a changed need
or constraint to Discover Requirements rather than filling the gap with a design
guess.

Inspect current interfaces and test seams where they affect what can be stated or
proved. Source shape is evidence about the present system, not authority over the
desired outcome.

## Synthesize the useful contract

Write only the sections this work needs. A useful specification commonly covers:

- the problem, actor, and intended outcome;
- accepted behavior and representative scenarios;
- requirements, boundaries, and exclusions;
- interfaces, invariants, compatibility, and failure behavior;
- acceptance evidence or proof seams;
- settled decisions, safe-to-carry uncertainty, and out-of-scope work.

Use concrete scenarios where prose could otherwise hide ambiguity. A small
prototype or code snippet is appropriate when the decision depends on how an API,
interaction, or state transition feels, but the artifact does not become the
specification by itself.

Reconcile the whole document against accepted meaning once. Every accepted
requirement is covered, explicitly out of scope, or assigned to a named later
owner. Avoid exhaustive user-story inventories and repeated document maintenance
that do not sharpen behavior or proof.

## Hand off deliberately

Present the specification in conversation by default. Persist it under the
relevant `.praxis` effort, publish it to an issue tracker, or update another
document only when the requester asks or names that consumer.

For bounded implementation work, [Define Issues](../define-issues/SKILL.md) can
split the specification into tracer bullets. For a destination whose path remains
too uncertain for one implementation context, [Evolve](../evolve/SKILL.md) can map
the decision frontier. Recommend the fitting route, but invoke it only when the
requester selects it or the same request explicitly asks to continue.

Stop with the specification, its unresolved boundaries, and the recommended next
move. Do not publish, plan, or implement by implication.

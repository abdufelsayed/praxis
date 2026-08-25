---
name: write-spec
description: Synthesize already-settled conversation and project truth into a concise specification when a named reader or future activity needs one.
---

# Write Spec

Translate accepted meaning into one coherent specification. This is synthesis,
not another discovery interview and not permission to publish or implement.

## Ground the specification

Read the current conversation, relevant source and behavior, accepted decisions,
and the project's own vocabulary. Distinguish accepted meaning from proposals and
unresolved questions. Return a changed need or constraint to Discover Requirements
rather than filling the gap with a design guess.

Inspect current interfaces and proof seams only where they affect what can be
stated or verified. Source shape is evidence about the present system, not
authority over the desired outcome.

This step is complete when every statement in the specification can be traced to
accepted meaning, current evidence, or a visibly unresolved boundary.

## Write the useful contract

Use only the sections the reader needs. A specification may cover:

- the problem, actor, and intended outcome;
- accepted behavior and representative scenarios;
- requirements, boundaries, and exclusions;
- interfaces, invariants, compatibility, and failure behavior;
- acceptance evidence or proof seams; and
- settled decisions, safe-to-carry uncertainty, and out-of-scope work.

Use concrete scenarios where prose would otherwise hide ambiguity. Include a
prototype or code snippet only when it preserves a decision more precisely than
prose; the artifact does not become the specification itself.

Reconcile the document against accepted meaning once. Every accepted requirement
is covered, explicitly excluded, or assigned to a named later owner. Stop when
additional sections would repeat the conversation rather than sharpen behavior or
proof.

## Hand off only when useful

Present the specification in conversation by default. Persist it under the
relevant `.praxis/<effort>/`, publish it to a configured tracker, or update another
named destination only when the requester asks or identifies that consumer.
Follow repository conventions and inspect the current tracker surface at the time
of use rather than relying on cached commands.

Use Define Issues when bounded implementation work needs tracer bullets. Use
Evolve when the destination remains too uncertain for one implementation context.
If the same request already asks to continue, return the specification to the
caller; otherwise stop with the specification, unresolved boundaries, and one
recommended next move.

Writing a specification does not authorize planning, implementation, publication,
commit, or another external effect.

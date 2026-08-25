# Domain models

Use this lens when the consequential choice depends on concepts, meanings,
relationships, invariants, or state transitions that are fuzzy, overloaded, or
contradictory. Keep the choice tied to accepted behavior; this lens supplies
conceptual evidence and does not own the comparison or its result.

## Reconstruct the language

Inspect accepted requirements, current behavior, source concepts, tests,
relevant external authority, and the requester's language. Name overloaded terms,
implicit relationships, ownership, and states the current model cannot
represent honestly. Existing class names, tables, and status fields are
evidence about implementation history, not domain truth.

Clarify only the domain needed to distinguish the candidate shapes. Separate
identities, values, relationships, and ownership. State the invariants and
valid transitions that every viable model must preserve.

## Compare through scenarios

For each candidate, name the concepts and meanings, then walk concrete success,
failure, correction, retry, and edge scenarios through the model. Show what
the model makes impossible, explicit, or ambiguous. A model is weak when every
caller must remember an undocumented exception or when one state field hides
distinct transitions.

Use stable language that can survive across interfaces and code. Prefer a
conceptual distinction that explains observable behavior over a new label for
the same ambiguity.

## Resolve conflicts honestly

When domain authority, current behavior, and accepted requirements disagree,
preserve the conflict and state its consequence. Do not silently retain a
legacy meaning or replace it with textbook terminology. The owning comparison
must decide which meaning changes, what evidence supports it, and which
invariant a later specification or implementation must preserve.

Return the candidate concepts, relationships, invariants, transitions,
scenario evidence, unresolved ambiguity, and the earliest owner affected.

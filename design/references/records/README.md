# Records

> **Status: accepted semantic routing source; no runtime index. Target runtime
> projections are the four directly loaded record references named below.**

Use this design source when durable Praxis state must be created, located,
read, moved, or revised. Runtime consumers directly load
`references/records/foundations.md` and only their accepted family reference;
they do not load an index or follow a reference chain. The semantic families
are:

- [Requirements Discovery](discovery.md) defines Initiative Briefs,
  Project Briefs, Requirements, Unknowns Maps, and References Indexes.
- [Formalization](formalization.md) defines Evolution Maps,
  Evolutions, and Issues.
- [Delivery](delivery.md) defines Implementation Plans and their
  authority lifecycle.

The target projections are `references/records/foundations.md`,
`references/records/discovery.md`, `references/records/formalization.md`, and
`references/records/delivery.md`. Records preserve governing meaning for future
human-agent loops. They are not
workflow logs, artifacts, or message archives. Their lifecycle is lazy
creation, stable identity through semantic refinement, in-owner revision,
independent gate, disposition, and authority projections, explicit movement or
supersession when identity changes, and retention only while a named consumer
needs the governing meaning. [Core](core.md) owns the common envelope,
persistence, movement, supersession, and cleanup rules; the family files own
the exact record bodies and kind-specific lifecycle rules.

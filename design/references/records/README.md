# Records

> **Status: accepted plugin-wide reference router.**

Use this reference when durable Praxis state must be created, located, read,
moved, or revised. Load [Core](core.md) first, then load only the
record family whose body or lifecycle is relevant:

- [Requirements Discovery](discovery.md) defines Initiative Briefs,
  Project Briefs, Requirements, Unknowns Maps, and References Indexes.
- [Formalization](formalization.md) defines Evolution Maps,
  Evolutions, and Issues.
- [Delivery](delivery.md) defines Implementation Plans and their
  authority lifecycle.

Records preserve governing meaning for future human-agent loops. They are not
workflow logs, artifacts, or message archives. Their lifecycle is lazy
creation, stable identity through semantic refinement, in-owner revision,
independent gate, disposition, and authority projections, explicit movement or
supersession when identity changes, and retention only while a named consumer
needs the governing meaning. [Core](core.md) owns the common envelope,
persistence, movement, supersession, and cleanup rules; the family files own
the exact record bodies and kind-specific lifecycle rules.

# Reviewing Code Changes

## Behavioral fidelity

Trace the intended behavior through normal paths, edge cases, failures, state
transitions, compatibility obligations, and deliberate exclusions. Read the
connected source, tests, callers, data flow, dependencies, and history needed
to understand what the change exposes. A diff is evidence of the change, not
the boundary of the investigation.

## Specification Fidelity

Compare the working form with the governing behavior and its material
constraints. A green test supports an observation, but cannot establish that
the tested expectation is the governing one or that a required path was not
omitted.

## Engineering Integrity

Inspect concrete correctness, security, operational, and changeability
mechanisms. Ask what must change together, where invariants are enforced, how
failures propagate, whether required transitions remain atomic, and whether
the resulting structure can carry expected later changes.

Treat duplicated policy, hidden coupling, incompatible boundaries, unsafe
failure handling, and structural pressure as findings only when their
mechanism and material consequence are explainable. Metrics, match counts,
naming preferences, and generic style rules are not mechanisms by themselves.

Use common smells as search terms, not automatic violations:

- **mysterious name:** the changed concept cannot be named honestly;
- **feature envy or message chains:** a caller reaches through another owner's
  data or internals;
- **data clumps or primitive obsession:** a domain concept remains scattered
  across repeated primitives;
- **repeated branches:** policy is duplicated across switches or conditionals;
- **shotgun surgery or divergent change:** one behavior scatters across owners,
  or one owner changes for unrelated reasons;
- **middle man or speculative generality:** an abstraction adds forwarding or
  hypothetical variation without useful hidden policy.

Report one only when the diff demonstrates its mechanism and consequence.

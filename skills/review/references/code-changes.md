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

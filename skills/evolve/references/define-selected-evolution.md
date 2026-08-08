# Define the Selected Evolution

Load this method only after the requester explicitly selects one Evolution from an
approved current Map.

Read the complete Map and resolve the selection by stable descriptive ID. It
must match exactly one current entry. Reject a missing, duplicate, stale, or
sequence-position-only target; create no Evolution file and return the exact
selection, Map revision, and repair condition.

Persist the valid selection at `<project>/evolutions/eN-<name>.md`. Keep the stable ID
independent from its current sequence position. Define one complete high-level
working form with these bodies:

- `Governing Context and Accepted Truth`
- `Tangible Advancement`
- `Included High-Level Behavior`
- `Integration with Existing Project Work`
- `Deliberate Limitations`
- `Learning Target` only when it changes a named later judgment
- `Required Proof`
- `Current Recommendation`

Stay above detailed interfaces, edge cases, acceptance criteria, files,
commands, implementation sequence, and checks; Issues and Plans own those.
Anything necessary for the promised advancement must remain included for later
Issue definition. Add accepted-result coverage only after Evolution
Acceptance, never while specifying the definition.

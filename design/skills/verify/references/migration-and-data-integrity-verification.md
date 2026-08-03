# Migration and Data-Integrity Verification

> **Status: accepted semantic source; target runtime projection: `references/migration-data-evidence.md`.**

> Load this reference when a claim concerns a schema or data transition whose
> preservation, compatibility, interruption, retry, or idempotency behavior
> needs explicit proof. Verify retains claim ownership, outcome semantics,
> return, and stopping.

## Derive invariants from the accepted transition

State what must remain true before, during, and after the transition. Relevant
invariants may cover record counts, identity and relationships, value
preservation or transformation, uniqueness, ordering, authorization,
referential integrity, old and new reader behavior, availability, and
deliberately removed data.

Do not infer invariants from the migration code after it is written. Derive
them from accepted Requirements, Issues, compatibility commitments, and
deliberate limitations so the evidence can disagree with the implementation.

## Build representative starting states

Exercise data shapes capable of exposing the promised behavior: ordinary
existing records, boundary values, null or legacy forms, duplicate or
historically tolerated states, large or interrelated records, and mixed-version
states when relevant. An empty database proves only the empty-database path.

Production data may inform representative fixtures without being copied into
unsafe environments or exposed in verification output. State which
production-shaped conditions remain unrepresented.

## Exercise the transition lifecycle

Verify the paths the accepted contract promises:

- forward transformation and post-transition invariants;
- compatibility between old and new readers or writers during any supported
  window;
- interruption, restart, retry, and idempotency behavior;
- partial progress and failure reporting; and
- rollback or restoration only when the design genuinely supports it.

A command exiting successfully does not establish data integrity. Compare
before-and-after state through independent queries, checks, or application
behavior at the governing boundary.

## Respect destructive proof boundaries

Prefer disposable databases, snapshots, fixtures, or isolated environments.
Invoke Check Safety before any destructive, data-affecting, production, backup,
restore, or external proof action. If the required environment or authority is
unavailable, return the affected claim as `unverified` rather than testing on
live data opportunistically.

Never claim rollback from the existence of a down migration alone. Prove the
promised restoration path and name irreversible transformations or information
loss explicitly.

## Return to Verify

Return the tested starting states, before-and-after invariants, transition
paths, independent observations, exact environment, destructive-action
boundary, unrepresented data shapes, and claim status. Do not repair corrupted
data, rewrite the migration, or broaden authority inside verification.

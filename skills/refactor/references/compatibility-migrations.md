# Compatibility migrations

Use this branch when old and new interfaces, data shapes, or internal
contracts must coexist temporarily.

Name the old and intended forms, affected callers or data, compatibility
promise, mixed-state behavior, and exact exit conditions. An undecided
transition shape or required observable-behavior change remains outside this
method and must be preserved as an unresolved boundary for Refactor.

Use an explicit expand, migrate, contract sequence: establish evidence,
introduce the new form without breaking the old, tolerate mixed states, move
writers or data in attributable steps, verify ordinary and mixed behavior,
stop producing the old form, prove exit conditions, and remove scaffolding.
Dual reads, dual writes, adapters, backfills, and translation layers are
temporary mechanisms only when the accepted transition requires them; state
how divergence or partial failure is detected.

Exercise interrupted migration, stale callers, retries, partial movement, and
failed validation when plausible. A rollback claim accounts for irreversible
writes; otherwise define forward recovery. Consequential data mutation,
deployment, or remote effects retain exact Plan inclusion, action-time
authority, Safety evidence, and post-action proof. This reference creates none
of those boundaries.
Return compatibility contract, intermediate states, migrated surface,
validation, old-form producers or consumers, recovery limits, and unresolved
risk. This reference owns no mutation authority or stopping.

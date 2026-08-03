# Compatibility-Preserving Migration

> **Status: accepted Refactor reference design; runtime implementation
> pending.**
>
> Load this reference when relieving structural pressure requires old and new
> interfaces, data shapes, or internal contracts to coexist temporarily.
> Refactor retains scope, authority, return, and stopping.

## Start from an accepted transition

Identify the old form, intended form, affected callers or data, compatibility
promise, mixed-state behavior, and exact exit conditions. If materially
different transition shapes remain undecided, return to Design Solution. If
observable or governed behavior must change, return to Formalization.

Do not call a flag-day rewrite incremental because it is split into commits.
The system is incremental only when every meaningful intermediate state has
defined compatibility and proof.

## Expand, migrate, then contract

Adapt the sequence to the system, but preserve this logic:

1. establish behavior and migration evidence;
2. introduce the new form without breaking the old;
3. make reads or consumers tolerate the required mixed states;
4. move writers, callers, or data in bounded attributable steps;
5. verify both ordinary and mixed-state behavior;
6. stop producing the old form;
7. prove the exit conditions; and
8. remove compatibility scaffolding and re-prove the integrated result.

Dual reads, dual writes, adapters, backfills, and translation layers are
temporary techniques, not defaults. Use only the mechanism required by the
accepted transition and name how its divergence or partial failure is detected.

## Keep failure and recovery explicit

Test interrupted migration, stale callers, retries, partial data movement, and
failed validation when they are plausible. A rollback claim must account for
irreversible new writes; otherwise define forward recovery instead.

Consequential data mutation, deployment, or remote effect still requires exact
Plan inclusion, action-time authority, Safety evidence, and post-action proof.
This reference creates none of that authority.

## Return to Refactor

Return the compatibility contract, intermediate states, migrated surface,
validation and exit evidence, remaining old-form producers or consumers,
temporary scaffolding, recovery limits, and unresolved risk. Stop only after
the approved exit conditions pass or return the incomplete state honestly.

## Sources

- [Martin Fowler, Parallel Change](https://martinfowler.com/bliki/ParallelChange.html)
- [Martin Fowler, *Refactoring*](https://martinfowler.com/books/refactoring.html)

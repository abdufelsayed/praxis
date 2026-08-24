# Transition and operations

Use this lens when candidate solutions differ in how an existing system moves
between states. It defines a safe transition shape, not a migration checklist
or mutation authority.

## Reconstruct current and intended states

Identify current behavior and data, intended behavior, compatibility duties,
live traffic or user activity, operational ownership, available observability,
and what is reversible. Verify assumptions about backups, replay, downgrade,
and mixed-version behavior rather than naming them as guarantees.

## Compare intermediate states

For every candidate, explain which old and new forms coexist and for how long;
read, write, synchronization, and compatibility behavior during coexistence;
rollout and cutover criteria; validation before irreversible steps; rollback or
forward-recovery limits; partial-failure containment; signals that distinguish
healthy progress from corruption; and who can pause, resume, or recover.

Walk normal progress, interruption, stale participants, retry, partial
completion, and failed validation. Flag a transition that is safe only when
every step succeeds or whose rollback claim ignores irreversible writes, and
return that evidence to Design Solution for shared comparison and elimination.
Account for accepted operational pressure without designing for unsupported
futures.

Return candidate intermediate states, compatibility windows, cutover and
recovery boundaries, visibility, evidence, unresolved uncertainty, and the
earliest owner affected.

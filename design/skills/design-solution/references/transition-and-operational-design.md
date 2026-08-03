# Transition and Operational Design

> **Status: accepted semantic source; target runtime projection: `references/transition-operations.md`.**

> Load this reference when candidate solutions differ in how an existing
> system moves safely between states. Design Solution retains comparison,
> recommendation, human judgment, return, and stopping.

## The question it helps answer

Transition and Operational Design asks which sequence of compatible system
states can introduce the accepted change while containing failure and
preserving recovery.

It defines the transition shape rather than the implementation checklist.
Evolve may later organize accepted intermediate working forms as Evolutions,
while Delivery Plans own concrete commands, mutations, and execution order.

## Reconstruct the current and intended states

Identify the current behavior and data, the intended behavior, compatibility
constraints, live traffic or user activity, operational ownership, available
observability, and what can or cannot be reversed. Verify assumptions about
backups, replay, downgrade, and mixed-version behavior rather than naming them
as guarantees.

## Compare transitions through intermediate states

For each serious candidate, explain:

- which old and new forms coexist and for how long;
- read, write, synchronization, and compatibility behavior during coexistence;
- rollout and cutover criteria;
- validation before irreversible steps;
- rollback or forward-recovery limits;
- partial failure and failure containment;
- operational signals that distinguish healthy progress from corruption; and
- who can pause, resume, or recover the transition.

Test normal progress, interruption, stale participants, retry, partial
completion, and failed validation. Reject a transition that is safe only when
every step succeeds or whose rollback claim ignores irreversible writes.

## Return to Design Solution

Return the candidate transition shapes, intermediate states, compatibility
windows, cutover and recovery boundaries, required visibility, recommendation,
evidence, unresolved uncertainty, and earliest governing record affected. Stop
before commands, file edits, deployment steps, migration tasks, or mutation
authority.

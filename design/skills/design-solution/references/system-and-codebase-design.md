# System and Codebase Design

> **Status: accepted semantic source; target runtime projection: `references/system-design.md`.**

> Load this reference when a consequential solution choice depends on system
> or module boundaries, responsibility placement, interfaces, runtime
> topology, seams, dependency direction, failure isolation, locality,
> testability, or integration with the current system. Design Solution retains
> the comparison, recommendation, human judgment, return, and stopping
> decision.

## The question it helps answer

System and Codebase Design asks which source- and runtime-grounded structure
best preserves accepted Requirements and specifications while keeping
consequential behavior, ownership, failure, and expected change understandable.

It does not produce a generic architecture review or an Implementation Plan.
Use it only when different structures would materially change the solution
judgment.

## Reconstruct the current design

Inspect the current source before proposing a shape. Identify:

- the component that currently owns the relevant behavior and data;
- public and internal interfaces;
- process, service, worker, storage, and deployment boundaries that matter;
- runtime wiring, communication, and integration seams;
- dependency direction;
- invariants enforced at each boundary;
- failure propagation, isolation, and recovery ownership;
- tests that exercise the behavior;
- nearby conventions and extension points; and
- known structural pressure supported by accepted Requirements or evidence.

Separate declared architecture from effective runtime ownership. A directory
name or interface does not prove that responsibility is enforced there.

## Compare structures through responsibility

For each serious candidate, explain:

- which component owns the behavior and why;
- what information the owner must hide or expose;
- which interfaces and invariants cross the boundary;
- the direction and reason for each consequential dependency;
- where work runs and which operational responsibility follows that placement;
- how failures propagate, remain isolated, and recover;
- where integration and failure are handled;
- where the behavior can be proved;
- how the accepted change remains local or becomes scattered; and
- which concrete future pressure the structure supports or obstructs.

A design is not better because it has more layers. Judge whether its boundaries
make the governing behavior easier to preserve, understand, test, and change.

## Find stable seams

Prefer seams aligned with real responsibility, information, and volatility.
Reject a seam that merely mirrors a task list, file type, framework layer, or
current call sequence when those divisions scatter one invariant across
owners.

Test interface pressure with concrete scenarios. If every accepted change
requires callers to understand a component's internals, the proposed boundary
is not hiding the relevant decision. If one owner accumulates unrelated reasons
to change, compare a more coherent responsibility split.

## Use future pressure only when accepted

Account for known next changes, volatility, scale, compatibility, or operating
constraints when accepted Requirements or current evidence make them relevant.
Do not add abstraction for imagined futures.

When one expected pressure could determine the design, test it with the
smallest diagram, disposable extension, source trace, or other probe capable of
revealing the difference.

## Define proof boundaries

Identify the narrowest stable seam that can prove each governing behavior and
the broader integration boundary needed when the contract crosses components.
Do not prescribe test files, frameworks, commands, or implementation order.

The design should make incorrect responsibility or dependency violations
observable. A seam that can be tested only by mocking away the governing
contract is weak evidence for that contract.

## Stop before the Plan

Return the architecture, ownership, runtime placement, interfaces, invariants,
dependency direction, failure boundaries, stable seams, test boundaries, and
consequential behavior needed to judge the solution.

Do not list files to edit, commands to run, execution steps, migrations, task
checklists, or bounded mutation authority. Delivery determines those details
in the Implementation Plan after the design meaning belongs to its governing
Evolution, Issue, or Plan.

## Return to Design Solution

Return:

- the current source-grounded structure;
- the serious candidate shapes;
- the recommended ownership and boundaries;
- interfaces, invariants, dependencies, seams, and proof boundaries;
- accepted change pressure and structural consequences;
- evidence and unresolved uncertainty; and
- the earliest governing record affected.

Design Solution integrates this analysis into its comparison and owns the
human-facing recommendation.

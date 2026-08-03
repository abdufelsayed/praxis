# Ownership and Dependency Restructuring

> **Status: accepted Refactor reference design; runtime implementation
> pending.**
>
> Load this reference when structural pressure comes from scattered
> responsibility, leaking boundaries, dependency cycles, or callers knowing
> another component's internals. Refactor retains scope, authority, return, and
> stopping.

## Reconstruct effective ownership

Trace where the governing behavior is decided, where its data lives, which
callers must understand it, and which components enforce or bypass its
invariants. Directory names and declared interfaces do not establish ownership
when runtime behavior contradicts them.

State the pressure as a change mechanism. For example, adding one credential
type currently requires copying session revocation rules into another handler.
That evidence is stronger than saying the handlers are coupled.

## Choose the smallest coherent owner

Identify the component with the information and responsibility needed to own
the behavior. A useful boundary:

- hides the decision callers should not know;
- exposes the smallest stable contract callers genuinely need;
- keeps each invariant enforceable by one responsible owner;
- points dependencies toward the owner rather than through cycles; and
- localizes the accepted change that exposed the pressure.

If several materially different owners or system shapes remain credible,
return the bounded choice to Design Solution. Do not smuggle an architectural
commitment through mechanical movement.

## Move responsibility incrementally

Establish preservation evidence, introduce the owner or seam, move one coherent
responsibility, redirect callers, and rerun the affected evidence. Separate
mechanical relocation from changed interfaces when that keeps failures
attributable.

Remove the displaced knowledge from callers. A shared helper that leaves every
caller responsible for ordering, policy, or failure handling has centralized
code without centralizing ownership.

Use the narrowest repository inspection that can inventory old shapes or check
syntactic migration completeness, but validate dependency direction and
behavior with source, type, runtime, and test evidence.

## Return to Refactor

Return the original pressure, effective and accepted owner, boundary and
dependency changes, preservation evidence, callers migrated, remaining
leakage, and any governed contract affected. Stop when the named pressure is
relieved, not when every nearby boundary has been redesigned.

## Sources

- [John Ousterhout, *A Philosophy of Software Design*](https://web.stanford.edu/~ouster/cgi-bin/aposd.php)
- [Martin Fowler, *Refactoring*](https://martinfowler.com/books/refactoring.html)

# Ownership restructuring

Use this branch when pressure comes from scattered responsibility, leaking
boundaries, dependency cycles, or callers knowing another component's
internals.

Trace where behavior is decided, where data and invariants live, which callers
must understand them, and where components enforce or bypass them. State the
mechanism and consequence, such as one accepted change requiring copied
revocation rules in several handlers. Directory names and declared interfaces
are evidence only; runtime behavior determines effective ownership.

Choose the smallest coherent owner: it hides decisions callers should not
know, exposes the smallest stable contract, enforces each invariant once,
points dependencies toward the owner, and localizes the pressure-causing
change. If multiple materially different owners remain credible, preserve the
bounded unresolved choice outside this method.

Move one coherent responsibility, redirect callers, rerun affected evidence,
and remove displaced policy from callers. Repository inspection can inventory
old shapes but cannot prove runtime ownership or semantic equivalence. Return
the original pressure, effective and accepted owner, boundary and dependency
changes, evidence, remaining leakage, and any governed contract affected.
This reference owns no route, skill call, authority, completion, or stopping.

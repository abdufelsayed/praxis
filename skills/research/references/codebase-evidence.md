# Codebase evidence

Use this method when the bounded claim depends on repository, dependency,
runtime-wiring, test, convention, generated-surface, or history evidence.
Research retains the claim, synthesis, return, authority, and stopping.

## Trace the observable behavior

Start at the surface named by the claim and follow only the narrow path needed
to explain it:

- public or internal entry points;
- registration, runtime wiring, middleware, and configuration;
- owning modules and responsibility boundaries;
- data and control flow across relevant interfaces;
- installed dependency versions and generated interfaces;
- tests that express or contradict the behavior;
- conventions repeated in adjacent working code; and
- version-control history when current source cannot explain intent or change.

Use definitions and call sites together. A symbol name, import, nearby guard,
or one matching test is navigation evidence, not proof of runtime behavior or
architectural ownership.

## Rank current evidence

Current source, configuration, generated interfaces, installed versions, and
reproduced behavior outrank stale plans, comments, generic upstream examples,
and remembered conventions. History explains how the current state arose; it
does not override the current tree. A passing test proves only the behavior and
conditions it covers.

Use the narrowest repository inspection that can answer the claim. Record the
path, revision, version, symbol or configuration boundary, and relevant test
or reproduction needed for another agent to inspect the conclusion.

## Search for hidden paths before a negative result

Before claiming that a behavior is absent, identify materially plausible
surfaces that the search could miss: framework middleware, generated adapters,
registration, alternate routes, background work, dependency defaults,
configuration, or wrappers. Inspect them or state why the method should have
exposed the behavior. “No match found” is a qualified search result, not proof
of absence when the mechanism remains outside the inspected surface.

## Keep the method bounded

Keep adjacent findings only when they invalidate the premise, change the
bounded answer, or expose a consequential blind spot. Return the behavior or
ownership relation, decisive paths and evidence, inference or conflict,
coverage limits, plausible uninspected paths, and the implication for the
caller. Do not preserve a repository tour or raw search exhaust.

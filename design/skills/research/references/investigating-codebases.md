# Investigating Codebases

> **Status: accepted semantic source; target runtime projection: `references/codebase-evidence.md`.**

> Load this reference when a bounded factual question depends on repository,
> dependency, runtime-wiring, convention, test, or history evidence. Research
> retains the claim, synthesis, return, authority, and stopping decision.

## Begin from the unresolved fact

State the exact fact the caller needs and why it changes the next judgment.
Search from that question rather than beginning with a broad repository tour.

For example, “Why do revoked sessions remain valid through the public API?”
should trace that behavior. It does not justify summarizing every
authentication module.

## Follow the narrowest evidence trail

Start at the surface where the behavior becomes observable and trace only the
paths needed to explain it:

- public or internal entry points;
- runtime wiring, registration, middleware, and configuration;
- owning modules and responsibility boundaries;
- data and control flow across relevant interfaces;
- installed dependency versions and generated surfaces;
- tests that express or contradict expected behavior;
- conventions repeated in adjacent working code; and
- version-control history when present source cannot explain intent or change.

Use definitions and call sites together. A symbol name, import, or nearby guard
does not by itself establish runtime behavior or ownership.

## Rank current evidence correctly

Current source, configuration, generated interfaces, installed versions, and
reproduced behavior outrank stale plans, comments, generic upstream examples,
and remembered conventions.

History explains how the current state arose; it does not override the current
tree. Tests provide evidence of intended or exercised behavior, but a passing
test proves only the boundary and conditions it covers.

Use the narrowest repository inspection that answers the question. Treat
matches as navigation evidence, not proof of symbol identity, control flow, or
architectural responsibility.

## Test plausible hidden paths

Before returning a negative result, identify surfaces that could hide the
behavior, such as framework middleware, generated adapters, configuration,
registration code, alternate routes, background work, or dependency defaults.

Inspect the materially plausible paths or explain why the method would have
exposed them. “No match found” is not evidence of absence when the search could
not see the mechanism.

## Stop at supported relevance

Stop when the fact needed by the caller is supported strongly enough for its
consequence, relevant conflicts and coverage limits are visible, and further
repository exploration is unlikely to change the answer.

Do not keep reading merely to demonstrate familiarity. Adjacent findings belong
in the return only when they invalidate the premise, change the bounded answer,
or expose a consequential blind spot.

## Return to Research

Return:

- the bounded factual answer;
- decisive paths, symbols, configuration, tests, versions, or history;
- the traced behavior or ownership relationship;
- inference, conflict, and coverage limits;
- plausible surfaces not inspected; and
- the implication for the caller's question.

Research integrates that evidence with any external or empirical path and owns
the final synthesis.

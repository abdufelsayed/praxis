# Understanding

Load this reference when the primary reader question concerns a durable mental
model of a concept, mechanism, architecture, behavioral system, or
consequential rationale. It supplements the common Write Docs procedure; it
does not own product judgment, implementation, or route selection.

## Fix one learning question

Name the reader, what they already know, the one question they need answered,
and the prediction, judgment, or decision the explanation should enable. Do
not begin with the available files, implementation history, or everything that
could be said. Link adjacent concepts to their owners instead of turning the
page into a system tour.

## Begin with something observable

Start from a concrete request, state transition, example, trace, failure, or
other behavior the reader can reason about. Establish the smallest intuitive
model, then connect it to actual actors, ownership, interfaces, state, and
causal or temporal flow. Introduce terminology when the mechanism gives it
meaning; a list of modules, types, acronyms, or definitions is not a mental
model by itself.

Build in this order:

1. the reader's concrete question or observation;
2. the smallest model that explains it;
3. the actual mechanism and ownership;
4. representative behavior;
5. consequential boundaries, failures, and exceptions; and
6. deeper evidence or owning detail needed next.

## Simplify without falsifying

Preserve every invariant, condition, exception, and failure that would change
the reader's prediction or judgment. Distinguish guarantees, normal behavior,
state/version/configuration/timing dependencies, and important failure
boundaries. Delay detail until relevant, but never replace at-least-once with
once, eventual with immediate, or another governing behavior with a simpler
false claim.

Label each consequential claim as current observed or implemented behavior,
accepted but undelivered design, historical behavior or rationale, hypothesis,
simulated behavior, or illustrative simplification. Link important claims to
the owning evidence closely enough for a future reader to check them. When
current behavior conflicts with intent, teach current truth and return the
mismatch to its owner.

## Choose the smallest explanatory form

Use prose for causality, rationale, and consequence; diagrams for ownership,
hierarchy, boundaries, and sequence; examples, traces, or annotated source
for behavior; comparisons for distinctions readers may collapse; and an
interactive surface only when variation or reaction materially improves the
learning question. Explain what the reader should notice in every visual or
example, provide a useful text equivalent, and preserve a truthful source or
reproducible path. A rich surface supports but never owns the learning question
or explanation.

Preserve rationale only when its current pressure, chosen mechanism, and
consequence change future use, operation, or modification. Omit conversational
chronology, who proposed or approved a choice, and exhaustive rejected
alternatives unless a real historical surface is needed to prevent a harmful
reversal.

## Stop at usable understanding

The explanation is usable when the intended reader can explain relevant actors
and ownership, trace the governing mechanism, predict representative behavior
and consequential exceptions, distinguish current truth from intent or
illustration, and find the next task, contract, operational, or source detail.

When misunderstanding would affect a consequential decision, implementation,
operation, review, or approval, add a small prediction, scenario, comparison,
or teach-back check. Test mechanism, boundaries, and consequences, not
terminology. A wrong answer is evidence to revise the explanation and retest;
passing the check proves bounded comprehension, not implementation correctness
or authority.

## Verify the explanation

Check the named learning question, current evidence and truth status,
intuitive model, detailed mechanism, terminology, examples, traces, visuals,
invariants, conditions, exceptions, source anchors, links, adjacent owners,
and any comprehension check. Return the verified explanation and material gaps
to Write Docs without revising the underlying system or choosing another route.

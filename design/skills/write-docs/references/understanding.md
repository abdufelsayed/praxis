# Understanding

> **Status: accepted semantic source; target runtime projection: `references/understanding.md`.**

> Load this reference when the reader needs a durable mental model of a
> concept, mechanism, architecture, behavioral system, or consequential
> rationale.

## Fix one learning question

Name the intended reader, what they already know, the question they need to
answer, and the judgment or prediction the explanation should enable. Do not
begin from the available files, implementation history, or everything that
could be said about the subject.

Keep one primary learning question. Link adjacent concepts instead of turning
the explanation into a system tour or complete curriculum.

## Begin with something the reader can reason about

Start with a concrete request, state transition, example, trace, failure, or
other observable behavior that exposes the concept. Establish the intuitive
model, then connect it to the real actors, ownership, interfaces, state, and
causal or temporal flow.

Introduce terminology when the mechanism gives it meaning. A list of modules,
types, acronyms, or definitions is not a mental model by itself.

Build from:

1. the reader's concrete question or observation;
2. the smallest intuitive model that explains it;
3. the actual mechanism and ownership;
4. representative behavior;
5. consequential boundaries, failures, and exceptions; and
6. deeper evidence or linked reference where needed.

## Simplify presentation without changing behavior

Preserve every invariant, condition, exception, or failure that would change
the reader's prediction or judgment. Distinguish:

- what is always guaranteed;
- what normally happens;
- what depends on state, version, configuration, timing, or environment; and
- what can fail or behave differently at an important boundary.

Use progressive disclosure to delay detail until it becomes relevant. Never
replace at-least-once delivery with "processed once," eventual consistency with
immediate consistency, or another governing behavior with a simpler false
claim.

## Choose the form that removes mental simulation

Use the smallest medium that makes the governing relationship clear:

- prose for causality, rationale, and consequences;
- diagrams for ownership, hierarchy, boundaries, and sequence;
- examples, traces, and annotated source for behavior;
- comparisons for distinctions that readers are likely to collapse; and
- interactive explainers when navigation, variation, or reader reaction
  materially improves understanding.

Use Make Tangible when a rich or reactive artifact would help, but retain the
learning question and explanation in Write Docs. The artifact supports the
durable explanation; it does not acquire documentation ownership or authority.

Explain what the reader should notice in every visual or example. Preserve a
useful text equivalent and a reproducible or source-grounded path when the
artifact carries consequential truth.

## Label the status of every consequential claim

Ground the model in current source, interfaces, configuration, tests,
observable behavior, or an accepted contract. Link important claims to the
owning evidence closely enough that a future reader can check them.

Keep these states visibly distinct:

- current observed or implemented behavior;
- accepted but not yet delivered design;
- historical behavior or rationale;
- hypothesis or unresolved inference;
- simulated behavior; and
- an illustrative simplification.

Do not clean up architectural reality inside the explanation. When current
behavior conflicts with accepted intent, describe the current truth and return
the mismatch to its owning work rather than teaching the intended design as
already present.

## Preserve only rationale that changes future judgment

Explain why a mechanism exists when its constraint and consequence matter to
correct use, operation, or modification. State the present pressure, the
chosen mechanism, and what breaks when the constraint is ignored.

Omit conversational chronology, who proposed or approved a choice, and
exhaustive rejected alternatives. Preserve historical alternatives only when
they explain a current constraint or prevent a likely harmful reversal, and
route full decision history to its genuine owning surface.

## Stop at usable understanding

Stop when the intended reader can:

- explain the relevant actors and ownership;
- trace the governing mechanism;
- predict representative behavior and consequential exceptions;
- distinguish current truth from intent or illustration; and
- find the linked task, contract, operational, or source detail they need
  next.

Task Guidance owns executable journeys. Contract Reference owns exhaustive
interface lookup. Operations owns recurring action, diagnosis, and recovery.
Change Communication owns version impact and transition. Link those surfaces
instead of absorbing them.

## Check understanding when misunderstanding matters

When an incorrect model would affect a consequential decision,
implementation, operation, review, or approval, use a small prediction,
scenario, comparison, or teach-back check. Test the mechanism, boundaries, and
consequences rather than terminology or trivia.

Treat a wrong answer as evidence about the explanation. Locate the
misconception, return to the relevant mechanism or evidence, revise the
explanation, and check the affected understanding again.

Do not force quizzes into routine low-consequence documentation. Passing a
check demonstrates bounded comprehension only; it proves neither
implementation correctness nor acceptance and grants no authority.

## Verify the explanation

In addition to Write Docs' common verification, check that:

- the explanation answers its named learning question;
- consequential claims match current evidence and carry the right truth
  status;
- the intuitive model and detailed mechanism remain consistent;
- terminology, examples, traces, and visuals describe the same system;
- invariants, conditions, and important exceptions support correct prediction;
- source anchors and links resolve;
- adjacent detail has a clear owning destination; and
- any comprehension check tests the taught model without leaking its answer.

Return the verified explanation and any material gap to Write Docs. This
reference does not own the documentation request, revise the underlying
system, manufacture historical rationale, or absorb Task Guidance, Contract
Reference, Operations, or Change Communication.

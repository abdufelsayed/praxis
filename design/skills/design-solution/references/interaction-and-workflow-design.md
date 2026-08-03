# Interaction and Workflow Design

> **Status: accepted semantic source; target runtime projection: `references/interaction-design.md`.**

> Load this reference when candidate solutions differ in actor sequence,
> states, feedback, handoffs, interruption, failure, or recovery. Design
> Solution retains comparison, recommendation, human judgment, return, and
> stopping.

## The question it helps answer

Interaction and Workflow Design asks which sequence of actions and system
responses best satisfies accepted behavior for every relevant actor.

It applies to graphical interfaces, command-line tools, operational
procedures, approval systems, background work, and human-agent interaction. It
does not require a visual artifact. Make Tangible is a separate capability
used only when simulation or rendering would improve judgment.

## Reconstruct the work

Identify the actors, their goals and authority, the entry condition, the
observable states, and the point at which the intended outcome is complete.
Trace existing behavior when it matters; a written happy path alone is weak
evidence about interruption and recovery.

## Compare workflows through complete journeys

For each serious candidate, walk:

- the ordinary path and the feedback each actor receives;
- waiting, cancellation, interruption, and resumption;
- invalid input, unavailable dependencies, and partial completion;
- handoffs between humans, agents, or systems;
- recovery and whether progress remains understandable; and
- accessibility, latency, or cognitive constraints accepted by the Project.

Prefer a workflow whose state and next action remain legible. Reject a design
that hides consequential work behind success-looking feedback or makes an
actor responsible for information they cannot possess.

Use diagrams, simulations, or prototypes only when they expose a judgment that
prose cannot expose cheaply. Record the human's reaction as evidence; the
artifact does not become the specification by itself.

## Return to Design Solution

Return the candidate journeys, actors and responsibilities, states, feedback,
failure and recovery behavior, recommendation, evidence, unresolved
uncertainty, and earliest governing record affected. Stop before UI component
lists, implementation tasks, files, or commands.

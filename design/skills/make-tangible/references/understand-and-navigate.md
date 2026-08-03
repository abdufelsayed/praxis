# Understand and Navigate

> **Status: accepted Make Tangible pattern reference.**
>
> Load this reference only after Make Tangible selects Understand and Navigate
> as the artifact's primary pattern.

## The judgment it supports

Understand and Navigate builds the smallest mental model that lets a reader
answer the owning question and move from orientation to decisive evidence.

It is useful when dense systems, unfamiliar domains, code paths, ownership
boundaries, state transitions, or bodies of evidence would otherwise have to
be reconstructed mentally. It does not aim to document everything. Stop when
the reader can locate, explain, and reason about the relationships relevant to
the question.

## Organize around the question

Start with an orienting model of the relevant actors, boundaries, and flow.
Then provide progressive paths into the detail the reader may need:

- ownership and responsibility;
- interfaces and contracts;
- important states and transitions;
- causal or temporal flow;
- consequential exceptions and failure paths;
- terminology needed to interpret the model; and
- exact source or evidence.

Use stable labels and cross-links so the reader can move between overview and
detail without losing context. A flat file list, repository dump, or exhaustive
tour leaves the reader to construct the model and is not a substitute for one.

## Keep truth locally traceable

Link consequential nodes, boundaries, flows, and behavioral claims to their
source where the reader encounters them. Label inferred, proposed, simulated,
and unknown relationships explicitly.

When current and proposed systems appear together, distinguish them visually
and semantically. A clean diagram must not turn an architectural inference into
current behavior or make a proposed edge look implemented.

Use exact source excerpts or deep links where they materially help the reader
inspect a claim. Do not flood the overview with mechanical evidence that
belongs in a drill-down.

## Add navigation only when it reduces cognitive load

A small flow may need only a static diagram. A larger model may benefit from:

- jump navigation between overview and evidence;
- search or filtering;
- collapsible detail;
- layers for actors, states, ownership, or time;
- synchronized diagram and source views; or
- a visible breadcrumb or active path.

Keep a legible overview and make the active scope visible. Never hide
consequential evidence exclusively behind hover, animation, or an
undiscoverable control. Interaction should reduce memory and search burden
rather than decorate the model.

## Seek correction of the model

Invite reactions that improve the shared understanding:

- wrong or missing actors;
- misunderstood ownership;
- incorrect relationships or ordering;
- confusing terminology;
- absent failure or exception paths;
- unsupported inference; and
- a path the reader still cannot explain.

Return the confirmed model, corrections, and remaining gaps. Do not require a
quiz merely to prove that the surface was read. Compose Teaching Surface when
the caller supplies a bounded learning objective that needs a constructed
comprehension surface.

## Compose supporting patterns proportionately

Understand and Navigate may use:

- Inspect and Annotate for exact source or evidence;
- Observe and Assess for current state or historical behavior;
- Experience or Simulate for state transitions that must be felt;
- Elicit and Articulate to capture corrections or missing tacit knowledge;
- Teaching Surface when a constructed comprehension surface is needed; and
- Demonstrate and Prove when the model supports a consequential claim.

It remains primary when the purpose is forming and navigating the mental model
rather than proving one claim or teaching a curriculum.

## Verify before presenting

Check that:

- the overview answers the owning question rather than touring the whole
  system;
- overview and drill-down detail describe the same model;
- consequential paths can be followed end to end;
- labels, actors, states, and ownership remain consistent across views;
- current, inferred, proposed, simulated, and unknown truth remain distinct;
- source links resolve to evidence that supports the associated claim;
- important exceptions and failure paths are not hidden by the happy path;
- navigation preserves the reader's scope and context; and
- the artifact works in its intended medium without requiring inaccessible or
  undiscoverable interaction.

## Return to the caller

Return the exact artifact version together with:

- the confirmed mental model;
- corrections and their evidence;
- the relationships and paths the reader can now reason about;
- remaining gaps, disputed claims, or confusing terminology;
- material fidelity and coverage limits; and
- the implication for the owning question.

The caller decides whether the model is sufficient, a factual gap returns to
Research, human-owned meaning needs Interview, or the owning loop can continue.

## Worked compositions

Thariq Shihipar's
[authentication flow](https://github.com/ThariqS/html-effectiveness/blob/main/04-code-understanding.html)
uses overview, code landmarks, and progressive detail to explain a repository
path. The
[annotated deploy flowchart](https://github.com/ThariqS/html-effectiveness/blob/main/13-flowchart-diagram.html)
and
[reference semantics map](https://github.com/ThariqS/html-effectiveness/blob/main/unknowns/07-reference-port.html)
show navigable flow and traceable source interpretation. They are composition
examples rather than required layouts.

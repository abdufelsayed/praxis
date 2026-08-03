# Experience or Simulate

> **Status: accepted semantic source; target runtime projection: `references/experience-or-simulate.md`.**

> Load this reference only after Make Tangible selects Experience or Simulate
> as the artifact's primary pattern.

## The judgment it supports

Experience or Simulate makes consequential behavior, timing, flow,
interaction, or feasibility perceptible when words or static images cannot
support an honest judgment.

Build the lowest-fidelity experience that exercises what the human must judge.
It may be a clickable flow, animation, state simulation, throwaway prototype,
bounded experiment, or focused feasibility demonstration. It is not production
implementation, and its visual completeness does not prove behavior outside
the exercised boundary.

## Make the judged dimension real enough

The dimension under judgment must have sufficient reality:

- A deterministic fake backend may support judgment about optimistic rollback
  flow and messaging.
- Representative timing may support reaction to waiting and interruption.
- Real components may be necessary when styling, focus, keyboard behavior, or
  accessibility affects the experience.
- A real bounded experiment is necessary when the question is whether a
  browser, library, protocol, or system boundary can perform the behavior at
  all.

Simulate surrounding mechanics that do not affect the conclusion and label
them clearly. A fake progress bar cannot prove memory use, throughput, or
streaming feasibility. When a feasibility claim depends on an uncertain
boundary, exercise that boundary and preserve the resulting evidence.

## Cover consequential states and transitions

Implement the states and transitions that materially affect the declared
judgment. Depending on the question, these may include:

- the relevant starting state;
- the triggering action;
- intermediate, waiting, or optimistic state;
- success;
- validation or system failure;
- interruption or cancellation;
- rollback and recovery; and
- a meaningful boundary condition.

Do not recreate unrelated product completeness. Do not omit a consequential
failure or recovery path merely because the happy path is easier to polish.

## Expose judgment-focused controls

Offer only controls that help the human experience or vary the consequential
behavior:

- replay, reset, pause, or step;
- select a relevant state;
- change latency, load, failure timing, or another causal parameter;
- switch between meaningful behavior variants; or
- inspect a result produced by the experiment.

Keep the current scenario and parameter values visible. If reaction depends on
three-second latency, a particular screen size, or one failure point, preserve
that context with the response. A single canned animation is insufficient when
the judgment concerns a threshold or changing condition.

## Preserve evidence and reaction separately

A human reaction such as “rollback becomes confusing above one second” is
contextual feedback. A measurement such as “the real streaming probe peaked at
180 MB” is observed evidence. Preserve both without turning one into the
other.

When conversation cannot hold the result reliably, export the exact artifact
version, scenario parameters, observed behavior, human reaction, and
unresolved point. The caller decides what consequence belongs in governing
truth.

## Compose supporting patterns proportionately

Experience or Simulate may use:

- Explore and Discover to expose different behavioral possibilities;
- Compare and Choose to judge understood variants under shared conditions;
- Elicit and Articulate to capture experiential reactions;
- Manipulate and Export for consequential scenario controls;
- Observe and Assess for measured experimental state; and
- Demonstrate and Prove when the exercised behavior supports a bounded claim.

It remains primary when direct experience or an exercised boundary is what
makes the owning question judgeable.

## Verify before presenting

Check that:

- every declared consequential state and transition can be exercised;
- success, failure, reset, rollback, and recovery behave as claimed where
  relevant;
- scenario parameters and current state remain visible;
- timing, randomness, sample data, and simulated dependencies are explicit;
- important scenarios are reproducible or their exact parameters are recorded;
- controls work through the intended medium and input methods;
- feasibility claims trace to a real exercised boundary and retained evidence;
  and
- the stated conclusion does not exceed the behavior the artifact actually
  exercised.

## Return to the caller

Return the exact artifact version together with:

- the scenario and consequential parameters;
- behavior or feasibility actually exercised;
- observed evidence;
- human experiential reaction;
- simulated, omitted, and untested behavior;
- thresholds or conditions that changed the reaction; and
- the implication and unresolved uncertainty for the owning question.

The caller decides whether the result resolves its question, requires another
probe, changes accepted truth, or returns learning to an earlier owner.

## Worked compositions

Thariq Shihipar's
[animation prototype](https://github.com/ThariqS/html-effectiveness/blob/main/07-prototype-animation.html)
exposes timing and easing controls, while the
[drag-to-reorder prototype](https://github.com/ThariqS/html-effectiveness/blob/main/08-prototype-interaction.html)
makes interaction behavior directly judgeable. The
[annotation-toolbar mock](https://github.com/ThariqS/html-effectiveness/blob/main/unknowns/04-toolbar-mock.html)
combines a throwaway experience with contextual questions and reaction export.
They demonstrate useful mechanics without defining a required prototype stack.

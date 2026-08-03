# Experience or Simulate

Load only when behavior, timing, flow, interaction, or feasibility must be
experienced to make the owning question judgeable.

## Exercise what matters

Build the lowest-fidelity experience that makes the judged dimension real
enough. A deterministic fake may support rollback messaging; representative
timing may support waiting/recovery reaction; real components may be required
for focus, keyboard, styling, or accessibility; a real bounded experiment is
required when feasibility depends on an uncertain protocol, browser, library,
or system boundary. Simulate surrounding mechanics only when they do not affect
the conclusion and label them.

Cover the relevant starting state, trigger, intermediate/waiting or optimistic
state, success, validation/system failure, interruption/cancellation,
rollback/recovery, and meaningful boundary. Provide only judgment-focused
controls such as replay, reset, pause, state/variant selection, causal
parameters, or result inspection. Keep scenario, parameters, sample data,
timing, randomness, and simulated dependencies visible and reproducible.

Exploration, comparison, elicitation, manipulation, observation, or proof may
support the experience when they improve the exercised judgment; this pattern
remains primary while direct behavior or feasibility is what makes the question
judgeable.

## Preserve evidence and verify

Separate measured evidence from human experiential reaction. Export exact
version, scenario, parameters, observed behavior, reaction, and unresolved
points when conversation cannot preserve them. Verify every declared state and
transition, success/failure/reset/recovery, parameter visibility, intended
input methods, reproducibility, real feasibility boundary, and that conclusions
do not exceed exercised behavior.

Return exercised behavior, observed evidence, reaction and thresholds,
simulated/omitted/untested behavior, fidelity limits, implication, and
unresolved uncertainty. The caller decides whether to probe further, revise
truth, or continue.

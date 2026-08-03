# Debug

> **Design document — not a runtime skill.** Accepted behavioral contract; `SKILL.md` implementation pending.

## What it does

Debug runs a disciplined diagnosis loop for an observed failure whose cause or
correct fix is unknown. It replaces speculative patching with a controlled
signal, causal evidence, a correction at the owning seam, and proof against the
original symptom.

Its leading idea is the **tight red-capable loop**: before explaining or fixing
the problem, the agent runs a repeatable probe that detects the exact failure.
For a functional defect that may be a test, command, request, or small harness.
For a flaky failure it may be a measured reproduction rate. For a performance
regression it may be a baseline and threshold.

Without that signal, the agent may inspect source to construct the probe, but it
does not claim a diagnosis or begin corrective mutation. The signal must also
be sensitive to the reported mechanism rather than merely displaying the same
symptom. A control, perturbation, trace, or the preserved full reproduction
connects the probe to the actual failure.

## When to reach for it

Debug applies when something is visibly broken, failing, intermittent, or slow
and the cause or correct correction is not yet known. It can begin from a direct
bug report or recur inside approved execution.

Use a different capability when:

- the actual need is unclear — return to Requirements Discovery;
- the formalized behavior is unclear — return to its Formalization owner;
- the cause and contained correction are already demonstrated — perform the
  bounded correction directly;
- chosen behavior should be built test-first — invoke
  [TDD](../tdd/README.md);
- the question is whether a proposed design feels right or is feasible — use
  [Make Tangible](../make-tangible/README.md).

## What the collaboration feels like

The agent first makes the failure controllable, then removes irrelevant inputs
and dependencies while preserving the original full reproduction. It presents
serious causal hypotheses as falsifiable predictions when human domain knowledge
could materially rerank them, then tests one prediction and changes one variable
at a time.

Every decisive probe changes the hypothesis set. A causal prediction disproved
under the tested conditions is removed; the next probe must distinguish a
remaining explanation rather than mutate another version of the same rejected
guess.

The interaction stays evidence-led and compact. The agent returns when judgment,
missing access, or changed accepted truth matters; it does not stop for routine
permission inside existing authority.

Once the cause is demonstrated, the agent corrects that cause at the seam that
owns it. The regression proof must represent the real failure mechanism rather
than a convenient nearby symptom. If no honest test seam exists, that
architectural weakness is reported instead of hidden behind a shallow test.

For flaky or performance failures, Debug establishes the baseline, sampling
conditions, and minimum observable improvement before correction. One clean run
cannot prove that a rare failure changed. The result therefore reports the
measured change and remaining uncertainty.

## It is working when

- A runnable probe detects the exact reported symptom before correction.
- A control, perturbation, trace, or full reproduction shows that the probe is
  sensitive to the reported failure mechanism.
- The minimal reproduction and the original full reproduction are both
  preserved.
- Hypotheses are evidence-backed, falsifiable, and tested through focused
  probes rather than stacked speculative edits.
- Decisive negative evidence removes the disproved hypothesis within the tested
  conditions and changes what is tried next.
- Temporary instrumentation is identifiable and removed before completion.
- The regression proof fails for the demonstrated mechanism before correction
  and passes afterward.
- The regression probe and original full reproduction both pass after the
  correction.
- Stochastic and performance conclusions name the baseline, sampling
  conditions, measured change, and remaining uncertainty.
- The result explains the cause, correction, decisive evidence, remaining
  risks, and any architectural limitation.

## Authority and learning

Debug may investigate recursively wherever it is called. Corrective mutation
remains bounded by the current human request or approved Plan.

If diagnosis reveals that an accepted Requirement, Evolution Map, Evolution,
Issue, or Implementation Plan introduced the false premise, Debug returns the
evidence to that exact Requirements Discovery, Formalization, or Delivery
owner. The affected meaning or authority is revised and re-gated there before
broader Delivery resumes. Debug never grants itself expanded authority.

## Where it fits

Debug is an agent-startable supporting discipline whenever its trigger
appears. Direct Work may enter it when an apparently simple correction turns
out not to be understood.
[Deliver](../deliver/README.md) may call it while implementing an authorized
Plan. A diagnosed defect may then use [TDD](../tdd/README.md) to preserve
regression behavior, and the completed bounded result still passes
[Review](../review/README.md) and [Verify](../verify/README.md) when those
claims require them. When observed behavior is hard to inspect, invoke
[Make Tangible](../make-tangible/README.md) for that reaction surface.

Debug ends after the cause is corrected and proved, temporary diagnostic work
is cleaned up, and learning is returned to its owner. Adjacent architecture
improvements are recommendations unless separately authorized.

## Direct dependencies

### Skills

- [TDD](../tdd/README.md) — preserve the demonstrated failure as a regression
  behavior; return executable proof; Debug retains causal correction.
- [Make Tangible](../make-tangible/README.md) — construct and verify an
  otherwise hard-to-observe behavior surface; return scoped reaction and
  fidelity limits; Debug retains diagnosis.

### Shared references

- None.

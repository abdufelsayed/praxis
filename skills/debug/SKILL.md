---
name: debug
description: "Debug failing, intermittent, or unexpectedly slow behavior when its cause or correct fix is unknown."
---

# Debug

Load [Praxis Control](../../references/control.md).

Debug owns one causal question. The caller retains the accepted behavior,
correction authority, route, and acceptance.

## Bind and expose the failure

Fix the symptom, affected boundary, conditions, original full reproduction,
accepted behavior, correction authority, and what a successful diagnosis must
explain. Return unclear expected behavior to its Requirements or Formalization
owner. If the cause and contained correction are already demonstrated, return
that evidence instead of opening a speculative loop.

Build the smallest repeatable probe that detects the symptom while preserving
the full reproduction. For flakes, establish a baseline rate and sampling
conditions. For performance, fix workload, environment, threshold, valid-run
rule, and minimum observable improvement. Use controls, perturbations, or
traces that distinguish the proposed mechanism from a nearby symptom. Mark
temporary instrumentation from its first use.

When the mechanism cannot be observed honestly with a normal probe, call
[Make Tangible](../make-tangible/SKILL.md) with the exact judgment and required
fidelity. `no-op`, `constructed`, or `revised` supplies only scoped reaction
and fidelity evidence; `blocked` or `stopped` remains exact. If no sensitive signal can be established, return `unreproduced`
with attempted conditions and the next evidence needed.

## Isolate the cause

Name serious hypotheses and a prediction that would disprove each. Run the
cheapest focused probe that distinguishes them, changing one material variable
at a time. Remove disproved hypotheses; do not repeat a rejected guess through
cosmetic variants. Ask the requester only when domain judgment could materially
reorder the set.

Choose the smallest owning seam that explains both failure and correction. If
the evidence invalidates a Requirement, Evolution, Issue, or Plan premise,
return it to that exact owner before mutation. Structural reconstruction
returns to its owning caller; Debug retains only the causal finding.

## Correct only when authorized

When an executable regression behavior is needed, call [TDD](../tdd/SKILL.md)
with the accepted behavior, demonstrated mechanism, and original reproduction.
Do not call TDD if the active assurance path already contains `tdd`; return
`diagnosed` instead. Otherwise, prove the smallest regression probe fails for
the demonstrated reason, apply only the authorized correction, and prove it
passes.

Consume TDD exactly: `complete` or `cycle-complete` supplies red-first proof;
`already-covered` or `unsuitable` leaves the required seam limitation visible;
`needs-owner`, `blocked`, or `stopped` returns without a correction claim.

After either path, rerun the original full reproduction. Report quantitative
baselines, sampling conditions, measured change, and uncertainty when relevant.
Remove all temporary diagnosis state; incomplete cleanup prevents `corrected`.

## Return and stop

Return the symptom and boundary, cause and confidence, decisive observations,
correction and authority, regression and full-reproduction evidence, cleanup,
limits, remaining risk, and causal owner. Use:

- `corrected` when cause, authorized correction, both proofs, and cleanup hold;
- `diagnosed` when cause is established but correction or proof remains;
- `unreproduced` when no sensitive signal exists;
- `needs-owner` when accepted meaning or authority must change;
- `blocked` when access, environment, dependency, or proof prevents honesty;
- `stopped` when the requester ends the loop.

Do not continue into adjacent cleanup, architecture, commit, or publication.

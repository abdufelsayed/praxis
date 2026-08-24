---
name: debug
description: Diagnose hard bugs, intermittent failures, and performance regressions through a tight red-capable feedback loop, causal probes, and regression proof.
---

# Debug

The central task is to build a feedback loop that detects this exact symptom. A
plausible theory without a sensitive signal is not a diagnosis.

Redact secrets from commands, output, traces, and captured artifacts. Keep
credentials in the environment and expose only the lines carrying the signal.

## Build and tighten the loop

Fix the reported symptom, accepted behavior, affected boundary, conditions, and
original full reproduction. Build the smallest agent-runnable probe that can go
red on this bug: a focused test, CLI or HTTP script, browser check, trace replay,
throwaway harness, fuzz loop, bisection harness, or differential comparison.

When a human interaction is unavoidable, adapt
[scripts/hitl-loop.template.sh](scripts/hitl-loop.template.sh) so the human
performs only the irreducible steps and the observations return in a structured
form.

Run the loop. Tighten it until its verdict is specific, repeatable enough to
reason against, and fast enough to run after every probe. For a flake, raise and
measure the reproduction rate. For performance, pin workload, environment,
baseline, threshold, and valid-run rule.

If no red-capable loop can be built after reasonable attempts, report what was
tried and the missing access, artifact, or instrumentation needed. Preserve the
original reproduction rather than replacing it with a nearby failure.

## Minimize and test hypotheses

Shrink inputs, callers, configuration, data, and steps one at a time while the
loop stays red. Stop when each remaining element is load-bearing.

Generate a small ranked set of falsifiable hypotheses. For each, state the
observation that would support or defeat it. Run the cheapest distinguishing
probe and change one material variable at a time. Prefer debugger or REPL
inspection, then targeted boundary logs. Tag temporary instrumentation with a
unique searchable prefix. For performance, profile and bisect before adding logs.

The cause is established only when it explains the symptom and the decisive
observations distinguish it from credible alternatives.

## Fix and prove

When correction is authorized and a durable seam exists:

1. turn the minimized reproduction into a failing regression test;
2. observe it fail for the demonstrated mechanism;
3. apply the smallest correction at the owning seam;
4. observe the regression test pass;
5. rerun the original full reproduction.

If no honest regression seam exists, report that architectural limitation rather
than adding a shallow test that cannot catch the bug.

Remove tagged instrumentation, throwaway harnesses, captured sensitive state, and
temporary services. Report the cause and confidence, decisive evidence, correction,
regression and original-reproduction proof, cleanup, remaining risk, and any
ownership issue. Stop before adjacent cleanup, architecture work, commit, or
publication.

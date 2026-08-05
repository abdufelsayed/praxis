---
name: debug
description: "Debug failing, intermittent, or unexpectedly slow behavior when its cause or correct fix is unknown."
---

# Debug

Run one tight, red-capable diagnosis loop. Debug owns the causal question and
evidence synthesis; the caller retains the governing behavior, route, gate,
authority, acceptance, and stopping.

## 1. Bind the failure and authority

Record the exact symptom, affected boundary, conditions, original full
reproduction, caller, accepted behavior, correction authority, and what a
successful diagnosis must explain. Carry `assurance_path`, defaulting to
`[debug]`, and follow the no-loop rule below for assurance calls. Debug
keeps diagnosis, route, authority, acceptance, and stop. If the behavior or
expected result is unclear, return the evidence to its Requirements or
Formalization owner. If
the cause and contained correction are already demonstrated, return the
bounded correction to the caller rather than opening a speculative loop.

This step is complete when the symptom, reproduction, boundary, expected
behavior, and correction authority are explicit, or a typed owner return is
made.

## 2. Make the symptom red and sensitive

Construct the smallest repeatable probe that detects the exact symptom while
preserving the original full reproduction. For flaky behavior, establish a
baseline rate and sampling conditions. For performance, establish the
baseline workload, environment, threshold, valid-run rule, and minimum
observable improvement. Use a control, perturbation, trace, or full
reproduction that can distinguish the reported
mechanism from a nearby symptom. Temporary instrumentation is identifiable
from its first use. After preserving the full case, remove irrelevant inputs
and dependencies one at a time. Inspect source only to make this signal
possible; keep diagnosis and corrective mutation behind it.

When the failure mechanism or corrected reaction cannot be observed honestly
in prose or a normal probe, call [Make Tangible](../make-tangible/SKILL.md)
with the exact question, primary judgment, audience, and required
medium/fidelity. Consume `no-op` as its direct explanation;
`constructed` or `revised` as scoped reaction and fidelity evidence; and
return `blocked` or `stopped` without claiming sensitivity or correction. Make
Tangible retains construction and reaction; Debug retains diagnosis and proof.

If no honest signal can be made after that path, return `unreproduced` with
the attempted conditions, missing sensitivity, and the smallest next evidence
needed.

This step is complete when a repeatable probe detects the symptom and its
mechanism sensitivity is evidenced, or the typed return is made.

## 3. Test falsifiable hypotheses

Name the serious causal hypotheses and a prediction that would disprove each.
Run the cheapest focused probe that distinguishes the remaining set, change
one material variable at a time, and update the set after every decisive
observation. Remove a hypothesis disproved under the tested conditions; do not
retest the same rejected guess through cosmetic variants. Bring a question to
the human only when domain judgment could materially reorder the hypotheses.

This step is complete when one cause is supported by mechanism-sensitive
evidence, or every remaining hypothesis is visibly unverified with the next
discriminating probe or human judgment named.

## 4. Correct only the demonstrated cause

Choose the smallest owning seam that explains the failure and the correction
inside the current human request or approved Plan. If the evidence invalidates
a Requirement, Evolution Map, Evolution, Issue, or Implementation Plan
premise, return it to that exact causal owner before mutation. A structural
pressure that needs preservation or seam reconstruction stays with its owning
structural capability; Debug keeps the failure diagnosis. Defer mutation when
the correction needs an executable regression behavior; TDD performs that
red-first slice in the next step. When `tdd` already appears in
`assurance_path`, return `diagnosed` with the correction instead of mutating or
calling TDD back.

This step is complete when the owning seam and correction are attributable to
the demonstrated cause and inside current authority, or the exact
owner/blocker return is made.

## 5. Prove the mechanism and original reproduction

When the correction needs an executable regression behavior, call
[TDD](../tdd/SKILL.md) before applying the correction only when
`tdd` is absent from `assurance_path`, carrying the accepted regression
behavior, demonstrated mechanism, original reproduction, `return_to=debug`,
and `assurance_path` with `tdd` appended. Consume `complete` or `cycle-complete` as
executable proof. `already-covered` returns `diagnosed` with the missing
red-sensitive proof; `unsuitable` returns `diagnosed` with the architectural
or evidence limitation; `needs-owner`, `blocked`, and `stopped` return without
claiming correction.
TDD retains its red-green cycle; Debug retains causal interpretation. Only a
successful TDD result reaches the original-reproduction rerun.

Otherwise run the smallest regression probe yourself before applying the
correction and confirm that it fails for the demonstrated mechanism. Apply only
the authorized correction, rerun the probe, and confirm the pass. After either
path, rerun the original full reproduction. For flaky or performance behavior,
report baseline, sampling conditions, measured change, valid sample, and
remaining uncertainty. Remove all temporary instrumentation and disposable
diagnosis state.

This step is complete only when the regression proof and original reproduction
both pass, the cleanup is verified, and every stochastic or performance claim
has scoped measurements; otherwise return the incomplete state.

## 6. Return and stop

Return exactly one bounded result with the symptom and boundary, cause and
confidence, accepted behavior and conditions, original full reproduction,
correction and authority, decisive probes and observations, regression and
full-reproduction evidence, baseline or sampling limits,
measured change and valid-sample rules when applicable, cleanup state,
remaining risks, architectural limitations, causal owner, and revisit
condition, plus the caller-retained route, gates, authority, acceptance, and
stop. Use:

- `corrected` when the cause was demonstrated, correction was authorized, both
  proofs pass, and temporary state is gone;
- `diagnosed` when the cause is established but correction or proof remains
  with the caller;
- `unreproduced` when a sensitive signal could not be established;
- `needs-owner` when accepted meaning or authority must change;
- `blocked` when access, dependency, environment, or proof prevents an honest
  result; and
- `stopped` when the human ends the bounded loop.

Return learning to the exact causal owner and stop. Do not continue into
adjacent cleanup, architecture, acceptance, commit, publication, deployment,
or another workflow.

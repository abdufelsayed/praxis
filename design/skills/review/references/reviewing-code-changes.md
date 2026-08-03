# Reviewing Code Changes

> **Status: accepted Review reference design; runtime implementation pending.**
>
> Load this reference when the fixed target is an implementation, diff, commit,
> branch, or pull request. Review retains target ownership, finding quality,
> return, and stopping.

## Reconstruct the behavioral boundary

Read the governing Requirements, selected Evolution when present, Issues,
Plan, authority, exclusions, and proof claims. Inspect enough connected source,
tests, callers, data flow, and history to understand what the change actually
does and what accepted behavior it materially exposes.

The diff is the fixed target, not the limit of investigation. Report findings
introduced, worsened, exposed, or materially relied upon by the change without
turning unrelated repository debt into its correction boundary.

## Apply Specification Fidelity

Trace the accepted behavior through normal paths, edge cases, failures, state
transitions, compatibility obligations, and deliberate exclusions. Check that
the change implements the right behavior completely and stays inside its
authority.

Tests contribute evidence, but green tests cannot prove that the tested
expectation matches the accepted specification or that a governing path was
not omitted.

## Apply Engineering Integrity

Inspect the implementation for concrete correctness, security, operational,
and changeability mechanisms. Ask where policy and invariants are owned, what
must change together, how failures propagate, whether state transitions remain
atomic where required, and whether expected later work fits the resulting
structure.

Report duplicated ownership, hidden coupling, incompatible boundaries, unsafe
failure handling, or structural pressure only when the mechanism and material
consequence are explainable. Metrics, match counts, naming preferences, and
generic style rules do not establish a finding by themselves.

When substantial seam or change-pressure reconstruction is needed, compose
Refactor read-only. When a finding depends on an executable factual claim,
compose Verify for that claim. Repository inspection can gather or validate
source-shape evidence; it cannot decide semantic correctness.

## Return to Review

Return one prioritized, deduplicated finding set across both lenses. Each
finding identifies the governing expectation or failure mechanism, connected
evidence, consequence, confidence, smallest credible correction, materially
affected causal surface, and likely owner. Do not fix the code, expand the
change, or manufacture findings to make the review appear adversarial.

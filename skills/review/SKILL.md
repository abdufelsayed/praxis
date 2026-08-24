---
name: review
description: Review a fixed proposal, change, delivered result, or feedback set for behavioral fidelity, engineering integrity, and consequential failure mechanisms.
---

# Review

Fix the target and review it read-only. Keep findings to problems introduced,
worsened, exposed, or materially relied upon by that target.

## Establish the target

Bind the exact version or Git fixed point, governing specification or accepted
behavior, review scope, exclusions, and available evidence. For Git work, resolve
the fixed point and inspect the merge-base diff, commit list, relevant source,
tests, callers, dependencies, and history. If the target changes, repeat every
materially affected lens.

Read the method matching the target:

- [proposals and records](references/proposals-and-records.md);
- [code changes](references/code-changes.md);
- [delivered results](references/delivered-results.md);
- [external feedback](references/external-feedback.md).

Compose methods only for deliberately distinct targets. Missing governing truth
or evidence is a limitation, not an invented contract.

## Cover the target

For code changes, keep two judgments distinct:

- **Specification:** does the change implement the accepted behavior, including
  normal paths, failures, compatibility, exclusions, and proof?
- **Standards:** does it follow repository guidance and avoid concrete
  correctness, security, operational, and changeability problems?

Repository standards override generic taste. Structural smells are hypotheses:
report them only when their mechanism and material consequence are visible in
this change. If the originating specification cannot be found, review observable
correctness and standards while saying the specification axis is limited.

Cover the complete target through every required lens. Partition independent
subreviews only when one pass cannot honestly cover the target, then integrate
their evidence without allowing one axis to mask another. Sampled coverage cannot
support a complete no-findings claim.

## Make findings consequential

Validate each apparent finding against supporting and counterevidence. Deduplicate
symptoms with one cause. Each material finding states:

- the governing expectation or concrete failure mechanism;
- connected evidence and consequence;
- priority and confidence;
- the smallest credible correction;
- the affected surface and likely owner.

Put findings first, ordered by consequence. Keep harmless preferences as
suggestions and unresolved claims visibly unresolved. If no material finding
survives, say so and state residual risks or unexamined surfaces.

For code changes, use [Plannotator](../plannotator/SKILL.md) when the requester
asks for its visual review or when an interactive diff pass would materially help.
Treat comments from it as external feedback to validate, not automatic truth.

Review returns evidence and coverage. It does not edit the target, accept it, or
silently start remediation.

# Triaging External Feedback

> **Status: accepted semantic source; target runtime projection: `references/external-feedback.md`.**

> Load this reference when human comments, agent findings, automated warnings,
> or other supplied feedback must be judged against a fixed target. Review
> retains target ownership, finding quality, return, and stopping.

## Turn comments into testable claims

Bind each material comment to the exact target version it concerns. Extract the
claimed violated expectation or failure mechanism, affected surface, stated
consequence, and any supplied evidence. Preserve useful nuance, but do not
inherit the comment's confidence, severity, scope, or proposed fix.

Deduplicate comments that describe the same cause. Separate compound comments
when their claims need different evidence or owners.

## Investigate before classifying

Read the governing truth and current source or evidence needed to test each
claim. Search for counterevidence as deliberately as supporting evidence.
Automated confidence, reviewer status, repeated wording, or agreement among
reviewers does not establish correctness when their evidence is shared or
correlated.

Classify each material item as:

- **Confirmed:** current evidence establishes a consequential problem.
- **Rejected:** current evidence defeats the claim; preserve the reason and
  counterevidence.
- **Unresolved:** the available evidence cannot decide it; name the smallest
  useful next investigation.

Do not add defensive code for rejected speculation. Do not dismiss an
unresolved high-consequence claim merely because it is inconvenient to prove.

## Route confirmed learning to its cause

For a confirmed item, identify whether the cause belongs to accepted
Requirements, an Evolution, an Issue, the Plan, the implementation, or the
Result's proof and explanation. An implementation defect inside current
authority may return for local correction; changed governing meaning or
authority returns to its exact earlier owner and affected gate.

The reviewer who supplied the comment grants no mutation authority. Triage
returns judgment to the caller, which decides the correction or backtrack.

## Return to Review

Return the classification, evidence, consequence, confidence, smallest
credible correction or next probe, and causal owner for every material item.
State which feedback was not examined. External-feedback triage does not fix
the target, approve the comments, or treat reviewer consensus as acceptance.

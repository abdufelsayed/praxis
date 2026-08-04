# Triaging External Feedback

## Claim extraction

Bind each material comment to the target version it concerns. Extract the
claimed expectation or failure mechanism, affected surface, consequence, and
supplied evidence. Preserve nuance without inheriting the comment's
confidence, severity, scope, or proposed fix. Deduplicate comments that share
one cause and split compound comments when they require different evidence.

## Evidence and classification

Read the governing truth and current source or evidence needed to test each
claim. Search for counterevidence as deliberately as supporting evidence.
Reviewer status, repeated wording, automation, and agreement among reviewers
do not establish correctness when their evidence is shared or correlated.

Classify each material item as:

- `confirmed`: current evidence establishes a consequential problem;
- `rejected`: current evidence defeats the claim, with the reason and
  counterevidence; or
- `unresolved`: available evidence cannot decide it, with the smallest useful
  next investigation.

Reject speculative defensive code when evidence defeats the claim, and keep
an unresolved high-consequence claim visible until a useful probe can decide
it.

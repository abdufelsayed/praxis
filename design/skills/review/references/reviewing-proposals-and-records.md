# Reviewing Proposals and Records

> **Status: accepted semantic source; target runtime projection: `references/proposals-and-records.md`.**

> Load this reference when the fixed target is a Project brief, Evolution Map,
> Evolution, Issue, Plan, or another proposal that will govern later work.
> Review retains target ownership, finding quality, return, and stopping.

## Judge the proposal at its actual stage

Identify what the record is allowed to settle and what later work still owns.
A Project brief need not contain an implementation sequence, an Evolution need
not enumerate file edits, an Issue need not prescribe code structure, and a
Plan need not contain evidence that can exist only after implementation.

Judge whether the record carries enough accepted truth for its declared job.
Missing later-stage detail is not a defect; missing meaning that forces a later
owner to guess is.

## Reconstruct the governing truth

Read the accepted Requirements and any parent or sibling records that constrain
the target. Compare the proposal with current source and evidence when it makes
claims about the existing system, feasibility, ownership, or risk.

Trace each consequential promise or constraint through the parts appropriate to
the record:

- the outcome or behavior it commits to;
- ownership, boundaries, interfaces, and invariants it relies upon;
- assumptions, exclusions, dependencies, and deliberate limitations;
- authority the proposal requests or explicitly withholds;
- risks or unresolved uncertainty that can change the work; and
- proof credible for the stage and claim.

This is semantic coverage, not a requirement-number checklist. One paragraph
may satisfy several constraints, while a long proposal may still omit the
decision that matters.

## Challenge coherence and support

Look for contradictions inside the target, conflict with governing truth,
unsupported claims about the repository or domain, hidden expansion of
authority, unresolved choices disguised as settled design, and proof that
cannot establish the promised result.

Distinguish a missing proposal explanation from a rejected solution. If the
proposal can be corrected without changing accepted meaning, return the
smallest gap. If the problem exposes missing or changed governing truth, name
the exact causal owner instead of repairing the record inside Review.

## Return to Review

Return evidence-backed findings tied to the fixed record version, the governing
truth each finding affects, its consequence for later work, the smallest
credible correction, and its likely causal owner. Do not rewrite the proposal,
select an alternative, approve it, or demand implementation evidence that
cannot yet exist.

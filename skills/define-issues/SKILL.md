---
name: define-issues
description: "Define the complete Issue set for one accepted outcome. Use after the requester chooses detailed specification for an Evolution, Project, or standalone result."
---

# Define Issues

Load [Praxis Control](../../references/control.md).

Begin only when the requester chooses Issue definition for one accepted standalone
outcome, direct Project outcome, or approved Evolution Definition. Define
Issues owns behavioral decomposition, Issue records, coverage, and Issue
Approval. It does not plan implementation.

## Bind and close only specification gaps

Read the selected outcome and accepted revision, Requirements and Evolution
when present, current source and behavior, references, artifacts, dependencies,
uncertainty, persistence boundary, and existing Issues. Return changed needs,
Project boundary, Map, or high-level working form to its causal owner.

Use [Research](../research/SKILL.md), [Interview](../interview/SKILL.md),
[Orient](../orient/SKILL.md), [Make Tangible](../make-tangible/SKILL.md), or
[Design Solution](../design-solution/SKILL.md) only for a bounded unknown that prevents an
honest specification. These owners supply evidence or judgment; they do not
write or approve Issues. Preserve exact outcomes: Research `answered`,
`unverified`, `conflicting`, `revised`, `no-op`, `needs-human-judgment`,
`blocked`, or `stopped`; Interview `clarified`, `qualified`, `deferred`,
`conflicting`, `no-op`, `needs-evidence`, `blocked`, or `stopped`; Make
Tangible `no-op`, `constructed`, `revised`, `blocked`, or `stopped`; Design
Solution `recommended`, `selected`, `qualified`, `no-choice`, `revised`,
`refused`, or `stopped`; and Orient `explained`, `understanding-observed`,
`understanding-unconfirmed`, `misconception-unresolved`,
`orientation-blocked`, `causal-return`, or `stopped`. Suggest Orient only for
one settled model and call it only after the requester accepts that suggestion. Changed governing meaning
returns to its earliest owner.

When a small set of already-grounded Issue facts would benefit from native
human reaction before approval, call [Plannotator](../plannotator/SKILL.md) as
`Bundled facts`. Give every fact a stable ID and source. Preserve every edit,
comment, removal, accepted state, verification choice, native reference, and
limit. This interaction creates no Fact or Issue Set record and passes no
Issue Approval. A governing-meaning change returns upstream and reopens only
affected Issues; denial or closure is `stopped`, and transport or malformed
results are `blocked` without fallback.

## Define complete behavioral ownership

Divide the outcome by independently judgeable behavior and semantic ownership,
not files, layers, tasks, or anticipated commits. Each Issue should be
deliverable and acceptable without duplicating governing truth. Make shared
interfaces, invariants, ordering, and dependencies explicit. Cover every
accepted Requirement and Evolution behavior or name why an uncertainty is safe
for a later owner.

Write each reader-ready Issue with a stable Project-local identity and only the
sections it needs:

- context and governing source;
- Requirements and observable behavior;
- out of scope when meaningful;
- dependencies and shared invariants when meaningful;
- acceptance criteria and evidence capable of proving them;
- Result only after accepted Delivery affects the Issue.

Acceptance criteria describe outcomes, conditions, failures, and proof—not
implementation steps. Keep proposals and unresolved implementation choices
out. Reconcile the complete set for gaps, overlap, contradictions, ownership,
compatibility, failure and recovery, and feasible acceptance.

For durable Issues load [record foundations](../../references/records/foundations.md)
and [formalization records](../../references/records/formalization.md). Persist complete
current files; do not create a duplicate collection record.

## Approve bounded complete batches

Present the full current set conversationally or through
[Plannotator](../plannotator/SKILL.md) Record Gates in coherent batches small
enough for honest judgment. Each batch names exact Issue IDs, complete files,
and cross-batch dependencies. Silence is not approval. Approval accepts only
those specifications. Meaning-changing feedback revises affected Issues or
returns upstream and repeats only affected gates. Denial or dismissal stops;
native failure blocks without conversational substitution.

Return `defined`, `partial`, `no-op`, `revised`, `blocked`, or `stopped` with
Issue identities and paths, governing outcome, coverage, accepted and pending
batches, evidence, limits, causal owner, and recommendation. Recommend Delivery
planning only when the complete required set is accepted, then stop.

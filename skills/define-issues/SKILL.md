---
name: define-issues
description: "Define the complete Issue set for one accepted outcome. Use after the human chooses detailed specification for an Evolution, Project, or standalone result."
---

# Define Issues

Turn one accepted outcome into the smallest complete set of detailed,
reader-ready Issues. Define Issues owns Issue boundaries, specification,
coverage, revision, approval presentation, and the return; the caller retains
the governing outcome, route, authority, and stopping rule.

## 1. Confirm the human-selected entry

Begin only after the human chooses detailed specification for one of:

- an Evolution whose high-level specification passed Evolution Definition
  Approval;
- one coherent Project Outcome proceeding directly to Issues; or
- one explicit standalone outcome whose detailed meaning needs judgment.

An accepted Requirement, Map, or Evolution alone does not start Issue
definition. A loaded skill is not entry, and this capability never advances
automatically from a gate. Record the entry owner and its accepted revision.

Bind one outcome, its human-selected route, governing Requirements or
specification, current source, relevant References, and retained artifacts.
If the owner, accepted revision, or outcome is missing, return `blocked` with
the missing boundary before drafting. Before asking for a new revision or
gate, inspect the current Issue set: when it already completely covers the
selected outcome and every required Issue is accepted at that revision,
return `no-op` with the existing IDs, paths, accepted batches, references,
selected outcome and governing truth, evidence, and limits; do not rewrite or
re-present it. Otherwise bind the
exact human authority for revising Issue working files and presenting the
selected gate; missing authority is `blocked`. This step is complete when the
entry owner, accepted truth, current evidence, route, and any required
authority are explicit.

## 2. Close bounded gaps without taking ownership

Read only the governing context and current evidence needed to specify the
outcome honestly. Keep sourced fact, accepted meaning, inference, proposal,
reaction, and uncertainty distinct. If a question could change a Requirement,
Project boundary, preference, problem understanding, Evolution, or selected
high-level working form, return it to that exact owner instead of patching an
Issue.

Use a supporting capability only for one bounded question that belongs to the
current detailed specification:

- Call [Research](../research/SKILL.md) for one factual constraint, interface,
  current behavior, compatibility condition, or other discoverable fact.
  Pass a stable `boundary_id`, exact claim and territory, required freshness,
  consequence, evidence bar, cheapest falsifier, `origin=define-issues`,
  `return_to=define-issues`, `peer_edge_crossed=false`, and the bounded return
  shape. Integrate `answered` evidence with provenance; preserve
  `unverified` or `conflicting` limits and stop or return the exact owner when
  the Issue cannot be judged honestly; bind a materially changed factual
  question under a new boundary; return a governing change to its causal
  owner; map `needs-human-judgment` to the missing human boundary; and
  propagate `blocked` or `stopped`. `no-op` contributes only the sufficient
  context it identifies. Research keeps evidence selection and synthesis;
  Define Issues keeps specification meaning and stopping.
- Call [Interview](../interview/SKILL.md) when one human-owned preference,
  tolerance, priority, recognition, or ambiguous specification choice can
  change the Issue. Pass the exact choice and consequence, candidate scope,
  current evidence, `boundary_id`, `origin=define-issues`,
  `return_to=define-issues`, `peer_edge_crossed=false`, and the non-authorizing
  result shape. Use `clarified`, `qualified`, `deferred`, `conflicting`, or
  `no-op` as scoped human meaning. If the answer changes an upstream
  preference or Requirement, classify the Define Issues outcome as `revised`
  and return the exact earliest owner (Requirements Discovery for a
  preference, Requirement, Project boundary, or Project Outcome; the affected
  Evolution owner for progressive strategy or high-level working form) with the
  answer, consequence, boundary, and still-valid evidence; do not absorb it
  into an Issue. Map `needs-evidence` to the named evidence or causal owner,
  preserve `blocked`, and propagate `stopped`. Interview owns questioning and
  interpretation; Define Issues retains detailed Issue meaning.
- Call [Orient](../orient/SKILL.md) only after the human accepts one bounded
  suggestion to teach a settled context needed for specification judgment.
  Pass one learning objective, starting point, settled model, source anchors,
  visible limits, `caller=define-issues`, `return_to=define-issues`, and the
  caller-retained route, gate, authority, and stop. Consume its comprehension
  or causal-return envelope without treating comprehension as approval. A
  question that changes required behavior, exclusions, dependencies, or proof
  returns to the affected Issue owner; a question that changes earlier truth
  returns to that earlier owner. A declined suggestion or dependency stop
  returns `stopped` with no Issue claim. Orient owns teaching; Define Issues
  retains specification judgment.
- Call [Make Tangible](../make-tangible/SKILL.md) when prose cannot make an
  Issue's flow, state model, boundary, interface, or comparison judgeable.
  Pass the exact question, audience and starting point, accepted truth and
  evidence, primary judgment, medium and fidelity, requested reaction,
  current authority, artifact lifetime, `caller=define-issues`,
  `return_to=define-issues`, and the result shape. Use `no-op` directly;
  preserve exact artifact/version, reaction, supported conclusions, fidelity
  limits, and retention state for `constructed` or `revised`; map `blocked`
  and `stopped` without inventing a reaction or fallback. Make Tangible owns
  construction and lifecycle; Define Issues interprets its consequence for
  the Issue.
- Call [Design Solution](../design-solution/SKILL.md) for a consequential
  ownership, interface, invariant, contract, integration, transition,
  failure, or changeability choice. Do so only with a complete preflight:
  stable `boundary_id`, active caller, earliest causal owner, accepted
  Requirements/specifications with source and revision, current evidence
  with provenance and limits, one exact choice and consequence, territory,
  actors, scenarios, boundaries, hard Requirements, safety and compatibility
  duties, evidence standard and authority, viable/current/caller-accepted
  alternatives, and caller-retained route, gates, authority, acceptance, and
  stop. Preserve `recommended`, `selected`, `qualified`, `no-choice`,
  `revised`, `refused`, or `stopped` exactly in the bounded return. Return a
  changed earlier meaning to its causal owner; Define Issues retains detailed
  specification and does not choose or implement the solution.

Every call returns evidence, reaction, or a bounded judgment only. It does
not approve an Issue, grant planning or mutation authority, choose a route, or
re-enter Define Issues. This step is complete when every material gap is
resolved inside the Issue boundary or has an explicit owner return, evidence
limit, or stop state.

## 3. Divide specification meaning

Propose boundaries with the human before creating records. Start with the
governing Requirements and selected outcome, then explain why each required
behavior belongs together and what meaningful alternative groupings would
change.

Keep one Issue when its behavior, exclusions, dependencies, and proof can be
understood and judged together. Split sibling Issues when outcomes can be
specified, revised, or proved independently. Divide specification meaning,
not implementation work: frontend/backend, repositories, components,
technical layers, implementation steps, and expected Plan count are not Issue
boundaries unless they also divide independently judgeable meaning. No
preferred Issue count exists, but every Issue-governed implementation has at
least one Issue. This step is complete when the human has a coherent proposed
set, every boundary has a reason, and every material outcome obligation has a
candidate owner.

## 4. Write reader-ready Issues

Author one current file per Issue with the stable record envelope from the
[record foundations](../../references/records/foundations.md) and the Issue
body in [Formalization Records](../../references/records/formalization.md#issue):

```markdown
# <Issue title>

<One concise observable outcome paragraph.>

## Context
## Requirements
## Out of Scope       <!-- when meaningful -->
## Dependencies       <!-- when meaningful -->
## Acceptance Criteria
## Result             <!-- only after accepted Delivery affects the Issue -->
```

The opening states the observable outcome. Context names the owning Evolution,
direct Project Outcome, or standalone outcome and preserves the local
consequence of governing Requirements, accepted design context, source,
References, and retained artifacts. Requirements state complete governing
behavior, including relevant interfaces, states and transitions, edge and
failure cases, compatibility, and other detail needed for judgment. Add
descriptive subsections only when they clarify the Issue. Omit empty optional
sections.

Acceptance Criteria state observable claims and boundaries. Include inherited
accepted behavior materially exposed through a shared invariant, interface,
responsibility, or known pressure point. Illustrative examples are not
exhaustive unless the Issue says so. Keep files, commands, code structure,
execution order, test mechanics, and mutation authority for the later
Implementation Plan. A competent future engineer must be able to judge the
Issue without the originating conversation; implementation mechanics may
remain unresolved for Delivery planning. This step is complete when each
Issue is independently readable, complete in required meaning, and free of
Plan detail or hidden product uncertainty.

## 5. Check the complete outcome

Read the full current set together. Verify that every material behavior,
constraint, exclusion, dependency, ordering relationship, and required proof
of the selected Evolution, direct Project Outcome, or standalone outcome is
covered by one or more Issues or visibly returned to its owner. Explain
consequential coverage and gaps without creating a traceability ledger when
the relationship is already clear. Record dependency or order only when one
required behavior semantically depends on another result; Delivery chooses
implementation sequence.

If a gap changes an earlier owner, return the corrected meaning there and
revise only affected descendants. If the set has no Issue, cannot be judged,
or leaves a material obligation without an owner, return `blocked` or
`revised` with the exact gap and owner. This step is complete only when the
set collectively specifies the outcome and every obligation has one clear
owner, or the precise causal return has been made.

## 6. Persist stable current records

When durable Issues are needed, create only their owner-shaped files:

```text
.agents/projects/<project>/issues/iN-<name>.md   # Evolution or direct Project owner
.agents/issues/i-<name>.md                     # standalone owner
```

Keep IDs and filenames lowercase, stable, and unique across `.agents/`.
Project-owned Issues name the nearest governing Evolution or Project as
`parent`; standalone Issues omit `parent` and carry enough Context to stand
alone. Moving an Issue after an accepted ownership change preserves its ID but
changes no authority. Refinement preserves identity; splitting, merging, or
replacing creates new IDs and only the minimal supersession context needed by
current readers.

An Issue remains a current specification, not an execution ledger. After
accepted Delivery affects it, maintain one concise current `Result` summary
with proved coverage, decisive evidence pointers, and remaining unmet
criteria or limitations. Keep Plans, implementation notes, commands, and
verification history outside the Issue. Load the [record foundations](../../references/records/foundations.md)
again for material create, move, revision, supersession, or closure decisions
and the [Formalization record](../../references/records/formalization.md#issue)
for envelope/body validation. This step is complete when every persisted file
has a valid owner, stable identity, complete body, and no execution history.

## 7. React, approve, revise

When several already-grounded observable behaviors or acceptance criteria are
easier to edit together, optionally call [Plannotator](../plannotator/SKILL.md)
for its native `Bundled facts` interaction, a facts-surface Reaction Review.
Pass the exact current criteria or Issue files, stable IDs, target revision,
requested edits or annotations, and what the reaction does not authorize.
Apply every returned edit, comment, accepted or removed fact, and
verification choice to the owning Issue files while preserving whether the
reaction is non-blocking or meaning-changing.
The facts interaction creates no Fact record, Issue Set record, or acceptance.
Dismissal, empty closure, or transport failure returns `stopped` or `blocked`
with no inferred reaction; a meaning-changing reaction returns to the causal
owner and reopens affected Issue work.

Present the complete current set through one or more bounded coherent Issue
Approval batches. When a native surface is selected, use Plannotator's
[Record Gate](../plannotator/SKILL.md): each batch names exact Issue IDs and
presents their complete current files. Use several batches only when one
interaction would be too large for honest judgment; keep cross-batch
dependencies visible and create no duplicate collection record. Pass
`interaction_kind=Record Gate`, the stable target revision, the requested
provisional Issue Approval, and the non-authorizing consequence. Plannotator
is authoritative for that selected gate; a denial, dismissal, closure, or
native failure is never replaced by conversational approval.

When no native surface is selected, conduct the equivalent conversational
Issue Approval: show the same complete current files and exact batch IDs,
state cross-batch dependencies and the provisional consequence, and ask the
human to approve, revise, deny, or stop. Capture the exact decision and
feedback without creating a collection record; project
`accepted_reference: unavailable` for an accepted conversational batch, and
silence is not approval.

Map either surface precisely: approval accepts only the named Issue
specifications, exclusions, dependencies, order, and proof. Preserve approved
non-blocking feedback with its accepted batch and do not repeat its gate;
only feedback that changes an upstream Requirement or preference, governing
meaning, a shared interface/invariant, dependency, or proof returns to its
earliest causal owner, revises affected files, and repeats each affected
batch. A native denial maps distinctly to `stopped` with its exact
decision, native reference (or `unavailable`), fidelity/transport limits, and
the preserved safe draft or accepted batches; conversational denial likewise
stops with the exact human decision. Dismissal or empty closure is `stopped`
with its closure and safe state, while tool failure is a blocked native
interaction. Approval grants no planning, mutation, commit, publication,
deployment, or adjacent route. This step is complete when every Issue required
by the current outcome is accepted, or the partial, revised, blocked, or
stopped state and exact pending batch are explicit.

## 8. Return and stop

Return one bounded result:

```text
Define Issues Result {
  outcome: defined | partial | no-op | revised | blocked | stopped,
  entry_owner_and_revision,
  selected_outcome_and_governing_truth,
  issue_ids_and_owner_paths,
  boundaries_and_coverage,
  accepted_and_pending_issue_batches,
  native_references_and_revision_scope,
  evidence_and_limits,
  unresolved_or_causal_return,
  recommendation,
  caller_retained_route_gate_authority_acceptance_and_stop
}
```

`defined` means the complete current set is reader-ready and every required
Issue is approved; `partial` means named batches are accepted but required
coverage remains pending; `no-op` means an already complete accepted set needs
no ceremonial work; `revised` means accepted meaning or ownership changed and
the affected gate must repeat; `blocked` names missing context, evidence,
dependency, authority, or native capability; and `stopped` preserves the
current safe draft or accepted state after human stop, native denial,
dismissal, or refusal. A native stop also carries its exact decision,
reference, and fidelity/transport limits. Always return exact Issue identities
and paths, the selected outcome and governing truth, coverage and gaps,
accepted and pending batches, revision scope, evidence and limitations, and
the causal return or next human judgment when one is needed. Recommend
Delivery planning only after every required Issue is accepted, and stop there.
Do not create Plans, implement, accept a result, commit, publish, deploy, or
continue another route.

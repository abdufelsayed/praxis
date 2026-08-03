# Plan

> **Design document — not a runtime skill.** Accepted behavioral contract; `SKILL.md` implementation pending.

## What it does

Plan turns the next accepted Issue boundary or already-clear standalone
implementation outcome into one judgeable proposal. It tells the human how
Delivery intends to produce and prove that result, what may change, and what
remains outside the boundary.

Its leading idea is **make implementation authority precise without scripting
every edit**. The Plan exposes consequential implementation choices and creates
a stable boundary for later authorization while preserving reasonable freedom
inside that boundary.

## When to reach for it

Plan begins when the human directly asks to plan an approved Issue boundary or
already-clear standalone outcome, or chooses planning after Deliver recommends
it. A direct planning request establishes or resumes the planning portion of
one Deliver loop; Plan never becomes a separate implementation owner. It
develops the next proposal collaboratively and returns after Approval.

Issue Approval does not invoke Plan. Plan Approval does not invoke
implementation. Direct Work does not create a Plan merely because it edits
code, while contained work may still use a standalone Plan when reviewing its
approach or authority boundary would improve control.

## Reconstruct the exact boundary

Read:

- the approved Issues or Issue portions proposed for this result when any
  exist, otherwise the complete standalone outcome and accepted truth;
- governing Requirements and the selected Evolution when present;
- current source, tests, and system behavior;
- accepted design context and relevant evidence;
- earlier results and learning that constrain this boundary; and
- known change pressure, risk, or external consequence.

Inspect enough current source to describe a credible implementation. Do not
plan from filenames guessed from an Issue, and do not reopen accepted
specification merely because routine implementation mechanics remain unknown.

If source evidence shows that the proposed boundary cannot produce one
integrated, reviewable, and provable result, return that evidence to Deliver
and discuss a better boundary. If it changes required behavior, return to the
exact Formalization owner instead.

## Develop the approach collaboratively

Explain the consequential implementation choices before freezing them in the
Plan. Discuss alternatives when they materially change ownership,
interfaces, migration, risk, reversibility, changeability, or required proof.
Use [Design Solution](../design-solution/README.md) for a rich consequential
comparison; use bounded [Research](../research/README.md),
[Make Tangible](../make-tangible/README.md), or
[Check Safety](../check-safety/README.md) work when they close a planning
question. Invoke [Security](../security/README.md) when an attacker-focused
risk could change the implementation approach, remediation boundary, or proof.
Security returns validated findings; Plan retains the execution contract.

When settled system or accepted specification context is too complex for the
human to judge the proposed approach, recommend one bounded
[Orient](../orient/README.md) interaction and invoke it only after the human
agrees. Orient teaches that context; Plan still owns every question about which
implementation approach, authority boundary, or proof should be proposed. A
challenge to the approach is planning feedback, not a misconception.

Routine reversible choices do not need a design exercise. Recommend the
credible approach, explain its important consequences, and let the human
reshape it before Plan Approval.

When consequential code shape is difficult to judge in prose, use the smallest
useful program-design reaction surface: a call-flow tree, proposed file-tree
diff, ownership diagram, or sketch of key types and interfaces. This remains
part of collaborative Plan shaping: invoke
[Make Tangible](../make-tangible/README.md), receive its scoped reaction and
fidelity limits, and retain approach and authority ownership in Plan. It
creates no new phase, artifact type, or gate.

Ask whether a touchable checkpoint inside the proposed boundary would let the
human catch a consequential wrong direction while correction is still cheap.
Include one only when that steering value justifies the interruption. The
checkpoint does not need to be a standalone meaningful outcome, does not become
an Evolution, and does not redefine the Plan boundary.

## Specify authority, not every edit

Write every Plan as a reader-ready implementation document:

```markdown
# <Plan title>

<Concise bounded result>

## Context and Coverage
## Proposed Approach
## Changes and Sequence
## Authority and Exclusions
## Risks and Recovery
## Open Implementation Choices <!-- when safely deferrable -->
## Human Steering Checkpoint <!-- when genuinely useful -->
## Verification
```

Reader-ready means a competent future engineer can understand and judge the
Plan without replaying its originating conversation or learning Praxis
workflow vocabulary. Follow the complete
[Implementation Plan record contract](../../references/records/delivery.md#implementation-plan).

The opening paragraph states the intended bounded result. Context and Coverage
links the governing Issues or standalone outcome, Requirements, Evolution, and
relevant evidence, then states exact Issue portions, the accepted starting
baseline, and what this Plan will deliver. Anything not explicitly covered
remains outside the proposed authority.

Proposed Approach explains consequential ownership, data and call flow,
interfaces, integration, and structural refactoring. Changes and Sequence turns
that design into numbered coherent implementation, integration, and evidence
steps when order improves execution or review. The steps are not Tasks,
progress statuses, individual gates, or authority boundaries.

Authority and Exclusions names affected repositories, components, data,
configuration, documentation, and external systems, permitted kinds of
mutation, and meaningful exclusions. A Plan names files, commands, or exact
resources when they define scope, safety, coordination, recovery, or proof. It
does not inventory every helper, mechanical edit, or predictable test command.
Delivery may adapt routine implementation details while accepted behavior and
authority remain intact.

At a planned steering checkpoint, Delivery presents the smallest touchable
behavior or artifact, the exact human question, and the implementation choice
that reaction may change. The Plan states where the checkpoint appears in its
sequence. If the reaction preserves the approved Plan, existing Implementation
Authorization remains valid. Material change returns to the exact owning record
and repeats only the affected gate.

When current source already shows that the result depends on structural repair,
include that repair at the concrete pressure point and the inherited behavior
its impact exposes. Do not absorb unrelated cleanup or invent abstractions for
unsupported futures.

Invoke [Refactor](../refactor/README.md) while developing the Plan when identifying the
pressure, reconstructing preserved behavior, or selecting the smallest
responsible seam requires substantial judgment. Refactor returns a bounded
structural recommendation; Plan still owns the proposed targets, authority,
risk, and proof.

When delivered behavior will change public, operational, integration,
troubleshooting, or contributor guidance, include the exact owning
documentation surface in the permitted mutation boundary and proof. Internal
movement with no reader-facing consequence creates no documentation task.

## Carry only safe implementation uncertainty

A Plan may leave an implementation question open when every plausible answer
preserves the same:

- accepted Requirements and Issue behavior when present, or the accepted
  standalone outcome;
- mutation targets and exclusions;
- consequences, dependencies, and external effects;
- risk and recovery boundary; and
- Review, Verify, and required proof.

Name the uncertainty, why it is safe to defer, and the envelope within which
Delivery may decide. Under Open Implementation Choices, state the allowed
options, why all remain inside the boundary, the discriminating evidence, and
the decision rule. If a plausible answer would change any governing meaning or
authority boundary, resolve it through inspection or a bounded probe, or return
it to the exact owner before Plan Approval.

The Plan may authorize a bounded conditional choice when every allowed branch
preserves that same envelope. Name the discriminating evidence and decision
rule—for example, the benchmark property that selects streaming or buffered
parsing. A result that requires a branch outside the accepted envelope stops
Delivery and returns for Plan revision.

This avoids fake precision without converting “we will decide later” into
unbounded authority.

## Describe delegation only when it changes the boundary

Delegation is normally a Delivery implementation choice inside the approved
Plan. Do not prescribe a worker, reviewer, model, or subagent procession merely
because the harness supports one.

Make delegation explicit in the Plan when isolation, mutation ownership,
permissions, secrets, coordination, integration, or independent assurance
materially affects the Plan's authority, risk, recovery, or proof. Any later
Delegation Brief remains a narrower projection of the approved Plan and cannot
expand it.

## Make consequential actions explicit

For a destructive, irreversible, production, data-affecting,
permission-changing, secret-handling, cross-project, commit, push,
pull-request, merge, deployment, migration, infrastructure, or other remote
effect, state the exact target, intended effect, recovery approach, and evidence
required afterward.

Plan inclusion is necessary but never sufficient. The action still requires
human authority that explicitly covers the exact action and applicable Safety
evidence during Delivery. That authority may be included in a precise
Implementation Authorization; Check Safety does not manufacture another gate
when the action was already named and no new consequence appears.

Risks and Recovery records the actual failure mechanism, affected target and
consequence, prevention or detection, safe stopping condition, and recovery
path. Do not manufacture a generic risk matrix or severity score.

## Make completion evidence judgeable

Verification maps the Plan's completion claims and covered Issue Acceptance
Criteria to proportionate evidence. Distinguish checks that steer
implementation from evidence that judges completion. Name concrete seams and
commands when they matter, cover inherited accepted behavior materially
exposed by the change, and state required Review or independent assurance.
For a code-bearing Plan, include human inspection of the complete fixed diff
through [Plannotator](../plannotator/README.md)'s native change-review surface
before Result Acceptance. Do not demand exhaustive test detail before
implementation evidence exists.

## Pass Plan Approval and stop

Persist only the current just-in-time proposal beneath its Project when one
owns the work, or under `/.agents/plans/` when it is standalone. Do not create
later Plan placeholders.

Every Plan uses `kind: plan`, one stable lowercase workspace-unique ID, an
optional Project parent, Plan Approval under `gates`, an authority projection,
and a disposition. A Plan without a Project omits the parent even when it links
standalone Issues. Issue coverage remains in Context and Coverage because Plans
and Issues have a many-to-many relationship.

Present the complete Plan through
[Plannotator](../plannotator/README.md)'s native Record Gate. Plan Approval
provisionally accepts its Issue coverage when present, intended
result, approach, targets, permitted mutations, exclusions, uncertainty
envelope, consequences, risks, assurance, and proof. It grants no
implementation or external authority.

Explain what was accepted, recommend implementation, and stop. An explicit
ordinary-language Implementation Authorization may release only that exact
Plan's ordinary reversible mutations. It may accompany approval in the same
human message only when it is clearly stated as a separate act. Consequential
actions require that instruction or another explicit human instruction to name
their exact action, target, and effect. Record a source reference only when
that native human instruction is reliably identifiable; a handoff may point to
it but never becomes the grant, and metadata never creates authority. Add Result
Acceptance under `gates` only when that judgment occurs.

## Revise only when meaning changes

Clarification, evidence references, and routine implementation detail may
change locally when they preserve the approved proposal. A material change to
Issue coverage, intended result, targets, approach, structural work,
exclusions, uncertainty envelope, consequences, risk, recovery, or proof
returns affected authority to `awaiting`, then passes through Plan discussion
and a Plannotator revision diff. Fresh Implementation Authorization is required
after the revised Plan is approved.

A material approach change is interpreted through the whole execution
contract. Recompute every affected authority, exclusion, risk, integration,
recovery, and evidence boundary, then foreground the complete semantic diff
rather than patching only the line the human annotated.

After approval, keep the Plan only while it governs work or a named future loop
needs its authority, limitations, or learning. It is not a permanent execution
diary or archive and has no Result section. Result Acceptance updates covered
Issues and causal owners or returns the standalone result, proof, limitations,
and learning in the conversation, then exhausts the Plan's authority.

## It is working when

- The human chose planning for approved Issue work or an already-clear
  standalone outcome.
- Current source and prior evidence support the proposed approach.
- Consequential choices were discussed rather than silently frozen.
- The Plan bounds authority without scripting every routine edit.
- Ordered implementation steps do not become Tasks or progress ledgers.
- Development feedback and completion evidence are distinguished at the
  governing boundary.
- Carried uncertainty has an explicit safe decision envelope.
- Evidence-driven conditional choices have an explicit rule and cannot escape
  that envelope.
- Material approach feedback propagates across the complete execution
  contract.
- Necessary structural work and impact-based proof are visible.
- Adjacent cleanup and future Plans remain outside the proposal.
- Consequential actions state exact targets and still require action-time
  authority.
- Plan Approval starts nothing and the capability stops.

## Skill structure

The entry boundary, source-grounded planning, collaborative approach,
authority precision, safe-uncertainty test, consequential-action treatment,
record revision, Plan Approval, and stopping procedure belong in `SKILL.md`.
Plan invokes [Design Solution](../design-solution/README.md),
[Research](../research/README.md), [Orient](../orient/README.md),
[Make Tangible](../make-tangible/README.md),
[Refactor](../refactor/README.md), [Review](../review/README.md),
[Verify](../verify/README.md), [Check Safety](../check-safety/README.md),
[Security](../security/README.md), and
[Plannotator](../plannotator/README.md) when their concrete triggers appear. It
uses the Core and Delivery record schemas. Make Tangible owns artifact
fidelity; Review, Verify, Security, and other invoked capabilities own their
non-trivial evaluation. Material upstream learning returns through Deliver,
which owns causal routing.
A skill-local reference is justified only if a recurring rich planning path
cannot remain clear in the common procedure.

## Direct dependencies

### Skills

- [Design Solution](../design-solution/README.md) — resolve consequential
  implementation architecture or ownership; return a solution shape; Plan
  retains the execution contract.
- [Research](../research/README.md) — resolve a planning fact; return evidence
  and limits; Plan retains synthesis.
- [Orient](../orient/README.md) — teach one settled system or specification
  model after the human accepts the suggestion; return comprehension and
  uncertainty; Plan retains approach and authority judgment.
- [Make Tangible](../make-tangible/README.md) — construct and verify a flow,
  comparison, or implementation-shape surface; return reaction and fidelity
  limits; Plan retains the proposed implementation.
- [Refactor](../refactor/README.md) — assess a concrete changeability pressure
  that affects the approach; return a bounded transformation shape; Plan
  retains scope and authority request.
- [Review](../review/README.md) — adversarially inspect a risky proposed
  approach; return findings; Plan retains revision.
- [Verify](../verify/README.md) — determine whether proposed proof is capable of
  establishing the claims; return evidence limits; Plan retains proof design.
- [Check Safety](../check-safety/README.md) — inspect a consequential proposed
  action; return `proceed`, `revise`, or `stop`; Plan retains the named
  authority request.
- [Security](../security/README.md) — investigate an attacker-focused planning
  risk; return validated findings; Plan retains remediation boundaries.
- [Plannotator](../plannotator/README.md) — present Plan reaction or
  Implementation Plan Approval; return exact annotations and decision; Plan
  retains gate consequence and stops.

### Shared references

- [Records: Core](../../references/records/core.md) and
  [Delivery](../../references/records/delivery.md) — create, revise, place, and
  structurally validate Implementation Plans.

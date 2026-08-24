# Plan — Maintainer Contract

This is the acceptance contract for the shipping
[Plan owner](SKILL.md). It is not runtime
context, and the owner must not link to or depend on it.


## Purpose

Plan turns an approved Issue boundary or already-clear standalone outcome into
one reader-ready, judgeable implementation proposal. It owns the approach,
authority boundary, safe uncertainty, revision, Plan Approval presentation,
and return. Deliver retains the governing records, route, implementation,
Result Acceptance, and stopping.

## Invocation, entry, and exclusions

Plan is internally reachable because Deliver may reach it after the requester
selects shaping an implementation proposal and the requester may directly
request the same bounded capability. Host
availability or an accepted upstream gate is not behavioral entry. Entry is
one of:

- a direct human request to plan an approved Issue boundary or Issue portion;
- a direct human request to plan an already-clear standalone outcome; or
- the requester's ordinary-language choice to plan after Deliver recommends it.

The entry brief names the active caller and Delivery context, approved Issues
or standalone truth, governing Requirements and selected Evolution when
present, current source and evidence, accepted design context, change
pressure, and caller-retained route, authority, acceptance, and stop. Missing
boundary, owner, accepted truth, or evidence returns `blocked` with the exact
gap. Evidence that changes required behavior returns to the exact
Formalization/Issue owner; evidence that changes a need, constraint,
preference, Project Outcome, or Project boundary returns to Requirements
Discovery.

Plan excludes Issue definition, Requirements ownership, Evolution selection,
implementation, mutation, commits, publication, deployment, Result
Acceptance, and route advancement. Plan Approval never
authorizes implementation. A Plan may describe delegation when it changes an
authority, risk, recovery, or proof boundary, but it does not prescribe a
worker procession or transfer ownership. Durable information follows the shared
record-ownership rule.

## Behavioral contract

Plan owns this bounded sequence:

1. Confirm human-selected entry and bind one accepted boundary, owner,
   baseline, and evidence context.
2. Inspect current source and reconstruct the smallest integrated, reviewable,
   and provable implementation boundary.
3. Discuss consequential approach choices and use bounded supporting skills
   only when their distinct evidence or judgment can change the proposal.
4. Write one reader-ready Plan with exact coverage, approach, changes,
   authority, exclusions, risks, safe choices, checkpoints, and proof.
5. Keep deferred uncertainty inside an explicit envelope and route every
   material change to the correct causal owner; recompute the whole execution
   contract when the Plan meaning changes.
6. Present the complete Plan through Plannotator's native Implementation Plan
   Record Gate, preserve the exact human decision, leave authority awaiting,
   and return one bounded result before stopping.

## Invariants

1. A loaded or implicitly selected skill never satisfies behavioral entry. Plan
   starts only from a direct planning request or an explicit human choice after
   Deliver recommends planning.
2. One run has exactly one bounded implementation result, accepted baseline,
   active caller, governing owner, and route. Missing or contradictory entry
   returns the exact blocker or causal owner rather than a guessed Plan.
3. Current source, interfaces, tests, configuration, runtime behavior,
   accepted records, retained artifacts, and relevant evidence are inspected
   deeply enough to support a credible approach. Filenames guessed from Issues
   and stale proposals are not evidence.
4. A Plan boundary is the smallest one capable of producing an integrated,
   reviewable, and provable result. It may cover one Issue, a meaningful Issue
   portion, tightly coupled Issues, remaining integration/proof, or one clear
   standalone outcome. It is not a mechanical Issue-to-Plan mapping.
5. Structural repair belongs inside the Plan only at the concrete pressure
   point required by the accepted result, with inherited behavior it exposes.
   Adjacent cleanup and future work remain excluded.
6. The Plan body is reader-ready and has exactly the required common sections:
   bounded result, Context and Coverage, Proposed Approach, Changes and
   Sequence, Scope and Exclusions, Risks and Recovery, and Verification.
   Open Implementation Choices and Decision Checkpoint appear only when
   their conditions hold. A Plan receives one concise Result section only
   after accepted Delivery affects it.
7. Context and Coverage states exact Issue portions or standalone outcome,
   accepted starting truth, governing records, evidence, and local consequence.
   Anything not named remains outside authority.
8. Proposed Approach owns consequential implementation design, ownership,
   interfaces, data flow, integration, and structural transformation.
   Changes and Sequence are explanatory numbered steps, never Tasks,
   progress records, gates, or authority boundaries.
9. Scope and Exclusions names affected repositories, components, data,
   configuration, documentation, external systems, permitted mutation kinds,
   and meaningful exclusions. Exact files, commands, and resources appear only
   when they define scope, safety, coordination, recovery, or proof. Before
   freezing the body, the docs-impact test identifies the exact owning
   documentation path, section, and audience for any public, operational,
   integration, troubleshooting, or contributor behavior change and carries it
   into Changes and Sequence and Verification with update proof. No behavior
   change requires stating the checked surfaces and why no documentation
   mutation is in scope.
10. Risks and Recovery records the actual failure mechanism, target and
    consequence, detection or prevention, safe stopping condition, and recovery
    path. It does not manufacture a generic matrix or severity score.
11. An Open Implementation Choice is safe only when every allowed option
    preserves accepted behavior, targets, exclusions, consequences, risks,
    recovery, and proof. It names common envelope, discriminating evidence,
    and decision rule. A branch that could change meaning or authority is
    resolved or returned before Plan Approval.
12. A Decision Checkpoint is optional. It names the smallest touchable
    behavior or artifact, exact decision question, sequence position, and
    choice that the decision may change. It creates no new gate, Evolution, result, or
    authority boundary.
13. Verification maps completion claims and covered Issue Acceptance Criteria
    to proportionate falsifiable evidence, distinguishes steering checks from
    completion evidence, covers inherited behavior materially exposed by the
    change, and states required Review or independent assurance. A code-bearing
    Plan includes complete fixed-diff human inspection through Plannotator's
    native Code Review before Result Acceptance.
14. Plan may leave only implementation uncertainty that preserves accepted
    behavior, mutation targets, exclusions, consequences, dependencies, risks,
    recovery, Review/Verify proof, and authority. The option set and decision
    rule remain explicit; “decide later” is not a boundary.
15. Material change to Issue coverage, result, targets, approach, structural
    work, exclusions, uncertainty envelope, consequences, risks, recovery, or
    proof returns the current authority projection to `awaiting`, recomputes
    every affected part of the execution contract, foregrounds the complete
    semantic difference, and repeats Plan Approval. Fresh Implementation
    Authorization is required after approval.
16. A local clarification, evidence pointer, or routine implementation detail
    may change without re-gating only while the accepted proposal and authority
    envelope remain intact. A changed governing meaning returns to its earliest
    causal owner, not the nearest descendant.
17. Durable Plans are owner-shaped and lazy: a Project-owned Plan lives under
    that Project's `plans/`; a standalone Plan lives under `.praxis/plans/`.
    IDs are lowercase, stable, and workspace-unique. Moving preserves identity;
    splitting, merging, or replacing creates new identity and minimal
    supersession context. No placeholder, duplicate collection, or generic
    archive is created.
18. Durable Plan records use `kind: plan`, stable `id`, optional `parent`,
    `gates.plan_approval`, `authority.state`, and `disposition`. Plan Approval
    leaves authority `awaiting`; a separate reliable human instruction may
    activate ordinary reversible in-bound mutation. Metadata, a handoff, a
    delegate brief, or approval feedback never manufactures authority.
19. Consequential, destructive, data-affecting, production, permission,
    secret, migration, infrastructure, commit, push, merge, deployment,
    cross-project, or other remote actions require the exact action, target,
    and effect in a human instruction in addition to Plan inclusion. Plan
    performs the pre-approval risk inspection; after approval, Delivery invokes
    Check Safety only at action time and only after a separate exact
    Implementation Authorization exists.
20. Plan calls supporting skills only for their accepted bounded triggers and
    passes complete current briefs. Every satisfied trigger invokes its target
    without another human reminder and its exact return is consumed before the
    approach step completes. A callee returns evidence, reaction,
    comprehension, findings, or a bounded recommendation; it never approves
    the Plan, chooses its route, grants authority, or silently re-enters Plan.
21. A selected native Plan Record Gate is authoritative. Approval accepts the
    complete presented Plan and non-meaning-changing feedback only. Meaning-
    changing feedback repeats the affected revision and gate. Native denial,
    dismissal, empty closure, command failure, transport failure, and malformed
    result remain distinct from approval and from one another.
22. Approved Plan authority is explicitly `awaiting` and Plan stops after
    explaining the accepted proposal and recommending implementation. Plan does
    not implement, create a Result section, accept a result, commit, publish,
    deploy, advance a route, or start another Plan.
23. Before freezing the body, Plan runs the docs-impact test. A change to public,
    operational, integration, troubleshooting, or contributor behavior names the
    exact owning documentation path, section, and audience in Authority and
    Exclusions, Changes and Sequence, and Verification, with proof of the
    update. If no such behavior changes, the checked surfaces and reason for no
    documentation mutation are stated; a generic documentation task is not a
    completion claim.

## Outcomes and observable return

Plan exposes exactly these top-level outcomes:

- `approved` — one complete Plan revision passed Plan Approval; its
  `authority.state` remains `awaiting` and the result recommends separate
  Implementation Authorization;
- `revised` — material feedback or changed governing context affects the Plan
  and names the semantic difference, safe state, owner, and gate to repeat;
- `blocked` — missing entry, source, evidence, authority, dependency, native
  capability, or honest coverage prevents a Plan, preserving partial state; or
- `stopped` — the requester declined, dismissed, denied, or stopped the bounded
  Plan, preserving exact decision, reference/`unavailable`, feedback, limits,
  and safe state without an approval claim.

The semantic return is:

```text
Plan Result {
  outcome: approved | revised | blocked | stopped,
  plan_id_and_owner_path,
  entry_and_covered_boundary,
  governing_records_and_accepted_baseline,
  proposed_approach_and_authority_projection,
  gate_decision_and_native_reference,
  evidence_and_limits,
  dependency_projections?,
  revision_or_causal_return?,
  caller_retained_route_authority_acceptance_and_stop
}
```

`approved` leads with the exact accepted Plan, covered boundary, native
reference (or `unavailable`), awaiting authority, and limitations. Dependency
projections remain nested under `dependency_projections` and do not become
Plan approval. `revised`
leads with complete semantic difference, affected owner/gate, retained
evidence, and safe current state. `blocked` names the missing boundary,
dependency state, or native failure. `stopped` makes no comprehension,
approval, authority, or acceptance claim. Every result preserves the caller's
route, governing records, authority, acceptance, and stop, then stops.

## Effects, authority, persistence, and lifetime

Plan may inspect source and evidence, write or revise the current Plan inside
the caller's existing authority, and invoke the listed read-only or native
supporting capabilities. It may use a selected native Plannotator Record Gate
and capture its structured result. It does not mutate product code, execute a
Plan, grant implementation authority, accept a result, commit, publish,
deploy, or create external state.

Persist a Plan only when its governing meaning, gate, authority boundary,
limitations, or learning must survive the conversation, a named future owner
needs it, work is already durable, or the requester explicitly requests
persistence. Load the shared [record foundations](../../references/records/foundations.md)
and [Delivery record contract](../../references/records/delivery.md) at their
named decision points. Conversation, drafts, native transport, feedback, and
execution narration remain transient by default. Retain an accepted Plan only
while it governs work or a named future consumer needs its truth; after Result
Acceptance the caller may remove it once useful meaning has moved to its owner.
Any additional durable record requires a distinct purpose, consumer, lifecycle,
and authority boundary.

## Composition and direct calls

Direct calls carry the callee's required brief and preserve its exact return:
 one complete brief, lossless returns, no authority transfer, and no
re-entry of a capability already in the assurance path or across the
Research–Interview edge. Each callee's own contract owns its intake fields.
This package's caller policies are:

| Direct target | Caller policy |
| --- | --- |
| [Design Solution](../design-solution/SPEC.md) | `recommended`, `selected`, `qualified`, `no-choice` are usable input; `refused` blocks the affected choice; changed governing meaning returns to its causal owner. |
| [Research](../research/SPEC.md) | `answered`/bounded `no-op` are usable and not new evidence by themselves; `unverified`, `conflicting`, `needs-human-judgment` leave the claim open and block a Plan that depends on it. |
| [Orient](../orient/SPEC.md) | Honest comprehension supports the approach discussion; `orientation-blocked`/`misconception-unresolved` blocks it; Orient never chooses the approach. |
| [Make Tangible](../make-tangible/SPEC.md) | A constructed or locally revised artifact is usable; a meaning-changing revision returns the Plan to revision. |
| [Refactor](../refactor/SPEC.md) | `analyzed`/`relieved` inform the Plan; `partial`/`blocked` leave the pressure unresolved; `needs-design`/`needs-owner` return the choice to its owner. |
| [Review](../review/SPEC.md) | `complete` with no Plan-changing finding is usable; a Plan-changing finding revises; `incomplete` blocks the affected claim. Review never approves the Plan. |
| [Verify](../verify/SPEC.md) | `verified` supports the proof; `failed` changes the proof design or returns the gap; anything else leaves proof unestablished. |
| [Security](../security/SPEC.md) | Findings that change the Plan envelope revise it; `needs-verification`/`blocked` leave the risk open. Security owns attack-path interpretation. |
| [Plannotator](../plannotator/SPEC.md) | Native approval is never Plan Approval; meaning-changing feedback revises; denial/dismissal/closure stops; command/transport/malformed/unavailable failure blocks. |

No dependency result approves the Plan, grants authority, chooses its route,
or re-enters it; only Plan's own native Record Gate produces top-level
`outcome: approved`. Preserved callee results return nested under
`dependency_projections?` without flattening, renaming, or upgrading partial,
blocked, revised, conflicting, or stopped states.

## Runtime references and invocation projection

`SKILL.md` keeps entry, source reconstruction, collaboration, body shape,
authority, uncertainty, direct-call triggers, revision, Plan Approval, result,
and stopping inline. It loads only these terminal plugin-local references:

| Reference | Load condition | Ownership |
| --- | --- | --- |
| [`control.md`](../../references/control.md) | Once at owner entry. | Shared authority, transition, return, and stopping control. |
| [`foundations.md`](../../references/records/foundations.md) | Creating, moving, materially revising, superseding, or abandoning a durable Plan. | Cross-skill record lifecycle applied by Plan. |
| [`delivery.md`](../../references/records/delivery.md) | Authoring, validating, gating, or revising the Plan envelope/body. | Cross-skill Implementation Plan record contract. |

No local reference, script, asset, fixture, template, wrapper, or integration
is required. The exact runtime tree is:

```text
skills/plan/
├── SKILL.md
├── SPEC.md
└── agents/
    └── openai.yaml
```

The package is internally reachable with this projection:

```yaml
---
name: plan
description: "Plan one judgeable implementation result. Use when the requester wants to shape or revise an implementation proposal for an approved Issue or already-clear standalone outcome."
---
```

```yaml
interface:
  display_name: "Plan"
  short_description: "Define one bounded implementation contract"
  default_prompt: "Use $plan to define the implementation contract for this result."
policy:
  allow_implicit_invocation: false
```

Host presentation adds no entry, route, dependency, effect, authority, or
continuation. Runtime links resolve only inside the plugin tree.

## Package-specific conformance cases

1. **Entry choice:** a direct planning request and a human choice after Deliver
   recommendation enter; an approved Requirement, Map, Evolution, or Issue
   Approval alone does not.
2. **Missing boundary:** absent owner, accepted truth, source basis, or
   integrated result boundary returns `blocked` with the exact gap rather than
   guessing files or implementation.
3. **Boundary reconstruction:** one Plan can cover a meaningful Issue portion,
   tightly coupled Issues, integration/proof, or standalone result; it does
   not mechanically create one Plan per Issue or absorb adjacent debt.
4. **Reader-ready body:** the exact required sections make result, coverage,
   approach, sequence, authority, exclusions, risks, safe choices,
   checkpoints, and proof judgeable without mixing implementation results into
   the proposal.
5. **Safe uncertainty:** every deferred choice names allowed options, common
   envelope, discriminating evidence, and decision rule; any branch changing
   meaning or authority is resolved or returned before approval.
6. **Decision checkpoint:** a useful checkpoint names the smallest surface,
   decision question, sequence position, and affected choice without becoming a
   new gate or result.
7. **Consequential actions:** Plan names exact target/effect/recovery/proof and
   performs pre-approval risk inspection, but Plan Approval alone does not
   authorize the action. Delivery invokes Check Safety only after approval and
   a separate exact Implementation Authorization, at action time.
8. **Supporting calls:** each direct dependency is composed and consumed per
   caller-local rules — complete brief, lossless return, no authority
   transfer, no assurance-path or peer-edge re-entry — with the caller policies
   in the composition table; no dependency chooses Plan route, grants
   authority, or silently re-enters Plan.
9. **Research and evidence:** one factual question states why it changes the
   next judgment and preserves relevant current configuration, version,
   environment, target conditions, provenance, maturity, falsifier, no-op,
   unverified/conflicting, revised, blocked, and stopped limits without
   inventing evidence.
10. **Human context:** Orient starts only after accepted suggestion or direct
    teaching request and receives consequential mechanisms, boundaries,
    failures, limitations, and uncertainty; comprehension is not approach
    selection or approval.
11. **Tangible surface:** Make Tangible is used only for a material fidelity
    gap, and exact artifact/version, reaction, fidelity, retention, blocked, or
    stopped state survives without an inferred Plan judgment.
12. **Plan revision:** feedback changing coverage, result, approach, target,
    exclusion, consequence, risk, recovery, uncertainty, proof, or authority
    returns authority to `awaiting`, recomputes the complete contract, and
    repeats Plan Approval. Safe clarification does not.
13. **Native gate:** a complete Plan uses Plannotator's native Record Gate;
    approved non-meaning feedback remains accepted, meaning-changing feedback
    re-gates, denial/dismissal/closure stops, and command/transport failure
    blocks. No conversational fallback replaces a selected native gate.
14. **Awaiting authority:** approved Plan records show `authority.state:
    awaiting`; separate ordinary-language Implementation Authorization is
    required for reversible mutation, while consequential actions require
    exact action/target/effect.
15. **Persistence:** the current owner-shaped Plan is the canonical record; IDs
    are stable and lowercase, moves preserve identity, and any additional record
    type requires a distinct purpose, consumer, lifecycle, and authority boundary.
16. **Stopping:** every outcome contains exact boundary, evidence, limits,
    safe state, and caller-retained route/authority/acceptance/stop, then does
    no adjacent work.
17. **Documentation impact:** a reader-facing behavior change identifies its
    exact owning docs surface and includes it in scope, sequence, and proof;
    an internal-only change records why no docs mutation is needed.

## Source basis

At runtime, `SKILL.md` loads shared [Praxis Control](../../references/control.md)
once at owner entry.


This contract is maintained against the plugin-local Praxis premise, system,
control, context, and work documents; the [package
contract](../../docs/maintainers/skill-packages.md) and [conformance
contract](../../docs/maintainers/conformance-and-release.md); the shared runtime
[Praxis Control](../../references/control.md), [record foundations](../../references/records/foundations.md), and
[Delivery record contract](../../references/records/delivery.md); and the
assembled direct sibling contracts for Design Solution, Research, Orient,
Make Tangible, Refactor, Review, Verify, Security, and
Plannotator. These plugin-local files are the complete maintainer source basis
for this package. The target runtime surface and the three terminal shared
references are the complete package; no design-workspace or other non-plugin
material is required at runtime.

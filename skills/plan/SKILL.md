---
name: plan
description: "Plan one judgeable implementation result. Use for a direct request to draft or revise a Plan for an approved Issue or already-clear standalone outcome, or after the human chooses planning within an active Delivery."
---

# Plan

Make one bounded implementation proposal judgeable. Plan owns the proposal,
its evidence, authority boundary, revision, Plan Approval, and return. The
caller retains the Delivery route, governing Requirements and specifications,
implementation, Result Acceptance, and stopping.

## 1. Enter from a human planning choice

Begin only when the human directly asks to plan an approved Issue boundary or
already-clear standalone outcome, or chooses planning after Deliver recommends
it. A loaded skill, an approved Requirement, Evolution Map, Evolution, or
Issue Approval does not enter Plan by itself. Plan Approval never starts
implementation.

Bind one entry brief before drafting:

- the caller and active Delivery context;
- approved Issues or exact Issue portions, when any exist, otherwise the
  complete standalone outcome and accepted truth;
- governing Requirements and the selected Evolution, when present;
- current source, tests, interfaces, runtime behavior, configuration, and
  relevant evidence;
- accepted design context, earlier results, learning, change pressure, risks,
  and external consequences; and
- the human judgment and authority that remain with the caller.

If the boundary, owner, accepted truth, or source basis is missing, or current
evidence shows that one integrated, reviewable, and provable result cannot be
formed, return `blocked` with the exact missing or contradictory boundary to
Deliver. If required behavior changes, return it to the exact Formalization or
Requirements owner instead of hiding it in a Plan. This step is complete when
one bounded result, accepted baseline, owner, and evidence boundary are
explicit or the precise blocked/causal return has been made.

## 2. Reconstruct the implementation boundary

Inspect enough current source to describe a credible approach; do not invent
files from an Issue or reopen accepted specification merely because routine
mechanics are unknown. Choose the smallest boundary that can produce one
integrated, reviewable, and provable result. State exact Issue portions or the
standalone outcome, accepted starting baseline, and reader-facing consequence.
Anything not named remains outside proposed authority.

When structural repair is necessary for the accepted result, include it at the
concrete pressure point together with inherited behavior it exposes. Keep
adjacent cleanup and future Plans outside. Invoke [Refactor](../refactor/SKILL.md)
only when reconstructing preserved behavior, identifying the pressure, or
selecting the smallest responsible seam needs substantial dedicated reasoning;
Plan keeps its returned recommendation inside the execution contract. An
`analyzed` or `relieved` result informs the Plan; `partial` or `blocked`
leaves the pressure unresolved; `needs-design` or `needs-owner` returns the
choice to its exact owner.

This step is complete when the Plan boundary, accepted baseline, included
structural work, exclusions, and the evidence needed to judge both are named.

## 3. Shape the approach with the human

Explain consequential choices before freezing them. Compare alternatives only
when they materially change ownership, interfaces, migration, risk,
reversibility, changeability, or required proof. Routine reversible choices
stay in the Plan without ceremony.

Use the smallest bounded supporting capability when prose or current evidence
cannot settle one planning question:

- Call [Design Solution](../design-solution/SKILL.md) for a complete
  consequential architecture, ownership, contract, transition, operations, or
  changeability choice; pass the exact preflight, including why the choice
  matters, hard constraints, and compatibility duties, and keep comparison and
  selection with that call. Preserve its `recommended`, `selected`,
  `qualified`, `no-choice`, `revised`, `refused`, or `stopped` result and return
  a changed governing meaning to its named causal owner.
- Call [Research](../research/SKILL.md) for one bounded factual claim about
  current source, behavior, compatibility, or feasibility. Pass the claim and
  why it changes the next judgment, relevant current configuration, version,
  environment, and target conditions, plus a stable `boundary_id`, evidence bar,
  cheapest falsifier,
  `origin=plan`, `return_to=plan`, and `peer_edge_crossed=false`. Preserve
  `answered`, `unverified`, `conflicting`, `revised`, `no-op`,
  `needs-human-judgment`, `blocked`, and `stopped` with provenance and limits;
  do not treat `no-op` as new evidence.
- Suggest [Orient](../orient/SKILL.md) only when settled context is too complex
  for the human to judge the approach. Obtain ordinary-language acceptance
  first, then pass one learning objective, starting point, settled model,
  anchors, consequential mechanisms, boundaries, failures, limitations,
  uncertainty, and caller-retained controls. Preserve comprehension,
  causal-return, and stopped states; Orient does not choose the approach.
- Call [Make Tangible](../make-tangible/SKILL.md) when a small call-flow tree,
  file-tree diff, ownership diagram, interface sketch, or other program-design
  surface has a genuine fidelity problem in prose. Pass the exact judgment,
  truth/evidence, audience, fidelity, reaction, current authority, and
  artifact lifetime. Preserve exact artifact/version, reaction, fidelity and
  retention state, or the dependency's blocked/stopped state; Plan retains the
  implementation proposal.
- Call [Review](../review/SKILL.md) for an adversarial read of a risky fixed
  approach or record. Pass the target version, governing truth, risks,
  exclusions, evidence, and review question. Preserve complete/incomplete or
  stopped coverage and findings; Review never approves the Plan.
- Call [Verify](../verify/SKILL.md) when the proposed proof may not establish
  one exact completion claim. Pass the claim, observable property, supported
  scope, target, conditions, evidence bar, and authority. Preserve its exact
  verification state and limits; Plan changes proof design or returns the gap
  to its owner.
- Call [Security](../security/SKILL.md) for one attacker-focused planning risk
  that could change the approach, remediation boundary, or proof. Pass the
  fixed target, assets, trust boundaries, attacker inputs, evidence,
  exclusions, safety boundary, `return_to=plan`, and requested result shape.
  Preserve findings and coverage limits; Security owns attack-path
  interpretation, Plan owns the execution contract.

Do not prescribe a worker, reviewer, model, or procession merely because the
harness can delegate. Describe delegation in the Plan only when isolation,
permissions, secrets, coordination, integration, or independent assurance
changes the authority, risk, recovery, or proof boundary. A later delegate
brief is narrower than this Plan and cannot expand it.

This step is complete when every consequential choice is either accepted by
the human, returned through the exact supporting envelope, or explicitly safe
to defer inside a named boundary.

### Complete dependency briefs and projections

Every direct call receives one complete current brief. The caller's complete brief carries
the caller and `return_to=plan`, one stable boundary ID, the exact question or
target, governing records and accepted truth with owner/revision/provenance,
scope and exclusions, relevant source and evidence with provenance,
freshness/maturity, and fidelity limits, consequence/risk/recovery, effect and
authority boundaries,
the assurance path when applicable, the requested result shape, and the
caller's retained route, gates, authority, acceptance, and stop. A missing field
is an honest `blocked` return with the exact gap; the callee is never asked to
guess it.

Keep the callee's return untouched under one `dependency_projection` object:

```text
dependency_projection {
  dependency,
  exact_dependency_outcome_or_return_kind,
  exact_dependency_envelope_and_state,
  evidence_and_limits,
  causal_owner?, reason?, boundary?, exact_causal_result?, revisit_condition?,
  plan_projection: approved | revised | blocked | stopped
}
```

`approved` here means that the dependency supplied a bounded result usable in
the current Plan; it is not Plan Approval and never grants authority. Map a
dependency's material revision or causal return to `revised`, an incomplete
or unavailable dependency to `blocked`, and a human/caller or dependency stop
to `stopped`. Preserve the exact nested envelope, causal owner/reason/boundary,
limits, and revisit condition in every projection. Only Plan's own complete
native gate can produce top-level `outcome: approved`; a dependency projection
cannot.

Pass these target-specific additions and apply the stated projection:

- [Design Solution](../design-solution/SKILL.md): one consequential choice,
  why the choice matters, candidate set, criteria, hard constraints and compatibility
  duties, territory/actors/scenarios, consequences, evidence bar, and earliest
  causal owner. `recommended`,
  `selected`, `qualified`, and `no-choice` project `approved`; `revised`
  projects `revised`; `refused` projects `blocked`; `stopped` projects
  `stopped`.
- [Research](../research/SKILL.md): one factual claim and why it changes the
  next judgment, territory, relevant current configuration, version,
  environment, and target conditions, freshness, consequence, evidence bar,
  cheapest falsifier, sources/tools, and `origin=plan`, `return_to=plan`,
  `peer_edge_crossed=false`. `answered` and a bounded `no-op` project `approved`;
  `unverified`, `conflicting`, `needs-human-judgment`, or `blocked` project
  `blocked`; `stopped` projects `stopped`.
- [Orient](../orient/SKILL.md): one learning objective, starting point, settled
  model, authoritative anchors, consequential mechanisms, boundaries,
  failures, limitations, uncertainty, target question, material limits, and an
  accepted human suggestion or direct request. `explained`,
  `understanding-observed`, and `understanding-unconfirmed` project `approved`
  only when the Plan's needed understanding is honestly met;
  `orientation-blocked` and `misconception-unresolved` project `blocked`;
  `return_kind=causal-return` projects `revised`; `stopped` projects `stopped`.
- [Make Tangible](../make-tangible/SKILL.md): exact question, audience and
  starting point, accepted truth/evidence, primary judgment, medium/fidelity,
  requested reaction, current authority, named consumer, lifetime, and artifact
  result shape. `no-op`, `constructed`, and a locally revised artifact that
  preserves the Plan envelope project `approved`; a revision that changes the
  Plan's meaning projects `revised`; `blocked` projects `blocked`; `stopped`
  projects `stopped`.
- [Refactor](../refactor/SKILL.md): fixed target/version, pressure mechanism,
  governing records/source evidence, preservation question, smallest credible completion proof,
  responsible seam, structural candidates, scope/exclusions,
  read-only authority, and requested return. `analyzed` and `relieved` project
  `approved`; `partial` or `blocked` project `blocked`; `needs-design` or
  `needs-owner` project `revised`; `stopped` projects `stopped`.
- [Review](../review/SKILL.md): fixed target/version, governing truth,
  review question, required lenses, authority, exclusions, evidence boundary,
  and exact requested coverage. `complete` projects `approved` only when its
  findings do not change the Plan envelope; a finding that changes meaning,
  target, risk, proof, or authority projects `revised`; `incomplete` projects
  `blocked`; `stopped` projects `stopped`.
- [Verify](../verify/SKILL.md): exact claim, observable property, supported scope,
  target/governing boundary, conditions, contradictory observation,
  environment/configuration, sensitivity, evidence, authority, `return_to=plan`,
  and assurance path. `verified` projects `approved`; `failed` projects
  `revised` with the mismatch; `unverified` projects `blocked`; `stopped`
  projects `stopped`.
- [Security](../security/SKILL.md): one attacker question, fixed target,
  governing expectation, assets/properties, actors/trust boundaries,
  attacker-controlled inputs, evidence/counterevidence, scope/exclusions,
  environment, read-only authority, `return_to=plan`, and result shape.
  `no-op`, `findings`, and scoped `no-high-confidence-findings` project
  `approved` only when the Plan envelope remains intact; `needs-owner` or a
  finding that changes it projects `revised`; `needs-verification` or `blocked`
  projects `blocked`; `stopped` projects `stopped`.
- [Plannotator](../plannotator/SKILL.md): one selected native interaction,
  exact stable target revision/scope, requested judgment, declared consequence,
  authority boundary, exclusions, and result shape. Native approval projects
  `approved` (never Plan Approval); meaning-changing feedback projects
  `revised`; denial, dismissal, or empty closure projects `stopped`; command,
  transport, malformed-result, or unavailable-native failure projects `blocked`.

This caller-local projection is complete only when the exact dependency return,
limits, and caller-retained controls remain visible; Plan does not flatten,
reinterpret, approve, or route a callee on its behalf. A dependency result never
approves the Plan or grants implementation authority; only Plan's own native gate can do that.

## 4. Write the reader-ready Plan

Create only the current just-in-time Plan, under its Project when one owns the
work or under `.agents/plans/` when standalone. Use one stable lowercase
workspace-unique ID and the common record envelope. Load
[`foundations.md`](../../references/records/foundations.md) when creating,
moving, materially revising, superseding, or abandoning a durable Plan. Load
[`delivery.md`](../../references/records/delivery.md) when authoring,
structurally validating, gating, or revising its body. These are terminal
references: use their record rules, then return here.

The file has this shape and no `Result` section:

```markdown
---
kind: plan
id: plan-<name>
parent: project-<name> # omit when standalone
gates:
  plan_approval:
    state: pending | approved
    consequence: accepted implementation proposal
    accepted_reference: unavailable
authority:
  state: awaiting
disposition: open
---

# <Bounded result>

<One concise bounded-result paragraph.>

## Context and Coverage
## Proposed Approach
## Changes and Sequence
## Scope and Exclusions
## Risks and Recovery
## Open Implementation Choices <!-- only when safely deferrable -->
## Human Steering Checkpoint <!-- only when genuinely useful -->
## Verification
```

Context and Coverage links governing records and evidence, states exact Issue
portions or the standalone outcome, accepted starting truth, and the bounded
result. Proposed Approach owns consequential implementation design, ownership,
interfaces, data flow, integration, and structural refactoring. Changes and
Sequence may use numbered coherent implementation, integration, and evidence
steps; those steps are not Tasks, progress records, gates, or authority
boundaries. Scope and Exclusions names affected repositories, components,
data, configuration, documentation, external systems, permitted mutation kinds,
and meaningful exclusions. Name files, commands, or exact resources only when
they define scope, safety, coordination, recovery, or proof.

Run the docs-impact test before freezing the body: when the result changes
public, operational, integration, troubleshooting, or contributor behavior,
identify the exact owning documentation surface (path, section, and audience)
and include that surface in Scope and Exclusions, Changes and Sequence, and
Verification with proof of the update. If no such behavior changes, state which
surfaces were checked and why no documentation mutation is in scope. An
unidentified owning surface is a boundary gap, not a generic “update docs”
task.

Open Implementation Choices are allowed only when every option preserves the
accepted behavior, targets, exclusions, consequences, risks, recovery, and
proof. Name the options, common safe envelope, discriminating evidence, and
decision rule. A branch that could change governing meaning or authority is
resolved before approval or returned to its exact owner. A Human Steering
Checkpoint names the smallest touchable behavior or artifact, the exact human
question, sequence position, and choice it may change; it creates no new gate.

Risks and Recovery states the actual failure mechanism, target and consequence,
prevention or detection, safe stopping condition, and recovery path. Verification
maps completion claims and covered Issue Acceptance Criteria to proportionate
evidence, distinguishes steering checks from completion evidence, covers
materially exposed inherited behavior, and states required Review or
independent assurance. For code-bearing Plans, include human inspection of the
complete fixed diff through [Plannotator](../plannotator/SKILL.md)'s native
change-review surface before Result Acceptance.

This step is complete when a competent future engineer can judge what will
change, why, what may vary, what is excluded, what can fail, how to recover,
and how completion can be disproved without replaying the conversation.

## 5. Carry only safe uncertainty and revision

Routine clarification, evidence pointers, and implementation detail may change
locally while the accepted proposal, authority, and proof envelope remain
intact. A material change to Issue coverage, intended result, targets,
approach, structural work, exclusions, uncertainty, consequences, risks,
recovery, or proof invalidates the accepted Plan projection. Make the current
state safe, return authority to `awaiting`, recompute every affected part of
the execution contract, foreground the complete semantic difference, and
repeat Plan discussion and Plan Approval. Require fresh Implementation
Authorization after approval.

If evidence changes required behavior, boundary, exclusion, dependency, or
proof, return to the exact Formalization/Issue owner; if it changes a need,
constraint, preference, Project Outcome, or Project boundary, return to the
Requirements Discovery owner. If the Plan's implementation approach,
mutation boundary, risk, recovery, or authority changes while governing
meaning remains valid, revise the Plan. Do not patch only the annotated line
when the execution contract changed.

This step is complete when the current version has either preserved its
accepted envelope or explicitly named the causal owner, semantic difference,
affected gate, safe state, and revisit condition.

## 6. Present Plan Approval and stop

Before the gate, state the exact Plan revision, covered Issues or standalone
outcome, intended result, approach, targets, permitted mutations, exclusions,
uncertainty envelope, consequences, risks, assurance, and proof. Call
[Plannotator](../plannotator/SKILL.md) with a native Record Gate for the
complete Plan. The selected native surface is authoritative; do not replace a
failed or dismissed native interaction with conversational approval.

Interpret the native result exactly:

- `approved` accepts only the complete presented Plan revision and any
  non-meaning-changing feedback. Record its reliable native reference, or
  `accepted_reference: unavailable` when continuity is not reliable. Leave
  `authority.state: awaiting`; approval grants no implementation, commit,
  publication, deployment, or external authority.
- `approved` feedback that changes behavior, targets, approach, exclusions,
  consequences, risk, recovery, proof, or authority is a material revision;
  preserve the feedback, return to `awaiting`, revise the complete contract,
  and repeat the gate.
- `annotated` or other non-approval feedback is not acceptance. Integrate only
  safe local clarification; a meaning-changing note becomes `revised` and
  repeats the affected gate.
- `denied`, `dismissed`, empty closure, or human stop returns `stopped` with
  the exact decision, reference/`unavailable`, feedback, limits, and safe
  Plan state. It makes no approval or authority claim.
- command, transport, malformed-result, or unavailable-native failure returns
  `blocked` with the exact affected judgment and safe state. It is not an
  approval and has no conversational fallback.

After approval, explain what was accepted, recommend implementation, and stop.
An explicit ordinary-language Implementation Authorization may separately
activate only that Plan's ordinary reversible in-bound mutations. Consequential
actions still require the human instruction to name the exact action, target,
and effect. Delivery invokes Check Safety only at action time, after this Plan
is approved and a separate exact Implementation
Authorization exists. Plan never calls Check Safety while shaping or approving
a proposal. Action-time Safety evidence belongs to Delivery and grants no
authority. Plan never implements, creates a Result section, accepts a result,
commits, publishes, deploys, advances a route, or creates later Plan
placeholders.

The final return is exhaustive:

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

`approved` identifies the complete accepted Plan and awaiting authority;
`revised` identifies material feedback or changed governing context and the
gate to repeat; `blocked` identifies the missing evidence, dependency, native
capability, or authority; and `stopped` preserves the human's exact stop or
dismissal. Every result names the safe current state, evidence, limitations,
and caller-retained controls, then stops without adjacent work.

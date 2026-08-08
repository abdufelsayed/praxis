# Deliver — Maintainer Contract

This is the acceptance contract for the shipping
[Deliver owner](SKILL.md). It is not runtime
context, and the owner must not link to or depend on it.


## Purpose

Deliver owns one bounded implementation loop: it turns approved Issue work or
an already-clear standalone outcome into a judgeable Plan when one is useful,
or works directly when the requester has already settled and authorized the full
implementation boundary. A Plan path keeps Plan Approval and Implementation
Authorization distinct. Delivery produces and assures one integrated result,
passes Result Acceptance, updates only proved owner coverage, and stops. Plan
proposal and Plan Approval remain Plan-owned; Pair remains selected by the requester
collaborative implementation posture; Requirements, Evolution, Issue,
Project, and Initiative meaning remains with its causal owner.

## Invocation, entry, and exclusions

Deliver is internally reachable because a human may choose Delivery for approved Issue
work or a clear standalone outcome, another owner may return a ready Plan for
implementation, or a direct implementation authorization may activate it. Its
behavioral entry is still human-owned. Valid entry is exactly one of:

- a human choice to discuss or plan Delivery for approved Issues or a clear
  standalone outcome;
- a human instruction directly authorizing one clear implementation boundary
  whose result, targets, exclusions, risk, recovery, and proof are settled;
- a human instruction that explicitly authorizes implementation of one current
  approved Plan; or
- a human direct selection of Pair for a current approved implementation
  boundary, with or without a Plan.

A loaded skill, approved Requirement, Evolution, Issue Approval, or Plan
Approval does not begin Delivery or implementation. The entry brief contains
the caller and route, accepted governing records and baseline, Issue portions
or standalone truth, current Plan revision when present, source/interfaces/
tests/configuration and evidence, target and exclusions, dependencies, risks,
recovery, consequence and assurance boundaries, working-tree state, and
caller-retained gates, authority, acceptance, and stop.

Deliver excludes Requirements Discovery, Formalization, Evolution selection,
Issue definition, Plan drafting as a hidden implementation step, automatic
progression, task ledgers, execution diaries, generic Delivery receipts,
permanent Plan archives, commit/publish/deploy/merge authority, result
acceptance by implication, and future Plan or Evolution selection. It may
invoke bounded supporting skills, but a dependency never widens the Plan,
grants authority, accepts a result, chooses a route, or starts later work.

## Behavioral contract

1. Bind one human-selected Delivery mode—planning, autonomous implementation,
   or Pair—and one result boundary. Missing or contradictory owner, accepted
   truth, current implementation boundary, source, or evidence returns `blocked` with the exact
   gap and causal owner.
2. For planning entry, invoke Plan immediately with a complete constructible
   brief and stop at Plan's result. Preserve Plan Approval as proposal
   acceptance only; approved Plans remain `authority.state: awaiting`. If the
   same human message separately states exact Implementation Authorization for
   that approved revision, retain the two judgments distinctly and continue
   to authority validation.
3. Require fresh explicit Implementation Authorization before autonomous
   ordinary reversible mutation. The authorization may be the separately
   stated second act in the Plan-Approval message or a later instruction.
   For clear work with no Plan, the direct request is the implementation
   boundary only when result, target, exclusions, risk, recovery, and proof are
   already settled; otherwise return to Plan. Require direct Pair selection
   for Pair; Pair's posture and Plan Approval add no mutation authority.
4. Re-read the current implementation boundary and optional Plan revision,
   source, tests, interfaces, dependencies,
   working tree, and evidence before mutation. Work on the smallest boundary
   capable of one integrated, reviewable, provable result. Repair structure at
   the pressure point when the accepted result requires it; exclude adjacent
   debt.
5. Keep local choices and retries inside the accepted Requirements/Issue or
   standalone truth, implementation result and exclusions, target, dependencies,
   compatibility, consequences, risk, recovery, and proof. Every repeated
   attempt introduces new information. Cumulative deviation that changes
   accepted meaning, scope, consequence, authority, or proof returns to Plan
   when one exists or the earliest causal owner before mutation continues.
6. Invoke Debug, Refactor, TDD, Delegate, Review, Verify, Orient, Make
   Tangible, Check Safety, Security, Plannotator, Manage Worktree, Write Docs,
   or Pair only for its bounded accepted trigger. A support call is not a
   hidden local copy of the supporting procedure.
7. Every direct call is composed under caller-local rules below with one
   complete current brief; when Deliver cannot supply something the callee
   requires, the call returns `blocked` with the exact gap before invocation.
8. Preserve every direct return losslessly under one dependency projection
   as an exact dependency projection return rule: exact outcome, nested
   partial/blocked/stopped state, evidence, and limits, plus whether an
   assurance-path call was intentionally skipped. No projection is authority,
   acceptance, proof, or route selection.
9. For Debug, Refactor, TDD, Verify, and Security, append the callee to the
   assurance path only when it is absent and actually invoked, per the
   local assurance-path no-loop rule. If already present, record a Deliver-owned
   no-call projection with the existing path and
   `reason=assurance-path-already-visited`; do not fabricate a result.
10. Consequential, destructive, data-affecting, production, permission,
    secret, migration, infrastructure, cross-project, commit, push, merge,
    pull-request, deployment, or other remote effects require exact Plan
    inclusion and a human instruction naming the current action, target, and
    intended effect. Check Safety may inspect the action at action time and
    return `proceed`, `revise`, or `stop`; it never grants authority or
    executes the effect.
11. Interpret every material discovery at the earliest causal source.
    Initiative strategy returns to Coordinate Initiative; Project needs,
    constraints, preferences, outcomes, and boundaries return to the correct
    Requirements Discovery owner; progression returns to Evolve's Map;
    high-level working form returns to the affected Evolution; detailed
    behavior, dependency, exclusion, or proof returns to the Issue owner;
    implementation approach, target, risk, recovery, consequence, proof, or
    authority returns to the current Plan when one governs, or to Plan when a
    direct boundary is no longer settled; and a defect preserving all these
    meanings remains a Delivery correction.
12. A material causal return makes active work safe, stops affected mutating
    delegates at the earliest safe point, withdraws the current implementation
    boundary and any active Plan authority,
    preserves partial state and evidence, names the semantic difference and
    revisit condition, repeats only affected gates, and requires fresh
    Implementation Authorization. Independent read-only work may continue
    only when independent of the invalidated premise.
13. When the result changes public, operational, integration,
    troubleshooting, or contributor behavior, the exact owning documentation
    surface is updated only when inside the current implementation boundary and
    authority; otherwise the docs-impact gap returns to Plan. A required
    surface is
    handled through Write Docs with its complete reader, source, path, edit
    authority, verification, and publication boundary. Temporary notes are
    allowed only for useful deviations, decisions, evidence, or learning. A
    recovery checkpoint is created before handoff/reset only when active state
    cannot be rebuilt from the current boundary, any governing Plan,
    source/tests/Git, and native messages; it
    is private working memory and distinct from a planned Human Steering
    Checkpoint. At the exact sequence position, Deliver presents the
    checkpoint's smallest touchable surface and exact question, returns
    `awaiting-steering`, and resumes under existing authorization only when the
    reaction preserves the Plan. A material reaction makes the state safe,
    returns the complete semantic difference to its causal owner, sets Plan
    authority to `awaiting`, and repeats only the affected gate with fresh
    authorization.
14. Before Result Acceptance, every implementation result receives proportionate
    Review and Verify. Review challenges Specification Fidelity and
    Engineering Integrity; Verify tests exact completion claims and covered
    Issue criteria with current falsifiable evidence. Outcome proof,
    engineering critique, and evaluator health remain distinct.
15. A code-bearing result exposes the complete fixed diff through Plannotator's
    native Code Review before Result Acceptance. Native code-review feedback
    is not acceptance; meaning-changing feedback reopens the affected work or
    owner and repeats the affected assurance.
16. Explain a simple result inline. Suggest Orient only for a nontrivial model
    needed for honest judgment, after stating objective, importance, scope or
    medium, and consequence of acceptance. A direct teaching request or
    human agreement is required; Orient owns teaching, not result truth or
    acceptance. Use Make Tangible only for a genuine artifact or reaction
    need, preserving fidelity, artifact identity, lifetime, and limits.
17. Result Acceptance judges the working result and current evidence, not a
    generated report. One complete standalone result with one exact claim may
    receive clear conversational acceptance. Partial, multi-claim, or
    composed Issue/Evolution/Project closure requires an explicit acceptance
    statement or selected native Result Gate. A selected native surface is
    authoritative; native failure has no conversational fallback.
18. Acceptance closes only explicitly proved coverage. A complete or partial
    result records claims, evidence, limitations, unmet criteria, and owner
    closure if named. It exhausts the current implementation boundary and any
    Plan authority and grants no
    commit, publication, deployment, external action, next Plan, adjacent
    Issue, or Evolution selection.
19. After acceptance, Delivery updates each affected Issue with one concise
    current Result summary of proved coverage, decisive evidence, unmet
    criteria, and limits. The Issue owner retains specification meaning. A
    final result may compose Evolution Acceptance or Project Closure only when
    the native judgment explicitly names that complete owner claim; pass
    working form, proof, limits, and learning to Evolve or Project navigation.
20. Retain a Plan only while active work or a named future consumer needs its
    authority, limitations, or learning. Remove it after acceptance when its
    useful truth is carried by the owner, source, tests, Git, and any named
    native reference. Do not create generic Result receipts, Plan archives,
    progress logs, message directories, or lifecycle wrappers.
21. Every outcome contains the safe current state, exact evidence and limits,
    remaining coverage, caller-retained route/gates/authority/acceptance/stop,
    and next human boundary, then stops without adjacent work or momentum.

## Invariants

1. A loaded package or upstream approval never satisfies human Delivery entry.
2. One run binds one caller, result boundary, governing owner, accepted
   baseline, and current mode.
3. Planning and implementation are distinct transitions; Plan Approval leaves
   authority awaiting, and Implementation Authorization is a separate
   judgment even when both acts appear in one human message.
4. Pair is human-selected and obtains decision-sized permission; it is never
   inferred, recommended, or used to grant authority.
5. The implementation contract is either the current approved Plan or one
   directly authorized clear boundary naming result, target, exclusions,
   dependencies, risks, recovery, consequences, and proof.
6. Reversible local work stays within the active implementation boundary;
   consequential
   effects require exact action-time human authority and Safety evidence.
7. Structural work is justified by a concrete pressure point and preserves
   inherited accepted behavior; adjacent cleanup remains out of scope.
8. Retries add new information; equivalent failed guesses do not create
   additional authority or work.
9. Every direct dependency has a complete brief and lossless projection.
   Write Docs preserves all six outcomes and its complete native envelope;
   Manage Worktree labels remain verbatim.
10. An assurance-path no-call is caller-owned metadata, never a callee result.
11. Required incomplete, failed, unverified, owner, causal, or stopped
    assurance leaves the result incomplete; optional limits stay visible.
12. Material learning returns to the earliest causal owner and withdraws
    affected descendant authority before re-gating.
13. Review and Verify are both required proportionately before acceptance, and
    complete code diffs receive native human Code Review.
14. Teaching, demonstrations, walkthroughs, and diagrams never become proof,
    comprehension, or acceptance by implication.
15. Conversational acceptance is limited to one complete standalone exact
    claim; all other acceptance is explicitly named or native-gated.
16. Partial acceptance closes only proved coverage and exhausts the current
    implementation boundary and any Plan authority.
17. Issue summaries contain current proved coverage and limits, not execution
    chronology or a replacement Issue specification.
18. Evolution and Project closure remain their owners' named judgments; a
    composed Result Gate must explicitly carry the complete closure claim.
19. Result Acceptance never commits, publishes, deploys, selects future work,
    or creates authority for another activity.
20. Durable Plans are owner-shaped, stable, lazy records; no generic receipt or
    archive is created.
21. A failed Plan leaves useful partial work safe and visible; cleanup,
    rollback, preservation, and revision remain human decisions.
22. Every result reports evidence, limitations, safe state, and caller
    controls, then stops.

## Outcomes and observable return

Deliver exposes these top-level outcomes:

- `planning` — the requester selected Delivery planning and the Plan dependency
  owns the current proposal boundary;
- `awaiting-authorization` — an exact Plan revision is approved while
  `authority.state` remains `awaiting`;
- `awaiting-steering` — authorized work reached the exact Decision Checkpoint
  sequence position and is waiting for the named decision;
- `implementing` — authorized ordinary work is active inside the current
  implementation boundary;
- `pair-return` — the selected Pair posture returned its bounded partial or
  integrated state without Result Acceptance;
- `ready-for-acceptance` — integrated work has proportionate Review, Verify,
  and fixed-diff Code Review where required, and awaits human acceptance;
- `accepted` — explicit acceptance closed the named complete result and
  exhausted the implementation boundary and any Plan authority;
- `partial` — explicit acceptance closed only proved partial coverage and
  exhausted the implementation boundary and any Plan authority;
- `causal-return` — changed governing meaning returned to its exact owner;
- `blocked` — missing context, authority, dependency, evidence, native
  capability, environment, or honest proof prevents the next action; or
- `stopped` — the requester or a selected native/dependency boundary stopped work,
  preserving exact decision and safe state.

The semantic return is:

```text
Deliver Result {
  outcome,
  entry: plan-choice | plan-implementation-authorization | direct-authorization | pair-choice,
  delivery_context,
  plan_projection? {
    plan_approval,
    implementation_authorization?,
    human_steering_checkpoint?
  },
  implementation_state? {
    authority,
    current_boundary,
    changed_paths?,
    partial_state,
    decisive_evidence?
  },
  dependency_projections?,
  steering_checkpoint? {
    id,
    sequence_position,
    touchable_surface,
    human_question,
    choice_affected,
    reaction?,
    disposition: awaiting-reaction | preserves-plan | material-change | stopped,
    safe_state,
    affected_owner_and_gate?,
    revisit_condition?
  },
  assurance? {
    review,
    verify,
    code_review?,
    evaluator_health
  },
  result? {
    claims,
    proved_issue_coverage,
    standalone_outcome?,
    evidence,
    limitations,
    learning,
    owner_closure?
  },
  acceptance? {
    mode: conversational | native,
    decision,
    reference,
    feedback,
    proved_coverage,
    unproved_coverage
  },
  causal_return?,
  stop_reason?,
  caller_retained_route_gates_authority_acceptance_and_stop
}
```

`approved` is a nested Plan result, never a Deliver outcome. `accepted` and
`partial` name exactly what the requester accepted and what remains open.
`awaiting-steering` preserves the exact planned checkpoint and stops before
the next sequence step. `causal-return`, `blocked`, and `stopped` preserve the
owner or missing boundary, evidence, limits, partial state, native decision,
and safe state; none claims acceptance or transfers authority.

## Effects, authority, persistence, and lifetime

Deliver may inspect source, tests, interfaces, configuration, records, Git,
and evidence; write ordinary reversible product changes inside the current
human-authorized implementation boundary; run tests; update the current Plan
and Issue Result summary when those owners exist; and invoke the listed
bounded capabilities. An approved Plan plus separate Implementation
Authorization supplies that boundary when a Plan governs. An exact direct
request supplies it only when result, target, exclusions, dependencies, risk,
recovery, consequences, and proof are already settled. Deliver may not commit,
push, merge, publish,
deploy, create production or remote effects, change permissions/secrets/data,
or execute destructive actions without exact human authority and current
Safety evidence. A Check Safety `proceed` is a safety result, not permission.

Conversation, implementation notes, dependency messages, source changes,
tests, native feedback, and temporary evidence are transient by default.
When a Plan governs, persist it when its governing meaning, authority,
limitations, learning, or active work must survive the conversation, a named
future owner needs it, or the requester requests durability. A direct boundary
does not invent a Plan or generic implementation record. Load [record foundations](../../references/records/foundations.md)
when creating, moving, revising, superseding, abandoning, or retiring a
durable Plan; load [Delivery records](../../references/records/delivery.md)
when authoring, validating, gating, or revising its body. Use [Learning and
Return](../../references/learning-return.md) when causal learning must be
promoted. Keep no duplicate Result record, task ledger, receipt, message
directory, trajectory log, or generic Delivery archive.

## Composition and direct calls

Direct calls carry the callee's required brief and preserve its exact return: one complete
brief, lossless returns, no authority transfer, and no re-entry of a
capability already in the assurance path. Each callee's own contract owns its
intake fields. A call Deliver cannot brief completely returns `blocked` with
the exact gap before invocation. This package's caller policies are:

| Direct target | Caller policy |
| --- | --- |
| [Plan](../plan/SPEC.md) | `approved` is Plan Approval only and leaves `authority.state=awaiting` — never mutation, commit, publication, deployment, or external authority. `revised` repeats the affected gate; `blocked`/`stopped` preserve the exact gap or human decision. |
| [Pair](../pair/SPEC.md) | Pair obtains decision-sized permission and adds no authority; `returned` partial or integrated state is never acceptance. |
| [Debug](../debug/SPEC.md) | A diagnosis is not a correction; `corrected` stands on Debug's own proof; `unreproduced`/`needs-owner` leave the failure open or return it to its owner. |
| [Refactor](../refactor/SPEC.md) | `analyzed`/`relieved` inform the work; `partial` leaves the pressure unresolved; `needs-design`/`needs-owner` return the choice to its owner. Delivery retains mutation authority. |
| [TDD](../tdd/SPEC.md) | `cycle-complete`/`complete`/`already-covered` are usable seam evidence; `needs-owner`/`unsuitable` return the proving choice; no acceptance is inferred. |
| [Review](../review/SPEC.md) | Complete coverage without a meaning-changing finding supports acceptance; findings revise or return the affected work; incomplete coverage blocks the affected claim. Review never accepts or authorizes. |
| [Verify](../verify/SPEC.md) | `verified` supports the named claim; `failed` disproves it without implying a cause; `unverified` leaves it unproved. |
| [Delegate](../delegate/SPEC.md) | A Worker receives only the current implementation-boundary subset covered by the current authorization; `partial` preserves exact state; Deliver retains supervision, integration, and acceptance. |
| [Orient](../orient/SPEC.md) | Comprehension supports judgment and is never proof or acceptance; `orientation-blocked` or an unresolved misconception stays visible. |
| [Make Tangible](../make-tangible/SPEC.md) | A `constructed`/`revised` artifact is usable with its fidelity and lifetime limits; an artifact is never proof or acceptance. |
| [Check Safety](../check-safety/SPEC.md) | `proceed` is evidence for the action, never authority; `revise`/`stop` return the action before the effect. Safety does not execute, approve, or authorize. |
| [Security](../security/SPEC.md) | Findings revise remediation or proof; `needs-verification`/`needs-owner` return the question to its owner; Security retains attack-path interpretation. |
| [Plannotator](../plannotator/SPEC.md) | The native surface is authoritative and its feedback is not acceptance; approval is Result Acceptance only when explicitly named and never grants effect authority; command/transport/malformed/unavailable failure is `blocked` with no conversational fallback. |
| [Manage Worktree](../manage-worktree/SPEC.md) | Readiness labels remain verbatim state; Delivery retains route and result. |
| [Write Docs](../write-docs/SPEC.md) | `complete`/`already-current` continue Delivery (to `ready-for-acceptance` when all other boundary proof is complete); optional `partial` continues only with limits visible; required `partial`/`failed` keep Delivery incomplete as `blocked`; `blocked`/`stopped` preserve the matching Deliver state; no outcome is flattened into generic success or publication. |

Preserved callee results return nested under `dependency_projections?`
without flattening, renaming, or upgrading partial, blocked, revised,
conflicting, or stopped states. For the assurance-path targets — Debug,
Refactor, TDD, Verify, and Security — an already-visited capability is not
re-entered; Deliver records a caller-owned `not-invoked` projection with
`reason=assurance-path-already-visited` rather than a fabricated callee
result. A required incomplete, failed, unverified, owner, causal, or stopped
projection keeps Delivery incomplete; an optional limit remains visible only
while the accepted claim stays honest. No dependency result grants authority,
accepts a Plan or Result, chooses a route, or starts later work.

## Runtime references and exact package tree

Deliver keeps the one-boundary Delivery loop, optional Plan transitions, implementation,
supporting composition, learning return, assurance, explanation, acceptance,
owner closure, retirement, and stopping inline. It loads only these terminal
shared references at their named decisions:

| Reference | Load when | Ownership |
| --- | --- | --- |
| [Praxis Control](../../references/control.md) | Once at owner entry. | Shared authority, transition, return, and stopping control. |
| [Learning and Return](../../references/learning-return.md) | A discovery changes Plan, implementation, result, or upstream governing truth and the earliest causal owner must be identified. | Cross-skill causal return applied by Deliver. |
| [Record Foundations](../../references/records/foundations.md) | Creating, moving, materially revising, superseding, abandoning, or retiring a durable Plan or owner record. | Cross-skill record lifetime applied by Deliver. |
| [Delivery Records](../../references/records/delivery.md) | Authoring, validating, gating, revising, or retiring a Plan envelope/body. | Cross-skill Plan record contract applied by Deliver. |

No local reference, script, asset, fixture, template, wrapper, package README,
or required integration is needed. The exact runtime tree is:

```text
skills/deliver/
├── SKILL.md
├── SPEC.md
└── agents/
    └── openai.yaml
```

The package is internally reachable:

```yaml
---
name: deliver
description: "Deliver one bounded working result. Use when the requester chooses Delivery for an approved Issue or clear standalone outcome, including planning it, or authorizes implementation of an approved Plan."
---
```

```yaml
interface:
  display_name: "Deliver"
  short_description: "Produce and close one bounded working result"
  default_prompt: "Use $deliver for this bounded working result."
policy:
  allow_implicit_invocation: false
```

Host metadata is launch copy only. It cannot create a Plan, authorize
implementation or an effect, accept a Result, call a dependency, or advance a
route.

## Package-specific conformance cases

1. **Planning entry:** a human chooses Delivery for approved Issues or a
   standalone outcome; Deliver calls Plan with a complete brief and stops at
   Plan's exact result.
2. **No automatic entry:** an approved Requirement, Evolution, Issue Approval,
   Plan Approval, loaded skill, or implementation-shaped conversation alone
   does not begin Delivery or mutation.
3. **Awaiting authority:** approved Plan projection preserves complete Plan
   revision, native reference/`unavailable`, limits, and
   `authority.state=awaiting`; a distinct Implementation Authorization is
   required, either as a separately stated act in the same human message or
   in a later instruction.
4. **Direct no-Plan implementation:** an exact human request whose result,
   target, exclusions, dependencies, risk, recovery, consequences, and proof
   are already settled establishes one ordinary reversible implementation
   boundary without creating a Plan; any unsettled proposal returns to Plan.
5. **Pair choice:** a direct “pair with me” for an approved implementation
   boundary enters Pair;
   Pair is never inferred, recommended, or treated as autonomous authority.
6. **Bounded implementation:** autonomous edits inspect current source and
   tests, stay inside the current boundary's target and exclusions, and stop
   equivalent retries.
7. **Structural pressure:** a substantial refactor is invoked only for a named
   pressure point and preservation question; adjacent cleanup is excluded.
8. **Consequential action:** exact Plan coverage and action-time human
   authority name target/effect; Check Safety returns `proceed`, `revise`, or
   `stop` without executing or authorizing the action.
9. **Dependency assembly:** every invoked call is composed and consumed per
   caller-local rules — complete brief, lossless return, no
   authority transfer, no assurance-path re-entry — with the caller policies
   in the composition table; a brief Deliver cannot complete blocks before
   invocation. Write Docs preserves all six native outcomes without
   flattening the result.
10. **Assurance path:** Debug, Refactor, TDD, Verify, and Security are appended
   only when absent; a visited path creates a caller-owned no-call projection,
   never a fabricated dependency result.
11. **Causal learning:** changed need, Project boundary, strategy, Evolution,
    Issue, Plan, or authority returns to its earliest owner, withdraws affected
    authority, preserves safe partial state, and requires re-gating and fresh
    Implementation Authorization.
12. **Proportionate assurance:** Review and Verify cover every implementation result and
    materially exposed inherited behavior; proof, critique, and evaluator
    health remain distinct.
13. **Fixed-diff review:** every code-bearing result exposes its complete fixed
    diff through native Plannotator Code Review before acceptance; feedback is
    not acceptance.
14. **Teaching surface:** Orient begins only after agreement or direct request,
    and Make Tangible is used only for a named fidelity/reaction need; neither
    claims proof or acceptance.
15. **Conversational acceptance:** one complete standalone exact claim may be
    accepted in ordinary language; partial, multi-claim, and composed closure
    require explicit acceptance or a selected native Result Gate.
16. **Native Result Gate:** preserve exact target, decision, feedback,
    reference/`unavailable`, limits, and transport state; native failure does
    not fall back to conversation.
17. **Partial acceptance:** accepted partial work records proved coverage,
    evidence, unmet criteria, limits, and safe remaining state; unproved Issue,
    Evolution, and Project claims remain open while the implementation boundary
    and any Plan authority exhaust.
18. **Owner closure:** a composed Result Gate closes Evolution or Project only
    when its complete owner claim is explicitly named; otherwise close only
    implementation/Issue coverage and return learning to the owner.
19. **Issue summary:** Delivery updates an affected Issue with one concise
    Result summary; it does not append execution history or replace the Issue
    specification.
20. **Plan lifetime:** active or named-consumer Plans remain; accepted Plans
    may be removed once truth is carried by owner/source/tests/Git. No generic
    Result receipt, archive, task ledger, or message directory is created.
21. **Stopping:** every accepted, partial, causal, blocked, or stopped result
   names evidence, limits, safe state, caller-retained controls, and next
   boundary, then performs no adjacent work or momentum progression.
22. **Decision Checkpoint:** when a Plan names one, Delivery reaches its
    exact sequence position, presents the smallest touchable surface and exact
    question, returns `awaiting-steering`, and distinguishes the steering
    reaction from completion evidence and Result Acceptance. A reaction that
    preserves Plan meaning resumes under the existing Implementation
    Authorization; a material reaction makes state safe, returns the complete
    semantic difference to its causal owner, sets authority to `awaiting`, and
    repeats only the affected gate with fresh authorization. A recovery
    checkpoint used for context reconstruction never creates this outcome.
23. **Delegated mutation:** a Worker may mutate only the exact subset already
    covered by the current Implementation Authorization; no extra human choice
    is inferred or required. Deliver retains supervision, integrated diff
    inspection, assurance, Result Acceptance, and stopping.
24. **Documentation dependency:** when the current implementation boundary
    includes a required reader-facing update, Deliver calls Write Docs as an exact dependency projection
    reference and projects `complete`, `already-current`, `partial`,
    `blocked`, `failed`, or `stopped` losslessly; a required incomplete or
    failed result keeps Delivery incomplete. It never claims publication or
    completion from a flattened result.

## Source basis

At runtime, `SKILL.md` loads shared [Praxis Control](../../references/control.md)
once at owner entry.


This contract is maintained against the plugin-local Praxis premise, system,
control, context, and work documents; the [package
contract](../../docs/maintainers/skill-packages.md) and [conformance
contract](../../docs/maintainers/conformance-and-release.md); the maintained
Deliver design, [Praxis Control](../../references/control.md),
[Learning and Return](../../references/learning-return.md), [Record
Foundations](../../references/records/foundations.md), and [Delivery
Records](../../references/records/delivery.md); and the current runtime
contracts for Plan, Pair, Debug, Refactor, TDD, Review, Verify, Delegate,
Orient, Make Tangible, Check Safety, Security, Plannotator, Manage Worktree,
and Write Docs. These plugin-local files are the complete maintainer source
basis for this package. The target runtime surface above is the complete
package; no design-workspace material is required at runtime.

# Deliver

> **Design document — not a runtime skill.** Accepted behavioral contract and target package design; runtime implementation pending.

## What it does

Deliver owns one complete bounded implementation loop: collaboratively plan
approved Issue work or an already-clear standalone outcome, wait for separate
implementation authority, produce and assure one integrated result, present it
for acceptance, update any proven Issue coverage, and stop.

Its leading idea is **one approved Plan, one accepted result**. An Issue may
need several Plans, a Plan may cover several Issues or portions, and a Plan may
stand alone when no Issue or Project adds useful control. Later Plans remain
unformed until the current result and learning have been interpreted.

## When to reach for it

Begin when Formalize has produced approved Issues or when an implementation
outcome is already clear enough to plan directly, and the human
conversationally chooses to discuss its Delivery. If the agent recommends
planning `i1` or a standalone cache replacement and the human says, “Let’s plan
it,” Deliver begins and invokes [Plan](../plan/README.md) immediately. It needs
no separate activation record.

That choice authorizes discussion and planning only. Direct Work does not load
Deliver merely because it involves implementation.

## Propose one coherent implementation boundary

Read the approved Issues, governing Requirements and selected Evolution when
present, or the complete accepted standalone outcome; then inspect current
source and tests, accepted design context, and evidence from earlier results.
Recommend the smallest boundary capable of producing an integrated, reviewable,
and provable result.

When current source already shows that the result depends on repairing a
structural mismatch, include that repair at the pressure point and the
inherited behavior its impact exposes. Do not widen the boundary for adjacent
debt that the accepted result does not depend on.

The boundary may cover:

- one complete Issue;
- one meaningful portion of an Issue;
- several Issues whose implementation is tightly coupled; or
- the remaining integration and proof needed to close their owner; or
- one already-clear standalone implementation outcome.

Do not map one Issue mechanically to one Plan. Issues divide detailed
specification meaning; Plans divide implementation authority, risk, review,
and verification. Explain the proposed boundary and discuss it with the human
before the Plan is finalized.

## Compose Plan and stop at approval

Plan owns the just-in-time implementation proposal. Deliver supplies the
approved Issue context when any exists, otherwise the standalone outcome and
accepted truth, and receives the provisionally accepted Plan back. Create only
the current file beneath its Project owner or in `/.agents/plans/` when
standalone:

```text
plans/
└── p1-token-service.md
```

Use a stable lowercase Plan ID. Never create placeholder or future Plan files.

Plan Approval accepts the exact coverage, approach, permitted mutations,
exclusions, integration, assurance, and proof. It grants no implementation
authority by itself. Deliver explains the accepted boundary, recommends
implementation, and waits unless the human has also issued an explicit
Implementation Authorization as a separate act in the same message or in a
later instruction.

If the approved Plan contains a justified human steering checkpoint, Deliver
also stops at that checkpoint with the smallest touchable behavior or evidence
needed for reaction. A reaction that preserves the Plan resumes under existing
authority; material change backtracks and re-gates its exact owner.

## Consume exact implementation authority

A later ordinary-language instruction such as “Implement the approved Plan”
authorizes ordinary reversible autonomous work inside that Plan. The
instruction needs no record or additional gate and does not authorize anything
outside the accepted boundary. Destructive, data, production, permission,
secret, migration, infrastructure, and remote effects still require that
instruction or another explicit human instruction to name the exact action,
target, and effect.

A material revision to Issue coverage, scope, target, consequence, exclusions,
required proof, or any governing ancestor returns affected authority to
`awaiting`, repeats the affected gates, and requires fresh Implementation
Authorization before changed work may proceed.

The human may instead say “Pair with me.” That selects
[Pair](../pair/README.md) for the approved Plan but authorizes no product
mutation. Pair then uses explicit permission for each coherent mutation
boundary. It remains active until the human ends or suspends it; approval of
one change never restores autonomous implementation.

## Work autonomously inside the boundary

After autonomous authorization, Deliver may inspect, edit, test, and refine
implementation choices without asking permission for each routine step. It
invokes [Debug](../debug/README.md), [Delegate](../delegate/README.md),
[Review](../review/README.md), or [Verify](../verify/README.md) when their
triggers appear. Local adaptation is allowed when it
preserves:

- governing Requirements and Issue behavior when present, otherwise the
  accepted standalone outcome;
- the Plan's intended result and exclusions;
- mutation targets and scope;
- compatibility and dependencies;
- external consequences; and
- required assurance and proof.

If a helper design fails a test, Deliver may revise it locally. If evidence
shows that the Issue promises behavior the dependency cannot provide, Deliver
must return to the Issue rather than hiding the contradiction in code.

Every repeated attempt must be conditioned on new information: a changed
hypothesis, a more discriminating probe, or a materially different correction.
When two variations of the same guess fail for the same reason, invoke
[Debug](../debug/README.md), reframe the approach, or return to the owning
boundary instead of spending more work on equivalent retries.

Judge deviations both individually and cumulatively. Several locally permitted
choices that together change ownership, risk, exclusions, proof, or another
accepted Plan meaning require Plan revision or causal backtracking before
further mutation.

If current work shows that the inherited structure no longer fits the expanded
Requirements, repair that structure now rather than layering another
conditional or promising cleanup later. Invoke [Refactor](../refactor/README.md) when
pressure identification, preserved-behavior reconstruction, seam selection, or
the transformation requires substantial dedicated reasoning; make trivial
local structural edits directly. This remains local only while the approved
targets, behavior, risk, consequences, exclusions, and proof remain intact. A
material change to any of them returns to Plan discussion and Approval; a
changed specification returns to its earlier owner.

## Require both kinds of control for consequential actions

Consequential mutations must be explicit in the approved Plan, including the
exact target, effect, recovery approach, and evidence required afterward.

Destructive, irreversible, production, data-affecting, permission-changing,
secret-handling, cross-project, commit, push, pull-request, merge, deployment,
migration, infrastructure, and other remote effects also require human
authority that explicitly covers the exact action and current Safety evidence.
That authority may already be part of a precise Implementation Authorization;
Check Safety adds no duplicate gate when the action was named and no new
consequence appears. Plan Approval, vague implementation authority, and nearby
preparation remain insufficient.

Testing and ordinary reversible work may proceed inside normal Plan authority.
Applying a destructive migration to a local database is still consequential
and must not hide behind “local testing.”

When delivered behavior would make consequential documentation false or
incomplete, update it only if its owning surface is inside the approved Plan
and Implementation Authority. Otherwise return that surface and a small Plan
revision. Do not silently broaden authority or present a result for acceptance
with stale public, operational, integration, troubleshooting, or contributor
guidance.

## Interpret learning at the exact source

For every material discovery, ask which earliest accepted source introduced
the false premise or invalid authority.

- Preserve local autonomy when the approved result can be restored without
  changing governing meaning or authority.
- Return to Plan when the implementation approach, mutation boundary,
  consequence, or proof must change while the specification remains valid.
- Return to Issue or Evolution when required behavior, interfaces, exclusions,
  compatibility, or proof are wrong.
- Return to Requirements Discovery when the accepted need, constraint,
  preference, or Project boundary is wrong.

When returning, state evidence, impact, still-valid truth, unresolved
questions, and a recommendation. Revise and re-gate only the affected owner
and descendants; do not patch the nearest document or restart unaffected work.

## Compose supporting skills

Deliver invokes supporting capabilities when their triggers appear:

- [Debug](../debug/README.md) proves the cause of an observed failure.
- [Refactor](../refactor/README.md) relieves one concrete structural pressure while preserving accepted
  behavior.
- [TDD](../tdd/README.md) implements settled behavior one vertical red–green–refactor cycle at a
  time when requested or materially useful.
- [Review](../review/README.md) challenges the fixed result or diff through Specification Fidelity
  and Engineering Integrity, returning evidence-backed findings without
  acceptance.
- [Verify](../verify/README.md) decomposes completion into exact claims and tests each with current
  evidence capable of disproving it.
- [Delegate](../delegate/README.md) coordinates bounded subagent work when supervisor-context, total
  cost, or elapsed-time benefit justifies the handoff after integration and
  assurance are counted.
- [Orient](../orient/README.md) teaches one bounded settled model after the
  human accepts a suggested result orientation.
- [Make Tangible](../make-tangible/README.md) constructs a demonstration,
  inspection surface, or other tangible result artifact; teaching surfaces
  normally arrive through Orient.
- [Check Safety](../check-safety/README.md) resolves targets, consequences,
  recovery, and authority before risky action.
- [Security](../security/README.md) investigates a concrete attacker-focused
  question and returns validated findings and coverage limits.

They are bounded supporting skills invoked from Delivery, not local procedures
for Delivery to reproduce. Delivery retains Plan and result ownership,
interprets every return, and decides what can continue. None expands Plan
authority, accepts a result, or begins another activity.

### Delegate only inside the approved Plan

The supervisor derives every delegated implementation brief from the current
Plan and retains the governing Issues, architecture, interfaces, authority,
integration, and human-facing result. A Worker may own internals behind an
understood boundary whose behavior, invariants, side effects, dependencies,
exclusions, and proof are already clear. It returns when implementation exposes
a consequential missing decision or work outside the Plan.

Use a fresh isolated context by default and give only the tools, permissions,
secrets, and repository scope required for the bounded task. The Worker returns
compact findings, changes, evidence, limitations, and a recommendation. The
supervisor inspects the integrated diff and decisive proof without replaying
the entire implementation trace.

Delegation does not require a worker–reviewer–verifier procession. Add fresh
independent assurance and strengthen its model only when consequence,
uncertainty, novelty, weak proof, or likely correction cost warrants it.

## Keep implementation notes only when useful

During substantial or uncertainty-heavy work, Deliver may keep temporary notes
for meaningful deviations, decisions, evidence, and learning needed at Result
interpretation. This is a working memory aid, not a mandatory diary.

Before a foreseeable context reset or handoff, Deliver creates or refreshes a
compact temporary checkpoint only when active state cannot be reconstructed
from the approved Plan, source, tests, Git, and native messages. It records the
intended result, current approach, verified completed work, current failure or
unresolved deviation, last safe point, next bounded action, and exact pointers.

Before Result Acceptance, promote durable truth to its actual owner: revise a
Plan or specification when meaning changed, update evidence references, or
include material learning in the result explanation. Discard the remaining
notes unless a named future consumer needs them.

## Assure and explain the integrated result

Every Plan-governed result receives proportionate
[Review](../review/README.md) and [Verify](../verify/README.md) before Result
Acceptance. Review challenges the integrated change against Requirements and
Issues when present, Plan authority, current source, and relevant risks.
Verify names the exact completion claims and uses current evidence capable of
disproving them.

Keep outcome proof and engineering critique distinct. Passing checks do not
cancel a material Review finding, and coherent structure does not prove
behavior. Deliver resolves or explicitly returns every material signal before
Result Acceptance.

Before mutating in response to failed evidence, determine whether the signal
falsifies the implementation, a Plan assumption, or the evaluator itself. A
broken environment, stale fixture, or insensitive check changes the evidence
path; it does not authorize a product correction.

Review treats changeability as a concrete engineering claim. It may block when
evidence shows obscured ownership, avoidably scattered behavior, incompatible
responsibilities, or an accepted next change made predictably unsafe or
expensive. Complexity or duplication metrics may locate a concern but cannot
establish it alone. Verify covers the new behavior and inherited accepted
behavior materially exposed by the change.

When a consequential accepted future depends on an unproved seam, Delivery may
probe it with a disposable extension, adversarial review, cheaper-agent
handoff, or another bounded test. The probe answers one question and stays
inside authority; it does not become speculative product work.

Independent reviewers, specialized audits, broad test suites, and additional
assurance appear only when consequence, uncertainty, or context justifies
them. There is no mandatory worker-reviewer-verifier procession.

When the Plan-governed result contains code changes, present the complete fixed
diff through [Plannotator](../plannotator/README.md)'s native human
change-review surface before Result Acceptance. A walkthrough, diagram,
partitioned review order, or explainer may reduce cognitive load but does not
replace exposing the code. Completing code review remains feedback rather than
acceptance.

Present:

- the actual working result;
- exact Issue coverage proved when present, otherwise the standalone outcome;
- authoritative evidence;
- limitations and deliberate omissions;
- consequential structural changes and remaining changeability limits;
- material learning; and
- unresolved questions or remaining work.

Explain a simple result inline when a concise account and its evidence make the
change honestly judgeable. When the human needs a nontrivial model of ownership,
control flow, data flow, state transitions, unfamiliar failure behavior, or
another consequential mechanism, recommend one bounded
[Orient](../orient/README.md) interaction. State what must be understood, why it
matters to judgment or use, the proposed scope and likely medium, and what will
happen if accepted. Do not ask the human to name or “enter” the skill.

If the human accepts, pass Orient the learning objective, apparent starting
knowledge, exact delivered change and result claims, authoritative source and
evidence anchors, consequential mechanisms and limitations, and uncertainty
that must remain visible. Orient owns teaching and may invoke Make Tangible for
a constructed surface. Delivery retains result truth, Issue coverage, evidence,
acceptance, and stopping.

Interpret Orient's return honestly. A contradiction in the teaching model may
reopen implementation, verification, the Plan, or the exact governing owner;
Orient does not repair it. `Orientation blocked` prevents Delivery from
claiming that the result was made honestly judgeable. Other comprehension
states inform the explanation but do not become approval or acceptance.

If the human declines Orient, respect the choice, provide Delivery's ordinary
concise explanation, and continue without treating refusal as understanding or
repeating the suggestion. Ordinary Result Acceptance may still proceed. When
demonstrated competence is itself an accepted result claim, refusal leaves that
claim unproved and Delivery may present only the honestly proved result.

## Pass Result Acceptance and stop

Result Acceptance judges the working result and current evidence, not a
mandatory generated report. It may accept the current result as complete or
partial when the human explicitly names that judgment. For one complete
standalone result with one exact claim clearly in focus, an unambiguous
ordinary-language acceptance counts as naming that acceptance. It is not enough
for a partial result, multiple claims, or a composed owner closure. Result Acceptance
closes only Issue coverage that the evidence explicitly proves when Issues
exist; unproved Issue, Evolution, and Project claims remain open. It records
remaining limitations and exhausts the Plan's authority.

Update each affected Issue when any exist with a concise current disposition:
proved coverage, authoritative evidence references, remaining limitations, and
unresolved work. A standalone Plan returns those meanings directly to the human
and any actual causal owner. Keep the standalone result explanation in the
conversation by default; create no Result or receipt file unless a named future
consumer needs the exact acceptance record.

Acceptance authorizes no commit, next Plan, adjacent Issue, external action, or
future Evolution. Explain what remains, recommend the next useful activity, and
stop for the human's separate choice.

## Handle revision and failure honestly

If Result feedback requests a correction already required by the Issue and
inside Plan authority, continue the same Delivery loop. Apply the correction,
repeat affected Review and Verify work, and present Result Acceptance again.

If feedback changes specification, scope, target, consequence, or authority,
return to the exact owner, make affected descendant Plan authority non-active,
signal affected in-flight mutating delegates to stop at the earliest safe point,
make their current state safe, return their partial state and evidence, and
repeat affected gates and authorization. Truly independent read-only
investigation may continue only when it does not depend on the changed premise.
Do not integrate or perform discretionary cleanup of an affected delegated
result by implication.

If the Plan cannot reach its approved result, make the current state safe, stop
affected work, and return the actual partial result, evidence, limitations,
learning, and recommendation. The human may accept that partial result through
Result Acceptance, which closes no unproved coverage and exhausts the Plan's
authority. Otherwise, do not erase useful work automatically; the human decides
whether to preserve the partial baseline, revise the Plan, backtrack, authorize
cleanup, or stop.

## Compose final owner acceptance when proof is complete

When the final Plan result also proves every remaining Issue and the complete
integrated selected Evolution, one Plannotator interaction may explicitly judge
both the bounded Plan result and Evolution Acceptance. The same rule applies to
a Project using direct Issues and its complete Project Outcome. In that case,
the composed judgment is Project Closure and no second closure gate is needed.
A distinct Project Closure interaction remains useful when the Project is
rejected or superseded, or when no Result Gate already judged its complete
outcome.

If the evidence proves only the Plan boundary, close only that coverage and
recommend the additional integration or proof required. Never infer owner
completion from Issue status alone.

After Evolution Acceptance, return the working form, proof, limitations, and
learning to Evolve and Project navigation. Map revisions follow Evolve's normal
collaborative gate. Nothing selects, specifies, plans, or implements another
Evolution automatically.

## Retire completed Plan files proportionately

Keep the Plan while it governs active work or a named future loop needs its
authority, limitations, or learning. After Result Acceptance, it may be removed
when its useful truth is carried by the owning Issue when one exists, source,
tests, and Git. Retain a reliable native Plannotator reference or minimal gate
projection only when a named future consumer needs the exact accepted
interaction. Do not create a generic Delivery receipt. Security's private
finding-continuity record remains owned by Security and is not a Plan or Result
receipt.

Praxis creates no permanent Plan archive or Result directory by default.

## It is working when

- The human chose planning for approved Issue work or an already-clear
  standalone outcome.
- One collaboratively designed Plan boundary is current.
- Plan Approval and Implementation Authorization remain separate.
- Implementation proceeds autonomously inside exact authority.
- Repeated attempts use new evidence rather than variations of the same guess.
- Cumulative deviations remain inside the accepted Plan meaning.
- Necessary in-bound refactoring happens at the pressure point; adjacent debt
  stays outside.
- Consequential actions have both Plan inclusion and action-time authority.
- Learning returns to its earliest causal owner.
- Review and Verify support every acceptance claim and materially exposed
  inherited behavior proportionately.
- Outcome proof, engineering critique, and evaluator health remain distinct.
- The result is understandable without a mandatory report.
- Only explicitly proved Issue, owner, or standalone outcome coverage closes.
- One accepted result exhausts the Plan and stops before later work.

## Skill structure

The one-Plan loop, collaborative boundary, authority, autonomous execution,
learning interpretation, supporting-skill composition, temporary notes,
assurance, result explanation, acceptance, completion composition, and stopping
belong in `SKILL.md`. Deliver invokes [Plan](../plan/README.md),
[Pair](../pair/README.md), [Debug](../debug/README.md),
[Refactor](../refactor/README.md),
[TDD](../tdd/README.md), [Review](../review/README.md),
[Verify](../verify/README.md), [Delegate](../delegate/README.md),
[Orient](../orient/README.md),
[Make Tangible](../make-tangible/README.md),
[Check Safety](../check-safety/README.md),
[Security](../security/README.md), and
[Plannotator](../plannotator/README.md) only for the bounded procedures or
interactions each owns. It uses
[Learning and Return](../../references/learning-and-return.md) and the Core and
Delivery record schemas. Make Tangible owns artifact fidelity and lifetime.
Delivery explains simple results inline and uses Orient for nontrivial teaching
rather than duplicating its pedagogy. Deliver invokes Review, Verify, Security,
TDD, or another capability that owns any non-trivial evaluation instead of
loading their evaluation method itself.

## Direct dependencies

### Skills

- [Plan](../plan/README.md) — develop the next bounded implementation contract;
  return an approved Plan revision; Deliver retains the delivery route.
- [Pair](../pair/README.md) — enter literal collaborative implementation when
  the human chooses it; return the integrated result; Deliver retains result
  ownership.
- [Debug](../debug/README.md) — diagnose unexpected behavior; return a proved
  cause and bounded correction; Deliver retains Plan interpretation.
- [Refactor](../refactor/README.md) — repair a concrete changeability pressure;
  return preservation evidence; Deliver retains authority and outcome.
- [TDD](../tdd/README.md) — develop accepted behavior through an honest proving
  seam; return tests and implementation evidence; Deliver retains acceptance.
- [Review](../review/README.md) — perform adversarial judgment; return findings
  and limits; Deliver owns correction and human code review.
- [Verify](../verify/README.md) — prove exact result claims; return current
  evidence and claim statuses; Deliver retains acceptance.
- [Delegate](../delegate/README.md) — execute a bounded independent function;
  return compact evidence; Deliver retains supervision and integration.
- [Orient](../orient/README.md) — teach one accepted result model after the
  human chooses the suggested orientation; return the model, comprehension
  state, and remaining uncertainty; Deliver retains result truth and
  acceptance.
- [Make Tangible](../make-tangible/README.md) — construct and verify a result or
  behavior surface not owned by Orient; return reaction and fidelity limits;
  Deliver retains the claim.
- [Check Safety](../check-safety/README.md) — inspect a consequential action;
  return `proceed`, `revise`, or `stop`; Deliver retains execution authority.
- [Security](../security/README.md) — investigate an attacker-focused question;
  return validated findings and coverage limits; Deliver retains remediation
  and acceptance.
- [Plannotator](../plannotator/README.md) — present fixed-diff code review,
  a selected native Result Gate, or a composed outcome closure; return the
  human decision; Deliver retains consequence and stopping. Simple standalone
  Result Acceptance remains in conversation and does not invoke Plannotator.
- [Manage Worktree](../manage-worktree/README.md) — decide whether a named
  repository risk needs isolation;
  invoke it only for named Plan collision, rollback, or experiment risk. It
  returns a safe current checkout, a prepared isolated worktree, or a blocker;
  Deliver retains the delivery route and outcome.

### Shared references

- [Learning and Return](../../references/learning-and-return.md) — route Plan,
  implementation, result, and upstream learning to the exact causal owner.
- [Records: Core](../../references/records/core.md) and
  [Delivery](../../references/records/delivery.md) — create, revise, place, and
  retire Plan and delivery records.

## Target runtime package

> **Status: accepted target package design; runtime implementation pending.**
> This section is not implementation authority.

### Invocation and host projection

Deliver is model-invoked after the human chooses planning or explicitly
authorizes implementation for one approved Plan boundary.

```yaml
---
name: deliver
description: "Deliver one bounded working result. Use when the human chooses Delivery for an approved Issue or clear standalone outcome, including planning it, or authorizes implementation of an approved Plan."
---
```

```yaml
interface:
  display_name: "Deliver"
  short_description: "Produce and close one bounded working result"
  default_prompt: "Use $deliver for this bounded working result."
policy:
  allow_implicit_invocation: true
```

### Information hierarchy and references

`SKILL.md` keeps one-Plan entry, Plan call and approval stop, exact
implementation authority, autonomous execution, action-time control, causal
learning, supporting composition, useful temporary notes, integrated assurance,
result explanation, acceptance, coverage update, Plan retirement, and stopping
inline. Completion requires all accepted-result claims and materially exposed
inherited behavior to have current evidence and the exact Plan authority to be
exhausted.

| Decision point | Target reference | Load when | Keep inline when | Semantic ownership | Source material | Direct consumers | Gaps |
| --- | --- | --- | --- | --- | --- | --- | --- |
| Causal learning | `../../references/learning-return.md` | Implementation, review, proof, or reaction changes the Plan or upstream truth. | A local correction preserves all governing meaning and authority. | Cross-skill | [Learning and Return](../../references/learning-and-return.md) | Deliver | None. |
| Record lifecycle | `../../references/records/foundations.md` | Creating, moving, materially revising, superseding, or retiring a Plan or updating proved owner coverage. | A standalone conversational result needs no durability. | Cross-skill | [Records Core](../../references/records/core.md) | Deliver | None. |
| Delivery records | `../../references/records/delivery.md` | Reading Plan authority, updating its state, or retiring it after acceptance. | No durable Plan exists. | Cross-skill | [Delivery Records](../../references/records/delivery.md) | Deliver | None. |

The existing calls—including Manage Worktree—are accepted. Mutation is limited
to the exact active Plan and separate consequential-action authority; result
acceptance authorizes no commit, push, deployment, or later Plan. No local
reference, script, asset, fixture, template, or required integration is earned.
Target files are exactly `SKILL.md`, `SPEC.md`, and `agents/openai.yaml`.

`SPEC.md` adds cases for Issue and standalone entry, Plan Approval without
implementation, stale authority, in-bound implementation, cumulative deviation,
failed attempt with new evidence, required refactor, delegation subset,
consequential action, upstream learning invalidation, fixed-diff review,
mixed verification, simple versus native Result Acceptance, partial Issue
coverage, Plan retirement, and acceptance stopping. No package decision remains
unresolved.
